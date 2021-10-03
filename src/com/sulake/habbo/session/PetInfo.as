package com.sulake.habbo.session
{
   public class PetInfo implements IPetInfo
   {
       
      
      private var var_2101:int;
      
      private var var_1390:int;
      
      private var var_2426:int;
      
      private var var_2427:int;
      
      private var var_2429:int;
      
      private var _energy:int;
      
      private var var_2431:int;
      
      private var _nutrition:int;
      
      private var var_2428:int;
      
      private var var_2430:int;
      
      private var _ownerName:String;
      
      private var var_2310:int;
      
      private var var_584:int;
      
      public function PetInfo()
      {
         super();
      }
      
      public function get petId() : int
      {
         return this.var_2101;
      }
      
      public function get level() : int
      {
         return this.var_1390;
      }
      
      public function get levelMax() : int
      {
         return this.var_2426;
      }
      
      public function get experience() : int
      {
         return this.var_2427;
      }
      
      public function get experienceMax() : int
      {
         return this.var_2429;
      }
      
      public function get energy() : int
      {
         return this._energy;
      }
      
      public function get energyMax() : int
      {
         return this.var_2431;
      }
      
      public function get nutrition() : int
      {
         return this._nutrition;
      }
      
      public function get nutritionMax() : int
      {
         return this.var_2428;
      }
      
      public function get ownerId() : int
      {
         return this.var_2430;
      }
      
      public function get ownerName() : String
      {
         return this._ownerName;
      }
      
      public function get respect() : int
      {
         return this.var_2310;
      }
      
      public function get age() : int
      {
         return this.var_584;
      }
      
      public function set petId(param1:int) : void
      {
         this.var_2101 = param1;
      }
      
      public function set level(param1:int) : void
      {
         this.var_1390 = param1;
      }
      
      public function set levelMax(param1:int) : void
      {
         this.var_2426 = param1;
      }
      
      public function set experience(param1:int) : void
      {
         this.var_2427 = param1;
      }
      
      public function set experienceMax(param1:int) : void
      {
         this.var_2429 = param1;
      }
      
      public function set energy(param1:int) : void
      {
         this._energy = param1;
      }
      
      public function set energyMax(param1:int) : void
      {
         this.var_2431 = param1;
      }
      
      public function set nutrition(param1:int) : void
      {
         this._nutrition = param1;
      }
      
      public function set nutritionMax(param1:int) : void
      {
         this.var_2428 = param1;
      }
      
      public function set ownerId(param1:int) : void
      {
         this.var_2430 = param1;
      }
      
      public function set ownerName(param1:String) : void
      {
         this._ownerName = param1;
      }
      
      public function set respect(param1:int) : void
      {
         this.var_2310 = param1;
      }
      
      public function set age(param1:int) : void
      {
         this.var_584 = param1;
      }
   }
}
