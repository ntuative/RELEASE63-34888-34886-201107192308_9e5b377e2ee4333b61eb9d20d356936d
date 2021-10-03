package com.sulake.habbo.tracking
{
   import com.sulake.core.communication.connection.IConnection;
   import com.sulake.core.utils.debug.GarbageMonitor;
   import com.sulake.habbo.communication.messages.outgoing.tracking.PerformanceLogMessageComposer;
   import com.sulake.habbo.configuration.IHabboConfigurationManager;
   import flash.external.ExternalInterface;
   import flash.system.Capabilities;
   import flash.system.System;
   import flash.utils.getTimer;
   
   public class PerformanceTracker
   {
       
      
      private var _connection:IConnection = null;
      
      private var var_145:IHabboConfigurationManager = null;
      
      private var var_614:int = 0;
      
      private var var_553:Number = 0;
      
      private var var_3082:Array;
      
      private var var_1555:String = "";
      
      private var var_1918:String = "";
      
      private var var_2633:String = "";
      
      private var var_3035:String = "";
      
      private var var_2205:Boolean = false;
      
      private var var_1919:GarbageMonitor = null;
      
      private var var_1556:int = 0;
      
      private var var_2634:Boolean;
      
      private var var_1917:int = 1000;
      
      private var var_1557:int = 0;
      
      private var _reportInterval:int = 60;
      
      private var var_1920:int = 0;
      
      private var var_1916:int = 10;
      
      private var var_1558:int = 0;
      
      private var var_2631:Number = 0.15;
      
      private var var_2635:Boolean = true;
      
      private var var_2632:Number = 0;
      
      public function PerformanceTracker()
      {
         this.var_3082 = [];
         super();
         this.var_1918 = Capabilities.version;
         this.var_2633 = Capabilities.os;
         this.var_2205 = Capabilities.isDebugger;
         this.var_1555 = !true ? ExternalInterface.call("window.navigator.userAgent.toString") : "unknown";
         if(this.var_1555 == null)
         {
            this.var_1555 = "unknown";
         }
         this.var_1919 = new GarbageMonitor();
         this.updateGarbageMonitor();
         this.var_1920 = getTimer();
      }
      
      public function get flashVersion() : String
      {
         return this.var_1918;
      }
      
      public function get averageUpdateInterval() : int
      {
         return this.var_553;
      }
      
      public function set slowUpdateLimit(param1:int) : void
      {
         this.var_1917 = param1;
      }
      
      public function set reportInterval(param1:int) : void
      {
         this._reportInterval = param1;
      }
      
      public function set reportLimit(param1:int) : void
      {
         this.var_1916 = param1;
      }
      
      public function set connection(param1:IConnection) : void
      {
         this._connection = param1;
      }
      
      public function set configuration(param1:IHabboConfigurationManager) : void
      {
         this.var_145 = param1;
         this._reportInterval = int(this.var_145.getKey("performancetest.interval","60"));
         this.var_1917 = int(this.var_145.getKey("performancetest.slowupdatelimit","1000"));
         this.var_1916 = int(this.var_145.getKey("performancetest.reportlimit","10"));
         this.var_2631 = Number(this.var_145.getKey("performancetest.distribution.deviancelimit.percent","10"));
         this.var_2635 = Boolean(int(this.var_145.getKey("performancetest.distribution.enabled","1")));
         this.var_2634 = Boolean(this.var_145.getKey("monitor.garbage.collection","0") == "1");
      }
      
      public function dispose() : void
      {
      }
      
      private function updateGarbageMonitor() : Object
      {
         var _loc2_:* = null;
         var _loc1_:Array = this.var_1919.list;
         if(_loc1_ == null || _loc1_.length == 0)
         {
            _loc2_ = new GarbageTester("tester");
            this.var_1919.insert(_loc2_,"tester");
            return _loc2_;
         }
         return null;
      }
      
      public function update(param1:uint, param2:int) : void
      {
         var _loc4_:* = null;
         var _loc5_:Number = NaN;
         var _loc6_:int = 0;
         var _loc7_:Boolean = false;
         var _loc8_:Number = NaN;
         if(this.var_2634)
         {
            _loc4_ = this.updateGarbageMonitor();
            if(_loc4_ != null)
            {
               ++this.var_1556;
               Logger.log("Garbage collection");
            }
         }
         var _loc3_:Boolean = false;
         if(param1 > this.var_1917)
         {
            ++this.var_1557;
            _loc3_ = true;
         }
         else
         {
            ++this.var_614;
            if(this.var_614 <= 1)
            {
               this.var_553 = param1;
            }
            else
            {
               _loc5_ = Number(this.var_614);
               this.var_553 = this.var_553 * (_loc5_ - 1) / _loc5_ + Number(param1) / _loc5_;
            }
         }
         if(param2 - this.var_1920 > this._reportInterval * 1000 && this.var_1558 < this.var_1916)
         {
            _loc6_ = 0;
            Logger.log("*** Performance tracker: average frame rate " + 1000 / this.var_553 + "/s, system memory usage : " + _loc6_ + " bytes");
            _loc7_ = true;
            if(this.var_2635 && this.var_1558 > 0)
            {
               _loc8_ = this.differenceInPercents(this.var_2632,this.var_553);
               if(_loc8_ < this.var_2631)
               {
                  _loc7_ = false;
               }
            }
            this.var_1920 = param2;
            if(_loc7_ || _loc3_)
            {
               this.var_2632 = this.var_553;
               if(this.sendReport(param2))
               {
                  ++this.var_1558;
               }
            }
         }
      }
      
      private function sendReport(param1:int) : Boolean
      {
         var _loc2_:* = null;
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         if(this._connection != null)
         {
            _loc2_ = null;
            _loc3_ = param1 / 1000;
            _loc4_ = -1;
            _loc5_ = 0;
            _loc2_ = new PerformanceLogMessageComposer(_loc3_,this.var_1555,this.var_1918,this.var_2633,this.var_3035,this.var_2205,_loc5_,_loc4_,this.var_1556,this.var_553,this.var_1557);
            this._connection.send(_loc2_);
            this.var_1556 = 0;
            this.var_553 = 0;
            this.var_614 = 0;
            this.var_1557 = 0;
            return true;
         }
         return false;
      }
      
      private function differenceInPercents(param1:Number, param2:Number) : Number
      {
         if(param1 == param2)
         {
            return 0;
         }
         var _loc3_:Number = param1;
         var _loc4_:Number = param2;
         if(param2 > param1)
         {
            _loc3_ = param2;
            _loc4_ = param1;
         }
         return 100 * (1 - _loc4_ / _loc3_);
      }
   }
}
