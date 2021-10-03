package com.sulake.core.window.services
{
   import com.sulake.core.runtime.IDisposable;
   import com.sulake.core.window.IWindowContext;
   import flash.display.DisplayObject;
   
   public class ServiceManager implements IInternalWindowServices, IDisposable
   {
       
      
      private var var_3076:uint;
      
      private var _root:DisplayObject;
      
      private var _disposed:Boolean = false;
      
      private var var_630:IWindowContext;
      
      private var var_1234:IMouseDraggingService;
      
      private var var_1229:IMouseScalingService;
      
      private var var_1231:IMouseListenerService;
      
      private var var_1230:IFocusManagerService;
      
      private var var_1233:IToolTipAgentService;
      
      private var var_1232:IGestureAgentService;
      
      public function ServiceManager(param1:IWindowContext, param2:DisplayObject)
      {
         super();
         this.var_3076 = 0;
         this._root = param2;
         this.var_630 = param1;
         this.var_1234 = new WindowMouseDragger(param2);
         this.var_1229 = new WindowMouseScaler(param2);
         this.var_1231 = new WindowMouseListener(param2);
         this.var_1230 = new FocusManager(param2);
         this.var_1233 = new WindowToolTipAgent(param2);
         this.var_1232 = new GestureAgentService();
      }
      
      public function dispose() : void
      {
         if(this.var_1234 != null)
         {
            this.var_1234.dispose();
            this.var_1234 = null;
         }
         if(this.var_1229 != null)
         {
            this.var_1229.dispose();
            this.var_1229 = null;
         }
         if(this.var_1231 != null)
         {
            this.var_1231.dispose();
            this.var_1231 = null;
         }
         if(this.var_1230 != null)
         {
            this.var_1230.dispose();
            this.var_1230 = null;
         }
         if(this.var_1233 != null)
         {
            this.var_1233.dispose();
            this.var_1233 = null;
         }
         if(this.var_1232 != null)
         {
            this.var_1232.dispose();
            this.var_1232 = null;
         }
         this._root = null;
         this.var_630 = null;
         this._disposed = true;
      }
      
      public function getMouseDraggingService() : IMouseDraggingService
      {
         return this.var_1234;
      }
      
      public function getMouseScalingService() : IMouseScalingService
      {
         return this.var_1229;
      }
      
      public function getMouseListenerService() : IMouseListenerService
      {
         return this.var_1231;
      }
      
      public function getFocusManagerService() : IFocusManagerService
      {
         return this.var_1230;
      }
      
      public function getToolTipAgentService() : IToolTipAgentService
      {
         return this.var_1233;
      }
      
      public function getGestureAgentService() : IGestureAgentService
      {
         return this.var_1232;
      }
      
      public function get disposed() : Boolean
      {
         return this._disposed;
      }
   }
}
