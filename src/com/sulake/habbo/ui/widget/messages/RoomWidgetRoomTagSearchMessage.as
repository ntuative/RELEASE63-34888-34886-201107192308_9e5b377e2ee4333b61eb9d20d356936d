package com.sulake.habbo.ui.widget.messages
{
   public class RoomWidgetRoomTagSearchMessage extends RoomWidgetMessage
   {
      
      public static const const_975:String = "RWRTSM_ROOM_TAG_SEARCH";
       
      
      private var var_2297:String = "";
      
      public function RoomWidgetRoomTagSearchMessage(param1:String)
      {
         super(const_975);
         this.var_2297 = param1;
      }
      
      public function get tag() : String
      {
         return this.var_2297;
      }
   }
}
