package com.sulake.habbo.communication.messages.outgoing.tracking
{
   import com.sulake.core.communication.messages.IMessageComposer;
   
   public class PerformanceLogMessageComposer implements IMessageComposer
   {
       
      
      private var var_2361:int = 0;
      
      private var var_1555:String = "";
      
      private var var_1918:String = "";
      
      private var var_2633:String = "";
      
      private var var_3035:String = "";
      
      private var var_2205:int = 0;
      
      private var var_3038:int = 0;
      
      private var var_3036:int = 0;
      
      private var var_1556:int = 0;
      
      private var var_3037:int = 0;
      
      private var var_1557:int = 0;
      
      public function PerformanceLogMessageComposer(param1:int, param2:String, param3:String, param4:String, param5:String, param6:Boolean, param7:int, param8:int, param9:int, param10:int, param11:int)
      {
         super();
         this.var_2361 = param1;
         this.var_1555 = param2;
         this.var_1918 = param3;
         this.var_2633 = param4;
         this.var_3035 = param5;
         if(param6)
         {
            this.var_2205 = 1;
         }
         else
         {
            this.var_2205 = 0;
         }
         this.var_3038 = param7;
         this.var_3036 = param8;
         this.var_1556 = param9;
         this.var_3037 = param10;
         this.var_1557 = param11;
      }
      
      public function dispose() : void
      {
      }
      
      public function getMessageArray() : Array
      {
         return [this.var_2361,this.var_1555,this.var_1918,this.var_2633,this.var_3035,this.var_2205,this.var_3038,this.var_3036,this.var_1556,this.var_3037,this.var_1557];
      }
   }
}
