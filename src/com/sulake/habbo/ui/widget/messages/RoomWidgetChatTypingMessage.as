package com.sulake.habbo.ui.widget.messages
{
   public class RoomWidgetChatTypingMessage extends RoomWidgetMessage
   {
      
      public static const const_832:String = "RWCTM_TYPING_STATUS";
       
      
      private var var_717:Boolean;
      
      public function RoomWidgetChatTypingMessage(param1:Boolean)
      {
         super(const_832);
         this.var_717 = param1;
      }
      
      public function get isTyping() : Boolean
      {
         return this.var_717;
      }
   }
}
