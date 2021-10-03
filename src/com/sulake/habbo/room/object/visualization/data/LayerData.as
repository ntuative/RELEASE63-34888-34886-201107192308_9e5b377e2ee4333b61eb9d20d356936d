package com.sulake.habbo.room.object.visualization.data
{
   public class LayerData
   {
      
      public static const const_863:String = "";
      
      public static const const_461:int = 0;
      
      public static const const_632:int = 255;
      
      public static const const_953:Boolean = false;
      
      public static const const_504:int = 0;
      
      public static const const_627:int = 0;
      
      public static const const_447:int = 0;
      
      public static const const_1347:int = 1;
      
      public static const const_1200:int = 2;
      
      public static const INK_DARKEN:int = 3;
       
      
      private var var_2297:String = "";
      
      private var var_1967:int = 0;
      
      private var var_2554:int = 255;
      
      private var var_2716:Boolean = false;
      
      private var var_2714:int = 0;
      
      private var var_2717:int = 0;
      
      private var var_2715:Number = 0;
      
      public function LayerData()
      {
         super();
      }
      
      public function set tag(param1:String) : void
      {
         this.var_2297 = param1;
      }
      
      public function get tag() : String
      {
         return this.var_2297;
      }
      
      public function set ink(param1:int) : void
      {
         this.var_1967 = param1;
      }
      
      public function get ink() : int
      {
         return this.var_1967;
      }
      
      public function set alpha(param1:int) : void
      {
         this.var_2554 = param1;
      }
      
      public function get alpha() : int
      {
         return this.var_2554;
      }
      
      public function set ignoreMouse(param1:Boolean) : void
      {
         this.var_2716 = param1;
      }
      
      public function get ignoreMouse() : Boolean
      {
         return this.var_2716;
      }
      
      public function set xOffset(param1:int) : void
      {
         this.var_2714 = param1;
      }
      
      public function get xOffset() : int
      {
         return this.var_2714;
      }
      
      public function set yOffset(param1:int) : void
      {
         this.var_2717 = param1;
      }
      
      public function get yOffset() : int
      {
         return this.var_2717;
      }
      
      public function set zOffset(param1:Number) : void
      {
         this.var_2715 = param1;
      }
      
      public function get zOffset() : Number
      {
         return this.var_2715;
      }
      
      public function copyValues(param1:LayerData) : void
      {
         if(param1 != null)
         {
            this.tag = param1.tag;
            this.ink = param1.ink;
            this.alpha = param1.alpha;
            this.ignoreMouse = param1.ignoreMouse;
            this.xOffset = param1.xOffset;
            this.yOffset = param1.yOffset;
            this.zOffset = param1.zOffset;
         }
      }
   }
}
