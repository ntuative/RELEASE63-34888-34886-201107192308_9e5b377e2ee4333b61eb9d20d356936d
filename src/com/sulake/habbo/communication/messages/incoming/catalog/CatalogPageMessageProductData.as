package com.sulake.habbo.communication.messages.incoming.catalog
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class CatalogPageMessageProductData
   {
      
      public static const const_64:String = "i";
      
      public static const const_78:String = "s";
      
      public static const const_180:String = "e";
       
      
      private var var_1691:String;
      
      private var var_2705:int;
      
      private var var_1138:String;
      
      private var var_1692:int;
      
      private var var_2194:int;
      
      public function CatalogPageMessageProductData(param1:IMessageDataWrapper)
      {
         super();
         this.var_1691 = param1.readString();
         this.var_2705 = param1.readInteger();
         this.var_1138 = param1.readString();
         this.var_1692 = param1.readInteger();
         this.var_2194 = param1.readInteger();
      }
      
      public function get productType() : String
      {
         return this.var_1691;
      }
      
      public function get furniClassId() : int
      {
         return this.var_2705;
      }
      
      public function get extraParam() : String
      {
         return this.var_1138;
      }
      
      public function get productCount() : int
      {
         return this.var_1692;
      }
      
      public function get expiration() : int
      {
         return this.var_2194;
      }
   }
}
