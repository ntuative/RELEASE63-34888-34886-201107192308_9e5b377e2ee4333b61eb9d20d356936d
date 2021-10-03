package com.sulake.habbo.room.object.visualization.furniture
{
   public class FurnitureQueueTileVisualization extends AnimatedFurnitureVisualization
   {
      
      private static const const_1472:int = 3;
      
      private static const const_1492:int = 2;
      
      private static const const_1493:int = 1;
      
      private static const const_1494:int = 15;
       
      
      private var var_328:Array;
      
      private var var_1217:int;
      
      public function FurnitureQueueTileVisualization()
      {
         this.var_328 = new Array();
         super();
      }
      
      override protected function setAnimation(param1:int) : void
      {
         if(param1 == const_1492)
         {
            this.var_328 = new Array();
            this.var_328.push(const_1493);
            this.var_1217 = const_1494;
         }
         super.setAnimation(param1);
      }
      
      override protected function updateAnimation(param1:Number) : int
      {
         if(this.var_1217 > 0)
         {
            --this.var_1217;
         }
         if(this.var_1217 == 0)
         {
            if(this.var_328.length > 0)
            {
               super.setAnimation(this.var_328.shift());
            }
         }
         return super.updateAnimation(param1);
      }
      
      override protected function usesAnimationResetting() : Boolean
      {
         return true;
      }
   }
}
