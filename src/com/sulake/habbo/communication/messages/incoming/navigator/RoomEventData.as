package com.sulake.habbo.communication.messages.incoming.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.runtime.IDisposable;
   
   public class RoomEventData implements IDisposable
   {
       
      
      private var var_2162:Boolean;
      
      private var var_2987:int;
      
      private var var_2986:String;
      
      private var var_379:int;
      
      private var var_2983:int;
      
      private var var_2181:String;
      
      private var var_2985:String;
      
      private var var_2984:String;
      
      private var var_941:Array;
      
      private var _disposed:Boolean;
      
      public function RoomEventData(param1:IMessageDataWrapper)
      {
         var _loc5_:* = null;
         this.var_941 = new Array();
         super();
         var _loc2_:String = param1.readString();
         if(_loc2_ == "-1")
         {
            Logger.log("Got null room event");
            this.var_2162 = false;
            return;
         }
         this.var_2162 = true;
         this.var_2987 = int(_loc2_);
         this.var_2986 = param1.readString();
         this.var_379 = int(param1.readString());
         this.var_2983 = param1.readInteger();
         this.var_2181 = param1.readString();
         this.var_2985 = param1.readString();
         this.var_2984 = param1.readString();
         var _loc3_:int = param1.readInteger();
         var _loc4_:int = 0;
         while(_loc4_ < _loc3_)
         {
            _loc5_ = param1.readString();
            this.var_941.push(_loc5_);
            _loc4_++;
         }
      }
      
      public function dispose() : void
      {
         if(this._disposed)
         {
            return;
         }
         this._disposed = true;
         this.var_941 = null;
      }
      
      public function get disposed() : Boolean
      {
         return this._disposed;
      }
      
      public function get ownerAvatarId() : int
      {
         return this.var_2987;
      }
      
      public function get ownerAvatarName() : String
      {
         return this.var_2986;
      }
      
      public function get flatId() : int
      {
         return this.var_379;
      }
      
      public function get eventType() : int
      {
         return this.var_2983;
      }
      
      public function get eventName() : String
      {
         return this.var_2181;
      }
      
      public function get eventDescription() : String
      {
         return this.var_2985;
      }
      
      public function get creationTime() : String
      {
         return this.var_2984;
      }
      
      public function get tags() : Array
      {
         return this.var_941;
      }
      
      public function get exists() : Boolean
      {
         return this.var_2162;
      }
   }
}
