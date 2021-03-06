package com.sulake.habbo.catalog.viewer
{
   import com.sulake.core.runtime.IDisposable;
   import com.sulake.core.window.IWindowContainer;
   import com.sulake.habbo.room.IRoomEngine;
   
   public interface IProductContainer extends IDisposable
   {
       
      
      function initProductIcon(param1:IRoomEngine) : void;
      
      function activate() : void;
      
      function deActivate() : void;
      
      function get products() : Array;
      
      function get method_1() : IProduct;
      
      function set view(param1:IWindowContainer) : void;
      
      function get view() : IWindowContainer;
      
      function set grid(param1:IItemGrid) : void;
      
      function setClubIconLevel(param1:int) : void;
   }
}
