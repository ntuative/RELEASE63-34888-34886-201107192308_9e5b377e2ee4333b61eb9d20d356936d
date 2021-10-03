package com.sulake.core.runtime
{
   class ComponentInterfaceQueue implements IDisposable
   {
       
      
      private var var_2029:IID;
      
      private var var_1149:Boolean;
      
      private var var_1336:Array;
      
      function ComponentInterfaceQueue(param1:IID)
      {
         super();
         this.var_2029 = param1;
         this.var_1336 = new Array();
         this.var_1149 = false;
      }
      
      public function get identifier() : IID
      {
         return this.var_2029;
      }
      
      public function get disposed() : Boolean
      {
         return this.var_1149;
      }
      
      public function get receivers() : Array
      {
         return this.var_1336;
      }
      
      public function dispose() : void
      {
         if(!this.var_1149)
         {
            this.var_1149 = true;
            this.var_2029 = null;
            while(this.var_1336.length > 0)
            {
               this.var_1336.pop();
            }
            this.var_1336 = null;
         }
      }
   }
}
