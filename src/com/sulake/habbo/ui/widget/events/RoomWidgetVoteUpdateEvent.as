package com.sulake.habbo.ui.widget.events
{
   public class RoomWidgetVoteUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_170:String = "RWPUE_VOTE_QUESTION";
      
      public static const const_167:String = "RWPUE_VOTE_RESULT";
       
      
      private var var_1220:String;
      
      private var var_1476:Array;
      
      private var var_1275:Array;
      
      private var var_1786:int;
      
      public function RoomWidgetVoteUpdateEvent(param1:String, param2:String, param3:Array, param4:Array = null, param5:int = 0, param6:Boolean = false, param7:Boolean = false)
      {
         super(param1,param6,param7);
         this.var_1220 = param2;
         this.var_1476 = param3;
         this.var_1275 = param4;
         if(this.var_1275 == null)
         {
            this.var_1275 = [];
         }
         this.var_1786 = param5;
      }
      
      public function get question() : String
      {
         return this.var_1220;
      }
      
      public function get choices() : Array
      {
         return this.var_1476.slice();
      }
      
      public function get votes() : Array
      {
         return this.var_1275.slice();
      }
      
      public function get totalVotes() : int
      {
         return this.var_1786;
      }
   }
}
