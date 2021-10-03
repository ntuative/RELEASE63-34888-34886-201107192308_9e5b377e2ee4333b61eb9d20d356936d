package com.sulake.habbo.communication.messages.incoming.notifications
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class AchievementLevelUpData
   {
       
      
      private var _type:int;
      
      private var var_1390:int;
      
      private var var_2114:int;
      
      private var var_2821:int;
      
      private var var_2819:int;
      
      private var var_2382:int;
      
      private var var_1791:int;
      
      private var var_2820:String = "";
      
      private var var_2823:String = "";
      
      private var var_2822:int;
      
      private var _category:String;
      
      public function AchievementLevelUpData(param1:IMessageDataWrapper)
      {
         super();
         this._type = param1.readInteger();
         this.var_1390 = param1.readInteger();
         this.var_1791 = param1.readInteger();
         this.var_2820 = param1.readString();
         this.var_2114 = param1.readInteger();
         this.var_2821 = param1.readInteger();
         this.var_2819 = param1.readInteger();
         this.var_2382 = param1.readInteger();
         this.var_2822 = param1.readInteger();
         this.var_2823 = param1.readString();
         this._category = param1.readString();
      }
      
      public function get type() : int
      {
         return this._type;
      }
      
      public function get level() : int
      {
         return this.var_1390;
      }
      
      public function get points() : int
      {
         return this.var_2114;
      }
      
      public function get levelRewardPoints() : int
      {
         return this.var_2821;
      }
      
      public function get levelRewardPointType() : int
      {
         return this.var_2819;
      }
      
      public function get bonusPoints() : int
      {
         return this.var_2382;
      }
      
      public function get badgeId() : int
      {
         return this.var_1791;
      }
      
      public function get badgeCode() : String
      {
         return this.var_2820;
      }
      
      public function get removedBadgeCode() : String
      {
         return this.var_2823;
      }
      
      public function get achievementID() : int
      {
         return this.var_2822;
      }
      
      public function get category() : String
      {
         return this._category;
      }
   }
}
