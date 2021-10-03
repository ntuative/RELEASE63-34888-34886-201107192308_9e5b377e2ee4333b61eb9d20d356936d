package com.sulake.habbo.ui.widget.events
{
   import flash.display.BitmapData;
   
   public class RoomWidgetChatUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_756:String = "RWCUE_EVENT_CHAT";
      
      public static const const_128:int = 0;
      
      public static const const_156:int = 1;
      
      public static const const_136:int = 2;
      
      public static const const_355:int = 3;
      
      public static const const_342:int = 4;
       
      
      private var _userId:int = 0;
      
      private var _text:String = "";
      
      private var var_1549:int = 0;
      
      private var _userName:String;
      
      private var var_1574:Array;
      
      private var var_3024:Number;
      
      private var var_3023:Number;
      
      private var var_3022:BitmapData;
      
      private var var_3020:uint;
      
      private var _roomId:int;
      
      private var _roomCategory:int;
      
      private var var_3021:int;
      
      public function RoomWidgetChatUpdateEvent(param1:String, param2:int, param3:String, param4:String, param5:int, param6:Number, param7:Number, param8:BitmapData, param9:uint, param10:int, param11:int, param12:int = 0, param13:Array = null, param14:Boolean = false, param15:Boolean = false)
      {
         super(param1,param14,param15);
         this._userId = param2;
         this._text = param3;
         this.var_1549 = param12;
         this._userName = param4;
         this.var_3021 = param5;
         this.var_1574 = param13;
         this.var_3024 = param6;
         this.var_3023 = param7;
         this.var_3022 = param8;
         this.var_3020 = param9;
         this._roomId = param10;
         this._roomCategory = param11;
      }
      
      public function get userId() : int
      {
         return this._userId;
      }
      
      public function get text() : String
      {
         return this._text;
      }
      
      public function get chatType() : int
      {
         return this.var_1549;
      }
      
      public function get userName() : String
      {
         return this._userName;
      }
      
      public function get userCategory() : int
      {
         return this.var_3021;
      }
      
      public function get links() : Array
      {
         return this.var_1574;
      }
      
      public function get userX() : Number
      {
         return this.var_3024;
      }
      
      public function get userY() : Number
      {
         return this.var_3023;
      }
      
      public function get userImage() : BitmapData
      {
         return this.var_3022;
      }
      
      public function get userColor() : uint
      {
         return this.var_3020;
      }
      
      public function get roomId() : int
      {
         return this._roomId;
      }
      
      public function get roomCategory() : int
      {
         return this._roomCategory;
      }
   }
}
