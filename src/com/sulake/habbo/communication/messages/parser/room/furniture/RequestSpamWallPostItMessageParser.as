package com.sulake.habbo.communication.messages.parser.room.furniture
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class RequestSpamWallPostItMessageParser implements IMessageParser
   {
       
      
      private var var_1775:int;
      
      private var var_463:String;
      
      public function RequestSpamWallPostItMessageParser()
      {
         super();
      }
      
      public function get itemId() : int
      {
         return this.var_1775;
      }
      
      public function get location() : String
      {
         return this.var_463;
      }
      
      public function flush() : Boolean
      {
         this.var_1775 = -1;
         this.var_463 = "";
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         if(param1 == null)
         {
            return false;
         }
         this.var_1775 = param1.readInteger();
         this.var_463 = param1.readString();
         return true;
      }
   }
}
