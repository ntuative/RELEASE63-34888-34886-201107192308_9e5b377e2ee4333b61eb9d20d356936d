package com.sulake.habbo.communication.messages.incoming.inventory.achievements
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class AchievementData
   {
       
      
      private var _type:int;
      
      private var var_1390:int;
      
      private var var_1791:String;
      
      private var var_2040:int;
      
      private var var_2821:int;
      
      private var var_2819:int;
      
      private var var_2041:int;
      
      private var var_2042:Boolean;
      
      private var _category:String;
      
      private var var_2848:int;
      
      public function AchievementData(param1:IMessageDataWrapper)
      {
         super();
         this._type = param1.readInteger();
         this.var_1390 = param1.readInteger();
         this.var_1791 = param1.readString();
         this.var_2040 = Math.max(1,param1.readInteger());
         this.var_2821 = param1.readInteger();
         this.var_2819 = param1.readInteger();
         this.var_2041 = param1.readInteger();
         this.var_2042 = param1.readBoolean();
         this._category = param1.readString();
         this.var_2848 = param1.readInteger();
      }
      
      public function get type() : int
      {
         return this._type;
      }
      
      public function get badgeId() : String
      {
         return this.var_1791;
      }
      
      public function get level() : int
      {
         return this.var_1390;
      }
      
      public function get scoreLimit() : int
      {
         return this.var_2040;
      }
      
      public function get levelRewardPoints() : int
      {
         return this.var_2821;
      }
      
      public function get levelRewardPointType() : int
      {
         return this.var_2819;
      }
      
      public function get currentPoints() : int
      {
         return this.var_2041;
      }
      
      public function get finalLevel() : Boolean
      {
         return this.var_2042;
      }
      
      public function get category() : String
      {
         return this._category;
      }
      
      public function get levelCount() : int
      {
         return this.var_2848;
      }
      
      public function get firstLevelAchieved() : Boolean
      {
         return this.var_1390 > 1 || this.var_2042;
      }
      
      public function setMaxProgress() : void
      {
         this.var_2041 = this.var_2040;
      }
   }
}
