package com.sulake.habbo.communication.messages.parser.room.pets
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class PetInfoMessageParser implements IMessageParser
   {
       
      
      private var var_2101:int;
      
      private var _name:String;
      
      private var var_1390:int;
      
      private var var_2917:int;
      
      private var var_2427:int;
      
      private var _energy:int;
      
      private var _nutrition:int;
      
      private var _figure:String;
      
      private var var_2918:int;
      
      private var var_2916:int;
      
      private var var_2915:int;
      
      private var var_2310:int;
      
      private var var_2430:int;
      
      private var _ownerName:String;
      
      private var var_584:int;
      
      public function PetInfoMessageParser()
      {
         super();
      }
      
      public function get petId() : int
      {
         return this.var_2101;
      }
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function get level() : int
      {
         return this.var_1390;
      }
      
      public function get maxLevel() : int
      {
         return this.var_2917;
      }
      
      public function get experience() : int
      {
         return this.var_2427;
      }
      
      public function get energy() : int
      {
         return this._energy;
      }
      
      public function get nutrition() : int
      {
         return this._nutrition;
      }
      
      public function get figure() : String
      {
         return this._figure;
      }
      
      public function get experienceRequiredToLevel() : int
      {
         return this.var_2918;
      }
      
      public function get maxEnergy() : int
      {
         return this.var_2916;
      }
      
      public function get maxNutrition() : int
      {
         return this.var_2915;
      }
      
      public function get respect() : int
      {
         return this.var_2310;
      }
      
      public function get ownerId() : int
      {
         return this.var_2430;
      }
      
      public function get ownerName() : String
      {
         return this._ownerName;
      }
      
      public function get age() : int
      {
         return this.var_584;
      }
      
      public function flush() : Boolean
      {
         this.var_2101 = -1;
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         if(param1 == null)
         {
            return false;
         }
         this.var_2101 = param1.readInteger();
         this._name = param1.readString();
         this.var_1390 = param1.readInteger();
         this.var_2917 = param1.readInteger();
         this.var_2427 = param1.readInteger();
         this.var_2918 = param1.readInteger();
         this._energy = param1.readInteger();
         this.var_2916 = param1.readInteger();
         this._nutrition = param1.readInteger();
         this.var_2915 = param1.readInteger();
         this._figure = param1.readString();
         this.var_2310 = param1.readInteger();
         this.var_2430 = param1.readInteger();
         this.var_584 = param1.readInteger();
         this._ownerName = param1.readString();
         return true;
      }
   }
}
