package com.sulake.habbo.communication.messages.parser.room.publicroom
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class ParkBusDoorMessageParser implements IMessageParser
   {
       
      
      private var var_431:int;
      
      private var _roomId:int = 0;
      
      private var _roomCategory:int = 0;
      
      public function ParkBusDoorMessageParser()
      {
         super();
      }
      
      public function get roomId() : int
      {
         return this._roomId;
      }
      
      public function get roomCategory() : int
      {
         return this._roomCategory;
      }
      
      public function get status() : int
      {
         return this.var_431;
      }
      
      public function flush() : Boolean
      {
         this.var_431 = 0;
         this._roomId = 0;
         this._roomCategory = 0;
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_431 = param1.readInteger();
         return true;
      }
   }
}
