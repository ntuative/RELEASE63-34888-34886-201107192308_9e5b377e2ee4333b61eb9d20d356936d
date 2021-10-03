package com.sulake.habbo.room.object.visualization.furniture
{
   public class FurnitureValRandomizerVisualization extends AnimatedFurnitureVisualization
   {
      
      private static const const_1068:int = 20;
      
      private static const const_699:int = 10;
      
      private static const const_1486:int = 31;
      
      private static const const_1472:int = 32;
      
      private static const const_700:int = 30;
       
      
      private var var_328:Array;
      
      private var var_833:Boolean = false;
      
      public function FurnitureValRandomizerVisualization()
      {
         this.var_328 = new Array();
         super();
         super.setAnimation(const_700);
      }
      
      override protected function setAnimation(param1:int) : void
      {
         if(param1 == 0)
         {
            if(!this.var_833)
            {
               this.var_833 = true;
               this.var_328 = new Array();
               this.var_328.push(const_1486);
               this.var_328.push(const_1472);
               return;
            }
         }
         if(param1 > 0 && param1 <= const_699)
         {
            if(this.var_833)
            {
               this.var_833 = false;
               this.var_328 = new Array();
               if(direction == 2)
               {
                  this.var_328.push(const_1068 + 5 - param1);
                  this.var_328.push(const_699 + 5 - param1);
               }
               else
               {
                  this.var_328.push(const_1068 + param1);
                  this.var_328.push(const_699 + param1);
               }
               this.var_328.push(const_700);
               return;
            }
            super.setAnimation(const_700);
         }
      }
      
      override protected function updateAnimation(param1:Number) : int
      {
         if(super.getLastFramePlayed(11))
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
