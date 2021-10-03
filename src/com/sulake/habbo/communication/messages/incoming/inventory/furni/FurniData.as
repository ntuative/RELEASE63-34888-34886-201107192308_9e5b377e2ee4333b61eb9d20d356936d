package com.sulake.habbo.communication.messages.incoming.inventory.furni
{
   public class FurniData
   {
       
      
      private var var_2300:int;
      
      private var var_1513:String;
      
      private var _objId:int;
      
      private var var_1921:int;
      
      private var _category:int;
      
      private var var_2257:String;
      
      private var var_2510:Boolean;
      
      private var var_2512:Boolean;
      
      private var var_2511:Boolean;
      
      private var var_2513:Boolean;
      
      private var var_2409:int;
      
      private var var_1510:int;
      
      private var var_1751:String = "";
      
      private var var_1486:int = -1;
      
      public function FurniData(param1:int, param2:String, param3:int, param4:int, param5:int, param6:String, param7:Boolean, param8:Boolean, param9:Boolean, param10:Boolean, param11:int)
      {
         super();
         this.var_2300 = param1;
         this.var_1513 = param2;
         this._objId = param3;
         this.var_1921 = param4;
         this._category = param5;
         this.var_2257 = param6;
         this.var_2510 = param7;
         this.var_2512 = param8;
         this.var_2511 = param9;
         this.var_2513 = param10;
         this.var_2409 = param11;
      }
      
      public function setExtraData(param1:String, param2:int) : void
      {
         this.var_1751 = param1;
         this.var_1510 = param2;
      }
      
      public function get stripId() : int
      {
         return this.var_2300;
      }
      
      public function get itemType() : String
      {
         return this.var_1513;
      }
      
      public function get objId() : int
      {
         return this._objId;
      }
      
      public function get classId() : int
      {
         return this.var_1921;
      }
      
      public function get category() : int
      {
         return this._category;
      }
      
      public function get stuffData() : String
      {
         return this.var_2257;
      }
      
      public function get isGroupable() : Boolean
      {
         return this.var_2510;
      }
      
      public function get isRecyclable() : Boolean
      {
         return this.var_2512;
      }
      
      public function get isTradeable() : Boolean
      {
         return this.var_2511;
      }
      
      public function get isSellable() : Boolean
      {
         return this.var_2513;
      }
      
      public function get expiryTime() : int
      {
         return this.var_2409;
      }
      
      public function get slotId() : String
      {
         return this.var_1751;
      }
      
      public function get songId() : int
      {
         return this.var_1486;
      }
      
      public function get extra() : int
      {
         return this.var_1510;
      }
   }
}
