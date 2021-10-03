package com.sulake.habbo.navigator.domain
{
   import com.sulake.habbo.communication.messages.incoming.navigator.FlatCategory;
   import com.sulake.habbo.communication.messages.incoming.navigator.GuestRoomData;
   import com.sulake.habbo.communication.messages.incoming.navigator.GuestRoomSearchResultData;
   import com.sulake.habbo.communication.messages.incoming.navigator.MsgWithRequestId;
   import com.sulake.habbo.communication.messages.incoming.navigator.OfficialRoomEntryData;
   import com.sulake.habbo.communication.messages.incoming.navigator.OfficialRoomsData;
   import com.sulake.habbo.communication.messages.incoming.navigator.PopularRoomTagsData;
   import com.sulake.habbo.communication.messages.incoming.navigator.PublicRoomShortData;
   import com.sulake.habbo.communication.messages.incoming.navigator.RoomEventData;
   import com.sulake.habbo.communication.messages.parser.navigator.FavouritesMessageParser;
   import com.sulake.habbo.communication.messages.parser.room.engine.RoomEntryInfoMessageParser;
   import com.sulake.habbo.navigator.HabboNavigator;
   import flash.utils.Dictionary;
   
   public class NavigatorData
   {
      
      private static const const_2088:int = 10;
       
      
      private var _navigator:HabboNavigator;
      
      private var var_230:MsgWithRequestId;
      
      private var var_703:RoomEventData;
      
      private var var_2835:Boolean;
      
      private var var_2836:Boolean;
      
      private var _currentRoomOwner:Boolean;
      
      private var var_2358:int;
      
      private var var_298:GuestRoomData;
      
      private var var_1074:PublicRoomShortData;
      
      private var var_2833:int;
      
      private var var_2837:Boolean;
      
      private var var_2842:int;
      
      private var var_2838:Boolean;
      
      private var var_2031:int;
      
      private var var_2834:Boolean;
      
      private var var_1473:Array;
      
      private var var_1616:Array;
      
      private var var_2840:int;
      
      private var var_1615:int;
      
      private var _favouriteIds:Dictionary;
      
      private var var_1337:Boolean;
      
      private var var_2832:int;
      
      private var var_2841:Boolean;
      
      private var var_2839:int = 0;
      
      private var var_2030:OfficialRoomEntryData;
      
      public function NavigatorData(param1:HabboNavigator)
      {
         this.var_1473 = new Array();
         this.var_1616 = new Array();
         this._favouriteIds = new Dictionary();
         super();
         this._navigator = param1;
      }
      
      public function get canAddFavourite() : Boolean
      {
         return this.var_298 != null && !this._currentRoomOwner;
      }
      
      public function get canEditRoomSettings() : Boolean
      {
         return this.var_298 != null && this._currentRoomOwner;
      }
      
      public function onRoomEnter(param1:RoomEntryInfoMessageParser) : void
      {
         this.var_1074 = null;
         this.var_298 = null;
         this._currentRoomOwner = false;
         if(param1.privateRoom)
         {
            this._currentRoomOwner = param1.owner;
         }
         else
         {
            this.var_1074 = param1.publicSpace;
            this.var_703 = null;
         }
      }
      
      public function onRoomExit() : void
      {
         if(this.var_703 != null)
         {
            this.var_703.dispose();
            this.var_703 = null;
         }
         if(this.var_1074 != null)
         {
            this.var_1074.dispose();
            this.var_1074 = null;
         }
         if(this.var_298 != null)
         {
            this.var_298.dispose();
            this.var_298 = null;
         }
         this._currentRoomOwner = false;
      }
      
      public function set enteredRoom(param1:GuestRoomData) : void
      {
         if(this.var_298 != null)
         {
            this.var_298.dispose();
         }
         this.var_298 = param1;
      }
      
      public function set roomEventData(param1:RoomEventData) : void
      {
         if(this.var_703 != null)
         {
            this.var_703.dispose();
         }
         this.var_703 = param1;
      }
      
      public function get popularTagsArrived() : Boolean
      {
         return this.var_230 != null && this.var_230 as PopularRoomTagsData != null;
      }
      
      public function get guestRoomSearchArrived() : Boolean
      {
         return this.var_230 != null && this.var_230 as GuestRoomSearchResultData != null;
      }
      
      public function get officialRoomsArrived() : Boolean
      {
         return this.var_230 != null && this.var_230 as OfficialRoomsData != null;
      }
      
      public function set guestRoomSearchResults(param1:GuestRoomSearchResultData) : void
      {
         this.disposeCurrentMsg();
         this.var_230 = param1;
         this.var_2030 = param1.ad;
         this.var_1337 = false;
      }
      
      public function set popularTags(param1:PopularRoomTagsData) : void
      {
         this.disposeCurrentMsg();
         this.var_230 = param1;
         this.var_1337 = false;
      }
      
      public function set officialRooms(param1:OfficialRoomsData) : void
      {
         this.disposeCurrentMsg();
         this.var_230 = param1;
         this.var_1337 = false;
      }
      
      private function disposeCurrentMsg() : void
      {
         if(this.var_230 == null)
         {
            return;
         }
         this.var_230.dispose();
         this.var_230 = null;
      }
      
      public function set adRoom(param1:OfficialRoomEntryData) : void
      {
         this.var_2030 = param1;
      }
      
      public function get adRoom() : OfficialRoomEntryData
      {
         return this.var_2030;
      }
      
      public function get guestRoomSearchResults() : GuestRoomSearchResultData
      {
         return this.var_230 as GuestRoomSearchResultData;
      }
      
      public function get popularTags() : PopularRoomTagsData
      {
         return this.var_230 as PopularRoomTagsData;
      }
      
      public function get officialRooms() : OfficialRoomsData
      {
         return this.var_230 as OfficialRoomsData;
      }
      
      public function get roomEventData() : RoomEventData
      {
         return this.var_703;
      }
      
      public function get avatarId() : int
      {
         return this.var_2358;
      }
      
      public function get eventMod() : Boolean
      {
         return this.var_2835;
      }
      
      public function get roomPicker() : Boolean
      {
         return this.var_2836;
      }
      
      public function get currentRoomOwner() : Boolean
      {
         return this._currentRoomOwner;
      }
      
      public function get enteredGuestRoom() : GuestRoomData
      {
         return this.var_298;
      }
      
      public function get enteredPublicSpace() : PublicRoomShortData
      {
         return this.var_1074;
      }
      
      public function get hcMember() : Boolean
      {
         return this.var_2837;
      }
      
      public function get createdFlatId() : int
      {
         return this.var_2842;
      }
      
      public function get homeRoomId() : int
      {
         return this.var_2031;
      }
      
      public function get hotRoomPopupOpen() : Boolean
      {
         return this.var_2838;
      }
      
      public function get currentRoomRating() : int
      {
         return this.var_2832;
      }
      
      public function get publicSpaceNodeId() : int
      {
         return this.var_2833;
      }
      
      public function get settingsReceived() : Boolean
      {
         return this.var_2834;
      }
      
      public function get adIndex() : int
      {
         return this.var_2839;
      }
      
      public function get currentRoomIsStaffPick() : Boolean
      {
         return this.var_2841;
      }
      
      public function set avatarId(param1:int) : void
      {
         this.var_2358 = param1;
      }
      
      public function set createdFlatId(param1:int) : void
      {
         this.var_2842 = param1;
      }
      
      public function set hcMember(param1:Boolean) : void
      {
         this.var_2837 = param1;
      }
      
      public function set eventMod(param1:Boolean) : void
      {
         this.var_2835 = param1;
      }
      
      public function set roomPicker(param1:Boolean) : void
      {
         this.var_2836 = param1;
      }
      
      public function set hotRoomPopupOpen(param1:Boolean) : void
      {
         this.var_2838 = param1;
      }
      
      public function set homeRoomId(param1:int) : void
      {
         this.var_2031 = param1;
      }
      
      public function set currentRoomRating(param1:int) : void
      {
         this.var_2832 = param1;
      }
      
      public function set publicSpaceNodeId(param1:int) : void
      {
         this.var_2833 = param1;
      }
      
      public function set settingsReceived(param1:Boolean) : void
      {
         this.var_2834 = param1;
      }
      
      public function set adIndex(param1:int) : void
      {
         this.var_2839 = param1;
      }
      
      public function set currentRoomIsStaffPick(param1:Boolean) : void
      {
         this.var_2841 = param1;
      }
      
      public function set categories(param1:Array) : void
      {
         var _loc2_:* = null;
         this.var_1473 = param1;
         this.var_1616 = new Array();
         for each(_loc2_ in this.var_1473)
         {
            if(_loc2_.visible)
            {
               this.var_1616.push(_loc2_);
            }
         }
      }
      
      public function get allCategories() : Array
      {
         return this.var_1473;
      }
      
      public function get visibleCategories() : Array
      {
         return this.var_1616;
      }
      
      public function onFavourites(param1:FavouritesMessageParser) : void
      {
         var _loc2_:int = 0;
         this.var_2840 = param1.limit;
         this.var_1615 = param1.favouriteRoomIds.length;
         this._favouriteIds = new Dictionary();
         for each(_loc2_ in param1.favouriteRoomIds)
         {
            this._favouriteIds[_loc2_] = "yes";
         }
      }
      
      public function favouriteChanged(param1:int, param2:Boolean) : void
      {
         this._favouriteIds[param1] = !!param2 ? "yes" : null;
         this.var_1615 += !!param2 ? 1 : -1;
      }
      
      public function isCurrentRoomFavourite() : Boolean
      {
         var _loc1_:int = this.var_298.flatId;
         return this._favouriteIds[_loc1_] != null;
      }
      
      public function isCurrentRoomHome() : Boolean
      {
         if(this.var_298 == null)
         {
            return false;
         }
         var _loc1_:int = this.var_298.flatId;
         return this.var_2031 == _loc1_;
      }
      
      public function isRoomFavourite(param1:int) : Boolean
      {
         return this._favouriteIds[param1] != null;
      }
      
      public function isFavouritesFull() : Boolean
      {
         return this.var_1615 >= this.var_2840;
      }
      
      public function startLoading() : void
      {
         this.var_1337 = true;
      }
      
      public function isLoading() : Boolean
      {
         return this.var_1337;
      }
   }
}
