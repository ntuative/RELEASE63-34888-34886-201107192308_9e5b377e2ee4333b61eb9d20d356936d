package com.sulake.habbo.tracking
{
   import com.sulake.habbo.configuration.IHabboConfigurationManager;
   
   public class FramerateTracker
   {
       
      
      private var var_1920:int;
      
      private var var_2970:int;
      
      private var var_813:int;
      
      private var var_553:Number;
      
      private var var_2969:Boolean;
      
      private var var_2968:int;
      
      private var var_2152:int;
      
      public function FramerateTracker()
      {
         super();
      }
      
      public function get frameRate() : int
      {
         return Math.round(1000 / this.var_553);
      }
      
      public function configure(param1:IHabboConfigurationManager) : void
      {
         this.var_2970 = int(param1.getKey("tracking.framerate.reportInterval.seconds","300")) * 1000;
         this.var_2968 = int(param1.getKey("tracking.framerate.maximumEvents","5"));
         this.var_2969 = true;
      }
      
      public function trackUpdate(param1:uint, param2:IHabboTracking, param3:int) : void
      {
         var _loc4_:Number = NaN;
         ++this.var_813;
         if(this.var_813 == 1)
         {
            this.var_553 = param1;
            this.var_1920 = param3;
         }
         else
         {
            _loc4_ = Number(this.var_813);
            this.var_553 = this.var_553 * (_loc4_ - 1) / _loc4_ + Number(param1) / _loc4_;
         }
         if(this.var_2969 && param3 - this.var_1920 >= this.var_2970)
         {
            this.var_813 = 0;
            if(this.var_2152 < this.var_2968)
            {
               param2.trackGoogle("performance","averageFramerate",this.frameRate);
               ++this.var_2152;
               this.var_1920 = param3;
            }
         }
      }
      
      public function dispose() : void
      {
      }
   }
}
