package com.sulake.habbo.communication.messages.incoming.room.engine
{
   public class UserMessageData
   {
      
      public static const const_1351:String = "M";
      
      public static const const_1819:String = "F";
       
      
      private var _id:int = 0;
      
      private var _x:Number = 0;
      
      private var var_180:Number = 0;
      
      private var var_179:Number = 0;
      
      private var var_466:int = 0;
      
      private var _name:String = "";
      
      private var var_1716:int = 0;
      
      private var var_1002:String = "";
      
      private var _figure:String = "";
      
      private var var_2698:String = "";
      
      private var var_2492:int;
      
      private var var_2697:int = 0;
      
      private var var_2695:String = "";
      
      private var var_2696:int = 0;
      
      private var var_2694:int = 0;
      
      private var var_2730:String = "";
      
      private var var_203:Boolean = false;
      
      public function UserMessageData(param1:int)
      {
         super();
         this._id = param1;
      }
      
      public function setReadOnly() : void
      {
         this.var_203 = true;
      }
      
      public function get id() : int
      {
         return this._id;
      }
      
      public function get x() : Number
      {
         return this._x;
      }
      
      public function set x(param1:Number) : void
      {
         if(!this.var_203)
         {
            this._x = param1;
         }
      }
      
      public function get y() : Number
      {
         return this.var_180;
      }
      
      public function set y(param1:Number) : void
      {
         if(!this.var_203)
         {
            this.var_180 = param1;
         }
      }
      
      public function get z() : Number
      {
         return this.var_179;
      }
      
      public function set z(param1:Number) : void
      {
         if(!this.var_203)
         {
            this.var_179 = param1;
         }
      }
      
      public function get dir() : int
      {
         return this.var_466;
      }
      
      public function set dir(param1:int) : void
      {
         if(!this.var_203)
         {
            this.var_466 = param1;
         }
      }
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function set name(param1:String) : void
      {
         if(!this.var_203)
         {
            this._name = param1;
         }
      }
      
      public function get userType() : int
      {
         return this.var_1716;
      }
      
      public function set userType(param1:int) : void
      {
         if(!this.var_203)
         {
            this.var_1716 = param1;
         }
      }
      
      public function get sex() : String
      {
         return this.var_1002;
      }
      
      public function set sex(param1:String) : void
      {
         if(!this.var_203)
         {
            this.var_1002 = param1;
         }
      }
      
      public function get figure() : String
      {
         return this._figure;
      }
      
      public function set figure(param1:String) : void
      {
         if(!this.var_203)
         {
            this._figure = param1;
         }
      }
      
      public function get custom() : String
      {
         return this.var_2698;
      }
      
      public function set custom(param1:String) : void
      {
         if(!this.var_203)
         {
            this.var_2698 = param1;
         }
      }
      
      public function get achievementScore() : int
      {
         return this.var_2492;
      }
      
      public function set achievementScore(param1:int) : void
      {
         if(!this.var_203)
         {
            this.var_2492 = param1;
         }
      }
      
      public function get webID() : int
      {
         return this.var_2697;
      }
      
      public function set webID(param1:int) : void
      {
         if(!this.var_203)
         {
            this.var_2697 = param1;
         }
      }
      
      public function get groupID() : String
      {
         return this.var_2695;
      }
      
      public function set groupID(param1:String) : void
      {
         if(!this.var_203)
         {
            this.var_2695 = param1;
         }
      }
      
      public function get groupStatus() : int
      {
         return this.var_2696;
      }
      
      public function set groupStatus(param1:int) : void
      {
         if(!this.var_203)
         {
            this.var_2696 = param1;
         }
      }
      
      public function get xp() : int
      {
         return this.var_2694;
      }
      
      public function set xp(param1:int) : void
      {
         if(!this.var_203)
         {
            this.var_2694 = param1;
         }
      }
      
      public function get subType() : String
      {
         return this.var_2730;
      }
      
      public function set subType(param1:String) : void
      {
         if(!this.var_203)
         {
            this.var_2730 = param1;
         }
      }
   }
}
