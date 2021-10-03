package com.sulake.room.object.visualization
{
   import flash.display.BitmapData;
   import flash.display.BlendMode;
   import flash.geom.Point;
   
   public final class RoomObjectSprite implements IRoomObjectSprite
   {
      
      private static var var_1257:int = 0;
       
      
      private var var_496:BitmapData = null;
      
      private var var_2556:String = "";
      
      private var var_353:Boolean = true;
      
      private var var_2297:String = "";
      
      private var var_2554:int = 255;
      
      private var _color:int = 16777215;
      
      private var var_1859:String;
      
      private var var_1508:Boolean = false;
      
      private var var_1509:Boolean = false;
      
      private var _offset:Point;
      
      private var var_213:int = 0;
      
      private var _height:int = 0;
      
      private var var_1299:Number = 0;
      
      private var var_2555:Boolean = false;
      
      private var var_2558:Boolean = true;
      
      private var var_2557:Boolean = false;
      
      private var _updateID:int = 0;
      
      private var var_2370:int = 0;
      
      private var var_2559:Array = null;
      
      public function RoomObjectSprite()
      {
         this.var_1859 = BlendMode.NORMAL;
         this._offset = new Point(0,0);
         super();
         this.var_2370 = var_1257++;
      }
      
      public function dispose() : void
      {
         this.var_496 = null;
         this.var_213 = 0;
         this._height = 0;
      }
      
      public function get asset() : BitmapData
      {
         return this.var_496;
      }
      
      public function get assetName() : String
      {
         return this.var_2556;
      }
      
      public function get visible() : Boolean
      {
         return this.var_353;
      }
      
      public function get tag() : String
      {
         return this.var_2297;
      }
      
      public function get alpha() : int
      {
         return this.var_2554;
      }
      
      public function get color() : int
      {
         return this._color;
      }
      
      public function get blendMode() : String
      {
         return this.var_1859;
      }
      
      public function get flipV() : Boolean
      {
         return this.var_1509;
      }
      
      public function get flipH() : Boolean
      {
         return this.var_1508;
      }
      
      public function get offsetX() : int
      {
         return this._offset.x;
      }
      
      public function get offsetY() : int
      {
         return this._offset.y;
      }
      
      public function get width() : int
      {
         return this.var_213;
      }
      
      public function get height() : int
      {
         return this._height;
      }
      
      public function get relativeDepth() : Number
      {
         return this.var_1299;
      }
      
      public function get varyingDepth() : Boolean
      {
         return this.var_2555;
      }
      
      public function get capturesMouse() : Boolean
      {
         return this.var_2558;
      }
      
      public function get clickHandling() : Boolean
      {
         return this.var_2557;
      }
      
      public function get instanceId() : int
      {
         return this.var_2370;
      }
      
      public function get updateId() : int
      {
         return this._updateID;
      }
      
      public function get filters() : Array
      {
         return this.var_2559;
      }
      
      public function set asset(param1:BitmapData) : void
      {
         if(param1 != null)
         {
            this.var_213 = param1.width;
            this._height = param1.height;
         }
         this.var_496 = param1;
         ++this._updateID;
      }
      
      public function set assetName(param1:String) : void
      {
         this.var_2556 = param1;
         ++this._updateID;
      }
      
      public function set visible(param1:Boolean) : void
      {
         this.var_353 = param1;
         ++this._updateID;
      }
      
      public function set tag(param1:String) : void
      {
         this.var_2297 = param1;
         ++this._updateID;
      }
      
      public function set alpha(param1:int) : void
      {
         param1 &= 255;
         this.var_2554 = param1;
         ++this._updateID;
      }
      
      public function set color(param1:int) : void
      {
         param1 &= 16777215;
         this._color = param1;
         ++this._updateID;
      }
      
      public function set blendMode(param1:String) : void
      {
         this.var_1859 = param1;
         ++this._updateID;
      }
      
      public function set filters(param1:Array) : void
      {
         this.var_2559 = param1;
         ++this._updateID;
      }
      
      public function set flipH(param1:Boolean) : void
      {
         this.var_1508 = param1;
         ++this._updateID;
      }
      
      public function set flipV(param1:Boolean) : void
      {
         this.var_1509 = param1;
         ++this._updateID;
      }
      
      public function set offsetX(param1:int) : void
      {
         this._offset.x = param1;
         ++this._updateID;
      }
      
      public function set offsetY(param1:int) : void
      {
         this._offset.y = param1;
         ++this._updateID;
      }
      
      public function set relativeDepth(param1:Number) : void
      {
         this.var_1299 = param1;
         ++this._updateID;
      }
      
      public function set varyingDepth(param1:Boolean) : void
      {
         this.var_2555 = param1;
         ++this._updateID;
      }
      
      public function set capturesMouse(param1:Boolean) : void
      {
         this.var_2558 = param1;
         ++this._updateID;
      }
      
      public function set clickHandling(param1:Boolean) : void
      {
         this.var_2557 = param1;
         ++this._updateID;
      }
   }
}
