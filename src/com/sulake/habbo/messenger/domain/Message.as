package com.sulake.habbo.messenger.domain
{
   public class Message
   {
      
      public static const const_981:int = 1;
      
      public static const const_941:int = 2;
      
      public static const const_796:int = 3;
      
      public static const const_1195:int = 4;
      
      public static const const_947:int = 5;
      
      public static const const_1187:int = 6;
       
      
      private var _type:int;
      
      private var var_1287:int;
      
      private var var_2399:String;
      
      private var var_2400:String;
      
      public function Message(param1:int, param2:int, param3:String, param4:String)
      {
         super();
         this._type = param1;
         this.var_1287 = param2;
         this.var_2399 = param3;
         this.var_2400 = param4;
      }
      
      public function get messageText() : String
      {
         return this.var_2399;
      }
      
      public function get time() : String
      {
         return this.var_2400;
      }
      
      public function get senderId() : int
      {
         return this.var_1287;
      }
      
      public function get type() : int
      {
         return this._type;
      }
   }
}
