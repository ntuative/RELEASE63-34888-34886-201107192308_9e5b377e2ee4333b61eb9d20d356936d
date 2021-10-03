package com.sulake.habbo.catalog.viewer
{
   import com.sulake.habbo.catalog.IPurchasableOffer;
   import com.sulake.habbo.session.furniture.IFurnitureData;
   import com.sulake.habbo.session.product.IProductData;
   
   public class Offer implements IPurchasableOffer
   {
      
      public static const const_2021:String = "pricing_model_unknown";
      
      public static const const_405:String = "pricing_model_single";
      
      public static const const_434:String = "pricing_model_multi";
      
      public static const const_503:String = "pricing_model_bundle";
      
      public static const const_1880:String = "price_type_none";
      
      public static const const_768:String = "price_type_credits";
      
      public static const const_1261:String = "price_type_activitypoints";
      
      public static const const_1214:String = "price_type_credits_and_activitypoints";
       
      
      private var var_893:String;
      
      private var var_1370:String;
      
      private var var_1255:int;
      
      private var var_2129:String;
      
      private var var_1371:int;
      
      private var var_1369:int;
      
      private var var_2130:int;
      
      private var var_263:ICatalogPage;
      
      private var var_727:IProductContainer;
      
      private var _disposed:Boolean = false;
      
      private var var_2049:int = 0;
      
      private var var_2940:int;
      
      public function Offer(param1:int, param2:String, param3:int, param4:int, param5:int, param6:int, param7:Array, param8:ICatalogPage)
      {
         super();
         this.var_1255 = param1;
         this.var_2129 = param2;
         this.var_1371 = param3;
         this.var_1369 = param4;
         this.var_2130 = param5;
         this.var_263 = param8;
         this.var_2049 = param6;
         this.analyzePricingModel(param7);
         this.analyzePriceType();
         this.createProductContainer(param7);
      }
      
      public function get clubLevel() : int
      {
         return this.var_2049;
      }
      
      public function get page() : ICatalogPage
      {
         return this.var_263;
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
      
      public function get activityPointType() : int
      {
         return this.var_2130;
      }
      
      public function get productContainer() : IProductContainer
      {
         return this.var_727;
      }
      
      public function get pricingModel() : String
      {
         return this.var_893;
      }
      
      public function get priceType() : String
      {
         return this.var_1370;
      }
      
      public function get previewCallbackId() : int
      {
         return this.var_2940;
      }
      
      public function set previewCallbackId(param1:int) : void
      {
         this.var_2940 = param1;
      }
      
      public function dispose() : void
      {
         if(this.disposed)
         {
            return;
         }
         this._disposed = true;
         this.var_1255 = 0;
         this.var_2129 = "";
         this.var_1371 = 0;
         this.var_1369 = 0;
         this.var_2130 = 0;
         this.var_263 = null;
         if(this.var_727 != null)
         {
            this.var_727.dispose();
            this.var_727 = null;
         }
      }
      
      public function get disposed() : Boolean
      {
         return this._disposed;
      }
      
      private function createProductContainer(param1:Array) : void
      {
         switch(this.var_893)
         {
            case const_405:
               this.var_727 = new SingleProductContainer(this,param1);
               break;
            case const_434:
               this.var_727 = new MultiProductContainer(this,param1);
               break;
            case const_503:
               this.var_727 = new BundleProductContainer(this,param1);
               break;
            default:
               Logger.log("[Offer] Unknown pricing model" + this.var_893);
         }
      }
      
      private function analyzePricingModel(param1:Array) : void
      {
         var _loc2_:* = null;
         if(param1.length == 1)
         {
            _loc2_ = param1[0];
            if(_loc2_.productCount == 1)
            {
               this.var_893 = const_405;
            }
            else
            {
               this.var_893 = const_434;
            }
         }
         else if(param1.length > 1)
         {
            this.var_893 = const_503;
         }
         else
         {
            this.var_893 = const_2021;
         }
      }
      
      private function analyzePriceType() : void
      {
         if(this.var_1371 > 0 && this.var_1369 > 0)
         {
            this.var_1370 = const_1214;
         }
         else if(this.var_1371 > 0)
         {
            this.var_1370 = const_768;
         }
         else if(this.var_1369 > 0)
         {
            this.var_1370 = const_1261;
         }
         else
         {
            this.var_1370 = const_1880;
         }
      }
      
      public function clone() : Offer
      {
         var _loc3_:* = null;
         var _loc4_:* = null;
         var _loc5_:* = null;
         var _loc1_:Array = new Array();
         var _loc2_:IProductData = this.var_263.viewer.catalog.getProductData(this.localizationId);
         for each(_loc3_ in this.var_727.products)
         {
            _loc4_ = this.var_263.viewer.catalog.getFurnitureData(_loc3_.productClassId,_loc3_.productType);
            _loc5_ = new Product(_loc3_.productType,_loc3_.productClassId,_loc3_.extraParam,_loc3_.productCount,_loc3_.expiration,_loc2_,_loc4_);
            _loc1_.push(_loc5_);
         }
         return new Offer(this.offerId,this.localizationId,this.priceInCredits,this.priceInActivityPoints,this.activityPointType,this.clubLevel,_loc1_,this.page);
      }
   }
}
