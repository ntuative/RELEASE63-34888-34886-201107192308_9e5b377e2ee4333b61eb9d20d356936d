package com.sulake.habbo.communication.messages.parser.room.furniture
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class OpenPetPackageResultMessageParser implements IMessageParser
   {
       
      
      private var var_240:int = 0;
      
      private var var_1760:int = 0;
      
      private var var_1761:String = null;
      
      public function OpenPetPackageResultMessageParser()
      {
         super();
      }
      
      public function get objectId() : int
      {
         return this.var_240;
      }
      
      public function get nameValidationStatus() : int
      {
         return this.var_1760;
      }
      
      public function get nameValidationInfo() : String
      {
         return this.var_1761;
      }
      
      public function flush() : Boolean
      {
         this.var_240 = 0;
         this.var_1760 = 0;
         this.var_1761 = null;
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         if(param1 == null)
         {
            return false;
         }
         this.var_240 = param1.readInteger();
         this.var_1760 = param1.readInteger();
         this.var_1761 = param1.readString();
         return true;
      }
   }
}
