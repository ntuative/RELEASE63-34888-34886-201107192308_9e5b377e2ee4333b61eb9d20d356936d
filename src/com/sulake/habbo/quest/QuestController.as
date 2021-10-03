package com.sulake.habbo.quest
{
   import com.sulake.core.runtime.IDisposable;
   import com.sulake.core.runtime.IUpdateReceiver;
   import com.sulake.habbo.communication.messages.incoming.quest.QuestMessageData;
   
   public class QuestController implements IDisposable, IUpdateReceiver
   {
       
      
      private var var_51:HabboQuestEngine;
      
      private var var_576:QuestsList;
      
      private var var_493:QuestDetails;
      
      private var _questCompleted:QuestCompleted;
      
      private var var_409:QuestTracker;
      
      private var var_716:NextQuestTimer;
      
      public function QuestController(param1:HabboQuestEngine)
      {
         super();
         this.var_51 = param1;
         this.var_409 = new QuestTracker(this.var_51);
         this.var_576 = new QuestsList(this.var_51);
         this.var_493 = new QuestDetails(this.var_51);
         this._questCompleted = new QuestCompleted(this.var_51);
         this.var_716 = new NextQuestTimer(this.var_51);
      }
      
      public function onToolbarClick() : void
      {
         this.var_576.onToolbarClick();
      }
      
      public function onQuests(param1:Array, param2:Boolean) : void
      {
         this.var_576.onQuests(param1,param2);
      }
      
      public function onQuest(param1:QuestMessageData) : void
      {
         this.var_409.onQuest(param1);
         this.var_493.onQuest(param1);
         this._questCompleted.onQuest(param1);
         this.var_716.onQuest(param1);
      }
      
      public function onQuestCompleted(param1:QuestMessageData) : void
      {
         this.var_409.onQuestCompleted(param1);
         this.var_493.onQuestCompleted(param1);
         this._questCompleted.onQuestCompleted(param1);
      }
      
      public function onQuestCancelled() : void
      {
         this.var_409.onQuestCancelled();
         this.var_493.onQuestCancelled();
         this._questCompleted.onQuestCancelled();
         this.var_716.onQuestCancelled();
      }
      
      public function onRoomEnter() : void
      {
         this.var_409.onRoomEnter();
      }
      
      public function onRoomExit() : void
      {
         this.var_576.onRoomExit();
         this.var_409.onRoomExit();
         this.var_493.onRoomExit();
         this.var_716.onRoomExit();
      }
      
      public function update(param1:uint) : void
      {
         this._questCompleted.update(param1);
         this.var_409.update(param1);
         this.var_716.update(param1);
         this.var_576.update(param1);
         this.var_493.update(param1);
      }
      
      public function dispose() : void
      {
         this.var_51 = null;
         if(this.var_576)
         {
            this.var_576.dispose();
            this.var_576 = null;
         }
         if(this.var_409)
         {
            this.var_409.dispose();
            this.var_409 = null;
         }
         if(this.var_493)
         {
            this.var_493.dispose();
            this.var_493 = null;
         }
         if(this._questCompleted)
         {
            this._questCompleted.dispose();
            this._questCompleted = null;
         }
         if(this.var_716)
         {
            this.var_716.dispose();
            this.var_716 = null;
         }
      }
      
      public function get disposed() : Boolean
      {
         return this.var_51 == null;
      }
      
      public function get questsList() : QuestsList
      {
         return this.var_576;
      }
      
      public function get questDetails() : QuestDetails
      {
         return this.var_493;
      }
      
      public function get questTracker() : QuestTracker
      {
         return this.var_409;
      }
   }
}
