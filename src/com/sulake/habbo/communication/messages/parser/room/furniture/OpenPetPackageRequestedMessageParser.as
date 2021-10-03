package com.sulake.habbo.communication.messages.parser.room.furniture
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class OpenPetPackageRequestedMessageParser implements IMessageParser
   {
       
      
      private var var_240:int = -1;
      
      private var var_1326:int = -1;
      
      private var var_1926:int = -1;
      
      private var _color:String = "";
      
      public function OpenPetPackageRequestedMessageParser()
      {
         super();
      }
      
      public function get objectId() : int
      {
         return this.var_240;
      }
      
      public function get petType() : int
      {
         return this.var_1326;
      }
      
      public function get breed() : int
      {
         return this.var_1926;
      }
      
      public function get color() : String
      {
         return this._color;
      }
      
      public function flush() : Boolean
      {
         this.var_240 = -1;
         this.var_1326 = -1;
         this.var_1926 = -1;
         this._color = "";
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         if(param1 == null)
         {
            return false;
         }
         this.var_240 = param1.readInteger();
         this.var_1326 = param1.readInteger();
         this.var_1926 = param1.readInteger();
         this._color = param1.readString();
         return true;
      }
   }
}
