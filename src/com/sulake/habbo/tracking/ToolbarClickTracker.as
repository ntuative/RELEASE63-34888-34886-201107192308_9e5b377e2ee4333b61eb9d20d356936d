package com.sulake.habbo.tracking
{
   import com.sulake.habbo.configuration.IHabboConfigurationManager;
   
   public class ToolbarClickTracker
   {
       
      
      private var var_1436:IHabboTracking;
      
      private var var_2097:Boolean = false;
      
      private var var_2381:int = 0;
      
      private var var_1769:int = 0;
      
      public function ToolbarClickTracker(param1:IHabboTracking)
      {
         super();
         this.var_1436 = param1;
      }
      
      public function dispose() : void
      {
         this.var_1436 = null;
      }
      
      public function configure(param1:IHabboConfigurationManager) : void
      {
         this.var_2097 = Boolean(parseInt(param1.getKey("toolbar.tracking.enabled","1")));
         this.var_2381 = parseInt(param1.getKey("toolbar.tracking.max.events","100"));
      }
      
      public function track(param1:String) : void
      {
         if(!this.var_2097)
         {
            return;
         }
         ++this.var_1769;
         if(this.var_1769 <= this.var_2381)
         {
            this.var_1436.trackGoogle("toolbar",param1);
         }
      }
   }
}
