package com.sulake.habbo.communication.messages.incoming.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class FlatCategory
   {
       
      
      private var var_1915:int;
      
      private var var_2530:String;
      
      private var var_353:Boolean;
      
      public function FlatCategory(param1:IMessageDataWrapper)
      {
         super();
         this.var_1915 = param1.readInteger();
         this.var_2530 = param1.readString();
         this.var_353 = param1.readBoolean();
      }
      
      public function get nodeId() : int
      {
         return this.var_1915;
      }
      
      public function get nodeName() : String
      {
         return this.var_2530;
      }
      
      public function get visible() : Boolean
      {
         return this.var_353;
      }
   }
}
