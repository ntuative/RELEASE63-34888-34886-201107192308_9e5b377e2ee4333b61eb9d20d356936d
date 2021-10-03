package com.sulake.core.utils.profiler.tracking
{
   import flash.display.BitmapData;
   
   public class TrackedBitmapData extends BitmapData
   {
      
      public static const const_2114:int = 16777215;
      
      public static const const_1190:int = 8191;
      
      public static const const_1208:int = 8191;
      
      public static const const_2325:int = 1;
      
      public static const const_1175:int = 1;
      
      public static const const_1388:int = 1;
      
      private static var var_577:uint = 0;
      
      private static var var_578:uint = 0;
       
      
      private var _owner:Object;
      
      private var _disposed:Boolean = false;
      
      public function TrackedBitmapData(param1:*, param2:int, param3:int, param4:Boolean = true, param5:uint = 4.294967295E9)
      {
         if(param2 > const_1190)
         {
            param2 = const_1190;
         }
         else if(param2 < const_1175)
         {
            param2 = const_1175;
         }
         if(param3 > const_1208)
         {
            param3 = const_1208;
         }
         else if(param3 < const_1388)
         {
            param3 = const_1388;
         }
         super(param2,param3,param4,param5);
         ++var_577;
         var_578 += param2 * param3 * 4;
         this._owner = param1;
      }
      
      public static function get numInstances() : uint
      {
         return var_577;
      }
      
      public static function get allocatedByteCount() : uint
      {
         return var_578;
      }
      
      override public function dispose() : void
      {
         if(!this._disposed)
         {
            var_578 -= width * height * 4;
            --var_577;
            this._disposed = true;
            this._owner = null;
            super.dispose();
         }
      }
   }
}
