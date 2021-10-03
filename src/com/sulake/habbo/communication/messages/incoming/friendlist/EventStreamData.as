package com.sulake.habbo.communication.messages.incoming.friendlist
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class EventStreamData
   {
      
      public static const const_1812:uint = 0;
      
      public static const const_1924:uint = 1;
      
      public static const const_1766:uint = 2;
      
      public static const const_1839:uint = 3;
      
      public static const const_2247:uint = 3;
      
      public static const const_2186:int = 0;
      
      public static const const_2297:int = 1;
      
      public static const const_2134:int = 2;
      
      public static const LINK_TARGET_OPEN_ACHIEVEMENTS:int = 3;
      
      public static const const_2264:int = 4;
       
      
      private var _id:int;
      
      private var var_2953:int;
      
      private var var_2956:String;
      
      private var var_2951:String;
      
      private var var_2952:String;
      
      private var var_2954:String;
      
      private var var_2958:int;
      
      private var var_2957:int;
      
      private var var_2955:Object;
      
      public function EventStreamData(param1:int, param2:int, param3:String, param4:String, param5:String, param6:String, param7:int, param8:int, param9:IMessageDataWrapper)
      {
         super();
         this._id = param1;
         this.var_2953 = param2;
         this.var_2956 = param3;
         this.var_2951 = param4;
         this.var_2952 = param5;
         this.var_2954 = param6;
         this.var_2958 = param7;
         this.var_2957 = param8;
         this.var_2955 = parse(param2,param9);
      }
      
      protected static function parse(param1:int, param2:IMessageDataWrapper) : Object
      {
         var _loc3_:Object = new Object();
         switch(param1)
         {
            case const_1812:
               _loc3_.friendId = param2.readString();
               _loc3_.friendName = param2.readString();
               break;
            case const_1924:
               _loc3_.roomId = param2.readString();
               _loc3_.roomName = param2.readString();
               break;
            case const_1766:
               _loc3_.achievementCode = param2.readString();
               break;
            case const_1839:
               _loc3_.motto = param2.readString();
         }
         return _loc3_;
      }
      
      public function get actionId() : int
      {
         return this.var_2953;
      }
      
      public function get accountId() : String
      {
         return this.var_2956;
      }
      
      public function get accountName() : String
      {
         return this.var_2951;
      }
      
      public function get imageFilePath() : String
      {
         return this.var_2954;
      }
      
      public function get minutesSinceEvent() : int
      {
         return this.var_2958;
      }
      
      public function get linkTargetType() : int
      {
         return this.var_2957;
      }
      
      public function get extraDataStruct() : Object
      {
         return this.var_2955;
      }
      
      public function get accountGender() : String
      {
         return this.var_2952;
      }
   }
}

class Struct
{
    
   
   function Struct()
   {
      super();
   }
}

class FriendMadeStruct extends Struct
{
    
   
   public var friendId:String;
   
   public var friendName:String;
   
   function FriendMadeStruct(param1:String, param2:String)
   {
      super();
      this.friendId = param1;
      this.friendName = param2;
   }
}

class RoomLikedStruct extends Struct
{
    
   
   public var roomId:String;
   
   public var roomName:String;
   
   function RoomLikedStruct(param1:String, param2:String)
   {
      super();
      this.roomId = param1;
      this.roomName = param2;
   }
}

class AchievementEarnedStruct extends Struct
{
    
   
   public var achievementCode:String;
   
   function AchievementEarnedStruct(param1:String)
   {
      super();
      this.achievementCode = param1;
   }
}
