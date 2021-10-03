package com.sulake.habbo.communication.messages.incoming.friendlist
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class FriendData
   {
       
      
      private var _id:int;
      
      private var _name:String;
      
      private var var_960:int;
      
      private var var_880:Boolean;
      
      private var var_1784:Boolean;
      
      private var _figure:String;
      
      private var var_1626:int;
      
      private var var_2102:String;
      
      private var var_2048:String;
      
      private var var_2046:String;
      
      private var var_2687:String;
      
      public function FriendData(param1:IMessageDataWrapper)
      {
         super();
         this._id = param1.readInteger();
         this._name = param1.readString();
         this.var_960 = param1.readInteger();
         this.var_880 = param1.readBoolean();
         this.var_1784 = param1.readBoolean();
         this._figure = param1.readString();
         this.var_1626 = param1.readInteger();
         this.var_2102 = param1.readString();
         this.var_2048 = param1.readString();
         this.var_2046 = param1.readString();
         this.var_2687 = param1.readString();
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
      
      public function get followingAllowed() : Boolean
      {
         return this.var_1784;
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
      
      public function get facebookId() : String
      {
         return this.var_2687;
      }
   }
}
