package com.sulake.habbo.communication.messages.incoming.friendlist
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class HabboSearchResultData
   {
       
      
      private var var_2358:int;
      
      private var var_2047:String;
      
      private var var_2747:String;
      
      private var var_2743:Boolean;
      
      private var var_2746:Boolean;
      
      private var var_2748:int;
      
      private var var_2744:String;
      
      private var var_2745:String;
      
      private var var_2046:String;
      
      public function HabboSearchResultData(param1:IMessageDataWrapper)
      {
         super();
         this.var_2358 = param1.readInteger();
         this.var_2047 = param1.readString();
         this.var_2747 = param1.readString();
         this.var_2743 = param1.readBoolean();
         this.var_2746 = param1.readBoolean();
         param1.readString();
         this.var_2748 = param1.readInteger();
         this.var_2744 = param1.readString();
         this.var_2745 = param1.readString();
         this.var_2046 = param1.readString();
      }
      
      public function get avatarId() : int
      {
         return this.var_2358;
      }
      
      public function get avatarName() : String
      {
         return this.var_2047;
      }
      
      public function get avatarMotto() : String
      {
         return this.var_2747;
      }
      
      public function get isAvatarOnline() : Boolean
      {
         return this.var_2743;
      }
      
      public function get canFollow() : Boolean
      {
         return this.var_2746;
      }
      
      public function get avatarGender() : int
      {
         return this.var_2748;
      }
      
      public function get avatarFigure() : String
      {
         return this.var_2744;
      }
      
      public function get lastOnlineDate() : String
      {
         return this.var_2745;
      }
      
      public function get realName() : String
      {
         return this.var_2046;
      }
   }
}
