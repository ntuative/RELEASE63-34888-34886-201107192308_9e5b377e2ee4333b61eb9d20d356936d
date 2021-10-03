package com.sulake.habbo.communication.messages.parser.catalog
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class GiftWrappingConfigurationParser implements IMessageParser
   {
       
      
      private var var_2846:Boolean;
      
      private var var_2847:int;
      
      private var var_1856:Array;
      
      private var var_818:Array;
      
      private var var_819:Array;
      
      public function GiftWrappingConfigurationParser()
      {
         super();
      }
      
      public function get isWrappingEnabled() : Boolean
      {
         return this.var_2846;
      }
      
      public function get wrappingPrice() : int
      {
         return this.var_2847;
      }
      
      public function get stuffTypes() : Array
      {
         return this.var_1856;
      }
      
      public function get boxTypes() : Array
      {
         return this.var_818;
      }
      
      public function get ribbonTypes() : Array
      {
         return this.var_819;
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var _loc2_:int = 0;
         this.var_1856 = [];
         this.var_818 = [];
         this.var_819 = [];
         this.var_2846 = param1.readBoolean();
         this.var_2847 = param1.readInteger();
         var _loc3_:int = param1.readInteger();
         _loc2_ = 0;
         while(_loc2_ < _loc3_)
         {
            this.var_1856.push(param1.readInteger());
            _loc2_++;
         }
         _loc3_ = param1.readInteger();
         _loc2_ = 0;
         while(_loc2_ < _loc3_)
         {
            this.var_818.push(param1.readInteger());
            _loc2_++;
         }
         _loc3_ = param1.readInteger();
         _loc2_ = 0;
         while(_loc2_ < _loc3_)
         {
            this.var_819.push(param1.readInteger());
            _loc2_++;
         }
         return true;
      }
   }
}
