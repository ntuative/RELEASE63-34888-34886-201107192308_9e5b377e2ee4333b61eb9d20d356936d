package com.sulake.core.window.events
{
   import com.sulake.core.window.IWindow;
   
   public class WindowEvent
   {
      
      public static const const_1859:String = "WE_DESTROY";
      
      public static const const_331:String = "WE_DESTROYED";
      
      public static const const_2028:String = "WE_OPEN";
      
      public static const const_1936:String = "WE_OPENED";
      
      public static const const_1824:String = "WE_CLOSE";
      
      public static const const_1956:String = "WE_CLOSED";
      
      public static const const_1769:String = "WE_FOCUS";
      
      public static const const_360:String = "WE_FOCUSED";
      
      public static const const_1737:String = "WE_UNFOCUS";
      
      public static const const_2007:String = "WE_UNFOCUSED";
      
      public static const const_2018:String = "WE_ACTIVATE";
      
      public static const const_494:String = "WE_ACTIVATED";
      
      public static const const_1764:String = "WE_DEACTIVATE";
      
      public static const const_664:String = "WE_DEACTIVATED";
      
      public static const const_351:String = "WE_SELECT";
      
      public static const const_48:String = "WE_SELECTED";
      
      public static const const_583:String = "WE_UNSELECT";
      
      public static const const_590:String = "WE_UNSELECTED";
      
      public static const const_1969:String = "WE_LOCK";
      
      public static const const_1822:String = "WE_LOCKED";
      
      public static const const_1958:String = "WE_UNLOCK";
      
      public static const const_1871:String = "WE_UNLOCKED";
      
      public static const const_794:String = "WE_ENABLE";
      
      public static const const_272:String = "WE_ENABLED";
      
      public static const const_972:String = "WE_DISABLE";
      
      public static const const_308:String = "WE_DISABLED";
      
      public static const WINDOW_EVENT_RELOCATE:String = "WE_RELOCATE";
      
      public static const const_451:String = "WE_RELOCATED";
      
      public static const const_1227:String = "WE_RESIZE";
      
      public static const const_40:String = "WE_RESIZED";
      
      public static const const_1782:String = "WE_MINIMIZE";
      
      public static const const_1752:String = "WE_MINIMIZED";
      
      public static const const_1948:String = "WE_MAXIMIZE";
      
      public static const const_1745:String = "WE_MAXIMIZED";
      
      public static const const_1985:String = "WE_RESTORE";
      
      public static const const_1959:String = "WE_RESTORED";
      
      public static const const_547:String = "WE_CHILD_ADDED";
      
      public static const const_427:String = "WE_CHILD_REMOVED";
      
      public static const const_215:String = "WE_CHILD_RELOCATED";
      
      public static const const_174:String = "WE_CHILD_RESIZED";
      
      public static const const_322:String = "WE_CHILD_ACTIVATED";
      
      public static const const_554:String = "WE_PARENT_ADDED";
      
      public static const const_1759:String = "WE_PARENT_REMOVED";
      
      public static const const_1886:String = "WE_PARENT_RELOCATED";
      
      public static const const_652:String = "WE_PARENT_RESIZED";
      
      public static const const_1238:String = "WE_PARENT_ACTIVATED";
      
      public static const const_175:String = "WE_OK";
      
      public static const const_529:String = "WE_CANCEL";
      
      public static const const_114:String = "WE_CHANGE";
      
      public static const const_563:String = "WE_SCROLL";
      
      public static const UNKNOWN:String = "";
      
      private static const POOL:Array = [];
       
      
      protected var _type:String;
      
      protected var _window:IWindow;
      
      protected var var_753:IWindow;
      
      protected var var_1156:Boolean;
      
      protected var var_516:Boolean;
      
      protected var var_170:Boolean;
      
      protected var var_752:Array;
      
      public function WindowEvent()
      {
         super();
      }
      
      public static function allocate(param1:String, param2:IWindow, param3:IWindow, param4:Boolean = false) : WindowEvent
      {
         var _loc5_:WindowEvent = POOL.length > 0 ? POOL.pop() : new WindowEvent();
         _loc5_._type = param1;
         _loc5_._window = param2;
         _loc5_.var_753 = param3;
         _loc5_.var_516 = param4;
         _loc5_.var_170 = false;
         _loc5_.var_752 = POOL;
         return _loc5_;
      }
      
      public function get type() : String
      {
         return this._type;
      }
      
      public function get target() : IWindow
      {
         return this._window;
      }
      
      public function get window() : IWindow
      {
         return this._window;
      }
      
      public function get related() : IWindow
      {
         return this.var_753;
      }
      
      public function get cancelable() : Boolean
      {
         return this.var_516;
      }
      
      public function recycle() : void
      {
         if(this.var_170)
         {
            throw new Error("Event already recycled!");
         }
         this.var_753 = null;
         this._window = null;
         this.var_170 = true;
         this.var_1156 = false;
         this.var_752.push(this);
      }
      
      public function clone() : WindowEvent
      {
         return allocate(this._type,this.window,this.related,this.cancelable);
      }
      
      public function preventDefault() : void
      {
         this.preventWindowOperation();
      }
      
      public function isDefaultPrevented() : Boolean
      {
         return this.var_1156;
      }
      
      public function preventWindowOperation() : void
      {
         if(this.cancelable)
         {
            this.var_1156 = true;
            return;
         }
         throw new Error("Attempted to prevent window operation that is not cancelable!");
      }
      
      public function isWindowOperationPrevented() : Boolean
      {
         return this.var_1156;
      }
      
      public function stopPropagation() : void
      {
         this.var_1156 = true;
      }
      
      public function stopImmediatePropagation() : void
      {
         this.var_1156 = true;
      }
      
      public function toString() : String
      {
         return "WindowEvent { type: " + this._type + " cancelable: " + this.var_516 + " window: " + this._window + " }";
      }
   }
}
