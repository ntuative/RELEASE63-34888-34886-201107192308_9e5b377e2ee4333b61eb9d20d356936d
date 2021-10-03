package com.sulake.core.assets
{
   import flash.display.DisplayObject;
   
   public class DisplayAsset implements IAsset
   {
       
      
      protected var var_1152:String;
      
      protected var var_200:DisplayObject;
      
      protected var _disposed:Boolean = false;
      
      protected var var_936:AssetTypeDeclaration;
      
      public function DisplayAsset(param1:AssetTypeDeclaration, param2:String = null)
      {
         super();
         this.var_936 = param1;
         this.var_1152 = param2;
      }
      
      public function get url() : String
      {
         return this.var_1152;
      }
      
      public function get content() : Object
      {
         return this.var_200;
      }
      
      public function get disposed() : Boolean
      {
         return this._disposed;
      }
      
      public function get declaration() : AssetTypeDeclaration
      {
         return this.var_936;
      }
      
      public function dispose() : void
      {
         if(!this._disposed)
         {
            if(this.var_200.loaderInfo != null)
            {
               if(this.var_200.loaderInfo.loader != null)
               {
                  this.var_200.loaderInfo.loader.unload();
               }
            }
            this.var_200 = null;
            this.var_936 = null;
            this._disposed = true;
            this.var_1152 = null;
         }
      }
      
      public function setUnknownContent(param1:Object) : void
      {
         if(param1 is DisplayObject)
         {
            this.var_200 = param1 as DisplayObject;
            if(this.var_200 != null)
            {
               return;
            }
            throw new Error("Failed to convert DisplayObject to DisplayAsset!");
         }
         if(param1 is DisplayAsset)
         {
            this.var_200 = DisplayAsset(param1).var_200;
            this.var_936 = DisplayAsset(param1).var_936;
            if(this.var_200 == null)
            {
               throw new Error("Failed to read content from DisplayAsset!");
            }
         }
      }
      
      public function setFromOtherAsset(param1:IAsset) : void
      {
         if(param1 is DisplayAsset)
         {
            this.var_200 = DisplayAsset(param1).var_200;
            this.var_936 = DisplayAsset(param1).var_936;
            return;
         }
         throw new Error("Provided asset should be of type DisplayAsset!");
      }
      
      public function setParamsDesc(param1:XMLList) : void
      {
      }
   }
}
