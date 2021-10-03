package com.sulake.habbo.communication.messages.parser.handshake
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class UserObjectMessageParser implements IMessageParser
   {
       
      
      private var _id:int;
      
      private var _name:String;
      
      private var _figure:String;
      
      private var var_1002:String;
      
      private var var_2601:String;
      
      private var var_2046:String;
      
      private var var_2606:int;
      
      private var var_2600:String;
      
      private var var_2603:int;
      
      private var var_2602:int;
      
      private var var_2604:int;
      
      private var var_1342:int;
      
      private var var_881:int;
      
      private var var_2605:int;
      
      public function UserObjectMessageParser()
      {
         super();
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this._id = int(param1.readString());
         this._name = param1.readString();
         this._figure = param1.readString();
         this.var_1002 = param1.readString();
         this.var_2601 = param1.readString();
         this.var_2046 = param1.readString();
         this.var_2606 = param1.readInteger();
         this.var_2600 = param1.readString();
         this.var_2603 = param1.readInteger();
         this.var_2602 = param1.readInteger();
         this.var_2604 = param1.readInteger();
         this.var_1342 = param1.readInteger();
         this.var_881 = param1.readInteger();
         this.var_2605 = param1.readInteger();
         return true;
      }
      
      public function get id() : int
      {
         return this._id;
      }
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function get figure() : String
      {
         return this._figure;
      }
      
      public function get sex() : String
      {
         return this.var_1002;
      }
      
      public function get customData() : String
      {
         return this.var_2601;
      }
      
      public function get realName() : String
      {
         return this.var_2046;
      }
      
      public function get tickets() : int
      {
         return this.var_2606;
      }
      
      public function get poolFigure() : String
      {
         return this.var_2600;
      }
      
      public function get photoFilm() : int
      {
         return this.var_2603;
      }
      
      public function get directMail() : int
      {
         return this.var_2602;
      }
      
      public function get respectTotal() : int
      {
         return this.var_2604;
      }
      
      public function get respectLeft() : int
      {
         return this.var_1342;
      }
      
      public function get petRespectLeft() : int
      {
         return this.var_881;
      }
      
      public function get identityId() : int
      {
         return this.var_2605;
      }
   }
}
