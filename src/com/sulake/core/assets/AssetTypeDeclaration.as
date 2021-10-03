package com.sulake.core.assets
{
   public class AssetTypeDeclaration
   {
       
      
      private var var_2612:String;
      
      private var var_2613:Class;
      
      private var var_2614:Class;
      
      private var var_1907:Array;
      
      public function AssetTypeDeclaration(param1:String, param2:Class, param3:Class, ... rest)
      {
         super();
         this.var_2612 = param1;
         this.var_2613 = param2;
         this.var_2614 = param3;
         if(rest == null)
         {
            this.var_1907 = new Array();
         }
         else
         {
            this.var_1907 = rest;
         }
      }
      
      public function get mimeType() : String
      {
         return this.var_2612;
      }
      
      public function get assetClass() : Class
      {
         return this.var_2613;
      }
      
      public function get loaderClass() : Class
      {
         return this.var_2614;
      }
      
      public function get fileTypes() : Array
      {
         return this.var_1907;
      }
   }
}
