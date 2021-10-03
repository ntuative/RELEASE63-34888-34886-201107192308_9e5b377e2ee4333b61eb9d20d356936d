package com.sulake.habbo.communication.messages.incoming.friendlist
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class FriendRequestData
   {
       
      
      private var var_1270:int;
      
      private var var_2703:String;
      
      private var var_2704:int;
      
      private var var_2369:String;
      
      public function FriendRequestData(param1:IMessageDataWrapper)
      {
         super();
         this.var_1270 = param1.readInteger();
         this.var_2703 = param1.readString();
         this.var_2369 = param1.readString();
         this.var_2704 = this.var_1270;
      }
      
      public function get requestId() : int
      {
         return this.var_1270;
      }
      
      public function get requesterName() : String
      {
         return this.var_2703;
      }
      
      public function get requesterUserId() : int
      {
         return this.var_2704;
      }
      
      public function get figureString() : String
      {
         return this.var_2369;
      }
   }
}
