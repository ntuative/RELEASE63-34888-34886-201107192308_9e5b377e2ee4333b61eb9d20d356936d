package com.sulake.habbo.ui.widget.messages
{
   public class RoomWidgetVoteMessage extends RoomWidgetMessage
   {
      
      public static const const_129:String = "RWVM_VOTE_MESSAGE";
       
      
      private var var_1801:int;
      
      public function RoomWidgetVoteMessage(param1:int)
      {
         super(const_129);
         this.var_1801 = param1;
      }
      
      public function get vote() : int
      {
         return this.var_1801;
      }
   }
}
