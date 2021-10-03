package com.sulake.habbo.communication.messages.incoming.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.runtime.IDisposable;
   
   public class OfficialRoomEntryData implements IDisposable
   {
      
      public static const const_1196:int = 1;
      
      public static const const_989:int = 2;
      
      public static const const_1004:int = 3;
      
      public static const const_2032:int = 4;
       
      
      private var _index:int;
      
      private var var_2295:String;
      
      private var var_2298:String;
      
      private var var_2293:Boolean;
      
      private var var_2296:String;
      
      private var var_1103:String;
      
      private var var_2299:int;
      
      private var var_2294:int;
      
      private var _type:int;
      
      private var var_2297:String;
      
      private var var_949:GuestRoomData;
      
      private var var_948:PublicRoomData;
      
      private var _open:Boolean;
      
      private var _disposed:Boolean;
      
      public function OfficialRoomEntryData(param1:IMessageDataWrapper)
      {
         super();
         this._index = param1.readInteger();
         this.var_2295 = param1.readString();
         this.var_2298 = param1.readString();
         this.var_2293 = param1.readInteger() == 1;
         this.var_2296 = param1.readString();
         this.var_1103 = param1.readString();
         this.var_2299 = param1.readInteger();
         this.var_2294 = param1.readInteger();
         this._type = param1.readInteger();
         if(this._type == const_1196)
         {
            this.var_2297 = param1.readString();
         }
         else if(this._type == const_1004)
         {
            this.var_948 = new PublicRoomData(param1);
         }
         else if(this._type == const_989)
         {
            this.var_949 = new GuestRoomData(param1);
         }
         else
         {
            this._open = param1.readBoolean();
         }
      }
      
      public function dispose() : void
      {
         if(this._disposed)
         {
            return;
         }
         this._disposed = true;
         if(this.var_949 != null)
         {
            this.var_949.dispose();
            this.var_949 = null;
         }
         if(this.var_948 != null)
         {
            this.var_948.dispose();
            this.var_948 = null;
         }
      }
      
      public function get disposed() : Boolean
      {
         return this._disposed;
      }
      
      public function get type() : int
      {
         return this._type;
      }
      
      public function get index() : int
      {
         return this._index;
      }
      
      public function get popupCaption() : String
      {
         return this.var_2295;
      }
      
      public function get popupDesc() : String
      {
         return this.var_2298;
      }
      
      public function get showDetails() : Boolean
      {
         return this.var_2293;
      }
      
      public function get picText() : String
      {
         return this.var_2296;
      }
      
      public function get picRef() : String
      {
         return this.var_1103;
      }
      
      public function get folderId() : int
      {
         return this.var_2299;
      }
      
      public function get tag() : String
      {
         return this.var_2297;
      }
      
      public function get userCount() : int
      {
         return this.var_2294;
      }
      
      public function get guestRoomData() : GuestRoomData
      {
         return this.var_949;
      }
      
      public function get publicRoomData() : PublicRoomData
      {
         return this.var_948;
      }
      
      public function get open() : Boolean
      {
         return this._open;
      }
      
      public function toggleOpen() : void
      {
         this._open = !this._open;
      }
      
      public function get maxUsers() : int
      {
         if(this.type == const_1196)
         {
            return 0;
         }
         if(this.type == const_989)
         {
            return this.var_949.maxUserCount;
         }
         if(this.type == const_1004)
         {
            return this.var_948.maxUsers;
         }
         return 0;
      }
   }
}
