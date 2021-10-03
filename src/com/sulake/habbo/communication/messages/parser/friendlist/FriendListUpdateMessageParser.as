package com.sulake.habbo.communication.messages.parser.friendlist
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   import com.sulake.habbo.communication.messages.incoming.friendlist.FriendCategoryData;
   import com.sulake.habbo.communication.messages.incoming.friendlist.FriendData;
   
   public class FriendListUpdateMessageParser implements IMessageParser
   {
       
      
      private var var_2141:Array;
      
      private var _removedFriendIds:Array;
      
      private var var_2142:Array;
      
      private var var_2140:Array;
      
      public function FriendListUpdateMessageParser()
      {
         super();
      }
      
      public function flush() : Boolean
      {
         this.var_2141 = new Array();
         this._removedFriendIds = new Array();
         this.var_2142 = new Array();
         this.var_2140 = new Array();
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var _loc5_:int = 0;
         var _loc6_:int = 0;
         var _loc2_:int = param1.readInteger();
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            this.var_2141.push(new FriendCategoryData(param1));
            _loc3_++;
         }
         var _loc4_:int = param1.readInteger();
         _loc3_ = 0;
         while(_loc3_ < _loc4_)
         {
            _loc5_ = param1.readInteger();
            if(_loc5_ == -1)
            {
               _loc6_ = param1.readInteger();
               this._removedFriendIds.push(_loc6_);
            }
            else if(_loc5_ == 0)
            {
               this.var_2140.push(new FriendData(param1));
            }
            else if(_loc5_ == 1)
            {
               this.var_2142.push(new FriendData(param1));
            }
            _loc3_++;
         }
         return true;
      }
      
      public function get cats() : Array
      {
         return this.var_2141;
      }
      
      public function get removedFriendIds() : Array
      {
         return this._removedFriendIds;
      }
      
      public function get addedFriends() : Array
      {
         return this.var_2142;
      }
      
      public function get updatedFriends() : Array
      {
         return this.var_2140;
      }
   }
}
