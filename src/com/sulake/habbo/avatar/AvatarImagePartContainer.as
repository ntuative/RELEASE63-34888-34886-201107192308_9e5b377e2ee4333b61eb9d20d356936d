package com.sulake.habbo.avatar
{
   import com.sulake.habbo.avatar.actions.IActionDefinition;
   import com.sulake.habbo.avatar.structure.figure.IPartColor;
   import flash.geom.ColorTransform;
   
   public class AvatarImagePartContainer
   {
       
      
      private var var_1633:String;
      
      private var var_206:String;
      
      private var var_2415:String;
      
      private var var_2090:String;
      
      private var _color:IPartColor;
      
      private var _frames:Array;
      
      private var _action:IActionDefinition;
      
      private var var_1477:Boolean;
      
      private var _isBlendable:Boolean;
      
      private var var_2416:ColorTransform;
      
      private var var_2417:int;
      
      public function AvatarImagePartContainer(param1:String, param2:String, param3:String, param4:IPartColor, param5:Array, param6:IActionDefinition, param7:Boolean, param8:int, param9:String = "", param10:Boolean = false, param11:Number = 1)
      {
         super();
         this.var_1633 = param1;
         this.var_206 = param2;
         this.var_2090 = param3;
         this._color = param4;
         this._frames = param5;
         this._action = param6;
         this.var_1477 = param7;
         this.var_2417 = param8;
         this.var_2415 = param9;
         this._isBlendable = param10;
         this.var_2416 = new ColorTransform(1,1,1,param11);
         if(this._frames == null)
         {
            Logger.log("Null frame list");
         }
         if(this.var_206 == "ey")
         {
            this.var_1477 = false;
         }
      }
      
      public function getFrameIndex(param1:int) : int
      {
         return this._frames[param1 % this._frames.length];
      }
      
      public function get frames() : Array
      {
         return this._frames;
      }
      
      public function get bodyPartId() : String
      {
         return this.var_1633;
      }
      
      public function get partType() : String
      {
         return this.var_206;
      }
      
      public function get partId() : String
      {
         return this.var_2090;
      }
      
      public function get color() : IPartColor
      {
         return this._color;
      }
      
      public function get action() : IActionDefinition
      {
         return this._action;
      }
      
      public function set isColorable(param1:Boolean) : void
      {
         this.var_1477 = param1;
      }
      
      public function get isColorable() : Boolean
      {
         return this.var_1477;
      }
      
      public function get paletteMapId() : int
      {
         return this.var_2417;
      }
      
      public function get flippedPartType() : String
      {
         return this.var_2415;
      }
      
      public function get isBlendable() : Boolean
      {
         return this._isBlendable;
      }
      
      public function get blendTransform() : ColorTransform
      {
         return this.var_2416;
      }
   }
}
