package com.sulake.habbo.communication.messages.outgoing.room.furniture
{
   import com.sulake.core.communication.messages.IMessageComposer;
   
   public class OpenPetPackageMessageComposer implements IMessageComposer
   {
       
      
      private var var_240:int;
      
      private var var_2307:String;
      
      public function OpenPetPackageMessageComposer(param1:int, param2:String)
      {
         super();
         this.var_240 = param1;
         this.var_2307 = param2;
      }
      
      public function getMessageArray() : Array
      {
         return [this.var_240,this.var_2307];
      }
      
      public function dispose() : void
      {
      }
   }
}
