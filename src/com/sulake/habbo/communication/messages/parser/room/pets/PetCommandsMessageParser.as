package com.sulake.habbo.communication.messages.parser.room.pets
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class PetCommandsMessageParser implements IMessageParser
   {
       
      
      private var var_2101:int;
      
      private var var_1654:Array;
      
      private var var_1193:Array;
      
      public function PetCommandsMessageParser()
      {
         super();
      }
      
      public function get petId() : int
      {
         return this.var_2101;
      }
      
      public function get allCommands() : Array
      {
         return this.var_1654;
      }
      
      public function get enabledCommands() : Array
      {
         return this.var_1193;
      }
      
      public function flush() : Boolean
      {
         this.var_2101 = -1;
         this.var_1654 = null;
         this.var_1193 = null;
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         if(param1 == null)
         {
            return false;
         }
         this.var_2101 = param1.readInteger();
         var _loc2_:int = param1.readInteger();
         this.var_1654 = new Array();
         while(_loc2_-- > 0)
         {
            this.var_1654.push(param1.readInteger());
         }
         var _loc3_:int = param1.readInteger();
         this.var_1193 = new Array();
         while(_loc3_-- > 0)
         {
            this.var_1193.push(param1.readInteger());
         }
         return true;
      }
   }
}
