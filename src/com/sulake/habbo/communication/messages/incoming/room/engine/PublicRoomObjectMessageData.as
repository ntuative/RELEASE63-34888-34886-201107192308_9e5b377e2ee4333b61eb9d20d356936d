package com.sulake.habbo.communication.messages.incoming.room.engine
{
   public class PublicRoomObjectMessageData
   {
       
      
      private var _name:String = "";
      
      private var _type:String = "";
      
      private var _x:Number = 0;
      
      private var var_180:Number = 0;
      
      private var var_179:Number = 0;
      
      private var var_466:int = 0;
      
      private var var_587:int = 0;
      
      private var var_729:int = 0;
      
      private var var_203:Boolean = false;
      
      public function PublicRoomObjectMessageData()
      {
         super();
      }
      
      public function setReadOnly() : void
      {
         this.var_203 = true;
      }
      
      public function get type() : String
      {
         return this._type;
      }
      
      public function set type(param1:String) : void
      {
         if(!this.var_203)
         {
            this._type = param1;
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
      
      public function get sizeX() : int
      {
         return this.var_587;
      }
      
      public function set sizeX(param1:int) : void
      {
         if(!this.var_203)
         {
            this.var_587 = param1;
         }
      }
      
      public function get sizeY() : int
      {
         return this.var_729;
      }
      
      public function set sizeY(param1:int) : void
      {
         if(!this.var_203)
         {
            this.var_729 = param1;
         }
      }
   }
}
