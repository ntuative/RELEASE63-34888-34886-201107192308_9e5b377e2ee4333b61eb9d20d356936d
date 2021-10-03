package com.sulake.habbo.room.utils
{
   import com.sulake.room.utils.IVector3d;
   import com.sulake.room.utils.Vector3d;
   
   public class RoomCamera
   {
      
      private static const const_1648:Number = 12;
       
      
      private var var_2758:int = -1;
      
      private var var_2756:int = -2;
      
      private var var_224:Vector3d = null;
      
      private var var_1321:Number = 0;
      
      private var var_1590:Number = 0;
      
      private var var_1993:Boolean = false;
      
      private var var_204:Vector3d = null;
      
      private var var_1992:Vector3d;
      
      private var var_2755:Boolean = false;
      
      private var var_2760:Boolean = false;
      
      private var var_2751:Boolean = false;
      
      private var var_2759:Boolean = false;
      
      private var var_2753:int = 0;
      
      private var var_2752:int = 0;
      
      private var _scale:int = 0;
      
      private var var_2757:int = 0;
      
      private var var_2754:int = 0;
      
      private var var_1833:int = -1;
      
      private var var_1995:int = 0;
      
      private var var_1994:Boolean = false;
      
      public function RoomCamera()
      {
         this.var_1992 = new Vector3d();
         super();
      }
      
      public function get location() : IVector3d
      {
         return this.var_204;
      }
      
      public function get targetId() : int
      {
         return this.var_2758;
      }
      
      public function get targetCategory() : int
      {
         return this.var_2756;
      }
      
      public function get targetObjectLoc() : IVector3d
      {
         return this.var_1992;
      }
      
      public function get limitedLocationX() : Boolean
      {
         return this.var_2755;
      }
      
      public function get limitedLocationY() : Boolean
      {
         return this.var_2760;
      }
      
      public function get centeredLocX() : Boolean
      {
         return this.var_2751;
      }
      
      public function get centeredLocY() : Boolean
      {
         return this.var_2759;
      }
      
      public function get screenWd() : int
      {
         return this.var_2753;
      }
      
      public function get screenHt() : int
      {
         return this.var_2752;
      }
      
      public function get scale() : int
      {
         return this._scale;
      }
      
      public function get roomWd() : int
      {
         return this.var_2757;
      }
      
      public function get roomHt() : int
      {
         return this.var_2754;
      }
      
      public function get geometryUpdateId() : int
      {
         return this.var_1833;
      }
      
      public function get isMoving() : Boolean
      {
         if(this.var_224 != null && this.var_204 != null)
         {
            return true;
         }
         return false;
      }
      
      public function set targetId(param1:int) : void
      {
         this.var_2758 = param1;
      }
      
      public function set targetObjectLoc(param1:IVector3d) : void
      {
         this.var_1992.assign(param1);
      }
      
      public function set targetCategory(param1:int) : void
      {
         this.var_2756 = param1;
      }
      
      public function set limitedLocationX(param1:Boolean) : void
      {
         this.var_2755 = param1;
      }
      
      public function set limitedLocationY(param1:Boolean) : void
      {
         this.var_2760 = param1;
      }
      
      public function set centeredLocX(param1:Boolean) : void
      {
         this.var_2751 = param1;
      }
      
      public function set centeredLocY(param1:Boolean) : void
      {
         this.var_2759 = param1;
      }
      
      public function set screenWd(param1:int) : void
      {
         this.var_2753 = param1;
      }
      
      public function set screenHt(param1:int) : void
      {
         this.var_2752 = param1;
      }
      
      public function set scale(param1:int) : void
      {
         if(this._scale != param1)
         {
            this._scale = param1;
            this.var_1994 = true;
         }
      }
      
      public function set roomWd(param1:int) : void
      {
         this.var_2757 = param1;
      }
      
      public function set roomHt(param1:int) : void
      {
         this.var_2754 = param1;
      }
      
      public function set geometryUpdateId(param1:int) : void
      {
         this.var_1833 = param1;
      }
      
      public function set target(param1:IVector3d) : void
      {
         var _loc2_:* = null;
         if(this.var_224 == null)
         {
            this.var_224 = new Vector3d();
         }
         if(this.var_224.x != param1.x || this.var_224.y != param1.y || this.var_224.z != param1.z)
         {
            this.var_224.assign(param1);
            this.var_1995 = 0;
            _loc2_ = Vector3d.dif(this.var_224,this.var_204);
            this.var_1321 = _loc2_.length;
            this.var_1993 = true;
         }
      }
      
      public function dispose() : void
      {
         this.var_224 = null;
         this.var_204 = null;
      }
      
      public function initializeLocation(param1:IVector3d) : void
      {
         if(this.var_204 != null)
         {
            return;
         }
         this.var_204 = new Vector3d();
         this.var_204.assign(param1);
      }
      
      public function resetLocation(param1:IVector3d) : void
      {
         if(this.var_204 == null)
         {
            this.var_204 = new Vector3d();
         }
         this.var_204.assign(param1);
      }
      
      public function update(param1:uint, param2:Number) : void
      {
         var _loc3_:* = null;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         if(this.var_224 != null && this.var_204 != null)
         {
            ++this.var_1995;
            if(this.var_1994)
            {
               this.var_1994 = false;
               this.var_204 = this.var_224;
               this.var_224 = null;
               return;
            }
            _loc3_ = Vector3d.dif(this.var_224,this.var_204);
            if(_loc3_.length > this.var_1321)
            {
               this.var_1321 = _loc3_.length;
            }
            if(_loc3_.length <= param2)
            {
               this.var_204 = this.var_224;
               this.var_224 = null;
               this.var_1590 = 0;
            }
            else
            {
               _loc4_ = Math.sin(0 * _loc3_.length / this.var_1321);
               _loc5_ = param2 * 0.5;
               _loc6_ = this.var_1321 / const_1648;
               _loc7_ = _loc5_ + (_loc6_ - _loc5_) * _loc4_;
               if(this.var_1993)
               {
                  if(_loc7_ < this.var_1590)
                  {
                     _loc7_ = this.var_1590;
                     if(_loc7_ > _loc3_.length)
                     {
                        _loc7_ = _loc3_.length;
                     }
                  }
                  else
                  {
                     this.var_1993 = false;
                  }
               }
               this.var_1590 = _loc7_;
               _loc3_.div(_loc3_.length);
               _loc3_.mul(_loc7_);
               this.var_204 = Vector3d.sum(this.var_204,_loc3_);
            }
         }
      }
      
      public function reset() : void
      {
         this.var_1833 = -1;
      }
   }
}
