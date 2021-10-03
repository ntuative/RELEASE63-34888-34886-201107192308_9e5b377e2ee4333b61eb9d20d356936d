package com.sulake.habbo.communication.messages.parser.users
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class ScrSendUserInfoMessageParser implements IMessageParser
   {
      
      public static const const_2304:int = 1;
      
      public static const RESPONSE_TYPE_PURCHASE:int = 2;
      
      public static const const_1335:int = 3;
       
      
      private var var_1098:String;
      
      private var var_2475:int;
      
      private var var_2479:int;
      
      private var var_2480:int;
      
      private var var_2474:int;
      
      private var var_2476:Boolean;
      
      private var var_2377:Boolean;
      
      private var var_2379:int;
      
      private var var_2380:int;
      
      private var var_2473:Boolean;
      
      private var var_2478:int;
      
      private var var_2477:int;
      
      public function ScrSendUserInfoMessageParser()
      {
         super();
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_1098 = param1.readString();
         this.var_2475 = param1.readInteger();
         this.var_2479 = param1.readInteger();
         this.var_2480 = param1.readInteger();
         this.var_2474 = param1.readInteger();
         this.var_2476 = param1.readBoolean();
         this.var_2377 = param1.readBoolean();
         this.var_2379 = param1.readInteger();
         this.var_2380 = param1.readInteger();
         this.var_2473 = param1.readBoolean();
         this.var_2478 = param1.readInteger();
         this.var_2477 = param1.readInteger();
         return true;
      }
      
      public function get productName() : String
      {
         return this.var_1098;
      }
      
      public function get daysToPeriodEnd() : int
      {
         return this.var_2475;
      }
      
      public function get memberPeriods() : int
      {
         return this.var_2479;
      }
      
      public function get periodsSubscribedAhead() : int
      {
         return this.var_2480;
      }
      
      public function get responseType() : int
      {
         return this.var_2474;
      }
      
      public function get hasEverBeenMember() : Boolean
      {
         return this.var_2476;
      }
      
      public function get isVIP() : Boolean
      {
         return this.var_2377;
      }
      
      public function get pastClubDays() : int
      {
         return this.var_2379;
      }
      
      public function get pastVipDays() : int
      {
         return this.var_2380;
      }
      
      public function get isShowBasicPromo() : Boolean
      {
         return this.var_2473;
      }
      
      public function get basicNormalPrice() : int
      {
         return this.var_2478;
      }
      
      public function get basicPromoPrice() : int
      {
         return this.var_2477;
      }
   }
}
