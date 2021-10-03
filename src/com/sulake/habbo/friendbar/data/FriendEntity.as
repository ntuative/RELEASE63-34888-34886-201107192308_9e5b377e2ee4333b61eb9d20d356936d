package com.sulake.habbo.friendbar.data
{
   public class FriendEntity implements IFriendEntity
   {
      
      private static var var_1362:int = 0;
       
      
      private var _id:int;
      
      private var _name:String;
      
      private var var_960:int;
      
      private var var_880:Boolean;
      
      private var _allowFollow:Boolean;
      
      private var _figure:String;
      
      private var var_1626:int;
      
      private var var_2102:String;
      
      private var var_2048:String;
      
      private var var_2046:String;
      
      private var var_1016:Vector.<FriendNotification>;
      
      private var var_2919:int = -1;
      
      public function FriendEntity(param1:int, param2:String, param3:String, param4:String, param5:int, param6:Boolean, param7:Boolean, param8:String, param9:int, param10:String)
      {
         super();
         this._id = param1;
         this._name = param2;
         this.var_2046 = param3;
         this.var_2102 = param4;
         this.var_960 = param5;
         this.var_880 = param6;
         this._allowFollow = param7;
         this._figure = param8;
         this.var_1626 = param9;
         this.var_2048 = param10;
      }
      
      public function get id() : int
      {
         return this._id;
      }
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function get gender() : int
      {
         return this.var_960;
      }
      
      public function get online() : Boolean
      {
         return this.var_880;
      }
      
      public function get allowFollow() : Boolean
      {
         return this._allowFollow;
      }
      
      public function get figure() : String
      {
         return this._figure;
      }
      
      public function get categoryId() : int
      {
         return this.var_1626;
      }
      
      public function get motto() : String
      {
         return this.var_2102;
      }
      
      public function get lastAccess() : String
      {
         return this.var_2048;
      }
      
      public function get realName() : String
      {
         return this.var_2046;
      }
      
      public function get logEventId() : int
      {
         return this.var_2919;
      }
      
      public function get notifications() : Vector.<FriendNotification>
      {
         if(!this.var_1016)
         {
            this.var_1016 = new Vector.<FriendNotification>();
         }
         return this.var_1016;
      }
      
      public function set name(param1:String) : void
      {
         this._name = param1;
      }
      
      public function set gender(param1:int) : void
      {
         this.var_960 = param1;
      }
      
      public function set online(param1:Boolean) : void
      {
         this.var_880 = param1;
      }
      
      public function set allowFollow(param1:Boolean) : void
      {
         this._allowFollow = param1;
      }
      
      public function set figure(param1:String) : void
      {
         this._figure = param1;
      }
      
      public function set categoryId(param1:int) : void
      {
         this.var_1626 = param1;
      }
      
      public function set motto(param1:String) : void
      {
         this.var_2102 = param1;
      }
      
      public function set lastAccess(param1:String) : void
      {
         this.var_2048 = param1;
      }
      
      public function set realName(param1:String) : void
      {
         this.var_2046 = param1;
      }
      
      public function set logEventId(param1:int) : void
      {
         this.var_2919 = param1;
      }
      
      public function getNextLogEventId() : int
      {
         return ++var_1362;
      }
   }
}
