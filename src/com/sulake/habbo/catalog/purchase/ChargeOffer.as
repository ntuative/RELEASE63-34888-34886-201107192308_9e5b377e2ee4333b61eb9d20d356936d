package com.sulake.habbo.catalog.purchase
{
   import com.sulake.habbo.catalog.IPurchasableOffer;
   import com.sulake.habbo.catalog.viewer.ICatalogPage;
   import com.sulake.habbo.catalog.viewer.IProductContainer;
   import com.sulake.habbo.communication.messages.incoming.catalog.ChargeInfo;
   
   public class ChargeOffer implements IPurchasableOffer
   {
       
      
      private var var_746:ChargeInfo;
      
      private var _disposed:Boolean = false;
      
      public function ChargeOffer(param1:ChargeInfo)
      {
         super();
         this.var_746 = param1;
      }
      
      public function dispose() : void
      {
         if(this.disposed)
         {
            return;
         }
         this._disposed = true;
         this.var_746 = null;
      }
      
      public function get disposed() : Boolean
      {
         return this._disposed;
      }
      
      public function get offerId() : int
      {
         return 0;
      }
      
      public function get priceInActivityPoints() : int
      {
         return this.var_746 != null ? int(this.var_746.priceInActivityPoints) : 0;
      }
      
      public function get activityPointType() : int
      {
         return this.var_746 != null ? int(this.var_746.activityPointType) : 0;
      }
      
      public function get priceInCredits() : int
      {
         return this.var_746 != null ? int(this.var_746.priceInCredits) : 0;
      }
      
      public function get page() : ICatalogPage
      {
         return null;
      }
      
      public function get priceType() : String
      {
         return null;
      }
      
      public function get productContainer() : IProductContainer
      {
         return null;
      }
      
      public function get localizationId() : String
      {
         return null;
      }
   }
}
