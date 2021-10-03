package com.sulake.habbo.communication.messages.incoming.marketplace
{
   public class MarketPlaceOffer
   {
       
      
      private var var_1255:int;
      
      private var _furniId:int;
      
      private var var_2446:int;
      
      private var var_2257:String;
      
      private var var_1807:int;
      
      private var var_431:int;
      
      private var var_2445:int = -1;
      
      private var var_2444:int;
      
      private var var_1806:int;
      
      public function MarketPlaceOffer(param1:int, param2:int, param3:int, param4:String, param5:int, param6:int, param7:int, param8:int, param9:int = -1)
      {
         super();
         this.var_1255 = param1;
         this._furniId = param2;
         this.var_2446 = param3;
         this.var_2257 = param4;
         this.var_1807 = param5;
         this.var_431 = param6;
         this.var_2445 = param7;
         this.var_2444 = param8;
         this.var_1806 = param9;
      }
      
      public function get offerId() : int
      {
         return this.var_1255;
      }
      
      public function get furniId() : int
      {
         return this._furniId;
      }
      
      public function get furniType() : int
      {
         return this.var_2446;
      }
      
      public function get stuffData() : String
      {
         return this.var_2257;
      }
      
      public function get price() : int
      {
         return this.var_1807;
      }
      
      public function get status() : int
      {
         return this.var_431;
      }
      
      public function get timeLeftMinutes() : int
      {
         return this.var_2445;
      }
      
      public function get averagePrice() : int
      {
         return this.var_2444;
      }
      
      public function get offerCount() : int
      {
         return this.var_1806;
      }
   }
}
