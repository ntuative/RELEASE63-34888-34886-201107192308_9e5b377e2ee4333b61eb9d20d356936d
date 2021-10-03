package com.sulake.habbo.communication.messages.incoming.moderation
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class CfhChatlogData
   {
       
      
      private var var_1787:int;
      
      private var var_2418:int;
      
      private var var_1459:int;
      
      private var var_2419:int;
      
      private var var_133:RoomChatlogData;
      
      public function CfhChatlogData(param1:IMessageDataWrapper)
      {
         super();
         this.var_1787 = param1.readInteger();
         this.var_2418 = param1.readInteger();
         this.var_1459 = param1.readInteger();
         this.var_2419 = param1.readInteger();
         this.var_133 = new RoomChatlogData(param1);
         Logger.log("READ CFHCHATLOGDATA: callId: " + this.var_1787);
      }
      
      public function get callId() : int
      {
         return this.var_1787;
      }
      
      public function get callerUserId() : int
      {
         return this.var_2418;
      }
      
      public function get reportedUserId() : int
      {
         return this.var_1459;
      }
      
      public function get chatRecordId() : int
      {
         return this.var_2419;
      }
      
      public function get room() : RoomChatlogData
      {
         return this.var_133;
      }
   }
}
