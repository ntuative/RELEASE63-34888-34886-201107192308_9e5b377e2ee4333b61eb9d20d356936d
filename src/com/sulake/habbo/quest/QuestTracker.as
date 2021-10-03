package com.sulake.habbo.quest
{
   import com.sulake.core.runtime.IDisposable;
   import com.sulake.core.window.IWindow;
   import com.sulake.core.window.IWindowContainer;
   import com.sulake.core.window.components.IBitmapWrapperWindow;
   import com.sulake.core.window.components.IDesktopWindow;
   import com.sulake.core.window.components.IFrameWindow;
   import com.sulake.core.window.events.WindowEvent;
   import com.sulake.core.window.events.WindowMouseEvent;
   import com.sulake.habbo.communication.messages.incoming.quest.QuestMessageData;
   import com.sulake.habbo.communication.messages.outgoing.quest.StartCampaignMessageComposer;
   import flash.events.TimerEvent;
   import flash.geom.Point;
   import flash.utils.Timer;
   
   public class QuestTracker implements IDisposable
   {
      
      private static const const_317:int = 0;
      
      private static const const_697:int = 1;
      
      private static const const_695:int = 2;
      
      private static const const_1079:int = 3;
      
      private static const const_1077:int = 4;
      
      private static const const_1076:int = 5;
      
      private static const const_1074:int = 6;
      
      private static const const_1082:Array = [-2,-3,-2,0,2,3,2,0,2,1,0,1];
      
      private static const const_1081:Array = [1,1,2,2,3,3,4,4,5,5,6,6,4];
      
      private static const const_1078:int = 6;
      
      private static const const_1503:int = 4;
      
      private static const const_696:int = 2;
      
      private static const const_1075:int = 200;
      
      private static const const_318:Array = ["a","b","c","d"];
      
      private static const const_1080:int = 10000;
      
      private static const const_1502:int = 0;
      
      private static const const_698:int = -1;
      
      private static const const_1504:Point = new Point(10,87);
      
      private static const const_1507:int = 162;
      
      private static const const_1506:Number = 0.01;
      
      private static const const_1500:Number = 100;
      
      private static const const_1501:int = 1000;
      
      private static const const_693:String = "quest_tracker";
      
      private static const const_1505:int = 10;
       
      
      private var var_51:HabboQuestEngine;
      
      private var var_218:QuestMessageData;
      
      private var _window:IWindowContainer;
      
      private var var_538:Timer;
      
      private var var_794:ProgressBar;
      
      private var var_246:int = 0;
      
      private var var_993:int = 0;
      
      private var var_1502:int = 0;
      
      private var var_1222:int = -1;
      
      private var var_795:int = -1;
      
      private var var_992:int = -1;
      
      private var var_1221:int;
      
      private var var_1503:int;
      
      private var var_2470:Boolean;
      
      public function QuestTracker(param1:HabboQuestEngine)
      {
         super();
         this.var_51 = param1;
      }
      
      public function dispose() : void
      {
         if(this.var_51)
         {
            this.var_51.toolbar.extensionView.detachExtension(const_693);
         }
         this.var_51 = null;
         this.var_218 = null;
         if(this._window)
         {
            this._window.dispose();
            this._window = null;
         }
         if(this.var_538)
         {
            this.var_538.stop();
            this.var_538 = null;
         }
         if(this.var_794)
         {
            this.var_794.dispose();
            this.var_794 = null;
         }
      }
      
      public function get disposed() : Boolean
      {
         return this.var_51 == null;
      }
      
      public function onQuestCompleted(param1:QuestMessageData) : void
      {
         if(this._window)
         {
            this.clearPrompt();
            this.var_218 = param1;
            this.var_993 = 0;
            this.refreshTrackerDetails();
            this.var_1222 = 0;
            this.var_246 = const_1079;
         }
      }
      
      public function onQuestCancelled() : void
      {
         this.var_218 = null;
         if(this._window)
         {
            this.clearPrompt();
            this.var_794.refresh(0,100,-1);
            this.var_246 = const_695;
         }
      }
      
      public function onRoomEnter() : void
      {
         var _loc3_:int = 0;
         var _loc1_:Boolean = Boolean(parseInt(this.var_51.configuration.getKey("new.identity","0")));
         var _loc2_:String = this.getDefaultCampaign();
         if(this.var_538 == null && _loc1_ && _loc2_ != "")
         {
            _loc3_ = int(this.var_51.configuration.getKey("questing.startQuestDelayInSeconds","30"));
            this.var_538 = new Timer(_loc3_ * 1000,1);
            this.var_538.addEventListener(TimerEvent.TIMER,this.onStartQuestTimer);
            this.var_538.start();
            Logger.log("Initialized start quest timer with period: " + _loc3_);
         }
      }
      
      public function onRoomExit() : void
      {
         if(this._window != null && this._window.visible)
         {
            this._window.findChildByName("more_info_txt").visible = false;
            this._window.findChildByName("more_info_region").visible = false;
         }
      }
      
      public function onQuest(param1:QuestMessageData) : void
      {
         var _loc2_:Boolean = this._window && this._window.visible;
         if(param1.waitPeriodSeconds > 0)
         {
            if(_loc2_)
            {
               this.setWindowVisible(false);
            }
            return;
         }
         this.var_218 = param1;
         this.prepareTrackerWindow();
         this.refreshTrackerDetails();
         this.refreshPromptFrames();
         this.setWindowVisible(true);
         this.hideSuccessFrames();
         if(_loc2_)
         {
            if(this.var_246 == const_695)
            {
               this.var_246 = const_697;
            }
            this.setupPrompt(this.var_795,const_1503,false);
         }
         else
         {
            this._window.x = this.getOutScreenLocationX();
            this.var_246 = const_697;
            this.setupPrompt(const_1502,const_696,false);
         }
      }
      
      private function refreshPromptFrames() : void
      {
         if(!this.var_51.isQuestWithPrompts(this.var_218))
         {
            return;
         }
         var _loc1_:int = 0;
         while(_loc1_ < const_318.length)
         {
            this.var_51.setupPromptFrameImage(this._window,this.var_218,const_318[_loc1_]);
            _loc1_++;
         }
      }
      
      private function prepareTrackerWindow() : void
      {
         if(this._window != null)
         {
            return;
         }
         this._window = IWindowContainer(this.var_51.getXmlWindow("QuestTracker"));
         this._window.findChildByName("more_info_region").procedure = this.onMoreInfo;
         new PendingImage(this.var_51,this._window.findChildByName("quest_tracker_bg"),"quest_tracker_with_bar");
         var _loc1_:int = 1;
         while(_loc1_ <= const_1078)
         {
            new PendingImage(this.var_51,this.getSuccessFrame(_loc1_),"checkanim" + _loc1_);
            _loc1_++;
         }
         this.hideSuccessFrames();
         this.var_794 = new ProgressBar(this.var_51,IWindowContainer(this._window.findChildByName("content_cont")),const_1507,"quests.tracker.progress",false,const_1504);
      }
      
      private function hideSuccessFrames() : void
      {
         var _loc1_:int = 1;
         while(_loc1_ <= const_1078)
         {
            this.getSuccessFrame(_loc1_).visible = false;
            _loc1_++;
         }
      }
      
      private function hidePromptFrames() : void
      {
         var _loc1_:int = 0;
         while(_loc1_ < const_318.length)
         {
            this.getPromptFrame(const_318[_loc1_]).visible = false;
            _loc1_++;
         }
      }
      
      private function getSuccessFrame(param1:int) : IBitmapWrapperWindow
      {
         return IBitmapWrapperWindow(this._window.findChildByName("success_pic_" + param1));
      }
      
      private function getPromptFrame(param1:String) : IBitmapWrapperWindow
      {
         return IBitmapWrapperWindow(this._window.findChildByName("prompt_pic_" + param1));
      }
      
      private function refreshTrackerDetails() : void
      {
         this.var_51.localization.registerParameter("quests.tracker.caption","quest_name",this.var_51.getQuestName(this.var_218));
         this._window.findChildByName("desc_txt").caption = this.var_51.getQuestDesc(this.var_218);
         this._window.findChildByName("more_info_txt").visible = this.var_51.currentlyInRoom;
         this._window.findChildByName("more_info_region").visible = this.var_51.currentlyInRoom;
         var _loc1_:int = Math.round(100 * this.var_218.completedSteps / this.var_218.totalSteps);
         this.var_794.refresh(_loc1_,100,this.var_218.id);
         this.var_51.setupQuestImage(this._window,this.var_218);
      }
      
      private function onMoreInfo(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type == WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            this.var_51.questController.questDetails.showDetails(this.var_218);
         }
      }
      
      public function update(param1:uint) : void
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         if(this._window == null)
         {
            return;
         }
         this.var_794.updateView();
         switch(this.var_246)
         {
            case const_697:
               _loc2_ = this.getDefaultLocationX();
               _loc3_ = this._window.x - _loc2_;
               if(_loc3_ > 0)
               {
                  _loc4_ = Math.max(1,Math.round(_loc3_ * param1 * const_1506));
                  this._window.x -= _loc4_;
               }
               else
               {
                  this.var_246 = const_317;
                  this._window.x = _loc2_;
               }
               break;
            case const_695:
               _loc2_ = this.getOutScreenLocationX();
               _loc3_ = this._window.width - this._window.x;
               if(_loc3_ > 0)
               {
                  _loc4_ = Math.max(1,Math.round(param1 * const_1500 / _loc3_));
                  this._window.x += _loc4_;
               }
               else
               {
                  this.var_246 = const_317;
                  this._window.x = _loc2_;
                  this.setWindowVisible(false);
               }
               break;
            case const_1079:
               this.hideSuccessFrames();
               this.getSuccessFrame(const_1081[this.var_1222]).visible = true;
               ++this.var_1222;
               if(this.var_1222 >= const_1081.length)
               {
                  this.var_246 = const_1076;
                  this.var_1502 = const_1501;
               }
               break;
            case const_1074:
               this.setQuestImageVisible(false);
               this.hidePromptFrames();
               this.var_1221 -= param1;
               this.getPromptFrame(const_318[this.var_992]).visible = true;
               if(this.var_1221 < 0)
               {
                  this.var_1221 = const_1075;
                  ++this.var_992;
                  if(this.var_992 >= const_318.length)
                  {
                     this.var_992 = 0;
                     --this.var_1503;
                     if(this.var_1503 < 1)
                     {
                        this.setupPrompt(const_1080,const_696,true);
                        this.var_246 = const_317;
                     }
                  }
               }
               break;
            case const_1077:
               if(this.var_993 >= -1)
               {
                  this._window.x = this.getDefaultLocationX();
                  this.var_246 = const_317;
                  this.setupPrompt(const_1080,const_696,false);
               }
               else
               {
                  this._window.x = this.getDefaultLocationX() + const_1082[this.var_993];
                  ++this.var_993;
               }
               break;
            case const_1076:
               this.var_1502 -= param1;
               if(this.var_1502 < 0)
               {
                  this.var_246 = const_317;
                  this.setWindowVisible(false);
               }
               break;
            case const_317:
               if(this.var_795 != const_698)
               {
                  this.var_795 -= param1;
                  if(this.var_795 < 0)
                  {
                     this.var_795 = const_698;
                     if(this.var_218 != null && this.var_51.isQuestWithPrompts(this.var_218))
                     {
                        if(this.var_2470)
                        {
                           this.startNudge();
                        }
                        else
                        {
                           this.var_246 = const_1074;
                           this.var_992 = 0;
                           this.var_1221 = const_1075;
                        }
                     }
                  }
               }
         }
      }
      
      private function getDefaultLocationX() : int
      {
         return 0;
      }
      
      private function getOutScreenLocationX() : int
      {
         return this._window.width + const_1505;
      }
      
      public function isVisible() : Boolean
      {
         return this._window && this._window.visible;
      }
      
      private function onStartQuestTimer(param1:TimerEvent) : void
      {
         if(this.hasBlockingWindow())
         {
            Logger.log("Quest start blocked. Waiting some more");
            this.var_538.reset();
            this.var_538.start();
         }
         else
         {
            this.var_51.questController.questDetails.openForNextQuest = this.var_51.configuration.getKey("questing.showDetailsForNextQuest") == "true";
            this.var_51.send(new StartCampaignMessageComposer(this.getDefaultCampaign(),this.var_51.configuration.getBoolean("questing.useWing",false)));
         }
      }
      
      private function getDefaultCampaign() : String
      {
         var _loc1_:String = this.var_51.configuration.getKey("questing.defaultCampaign");
         return _loc1_ == null ? "" : _loc1_;
      }
      
      private function hasBlockingWindow() : Boolean
      {
         var _loc2_:* = null;
         var _loc1_:int = 0;
         while(_loc1_ <= 2)
         {
            _loc2_ = this.var_51.windowManager.getDesktop(_loc1_);
            if(_loc2_ != null && this.hasBlockingWindowInLayer(_loc2_))
            {
               return true;
            }
            _loc1_++;
         }
         return false;
      }
      
      private function hasBlockingWindowInLayer(param1:IWindowContainer) : Boolean
      {
         var _loc2_:int = 0;
         var _loc3_:* = null;
         while(_loc2_ < param1.numChildren)
         {
            _loc3_ = param1.getChildAt(_loc2_);
            if(_loc3_ != null && _loc3_.visible)
            {
               if(_loc3_ as IFrameWindow != null)
               {
                  if(_loc3_.name != "mod_start_panel")
                  {
                     return true;
                  }
               }
               else if(_loc3_.name == "welcome_screen")
               {
                  return true;
               }
            }
            _loc2_++;
         }
         return false;
      }
      
      private function setQuestImageVisible(param1:Boolean) : void
      {
         this._window.findChildByName("quest_pic_bitmap").visible = param1;
      }
      
      private function clearPrompt() : void
      {
         this.setupPrompt(const_698,0,false);
      }
      
      private function setupPrompt(param1:int, param2:int, param3:Boolean) : void
      {
         this.setQuestImageVisible(true);
         this.hidePromptFrames();
         this.var_795 = param1;
         this.var_1503 = param2;
         this.var_2470 = param3;
      }
      
      private function startNudge() : void
      {
         this.var_993 = 0;
         this.var_246 = const_1077;
      }
      
      private function setWindowVisible(param1:Boolean) : void
      {
         this._window.visible = param1;
         if(!param1)
         {
            this.var_51.toolbar.extensionView.detachExtension(const_693);
         }
         else
         {
            this.var_51.toolbar.extensionView.attachExtension(const_693,this._window);
         }
      }
   }
}
