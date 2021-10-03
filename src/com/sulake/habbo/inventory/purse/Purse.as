package com.sulake.habbo.inventory.purse
{
   public class Purse
   {
       
      
      private var var_1767:int = 0;
      
      private var var_1768:int = 0;
      
      private var var_2904:int = 0;
      
      private var var_2903:Boolean = false;
      
      private var var_2377:Boolean = false;
      
      private var var_2378:Boolean = false;
      
      public function Purse()
      {
         super();
      }
      
      public function set clubDays(param1:int) : void
      {
         this.var_1767 = Math.max(0,param1);
      }
      
      public function set clubPeriods(param1:int) : void
      {
         this.var_1768 = Math.max(0,param1);
      }
      
      public function set clubPastPeriods(param1:int) : void
      {
         this.var_2904 = Math.max(0,param1);
      }
      
      public function set clubHasEverBeenMember(param1:Boolean) : void
      {
         this.var_2903 = param1;
      }
      
      public function set isVIP(param1:Boolean) : void
      {
         this.var_2377 = param1;
      }
      
      public function set clubIsExpiring(param1:Boolean) : void
      {
         this.var_2378 = param1;
      }
      
      public function get clubDays() : int
      {
         return this.var_1767;
      }
      
      public function get clubPeriods() : int
      {
         return this.var_1768;
      }
      
      public function get clubPastPeriods() : int
      {
         return this.var_2904;
      }
      
      public function get clubHasEverBeenMember() : Boolean
      {
         return this.var_2903;
      }
      
      public function get isVIP() : Boolean
      {
         return this.var_2377;
      }
      
      public function get clubIsExpiring() : Boolean
      {
         return this.var_2378;
      }
   }
}
