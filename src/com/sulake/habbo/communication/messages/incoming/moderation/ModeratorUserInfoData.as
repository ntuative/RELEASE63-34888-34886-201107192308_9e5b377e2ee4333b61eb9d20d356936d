package com.sulake.habbo.communication.messages.incoming.moderation
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class ModeratorUserInfoData
   {
       
      
      private var _userId:int;
      
      private var _userName:String;
      
      private var var_2373:int;
      
      private var var_2375:int;
      
      private var var_880:Boolean;
      
      private var var_2374:int;
      
      private var var_2372:int;
      
      private var var_2376:int;
      
      private var var_2371:int;
      
      public function ModeratorUserInfoData(param1:IMessageDataWrapper)
      {
         super();
         this._userId = param1.readInteger();
         this._userName = param1.readString();
         this.var_2373 = param1.readInteger();
         this.var_2375 = param1.readInteger();
         this.var_880 = param1.readBoolean();
         this.var_2374 = param1.readInteger();
         this.var_2372 = param1.readInteger();
         this.var_2376 = param1.readInteger();
         this.var_2371 = param1.readInteger();
      }
      
      public function get userId() : int
      {
         return this._userId;
      }
      
      public function get userName() : String
      {
         return this._userName;
      }
      
      public function get minutesSinceRegistration() : int
      {
         return this.var_2373;
      }
      
      public function get minutesSinceLastLogin() : int
      {
         return this.var_2375;
      }
      
      public function get online() : Boolean
      {
         return this.var_880;
      }
      
      public function get cfhCount() : int
      {
         return this.var_2374;
      }
      
      public function get abusiveCfhCount() : int
      {
         return this.var_2372;
      }
      
      public function get cautionCount() : int
      {
         return this.var_2376;
      }
      
      public function get banCount() : int
      {
         return this.var_2371;
      }
   }
}
