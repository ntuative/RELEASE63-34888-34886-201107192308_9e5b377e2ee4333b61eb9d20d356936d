package com.sulake.habbo.room.object.visualization.room
{
   public class RoomPlaneRectangleMask
   {
       
      
      private var var_2608:Number = 0.0;
      
      private var var_2610:Number = 0.0;
      
      private var var_2609:Number = 0.0;
      
      private var var_2611:Number = 0.0;
      
      public function RoomPlaneRectangleMask(param1:Number, param2:Number, param3:Number, param4:Number)
      {
         super();
         this.var_2608 = param1;
         this.var_2610 = param2;
         this.var_2609 = param3;
         this.var_2611 = param4;
      }
      
      public function get leftSideLoc() : Number
      {
         return this.var_2608;
      }
      
      public function get rightSideLoc() : Number
      {
         return this.var_2610;
      }
      
      public function get leftSideLength() : Number
      {
         return this.var_2609;
      }
      
      public function get rightSideLength() : Number
      {
         return this.var_2611;
      }
   }
}
