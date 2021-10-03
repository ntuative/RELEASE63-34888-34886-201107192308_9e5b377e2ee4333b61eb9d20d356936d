package com.sulake.habbo.sound.music
{
   import flash.utils.getTimer;
   
   public class SongStartRequestData
   {
       
      
      private var var_1486:int;
      
      private var var_2120:Number;
      
      private var var_2928:Number;
      
      private var var_2930:int;
      
      private var var_2931:Number;
      
      private var var_2929:Number;
      
      public function SongStartRequestData(param1:int, param2:Number, param3:Number, param4:Number = 2.0, param5:Number = 1.0)
      {
         super();
         this.var_1486 = param1;
         this.var_2120 = param2;
         this.var_2928 = param3;
         this.var_2931 = param4;
         this.var_2929 = param5;
         this.var_2930 = getTimer();
      }
      
      public function get songId() : int
      {
         return this.var_1486;
      }
      
      public function get startPos() : Number
      {
         if(this.var_2120 < 0)
         {
            return 0;
         }
         return this.var_2120 + (getTimer() - this.var_2930) / 1000;
      }
      
      public function get playLength() : Number
      {
         return this.var_2928;
      }
      
      public function get fadeInSeconds() : Number
      {
         return this.var_2931;
      }
      
      public function get fadeOutSeconds() : Number
      {
         return this.var_2929;
      }
   }
}
