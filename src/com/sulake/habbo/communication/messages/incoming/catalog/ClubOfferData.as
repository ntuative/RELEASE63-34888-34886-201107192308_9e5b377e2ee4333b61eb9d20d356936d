package com.sulake.habbo.communication.messages.incoming.catalog
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class ClubOfferData
   {
       
      
      private var var_1255:int;
      
      private var var_1834:String;
      
      private var var_1807:int;
      
      private var _upgrade:Boolean;
      
      private var var_2618:Boolean;
      
      private var var_2616:int;
      
      private var var_2615:int;
      
      private var var_2620:int;
      
      private var var_2617:int;
      
      private var var_2619:int;
      
      public function ClubOfferData(param1:IMessageDataWrapper)
      {
         super();
         this.var_1255 = param1.readInteger();
         this.var_1834 = param1.readString();
         this.var_1807 = param1.readInteger();
         this._upgrade = param1.readBoolean();
         this.var_2618 = param1.readBoolean();
         this.var_2616 = param1.readInteger();
         this.var_2615 = param1.readInteger();
         this.var_2620 = param1.readInteger();
         this.var_2617 = param1.readInteger();
         this.var_2619 = param1.readInteger();
      }
      
      public function get offerId() : int
      {
         return this.var_1255;
      }
      
      public function get productCode() : String
      {
         return this.var_1834;
      }
      
      public function get price() : int
      {
         return this.var_1807;
      }
      
      public function get upgrade() : Boolean
      {
         return this._upgrade;
      }
      
      public function get vip() : Boolean
      {
         return this.var_2618;
      }
      
      public function get periods() : int
      {
         return this.var_2616;
      }
      
      public function get daysLeftAfterPurchase() : int
      {
         return this.var_2615;
      }
      
      public function get year() : int
      {
         return this.var_2620;
      }
      
      public function get month() : int
      {
         return this.var_2617;
      }
      
      public function get day() : int
      {
         return this.var_2619;
      }
   }
}
