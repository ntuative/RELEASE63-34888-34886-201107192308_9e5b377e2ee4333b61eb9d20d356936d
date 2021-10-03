package com.sulake.habbo.friendbar.view.utils
{
   import com.sulake.core.assets.BitmapDataAsset;
   import com.sulake.core.assets.IAssetLibrary;
   import com.sulake.core.window.components.IBitmapWrapperWindow;
   
   public class StreamIcon extends Icon
   {
      
      private static const const_1147:int = 500;
       
      
      private var _assets:IAssetLibrary;
      
      public function StreamIcon(param1:IAssetLibrary, param2:IBitmapWrapperWindow)
      {
         super();
         this._assets = param1;
         alignment = const_468 | const_467;
         image = param1.getAssetByName("icon_stream_png") as BitmapDataAsset;
         canvas = param2;
      }
      
      override public function dispose() : void
      {
         if(!disposed)
         {
            this._assets = null;
            super.dispose();
         }
      }
      
      override public function hover(param1:Boolean) : void
      {
         if(param1)
         {
            image = this._assets.getAssetByName("icon_stream_hover_png") as BitmapDataAsset;
         }
         else
         {
            image = this._assets.getAssetByName("icon_stream_png") as BitmapDataAsset;
         }
         super.hover(param1);
      }
   }
}
