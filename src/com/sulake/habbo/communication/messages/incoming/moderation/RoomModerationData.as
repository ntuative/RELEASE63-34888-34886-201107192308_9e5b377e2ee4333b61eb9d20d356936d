package com.sulake.habbo.communication.messages.incoming.moderation
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.runtime.IDisposable;
   
   public class RoomModerationData implements IDisposable
   {
       
      
      private var var_379:int;
      
      private var var_2294:int;
      
      private var var_2872:Boolean;
      
      private var var_2430:int;
      
      private var _ownerName:String;
      
      private var var_133:RoomData;
      
      private var var_780:RoomData;
      
      private var _disposed:Boolean;
      
      public function RoomModerationData(param1:IMessageDataWrapper)
      {
         super();
         this.var_379 = param1.readInteger();
         this.var_2294 = param1.readInteger();
         this.var_2872 = param1.readBoolean();
         this.var_2430 = param1.readInteger();
         this._ownerName = param1.readString();
         this.var_133 = new RoomData(param1);
         this.var_780 = new RoomData(param1);
      }
      
      public function get disposed() : Boolean
      {
         return this._disposed;
      }
      
      public function dispose() : void
      {
         if(this._disposed)
         {
            return;
         }
         this._disposed = true;
         if(this.var_133 != null)
         {
            this.var_133.dispose();
            this.var_133 = null;
         }
         if(this.var_780 != null)
         {
            this.var_780.dispose();
            this.var_780 = null;
         }
      }
      
      public function get flatId() : int
      {
         return this.var_379;
      }
      
      public function get userCount() : int
      {
         return this.var_2294;
      }
      
      public function get ownerInRoom() : Boolean
      {
         return this.var_2872;
      }
      
      public function get ownerId() : int
      {
         return this.var_2430;
      }
      
      public function get ownerName() : String
      {
         return this._ownerName;
      }
      
      public function get room() : RoomData
      {
         return this.var_133;
      }
      
      public function get event() : RoomData
      {
         return this.var_780;
      }
   }
}
