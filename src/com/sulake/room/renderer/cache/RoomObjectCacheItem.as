package com.sulake.room.renderer.cache
{
   public class RoomObjectCacheItem
   {
       
      
      private var var_463:RoomObjectLocationCacheItem = null;
      
      private var var_219:RoomObjectSortableSpriteCacheItem = null;
      
      public function RoomObjectCacheItem(param1:String)
      {
         super();
         this.var_463 = new RoomObjectLocationCacheItem(param1);
         this.var_219 = new RoomObjectSortableSpriteCacheItem();
      }
      
      public function get location() : RoomObjectLocationCacheItem
      {
         return this.var_463;
      }
      
      public function get sprites() : RoomObjectSortableSpriteCacheItem
      {
         return this.var_219;
      }
      
      public function dispose() : void
      {
         if(this.var_463 != null)
         {
            this.var_463.dispose();
            this.var_463 = null;
         }
         if(this.var_219 != null)
         {
            this.var_219.dispose();
            this.var_219 = null;
         }
      }
   }
}
