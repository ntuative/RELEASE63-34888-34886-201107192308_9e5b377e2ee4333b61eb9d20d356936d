package com.sulake.habbo.ui.widget.events
{
   import flash.display.BitmapData;
   
   public class RoomWidgetUserInfoUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_109:String = "RWUIUE_OWN_USER";
      
      public static const BOT:String = "RWUIUE_BOT";
      
      public static const const_155:String = "RWUIUE_PEER";
      
      public static const TRADE_REASON_OK:int = 0;
      
      public static const const_805:int = 2;
      
      public static const const_965:int = 3;
      
      public static const const_1791:String = "BOT";
       
      
      private var _name:String = "";
      
      private var var_2102:String = "";
      
      private var var_2492:int;
      
      private var var_2697:int = 0;
      
      private var var_2694:int = 0;
      
      private var _figure:String = "";
      
      private var var_48:BitmapData = null;
      
      private var var_257:Array;
      
      private var var_1592:int = 0;
      
      private var var_2786:String = "";
      
      private var var_2781:int = 0;
      
      private var var_2779:int = 0;
      
      private var var_1885:Boolean = false;
      
      private var var_2046:String = "";
      
      private var var_2271:Boolean = false;
      
      private var var_2788:Boolean = false;
      
      private var var_2787:Boolean = true;
      
      private var var_1342:int = 0;
      
      private var var_2789:Boolean = false;
      
      private var var_2784:Boolean = false;
      
      private var var_2780:Boolean = false;
      
      private var var_2782:Boolean = false;
      
      private var var_2790:Boolean = false;
      
      private var var_2783:Boolean = false;
      
      private var var_2785:int = 0;
      
      private var var_1883:Boolean = false;
      
      public function RoomWidgetUserInfoUpdateEvent(param1:String, param2:Boolean = false, param3:Boolean = false)
      {
         this.var_257 = [];
         super(param1,param2,param3);
      }
      
      public function set name(param1:String) : void
      {
         this._name = param1;
      }
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function set motto(param1:String) : void
      {
         this.var_2102 = param1;
      }
      
      public function get motto() : String
      {
         return this.var_2102;
      }
      
      public function set achievementScore(param1:int) : void
      {
         this.var_2492 = param1;
      }
      
      public function get achievementScore() : int
      {
         return this.var_2492;
      }
      
      public function set webID(param1:int) : void
      {
         this.var_2697 = param1;
      }
      
      public function get webID() : int
      {
         return this.var_2697;
      }
      
      public function set xp(param1:int) : void
      {
         this.var_2694 = param1;
      }
      
      public function get xp() : int
      {
         return this.var_2694;
      }
      
      public function set figure(param1:String) : void
      {
         this._figure = param1;
      }
      
      public function get figure() : String
      {
         return this._figure;
      }
      
      public function set image(param1:BitmapData) : void
      {
         this.var_48 = param1;
      }
      
      public function get image() : BitmapData
      {
         return this.var_48;
      }
      
      public function set badges(param1:Array) : void
      {
         this.var_257 = param1;
      }
      
      public function get badges() : Array
      {
         return this.var_257;
      }
      
      public function set groupId(param1:int) : void
      {
         this.var_1592 = param1;
      }
      
      public function get groupId() : int
      {
         return this.var_1592;
      }
      
      public function set groupBadgeId(param1:String) : void
      {
         this.var_2786 = param1;
      }
      
      public function get groupBadgeId() : String
      {
         return this.var_2786;
      }
      
      public function set canBeAskedAsFriend(param1:Boolean) : void
      {
         this.var_2788 = param1;
      }
      
      public function get canBeAskedAsFriend() : Boolean
      {
         return this.var_2788;
      }
      
      public function set respectLeft(param1:int) : void
      {
         this.var_1342 = param1;
      }
      
      public function get respectLeft() : int
      {
         return this.var_1342;
      }
      
      public function set isIgnored(param1:Boolean) : void
      {
         this.var_2789 = param1;
      }
      
      public function get isIgnored() : Boolean
      {
         return this.var_2789;
      }
      
      public function set amIOwner(param1:Boolean) : void
      {
         this.var_2784 = param1;
      }
      
      public function get amIOwner() : Boolean
      {
         return this.var_2784;
      }
      
      public function set amIController(param1:Boolean) : void
      {
         this.var_2780 = param1;
      }
      
      public function get amIController() : Boolean
      {
         return this.var_2780;
      }
      
      public function set amIAnyRoomController(param1:Boolean) : void
      {
         this.var_2782 = param1;
      }
      
      public function get amIAnyRoomController() : Boolean
      {
         return this.var_2782;
      }
      
      public function set hasFlatControl(param1:Boolean) : void
      {
         this.var_2790 = param1;
      }
      
      public function get hasFlatControl() : Boolean
      {
         return this.var_2790;
      }
      
      public function set canTrade(param1:Boolean) : void
      {
         this.var_2783 = param1;
      }
      
      public function get canTrade() : Boolean
      {
         return this.var_2783;
      }
      
      public function set canTradeReason(param1:int) : void
      {
         this.var_2785 = param1;
      }
      
      public function get canTradeReason() : int
      {
         return this.var_2785;
      }
      
      public function set canBeKicked(param1:Boolean) : void
      {
         this.var_2787 = param1;
      }
      
      public function get canBeKicked() : Boolean
      {
         return this.var_2787;
      }
      
      public function set isRoomOwner(param1:Boolean) : void
      {
         this.var_1883 = param1;
      }
      
      public function get isRoomOwner() : Boolean
      {
         return this.var_1883;
      }
      
      public function set carryItem(param1:int) : void
      {
         this.var_2781 = param1;
      }
      
      public function get carryItem() : int
      {
         return this.var_2781;
      }
      
      public function set userRoomId(param1:int) : void
      {
         this.var_2779 = param1;
      }
      
      public function get userRoomId() : int
      {
         return this.var_2779;
      }
      
      public function set isSpectatorMode(param1:Boolean) : void
      {
         this.var_1885 = param1;
      }
      
      public function get isSpectatorMode() : Boolean
      {
         return this.var_1885;
      }
      
      public function set realName(param1:String) : void
      {
         this.var_2046 = param1;
      }
      
      public function get realName() : String
      {
         return this.var_2046;
      }
      
      public function set allowNameChange(param1:Boolean) : void
      {
         this.var_2271 = param1;
      }
      
      public function get allowNameChange() : Boolean
      {
         return this.var_2271;
      }
   }
}
