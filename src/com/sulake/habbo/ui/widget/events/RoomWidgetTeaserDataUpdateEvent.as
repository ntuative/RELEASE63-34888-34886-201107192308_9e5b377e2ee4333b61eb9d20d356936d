package com.sulake.habbo.ui.widget.events
{
   public class RoomWidgetTeaserDataUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_523:String = "RWTDUE_TEASER_DATA";
      
      public static const const_742:String = "RWTDUE_GIFT_DATA";
      
      public static const const_950:String = "RWTDUE_GIFT_RECEIVED";
       
      
      private var var_240:int;
      
      private var _data:String;
      
      private var var_431:int;
      
      private var var_209:String;
      
      private var var_2341:String;
      
      private var var_2342:Boolean;
      
      private var var_1649:int = 0;
      
      private var var_2739:String;
      
      public function RoomWidgetTeaserDataUpdateEvent(param1:String, param2:Boolean = false, param3:Boolean = false)
      {
         super(param1,param2,param3);
      }
      
      public function get objectId() : int
      {
         return this.var_240;
      }
      
      public function get data() : String
      {
         return this._data;
      }
      
      public function get status() : int
      {
         return this.var_431;
      }
      
      public function get firstClickUserName() : String
      {
         return this.var_2341;
      }
      
      public function get giftWasReceived() : Boolean
      {
         return this.var_2342;
      }
      
      public function get ownRealName() : String
      {
         return this.var_2739;
      }
      
      public function get itemCategory() : int
      {
         return this.var_1649;
      }
      
      public function set status(param1:int) : void
      {
         this.var_431 = param1;
      }
      
      public function set data(param1:String) : void
      {
         this._data = param1;
      }
      
      public function set firstClickUserName(param1:String) : void
      {
         this.var_2341 = param1;
      }
      
      public function set giftWasReceived(param1:Boolean) : void
      {
         this.var_2342 = param1;
      }
      
      public function set ownRealName(param1:String) : void
      {
         this.var_2739 = param1;
      }
      
      public function set objectId(param1:int) : void
      {
         this.var_240 = param1;
      }
      
      public function get campaignID() : String
      {
         return this.var_209;
      }
      
      public function set campaignID(param1:String) : void
      {
         this.var_209 = param1;
      }
      
      public function set itemCategory(param1:int) : void
      {
         this.var_1649 = param1;
      }
   }
}
