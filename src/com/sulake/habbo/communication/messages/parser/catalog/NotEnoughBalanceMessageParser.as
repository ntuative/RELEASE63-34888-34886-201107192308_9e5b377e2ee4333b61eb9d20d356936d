package com.sulake.habbo.communication.messages.parser.catalog
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class NotEnoughBalanceMessageParser implements IMessageParser
   {
       
      
      private var var_1814:int = 0;
      
      private var var_1813:int = 0;
      
      private var var_2130:int = 0;
      
      public function NotEnoughBalanceMessageParser()
      {
         super();
      }
      
      public function get notEnoughCredits() : int
      {
         return this.var_1814;
      }
      
      public function get notEnoughActivityPoints() : int
      {
         return this.var_1813;
      }
      
      public function get activityPointType() : int
      {
         return this.var_2130;
      }
      
      public function flush() : Boolean
      {
         this.var_1814 = 0;
         this.var_1813 = 0;
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_1814 = param1.readInteger();
         this.var_1813 = param1.readInteger();
         this.var_2130 = param1.readInteger();
         return true;
      }
   }
}
