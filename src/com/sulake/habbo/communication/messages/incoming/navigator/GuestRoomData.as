package com.sulake.habbo.communication.messages.incoming.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.runtime.IDisposable;
   
   public class GuestRoomData implements IDisposable
   {
       
      
      private var var_379:int;
      
      private var var_780:Boolean;
      
      private var var_965:String;
      
      private var _ownerName:String;
      
      private var var_2456:int;
      
      private var var_2294:int;
      
      private var var_2458:int;
      
      private var var_1792:String;
      
      private var var_2459:int;
      
      private var var_2455:Boolean;
      
      private var var_779:int;
      
      private var var_1626:int;
      
      private var var_2460:String;
      
      private var var_941:Array;
      
      private var var_2454:RoomThumbnailData;
      
      private var var_2457:Boolean;
      
      private var var_2461:Boolean;
      
      private var _disposed:Boolean;
      
      public function GuestRoomData(param1:IMessageDataWrapper)
      {
         var _loc4_:* = null;
         this.var_941 = new Array();
         super();
         this.var_379 = param1.readInteger();
         this.var_780 = param1.readBoolean();
         this.var_965 = param1.readString();
         this._ownerName = param1.readString();
         this.var_2456 = param1.readInteger();
         this.var_2294 = param1.readInteger();
         this.var_2458 = param1.readInteger();
         this.var_1792 = param1.readString();
         this.var_2459 = param1.readInteger();
         this.var_2455 = param1.readBoolean();
         this.var_779 = param1.readInteger();
         this.var_1626 = param1.readInteger();
         this.var_2460 = param1.readString();
         var _loc2_:int = param1.readInteger();
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            _loc4_ = param1.readString();
            this.var_941.push(_loc4_);
            _loc3_++;
         }
         this.var_2454 = new RoomThumbnailData(param1);
         this.var_2457 = param1.readBoolean();
         this.var_2461 = param1.readBoolean();
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
      
      public function get flatId() : int
      {
         return this.var_379;
      }
      
      public function get event() : Boolean
      {
         return this.var_780;
      }
      
      public function get roomName() : String
      {
         return this.var_965;
      }
      
      public function get ownerName() : String
      {
         return this._ownerName;
      }
      
      public function get doorMode() : int
      {
         return this.var_2456;
      }
      
      public function get userCount() : int
      {
         return this.var_2294;
      }
      
      public function get maxUserCount() : int
      {
         return this.var_2458;
      }
      
      public function get description() : String
      {
         return this.var_1792;
      }
      
      public function get srchSpecPrm() : int
      {
         return this.var_2459;
      }
      
      public function get allowTrading() : Boolean
      {
         return this.var_2455;
      }
      
      public function get score() : int
      {
         return this.var_779;
      }
      
      public function get categoryId() : int
      {
         return this.var_1626;
      }
      
      public function get eventCreationTime() : String
      {
         return this.var_2460;
      }
      
      public function get tags() : Array
      {
         return this.var_941;
      }
      
      public function get thumbnail() : RoomThumbnailData
      {
         return this.var_2454;
      }
      
      public function get allowPets() : Boolean
      {
         return this.var_2457;
      }
      
      public function get displayRoomEntryAd() : Boolean
      {
         return this.var_2461;
      }
   }
}
