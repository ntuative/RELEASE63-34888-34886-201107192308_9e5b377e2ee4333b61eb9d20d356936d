package com.sulake.habbo.room.object.visualization.furniture
{
   import com.sulake.habbo.room.object.RoomObjectVariableEnum;
   import com.sulake.room.object.IRoomObjectModel;
   import com.sulake.room.object.visualization.utils.IGraphicAsset;
   import flash.display.BitmapData;
   import flash.geom.Point;
   
   public class FurnitureWaterAreaVisualization extends AnimatedFurnitureVisualization
   {
      
      private static const const_1701:String = "shore";
       
      
      private var var_2143:Boolean = true;
      
      private var var_498:Array;
      
      private var var_728:Array;
      
      private var var_1372:Array;
      
      private var _needsShoreUpdate:Boolean = false;
      
      private var var_587:int = 0;
      
      private var var_729:int = 0;
      
      private var var_2144:int = 0;
      
      private var var_2945:int = -1;
      
      private var var_2946:int = -1;
      
      private var var_80:BitmapData = null;
      
      public function FurnitureWaterAreaVisualization()
      {
         this.var_498 = [];
         this.var_728 = [];
         this.var_1372 = [];
         super();
      }
      
      override public function dispose() : void
      {
         var _loc1_:int = 0;
         if(assetCollection != null)
         {
            for each(_loc1_ in this.var_1372)
            {
               ShoreMaskCreatorUtility.disposeInstanceMask(object.getInstanceId(),_loc1_,assetCollection);
            }
            this.var_1372 = [];
         }
         if(this.var_80 != null)
         {
            this.var_80.dispose();
            this.var_80 = null;
         }
         super.dispose();
      }
      
      override protected function updateObject(param1:Number, param2:Number) : Boolean
      {
         if(super.updateObject(param1,param2))
         {
            this._needsShoreUpdate = true;
            this.updateBorderData();
            return true;
         }
         return false;
      }
      
      override protected function updateAnimation(param1:Number) : int
      {
         var _loc3_:int = 0;
         var _loc2_:* = int(super.updateAnimation(param1));
         if(this.updateInstanceShoreMask(param1))
         {
            _loc3_ = this.getShoreSpriteIndex(param1);
            _loc2_ |= 1 << _loc3_;
         }
         return _loc2_;
      }
      
      override protected function getSpriteAssetName(param1:int, param2:int) : String
      {
         if(param1 == 1 || param2 != this.getShoreSpriteIndex(param1))
         {
            return super.getSpriteAssetName(param1,param2);
         }
         if(this.var_2143)
         {
            return ShoreMaskCreatorUtility.getInstanceMaskName(object.getInstanceId(),getSize(param1));
         }
         return null;
      }
      
      private function getShoreSpriteIndex(param1:int) : int
      {
         if(this.var_2945 == param1 && this.var_2946 == direction)
         {
            return this.var_2144;
         }
         var _loc2_:int = spriteCount - 1;
         while(_loc2_ >= 0)
         {
            if(getSpriteTag(param1,direction,_loc2_) == const_1701)
            {
               this.var_2144 = _loc2_;
               this.var_2945 = param1;
               this.var_2946 = direction;
               return this.var_2144;
            }
            _loc2_--;
         }
         return -1;
      }
      
      private function getShoreAsset(param1:int) : IGraphicAsset
      {
         var _loc2_:String = super.getSpriteAssetName(param1,this.getShoreSpriteIndex(param1));
         return assetCollection.getAsset(_loc2_);
      }
      
      private function getInstanceMask(param1:int) : IGraphicAsset
      {
         var _loc2_:int = getSize(param1);
         var _loc3_:IGraphicAsset = ShoreMaskCreatorUtility.getInstanceMask(object.getInstanceId(),_loc2_,assetCollection,this.getShoreAsset(param1));
         if(_loc3_ != null)
         {
            if(this.var_1372.indexOf(_loc2_) < 0)
            {
               this.var_1372.push(_loc2_);
            }
         }
         return _loc3_;
      }
      
      private function updateBorderData() : void
      {
         this.resetBorders();
         var _loc1_:* = int(object.getState(0));
         var _loc2_:Array = this.getAreaData();
         var _loc3_:int = this.var_587 + 2;
         var _loc4_:int = this.var_729 + 2;
         var _loc5_:int = 0;
         var _loc6_:Array = _loc2_[_loc4_ - 1];
         _loc5_ = _loc3_ - 1;
         while(_loc5_ >= 0)
         {
            if(_loc1_ & 1)
            {
               _loc6_[_loc5_] = true;
            }
            _loc1_ >>= 1;
            _loc5_--;
         }
         _loc5_ = _loc4_ - 2;
         while(_loc5_ >= 1)
         {
            _loc6_ = _loc2_[_loc5_];
            if(_loc1_ & 1)
            {
               _loc6_[_loc3_ - 1] = true;
            }
            _loc1_ >>= 1;
            if(_loc1_ & 1)
            {
               _loc6_[0] = true;
            }
            _loc1_ >>= 1;
            _loc5_--;
         }
         _loc6_ = _loc2_[0];
         _loc5_ = _loc3_ - 1;
         while(_loc5_ >= 0)
         {
            if(_loc1_ & 1)
            {
               _loc6_[_loc5_] = true;
            }
            _loc1_ >>= 1;
            _loc5_--;
         }
         var _loc7_:int = 0;
         _loc7_ = this.updateTopBorder(_loc2_,_loc7_);
         _loc7_ = this.updateRightBorder(_loc2_,_loc7_);
         _loc7_ = this.updateBottomBorder(_loc2_,_loc7_);
         _loc7_ = this.updateLeftBorder(_loc2_,_loc7_);
         this.var_2143 = false;
         _loc5_ = 0;
         while(_loc5_ < this.var_498.length)
         {
            if(this.var_498[_loc5_] == true)
            {
               this.var_2143 = true;
            }
            _loc5_++;
         }
      }
      
      private function updateTopBorder(param1:Array, param2:int) : int
      {
         var _loc3_:int = this.var_587 + 2;
         var _loc4_:Array = param1[0];
         var _loc5_:Array = param1[1];
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         var _loc8_:int = 1;
         while(_loc8_ < _loc3_ - 1)
         {
            if(_loc4_[_loc8_] == false)
            {
               this.var_498[param2] = true;
               if(_loc5_[_loc8_ - 1] == false && _loc4_[_loc8_ - 1] == false)
               {
                  _loc6_ = 0;
               }
               else if(_loc4_[_loc8_ - 1] == true)
               {
                  _loc6_ = 0;
               }
               else
               {
                  _loc6_ = 0;
               }
               if(_loc5_[_loc8_ + 1] == false && _loc4_[_loc8_ + 1] == false)
               {
                  _loc7_ = 0;
               }
               else if(_loc4_[_loc8_ + 1] == true)
               {
                  _loc7_ = 0;
               }
               else
               {
                  _loc7_ = 0;
               }
               this.var_728[param2] = ShoreMaskCreatorUtility.getBorderType(_loc6_,_loc7_);
            }
            param2++;
            _loc8_++;
         }
         return param2;
      }
      
      private function updateRightBorder(param1:Array, param2:int) : int
      {
         var _loc3_:int = this.var_587 + 2;
         var _loc4_:int = this.var_729 + 2;
         var _loc5_:int = 0;
         var _loc6_:int = 0;
         var _loc7_:* = null;
         var _loc8_:* = null;
         var _loc9_:* = null;
         var _loc10_:int = 1;
         while(_loc10_ < _loc4_ - 1)
         {
            _loc7_ = param1[_loc10_];
            _loc8_ = param1[_loc10_ - 1];
            _loc9_ = param1[_loc10_ + 1];
            if(_loc7_[_loc3_ - 1] == false)
            {
               this.var_498[param2] = true;
               if(_loc8_[_loc3_ - 2] == false && _loc8_[_loc3_ - 1] == false)
               {
                  _loc5_ = 0;
               }
               else if(_loc8_[_loc3_ - 1] == true)
               {
                  _loc5_ = 0;
               }
               else
               {
                  _loc5_ = 0;
               }
               if(_loc9_[_loc3_ - 2] == false && _loc9_[_loc3_ - 1] == false)
               {
                  _loc6_ = 0;
               }
               else if(_loc9_[_loc3_ - 1] == true)
               {
                  _loc6_ = 0;
               }
               else
               {
                  _loc6_ = 0;
               }
               this.var_728[param2] = ShoreMaskCreatorUtility.getBorderType(_loc5_,_loc6_);
            }
            param2++;
            _loc10_++;
         }
         return param2;
      }
      
      private function updateBottomBorder(param1:Array, param2:int) : int
      {
         var _loc3_:int = this.var_587 + 2;
         var _loc4_:int = this.var_729 + 2;
         var _loc5_:int = 0;
         var _loc6_:int = 0;
         var _loc7_:Array = param1[_loc4_ - 1];
         var _loc8_:Array = param1[_loc4_ - 2];
         var _loc9_:int = _loc3_ - 2;
         while(_loc9_ >= 1)
         {
            if(_loc7_[_loc9_] == false)
            {
               this.var_498[param2] = true;
               if(_loc8_[_loc9_ + 1] == false && _loc7_[_loc9_ + 1] == false)
               {
                  _loc5_ = 0;
               }
               else if(_loc7_[_loc9_ + 1] == true)
               {
                  _loc5_ = 0;
               }
               else
               {
                  _loc5_ = 0;
               }
               if(_loc8_[_loc9_ - 1] == false && _loc7_[_loc9_ - 1] == false)
               {
                  _loc6_ = 0;
               }
               else if(_loc7_[_loc9_ - 1] == true)
               {
                  _loc6_ = 0;
               }
               else
               {
                  _loc6_ = 0;
               }
               this.var_728[param2] = ShoreMaskCreatorUtility.getBorderType(_loc5_,_loc6_);
            }
            param2++;
            _loc9_--;
         }
         return param2;
      }
      
      private function updateLeftBorder(param1:Array, param2:int) : int
      {
         var _loc3_:int = this.var_587 + 2;
         var _loc4_:int = this.var_729 + 2;
         var _loc5_:int = 0;
         var _loc6_:int = 0;
         var _loc7_:* = null;
         var _loc8_:* = null;
         var _loc9_:* = null;
         var _loc10_:int = _loc4_ - 2;
         while(_loc10_ >= 1)
         {
            _loc7_ = param1[_loc10_];
            _loc8_ = param1[_loc10_ + 1];
            _loc9_ = param1[_loc10_ - 1];
            if(_loc7_[0] == false)
            {
               this.var_498[param2] = true;
               if(_loc8_[1] == false && _loc8_[0] == false)
               {
                  _loc5_ = 0;
               }
               else if(_loc8_[0] == true)
               {
                  _loc5_ = 0;
               }
               else
               {
                  _loc5_ = 0;
               }
               if(_loc9_[1] == false && _loc9_[0] == false)
               {
                  _loc6_ = 0;
               }
               else if(_loc9_[0] == true)
               {
                  _loc6_ = 0;
               }
               else
               {
                  _loc6_ = 0;
               }
               this.var_728[param2] = ShoreMaskCreatorUtility.getBorderType(_loc5_,_loc6_);
            }
            param2++;
            _loc10_--;
         }
         return param2;
      }
      
      private function resetBorders() : void
      {
         var _loc2_:* = null;
         if(this.var_587 == 0 || this.var_729 == 0)
         {
            if(object == null || object.getModel() == null)
            {
               return;
            }
            _loc2_ = object.getModel();
            this.var_587 = _loc2_.getNumber(RoomObjectVariableEnum.const_273);
            this.var_729 = _loc2_.getNumber(RoomObjectVariableEnum.const_350);
         }
         this.var_498 = [];
         this.var_728 = [];
         var _loc1_:int = 0;
         while(_loc1_ < this.var_587 * 2 + this.var_729 * 2)
         {
            this.var_498.push(false);
            this.var_728.push(ShoreMaskCreatorUtility.const_85);
            _loc1_++;
         }
      }
      
      private function getAreaData() : Array
      {
         var _loc1_:int = this.var_587 + 2;
         var _loc2_:int = this.var_729 + 2;
         var _loc3_:* = [];
         var _loc4_:* = null;
         var _loc5_:int = 0;
         var _loc6_:int = 0;
         _loc6_ = 0;
         while(_loc6_ < _loc2_)
         {
            _loc4_ = [];
            _loc5_ = _loc1_ - 1;
            while(_loc5_ >= 0)
            {
               _loc4_.push(false);
               _loc5_--;
            }
            _loc3_.push(_loc4_);
            _loc6_++;
         }
         _loc6_ = 1;
         while(_loc6_ < _loc2_ - 1)
         {
            _loc4_ = _loc3_[_loc6_];
            _loc5_ = 1;
            while(_loc5_ < _loc1_ - 1)
            {
               _loc4_[_loc5_] = true;
               _loc5_++;
            }
            _loc6_++;
         }
         return _loc3_;
      }
      
      private function initializeShoreMasks(param1:Number) : Boolean
      {
         return ShoreMaskCreatorUtility.initializeShoreMasks(getSize(param1),assetCollection,this.getShoreAsset(param1));
      }
      
      private function createShoreMask(param1:int, param2:int, param3:Number) : BitmapData
      {
         if(this.var_80 == null || this.var_80.width < param1 || this.var_80.height < param2)
         {
            if(this.var_80 != null)
            {
               this.var_80.dispose();
            }
            this.var_80 = ShoreMaskCreatorUtility.createEmptyMask(param1,param2);
         }
         return ShoreMaskCreatorUtility.createShoreMask2x2(this.var_80,getSize(param3),this.var_498,this.var_728,assetCollection);
      }
      
      private function updateInstanceShoreMask(param1:Number) : Boolean
      {
         var _loc3_:* = null;
         var _loc4_:* = null;
         var _loc5_:* = null;
         var _loc6_:* = null;
         if(!this._needsShoreUpdate)
         {
            return false;
         }
         var _loc2_:IGraphicAsset = this.getInstanceMask(param1);
         if(_loc2_ != null && _loc2_.asset != null && this.initializeShoreMasks(param1))
         {
            _loc3_ = _loc2_.asset.content as BitmapData;
            if(_loc3_ != null)
            {
               _loc4_ = this.createShoreMask(_loc3_.width,_loc3_.height,param1);
               _loc5_ = this.getShoreAsset(param1);
               if(_loc5_ != null && _loc5_.asset != null)
               {
                  _loc6_ = _loc5_.asset.content as BitmapData;
                  if(_loc6_ != null)
                  {
                     _loc3_.fillRect(_loc3_.rect,0);
                     _loc3_.copyPixels(_loc6_,_loc6_.rect,new Point(0,0),_loc4_,new Point(0,0),true);
                  }
                  this._needsShoreUpdate = false;
               }
            }
            return true;
         }
         return false;
      }
      
      override protected function setAnimation(param1:int) : void
      {
         super.setAnimation(0);
      }
   }
}
