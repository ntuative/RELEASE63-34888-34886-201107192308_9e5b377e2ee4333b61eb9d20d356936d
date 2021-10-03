package com.sulake.habbo.ui.widget.messages
{
   public class RoomWidgetGetBadgeImageMessage extends RoomWidgetMessage
   {
      
      public static const const_1013:String = "RWGOI_MESSAGE_GET_BADGE_IMAGE";
       
      
      private var var_1791:String = "";
      
      public function RoomWidgetGetBadgeImageMessage(param1:String)
      {
         super(const_1013);
         this.var_1791 = param1;
      }
      
      public function get badgeId() : String
      {
         return this.var_1791;
      }
   }
}
