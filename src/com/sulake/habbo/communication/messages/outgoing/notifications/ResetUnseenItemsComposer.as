package com.sulake.habbo.communication.messages.outgoing.notifications
{
   import com.sulake.core.communication.messages.IMessageComposer;
   import com.sulake.core.runtime.IDisposable;
   
   public class ResetUnseenItemsComposer implements IMessageComposer, IDisposable
   {
       
      
      private var var_34:Array;
      
      public function ResetUnseenItemsComposer(param1:int)
      {
         this.var_34 = new Array();
         super();
         this.var_34.push(param1);
      }
      
      public function getMessageArray() : Array
      {
         return this.var_34;
      }
      
      public function dispose() : void
      {
         this.var_34 = null;
      }
      
      public function get disposed() : Boolean
      {
         return false;
      }
   }
}
