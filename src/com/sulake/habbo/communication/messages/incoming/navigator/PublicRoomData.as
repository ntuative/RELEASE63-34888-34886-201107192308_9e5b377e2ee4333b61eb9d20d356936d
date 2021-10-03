package com.sulake.habbo.communication.messages.incoming.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.runtime.IDisposable;
   
   public class PublicRoomData implements IDisposable
   {
       
      
      private var var_2549:String;
      
      private var var_2547:int;
      
      private var var_2551:int;
      
      private var var_2548:String;
      
      private var var_2550:int;
      
      private var var_1915:int;
      
      private var _disposed:Boolean;
      
      public function PublicRoomData(param1:IMessageDataWrapper)
      {
         super();
         this.var_2549 = param1.readString();
         this.var_2547 = param1.readInteger();
         this.var_2551 = param1.readInteger();
         this.var_2548 = param1.readString();
         this.var_2550 = param1.readInteger();
         this.var_1915 = param1.readInteger();
      }
      
      public function dispose() : void
      {
         if(this._disposed)
         {
            return;
         }
         this._disposed = true;
      }
      
      public function get disposed() : Boolean
      {
         return this._disposed;
      }
      
      public function get unitPropertySet() : String
      {
         return this.var_2549;
      }
      
      public function get unitPort() : int
      {
         return this.var_2547;
      }
      
      public function get worldId() : int
      {
         return this.var_2551;
      }
      
      public function get castLibs() : String
      {
         return this.var_2548;
      }
      
      public function get maxUsers() : int
      {
         return this.var_2550;
      }
      
      public function get nodeId() : int
      {
         return this.var_1915;
      }
   }
}
