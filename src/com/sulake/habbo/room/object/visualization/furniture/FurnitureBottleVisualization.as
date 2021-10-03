package com.sulake.habbo.room.object.visualization.furniture
{
   public class FurnitureBottleVisualization extends AnimatedFurnitureVisualization
   {
      
      private static const const_1068:int = 20;
      
      private static const const_699:int = 9;
      
      private static const const_1472:int = -1;
       
      
      private var var_328:Array;
      
      private var var_833:Boolean = false;
      
      public function FurnitureBottleVisualization()
      {
         this.var_328 = new Array();
         super();
      }
      
      override protected function setAnimation(param1:int) : void
      {
         if(param1 == -1)
         {
            if(!this.var_833)
            {
               this.var_833 = true;
               this.var_328 = new Array();
               this.var_328.push(const_1472);
               return;
            }
         }
         if(param1 >= 0 && param1 <= 7)
         {
            if(this.var_833)
            {
               this.var_833 = false;
               this.var_328 = new Array();
               this.var_328.push(const_1068);
               this.var_328.push(const_699 + param1);
               this.var_328.push(param1);
               return;
            }
            super.setAnimation(param1);
         }
      }
      
      override protected function updateAnimation(param1:Number) : int
      {
         if(super.getLastFramePlayed(0))
         {
            if(this.var_328.length > 0)
            {
               super.setAnimation(this.var_328.shift());
            }
         }
         return super.updateAnimation(param1);
      }
   }
}
