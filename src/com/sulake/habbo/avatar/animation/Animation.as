package com.sulake.habbo.avatar.animation
{
   import com.sulake.core.utils.Map;
   import com.sulake.habbo.avatar.AvatarStructure;
   import com.sulake.habbo.avatar.actions.IActionDefinition;
   
   public class Animation implements IAnimation
   {
       
      
      private var _id:String;
      
      private var var_1792:String;
      
      private var _frames:Array;
      
      private var var_1693:Array;
      
      private var var_2197:AvatarDataContainer;
      
      private var var_1695:Array;
      
      private var var_2198:DirectionDataContainer;
      
      private var var_2196:ShadowDataContainer;
      
      private var var_1694:Array;
      
      private var var_918:Array;
      
      private var var_743:Map;
      
      private var _overrideFrames:Map;
      
      public function Animation(param1:AvatarStructure, param2:XML)
      {
         var _loc3_:* = null;
         var _loc4_:* = null;
         var _loc5_:* = null;
         var _loc6_:* = null;
         var _loc7_:* = null;
         var _loc8_:* = null;
         var _loc9_:* = null;
         var _loc10_:* = null;
         this._frames = [];
         this.var_1693 = [];
         this.var_1695 = [];
         this.var_1694 = [];
         this.var_918 = [];
         super();
         this._id = String(param2.@name);
         if(param2.hasOwnProperty("@desc"))
         {
            this.var_1792 = String(param2.@desc);
         }
         else
         {
            this.var_1792 = this._id;
         }
         if(param2.hasOwnProperty("sprite"))
         {
            for each(_loc3_ in param2.sprite)
            {
               this.var_1693.push(new SpriteDataContainer(this as IAnimation,_loc3_));
            }
         }
         if(param2.hasOwnProperty("avatar"))
         {
            this.var_2197 = new AvatarDataContainer(param2.avatar[0]);
         }
         if(param2.hasOwnProperty("canvas"))
         {
            for each(_loc4_ in param2.canvas)
            {
               this.var_1695.push(new CanvasDataContainer(_loc4_));
            }
         }
         if(param2.hasOwnProperty("direction"))
         {
            this.var_2198 = new DirectionDataContainer(param2.direction[0]);
         }
         if(param2.hasOwnProperty("shadow"))
         {
            this.var_2196 = new ShadowDataContainer(param2.shadow[0]);
         }
         if(param2.hasOwnProperty("remove"))
         {
            for each(_loc5_ in param2.remove)
            {
               this.var_1694.push(String(_loc5_.@id));
            }
         }
         if(param2.hasOwnProperty("add"))
         {
            for each(_loc6_ in param2.add)
            {
               this.var_918.push(new AddDataContainer(_loc6_));
            }
         }
         if(param2.hasOwnProperty("override"))
         {
            this._overrideFrames = new Map();
            this.var_743 = new Map();
            for each(_loc7_ in param2.var_3009)
            {
               _loc8_ = _loc7_.@name;
               _loc9_ = _loc7_.@var_3009;
               this.var_743.add(_loc9_,_loc8_);
               _loc10_ = new Array();
               this.parseFrames(_loc10_,_loc7_.frame,param1);
               this._overrideFrames.add(_loc8_,_loc10_);
            }
         }
         this.parseFrames(this._frames,param2.frame,param1);
      }
      
      private function parseFrames(param1:Array, param2:XMLList, param3:AvatarStructure) : void
      {
         var _loc4_:* = null;
         var _loc5_:* = null;
         var _loc7_:* = null;
         var _loc8_:* = null;
         var _loc9_:* = null;
         var _loc10_:* = null;
         var _loc11_:* = null;
         var _loc6_:int = 0;
         for each(_loc7_ in param2)
         {
            _loc4_ = new Array();
            for each(_loc8_ in _loc7_.bodypart)
            {
               _loc5_ = param3.getActionDefinition(String(_loc8_.@action));
               _loc10_ = new AnimationLayerData(param3,_loc8_,AnimationLayerData.const_869,_loc6_,_loc5_);
               _loc4_.push(_loc10_);
            }
            for each(_loc9_ in _loc7_.fx)
            {
               _loc5_ = param3.getActionDefinition(String(_loc9_.@action));
               _loc11_ = new AnimationLayerData(param3,_loc9_,AnimationLayerData.const_541,_loc6_,_loc5_);
               _loc4_.push(_loc11_);
               if(_loc5_ != null)
               {
               }
            }
            param1.push(_loc4_);
            _loc6_++;
         }
      }
      
      public function frameCount(param1:String = null) : int
      {
         var _loc2_:* = null;
         if(!param1)
         {
            return this._frames.length;
         }
         if(this._overrideFrames)
         {
            _loc2_ = this._overrideFrames.getValue(param1);
            if(_loc2_)
            {
               return _loc2_.length;
            }
         }
         return 0;
      }
      
      public function hasOverriddenActions() : Boolean
      {
         if(!this.var_743)
         {
            return false;
         }
         return this.var_743.length > 0;
      }
      
      public function overriddenActionNames() : Array
      {
         if(!this.var_743)
         {
            return null;
         }
         return this.var_743.getKeys();
      }
      
      public function overridingAction(param1:String) : String
      {
         if(!this.var_743)
         {
            return null;
         }
         return this.var_743.getValue(param1);
      }
      
      private function getFrame(param1:int, param2:String = null) : Array
      {
         var _loc4_:* = null;
         var _loc3_:* = [];
         if(!param2)
         {
            if(this._frames.length > 0)
            {
               _loc3_ = this._frames[param1 % this._frames.length];
            }
         }
         else
         {
            _loc4_ = this._overrideFrames.getValue(param2) as Array;
            if(_loc4_ && _loc4_.length > 0)
            {
               _loc3_ = _loc4_[param1 % _loc4_.length];
            }
         }
         return _loc3_;
      }
      
      public function getAnimatedBodyPartIds(param1:int, param2:String = null) : Array
      {
         var _loc4_:* = null;
         var _loc5_:* = null;
         var _loc3_:Array = new Array();
         for each(_loc4_ in this.getFrame(param1,param2))
         {
            if(_loc4_.type == AnimationLayerData.const_869)
            {
               _loc3_.push(_loc4_.id);
            }
            else if(_loc4_.type == AnimationLayerData.const_541)
            {
               for each(_loc5_ in this.var_918)
               {
                  if(_loc5_.id == _loc4_.id)
                  {
                     _loc3_.push(_loc5_.align);
                  }
               }
            }
         }
         return _loc3_;
      }
      
      public function getLayerData(param1:int, param2:String, param3:String = null) : AnimationLayerData
      {
         var _loc4_:* = null;
         var _loc5_:* = null;
         for each(_loc4_ in this.getFrame(param1,param3))
         {
            if(_loc4_.id == param2)
            {
               return _loc4_ as AnimationLayerData;
            }
            if(_loc4_.type == AnimationLayerData.const_541)
            {
               for each(_loc5_ in this.var_918)
               {
                  if(_loc5_.align == param2 && _loc5_.id == _loc4_.id)
                  {
                     return _loc4_ as AnimationLayerData;
                  }
               }
            }
         }
         return null;
      }
      
      public function hasSpriteData() : Boolean
      {
         return this.var_1693 != null;
      }
      
      public function hasAvatarData() : Boolean
      {
         return this.var_2197 != null;
      }
      
      public function hasCanvasData() : Boolean
      {
         return this.var_1695 != null;
      }
      
      public function hasDirectionData() : Boolean
      {
         return this.var_2198 != null;
      }
      
      public function hasShadowData() : Boolean
      {
         return this.var_2196 != null;
      }
      
      public function hasRemoveData() : Boolean
      {
         return this.var_1694 != null;
      }
      
      public function hasAddData() : Boolean
      {
         return this.var_918 != null;
      }
      
      public function getAddData(param1:String) : AddDataContainer
      {
         var _loc2_:* = null;
         for each(_loc2_ in this.var_918)
         {
            if(_loc2_.id == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      public function get id() : String
      {
         return this._id;
      }
      
      public function get spriteData() : Array
      {
         return this.var_1693;
      }
      
      public function get avatarData() : AvatarDataContainer
      {
         return this.var_2197;
      }
      
      public function get canvasData() : Array
      {
         return this.var_1695;
      }
      
      public function get directionData() : DirectionDataContainer
      {
         return this.var_2198;
      }
      
      public function get shadowData() : ShadowDataContainer
      {
         return this.var_2196;
      }
      
      public function get removeData() : Array
      {
         return this.var_1694;
      }
      
      public function get addData() : Array
      {
         return this.var_918;
      }
      
      public function get description() : String
      {
         return this.var_1792;
      }
   }
}
