package com.sulake.habbo.communication.messages.incoming.quest
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class QuestMessageData
   {
       
      
      private var var_1870:String;
      
      private var var_1871:int;
      
      private var var_1869:int;
      
      private var var_2130:int;
      
      private var _id:int;
      
      private var var_1873:Boolean;
      
      private var _type:String;
      
      private var var_2582:String;
      
      private var var_2579:int;
      
      private var var_1872:String;
      
      private var var_2581:int;
      
      private var var_2580:int;
      
      private var var_1532:int;
      
      private var var_1874:Date;
      
      public function QuestMessageData(param1:IMessageDataWrapper)
      {
         this.var_1874 = new Date();
         super();
         this.var_1870 = param1.readString();
         this.var_1871 = param1.readInteger();
         this.var_1869 = param1.readInteger();
         this.var_2130 = param1.readInteger();
         this._id = param1.readInteger();
         this.var_1873 = param1.readBoolean();
         this._type = param1.readString();
         this.var_2582 = param1.readString();
         this.var_2579 = param1.readInteger();
         this.var_1872 = param1.readString();
         this.var_2581 = param1.readInteger();
         this.var_2580 = param1.readInteger();
         this.var_1532 = param1.readInteger();
      }
      
      public function get campaignCode() : String
      {
         return this.var_1870;
      }
      
      public function get localizationCode() : String
      {
         return this.var_1872;
      }
      
      public function get completedQuestsInCampaign() : int
      {
         return this.var_1871;
      }
      
      public function get questCountInCampaign() : int
      {
         return this.var_1869;
      }
      
      public function get activityPointType() : int
      {
         return this.var_2130;
      }
      
      public function get accepted() : Boolean
      {
         return this.var_1873;
      }
      
      public function get id() : int
      {
         return this._id;
      }
      
      public function get type() : String
      {
         return this._type;
      }
      
      public function get imageVersion() : String
      {
         return this.var_2582;
      }
      
      public function get rewardCurrencyAmount() : int
      {
         return this.var_2579;
      }
      
      public function get completedSteps() : int
      {
         return this.var_2581;
      }
      
      public function get totalSteps() : int
      {
         return this.var_2580;
      }
      
      public function get waitPeriodSeconds() : int
      {
         if(this.var_1532 < 1)
         {
            return 0;
         }
         var _loc1_:Date = new Date();
         var _loc2_:int = _loc1_.getTime() - this.var_1874.getTime();
         return int(Math.max(0,this.var_1532 - Math.floor(_loc2_ / 1000)));
      }
      
      public function getCampaignLocalizationKey() : String
      {
         return "quests." + this.var_1870;
      }
      
      public function getQuestLocalizationKey() : String
      {
         return this.getCampaignLocalizationKey() + "." + this.var_1872;
      }
      
      public function get completedCampaign() : Boolean
      {
         return this._id < 1;
      }
      
      public function set id(param1:int) : void
      {
         this._id = param1;
      }
      
      public function set accepted(param1:Boolean) : void
      {
         this.var_1873 = param1;
      }
      
      public function get lastQuestInCampaign() : Boolean
      {
         return this.var_1871 >= this.var_1869;
      }
      
      public function get receiveTime() : Date
      {
         return this.var_1874;
      }
      
      public function set waitPeriodSeconds(param1:int) : void
      {
         this.var_1532 = param1;
      }
   }
}
