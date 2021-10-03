package com.sulake.habbo.ui.widget.messages
{
   public class RoomWidgetOpenCatalogMessage extends RoomWidgetMessage
   {
      
      public static const const_867:String = "RWGOI_MESSAGE_OPEN_CATALOG";
      
      public static const const_1333:String = "RWOCM_CLUB_MAIN";
      
      public static const const_2310:String = "RWOCM_PIXELS";
      
      public static const const_2239:String = "RWOCM_CREDITS";
      
      public static const const_2244:String = "RWOCM_SHELLS";
       
      
      private var var_2385:String = "";
      
      public function RoomWidgetOpenCatalogMessage(param1:String)
      {
         super(const_867);
         this.var_2385 = param1;
      }
      
      public function get pageKey() : String
      {
         return this.var_2385;
      }
   }
}
