package com.sulake.habbo.communication.messages.parser.marketplace
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class MarketplaceConfigurationParser implements IMessageParser
   {
       
      
      private var var_1454:Boolean;
      
      private var var_2670:int;
      
      private var var_2193:int;
      
      private var var_2192:int;
      
      private var var_2668:int;
      
      private var var_2671:int;
      
      private var var_2669:int;
      
      private var var_2672:int;
      
      public function MarketplaceConfigurationParser()
      {
         super();
      }
      
      public function get isEnabled() : Boolean
      {
         return this.var_1454;
      }
      
      public function get commission() : int
      {
         return this.var_2670;
      }
      
      public function get tokenBatchPrice() : int
      {
         return this.var_2193;
      }
      
      public function get tokenBatchSize() : int
      {
         return this.var_2192;
      }
      
      public function get offerMinPrice() : int
      {
         return this.var_2671;
      }
      
      public function get offerMaxPrice() : int
      {
         return this.var_2668;
      }
      
      public function get expirationHours() : int
      {
         return this.var_2669;
      }
      
      public function get averagePricePeriod() : int
      {
         return this.var_2672;
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_1454 = param1.readBoolean();
         this.var_2670 = param1.readInteger();
         this.var_2193 = param1.readInteger();
         this.var_2192 = param1.readInteger();
         this.var_2671 = param1.readInteger();
         this.var_2668 = param1.readInteger();
         this.var_2669 = param1.readInteger();
         this.var_2672 = param1.readInteger();
         return true;
      }
   }
}
