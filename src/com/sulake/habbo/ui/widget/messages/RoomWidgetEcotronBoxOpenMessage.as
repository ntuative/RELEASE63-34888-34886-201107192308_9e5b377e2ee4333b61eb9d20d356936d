package com.sulake.habbo.ui.widget.messages
{
   public class RoomWidgetEcotronBoxOpenMessage extends RoomWidgetMessage
   {
      
      public static const const_749:String = "RWEBOM_OPEN_ECOTRONBOX";
       
      
      private var var_240:int;
      
      public function RoomWidgetEcotronBoxOpenMessage(param1:String, param2:int)
      {
         super(param1);
         this.var_240 = param2;
      }
      
      public function get objectId() : int
      {
         return this.var_240;
      }
   }
}
