package com.sulake.habbo.communication.messages.incoming.catalog
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class CatalogPageMessageOfferData
   {
       
      
      private var var_1255:int;
      
      private var var_2129:String;
      
      private var var_1371:int;
      
      private var var_1369:int;
      
      private var var_2130:int;
      
      private var var_2049:int;
      
      private var var_1166:Array;
      
      public function CatalogPageMessageOfferData(param1:IMessageDataWrapper)
      {
         super();
         this.var_1255 = param1.readInteger();
         this.var_2129 = param1.readString();
         this.var_1371 = param1.readInteger();
         this.var_1369 = param1.readInteger();
         this.var_2130 = param1.readInteger();
         var _loc2_:int = param1.readInteger();
         this.var_1166 = new Array();
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            this.var_1166.push(new CatalogPageMessageProductData(param1));
            _loc3_++;
         }
         this.var_2049 = param1.readInteger();
      }
      
      public function get offerId() : int
      {
         return this.var_1255;
      }
      
      public function get localizationId() : String
      {
         return this.var_2129;
      }
      
      public function get priceInCredits() : int
      {
         return this.var_1371;
      }
      
      public function get priceInActivityPoints() : int
      {
         return this.var_1369;
      }
      
      public function get products() : Array
      {
         return this.var_1166;
      }
      
      public function get activityPointType() : int
      {
         return this.var_2130;
      }
      
      public function get clubLevel() : int
      {
         return this.var_2049;
      }
   }
}
