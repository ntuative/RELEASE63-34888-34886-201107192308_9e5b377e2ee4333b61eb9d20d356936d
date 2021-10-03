package com.sulake.habbo.room.object
{
   public class RoomStairData
   {
       
      
      private var var_3005:int;
      
      private var var_2176:Boolean;
      
      private var var_2175:Boolean;
      
      private var var_47:Boolean;
      
      public function RoomStairData(param1:int, param2:Boolean, param3:Boolean, param4:Boolean)
      {
         super();
         this.var_47 = param4;
         this.var_3005 = param1;
         this.var_2176 = param2;
         this.var_2175 = param3;
      }
      
      public function get stairHeight() : int
      {
         return this.var_3005;
      }
      
      public function get neighbourStairMin() : Boolean
      {
         return this.var_2176;
      }
      
      public function get neighbourStairMax() : Boolean
      {
         return this.var_2175;
      }
      
      public function get neighbourStair() : Boolean
      {
         return this.var_2176 || this.var_2175;
      }
      
      public function get border() : Boolean
      {
         return this.var_47;
      }
   }
}
