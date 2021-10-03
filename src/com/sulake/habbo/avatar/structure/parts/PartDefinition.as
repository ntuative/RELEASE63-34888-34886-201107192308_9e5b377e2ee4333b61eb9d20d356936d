package com.sulake.habbo.avatar.structure.parts
{
   public class PartDefinition
   {
       
      
      private var var_2648:String;
      
      private var var_1942:String;
      
      private var var_2649:String;
      
      private var var_1943:Boolean;
      
      private var var_1941:int = -1;
      
      public function PartDefinition(param1:XML)
      {
         super();
         this.var_2648 = String(param1["set-type"]);
         this.var_1942 = String(param1["flipped-set-type"]);
         this.var_2649 = String(param1["remove-set-type"]);
         this.var_1943 = false;
      }
      
      public function hasStaticId() : Boolean
      {
         return this.var_1941 >= 0;
      }
      
      public function get staticId() : int
      {
         return this.var_1941;
      }
      
      public function set staticId(param1:int) : void
      {
         this.var_1941 = param1;
      }
      
      public function get setType() : String
      {
         return this.var_2648;
      }
      
      public function get flippedSetType() : String
      {
         return this.var_1942;
      }
      
      public function get removeSetType() : String
      {
         return this.var_2649;
      }
      
      public function get appendToFigure() : Boolean
      {
         return this.var_1943;
      }
      
      public function set appendToFigure(param1:Boolean) : void
      {
         this.var_1943 = param1;
      }
      
      public function set flippedSetType(param1:String) : void
      {
         this.var_1942 = param1;
      }
   }
}
