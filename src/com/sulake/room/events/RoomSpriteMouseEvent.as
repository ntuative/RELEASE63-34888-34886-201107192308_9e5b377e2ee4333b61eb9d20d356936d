package com.sulake.room.events
{
   public class RoomSpriteMouseEvent
   {
       
      
      private var _type:String = "";
      
      private var var_1849:String = "";
      
      private var var_1837:String = "";
      
      private var var_2665:String = "";
      
      private var var_2733:Number = 0;
      
      private var var_2737:Number = 0;
      
      private var var_2734:Number = 0;
      
      private var var_2738:Number = 0;
      
      private var var_2732:Boolean = false;
      
      private var var_2736:Boolean = false;
      
      private var var_2731:Boolean = false;
      
      private var var_2735:Boolean = false;
      
      public function RoomSpriteMouseEvent(param1:String, param2:String, param3:String, param4:String, param5:Number, param6:Number, param7:Number = 0, param8:Number = 0, param9:Boolean = false, param10:Boolean = false, param11:Boolean = false, param12:Boolean = false)
      {
         super();
         this._type = param1;
         this.var_1849 = param2;
         this.var_1837 = param3;
         this.var_2665 = param4;
         this.var_2733 = param5;
         this.var_2737 = param6;
         this.var_2734 = param7;
         this.var_2738 = param8;
         this.var_2732 = param9;
         this.var_2736 = param10;
         this.var_2731 = param11;
         this.var_2735 = param12;
      }
      
      public function get type() : String
      {
         return this._type;
      }
      
      public function get eventId() : String
      {
         return this.var_1849;
      }
      
      public function get canvasId() : String
      {
         return this.var_1837;
      }
      
      public function get spriteTag() : String
      {
         return this.var_2665;
      }
      
      public function get screenX() : Number
      {
         return this.var_2733;
      }
      
      public function get screenY() : Number
      {
         return this.var_2737;
      }
      
      public function get localX() : Number
      {
         return this.var_2734;
      }
      
      public function get localY() : Number
      {
         return this.var_2738;
      }
      
      public function get ctrlKey() : Boolean
      {
         return this.var_2732;
      }
      
      public function get altKey() : Boolean
      {
         return this.var_2736;
      }
      
      public function get shiftKey() : Boolean
      {
         return this.var_2731;
      }
      
      public function get buttonDown() : Boolean
      {
         return this.var_2735;
      }
   }
}
