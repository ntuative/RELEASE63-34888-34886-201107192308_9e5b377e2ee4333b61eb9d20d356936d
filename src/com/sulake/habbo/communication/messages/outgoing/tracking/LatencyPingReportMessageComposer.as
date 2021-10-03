package com.sulake.habbo.communication.messages.outgoing.tracking
{
   import com.sulake.core.communication.messages.IMessageComposer;
   
   public class LatencyPingReportMessageComposer implements IMessageComposer
   {
       
      
      private var var_2484:int;
      
      private var var_2486:int;
      
      private var var_2485:int;
      
      public function LatencyPingReportMessageComposer(param1:int, param2:int, param3:int)
      {
         super();
         this.var_2484 = param1;
         this.var_2486 = param2;
         this.var_2485 = param3;
      }
      
      public function getMessageArray() : Array
      {
         return [this.var_2484,this.var_2486,this.var_2485];
      }
      
      public function dispose() : void
      {
      }
   }
}
