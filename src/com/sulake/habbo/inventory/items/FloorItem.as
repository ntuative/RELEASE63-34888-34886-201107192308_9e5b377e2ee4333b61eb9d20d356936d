package com.sulake.habbo.inventory.items
{
   public class FloorItem implements IItem
   {
       
      
      protected var _id:int;
      
      protected var _ref:int;
      
      protected var _category:int;
      
      protected var _type:int;
      
      protected var var_2257:String;
      
      protected var var_1510:Number;
      
      protected var var_3053:Boolean;
      
      protected var var_3054:Boolean;
      
      protected var var_2280:Boolean;
      
      protected var var_2719:Boolean;
      
      protected var var_3066:int;
      
      protected var var_2285:int;
      
      protected var var_2287:int;
      
      protected var var_2282:int;
      
      protected var var_1751:String;
      
      protected var var_1486:int;
      
      protected var var_1111:Boolean;
      
      public function FloorItem(param1:int, param2:int, param3:int, param4:int, param5:Boolean, param6:Boolean, param7:Boolean, param8:Boolean, param9:String, param10:Number, param11:int, param12:int, param13:int, param14:int, param15:String, param16:int)
      {
         super();
         this._id = param1;
         this._type = param2;
         this._ref = param3;
         this._category = param4;
         this.var_2280 = param5;
         this.var_3054 = param6;
         this.var_3053 = param7;
         this.var_2719 = param8;
         this.var_2257 = param9;
         this.var_1510 = param10;
         this.var_3066 = param11;
         this.var_2285 = param12;
         this.var_2287 = param13;
         this.var_2282 = param14;
         this.var_1751 = param15;
         this.var_1486 = param16;
      }
      
      public function get id() : int
      {
         return this._id;
      }
      
      public function get ref() : int
      {
         return this._ref;
      }
      
      public function get category() : int
      {
         return this._category;
      }
      
      public function get type() : int
      {
         return this._type;
      }
      
      public function get stuffData() : String
      {
         return this.var_2257;
      }
      
      public function get extra() : Number
      {
         return this.var_1510;
      }
      
      public function get recyclable() : Boolean
      {
         return this.var_3053;
      }
      
      public function get tradeable() : Boolean
      {
         return this.var_3054;
      }
      
      public function get groupable() : Boolean
      {
         return this.var_2280;
      }
      
      public function get sellable() : Boolean
      {
         return this.var_2719;
      }
      
      public function get expires() : int
      {
         return this.var_3066;
      }
      
      public function get creationDay() : int
      {
         return this.var_2285;
      }
      
      public function get creationMonth() : int
      {
         return this.var_2287;
      }
      
      public function get creationYear() : int
      {
         return this.var_2282;
      }
      
      public function get slotId() : String
      {
         return this.var_1751;
      }
      
      public function get songId() : int
      {
         return this.var_1486;
      }
      
      public function set locked(param1:Boolean) : void
      {
         this.var_1111 = param1;
      }
      
      public function get locked() : Boolean
      {
         return this.var_1111;
      }
   }
}
