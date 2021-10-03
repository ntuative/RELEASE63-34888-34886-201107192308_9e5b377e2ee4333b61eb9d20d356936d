package com.sulake.habbo.ui.widget.messages
{
   public class RoomWidgetOpenInventoryMessage extends RoomWidgetMessage
   {
      
      public static const const_771:String = "RWGOI_MESSAGE_OPEN_INVENTORY";
      
      public static const const_1938:String = "inventory_effects";
      
      public static const const_1260:String = "inventory_badges";
      
      public static const const_1983:String = "inventory_clothes";
      
      public static const const_1749:String = "inventory_furniture";
       
      
      private var var_3040:String;
      
      public function RoomWidgetOpenInventoryMessage(param1:String)
      {
         super(const_771);
         this.var_3040 = param1;
      }
      
      public function get inventoryType() : String
      {
         return this.var_3040;
      }
   }
}
