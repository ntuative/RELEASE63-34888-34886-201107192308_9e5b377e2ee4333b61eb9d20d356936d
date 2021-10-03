package com.sulake.habbo.catalog.purse
{
   import flash.utils.Dictionary;
   
   public class Purse implements IPurse
   {
       
      
      private var var_2199:int = 0;
      
      private var var_1464:Dictionary;
      
      private var var_1767:int = 0;
      
      private var var_1768:int = 0;
      
      private var var_2377:Boolean = false;
      
      private var var_2379:int = 0;
      
      private var var_2380:int = 0;
      
      private var var_2378:Boolean = false;
      
      public function Purse()
      {
         this.var_1464 = new Dictionary();
         super();
      }
      
      public function get credits() : int
      {
         return this.var_2199;
      }
      
      public function set credits(param1:int) : void
      {
         this.var_2199 = param1;
      }
      
      public function get clubDays() : int
      {
         return this.var_1767;
      }
      
      public function set clubDays(param1:int) : void
      {
         this.var_1767 = param1;
      }
      
      public function get clubPeriods() : int
      {
         return this.var_1768;
      }
      
      public function set clubPeriods(param1:int) : void
      {
         this.var_1768 = param1;
      }
      
      public function get hasClubLeft() : Boolean
      {
         return this.var_1767 > 0 || this.var_1768 > 0;
      }
      
      public function get isVIP() : Boolean
      {
         return this.var_2377;
      }
      
      public function get isExpiring() : Boolean
      {
         return this.var_2378;
      }
      
      public function set isExpiring(param1:Boolean) : void
      {
         this.var_2378 = param1;
      }
      
      public function set isVIP(param1:Boolean) : void
      {
         this.var_2377 = param1;
      }
      
      public function get pastClubDays() : int
      {
         return this.var_2379;
      }
      
      public function set pastClubDays(param1:int) : void
      {
         this.var_2379 = param1;
      }
      
      public function get pastVipDays() : int
      {
         return this.var_2380;
      }
      
      public function set pastVipDays(param1:int) : void
      {
         this.var_2380 = param1;
      }
      
      public function get activityPoints() : Dictionary
      {
         return this.var_1464;
      }
      
      public function set activityPoints(param1:Dictionary) : void
      {
         this.var_1464 = param1;
      }
      
      public function getActivityPointsForType(param1:int) : int
      {
         return this.var_1464[param1];
      }
   }
}
