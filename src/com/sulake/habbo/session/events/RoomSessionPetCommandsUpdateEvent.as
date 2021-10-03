package com.sulake.habbo.session.events
{
   import com.sulake.habbo.session.IRoomSession;
   
   public class RoomSessionPetCommandsUpdateEvent extends RoomSessionEvent
   {
      
      public static const PET_COMMANDS:String = "RSPIUE_ENABLED_PET_COMMANDS";
       
      
      private var var_2101:int;
      
      private var var_2762:Array;
      
      private var var_2761:Array;
      
      public function RoomSessionPetCommandsUpdateEvent(param1:IRoomSession, param2:int, param3:Array, param4:Array, param5:Boolean = false, param6:Boolean = false)
      {
         super(RoomSessionPetCommandsUpdateEvent.PET_COMMANDS,param1,param5,param6);
         this.var_2101 = param2;
         this.var_2762 = param3;
         this.var_2761 = param4;
      }
      
      public function get petId() : int
      {
         return this.var_2101;
      }
      
      public function get allCommands() : Array
      {
         return this.var_2762;
      }
      
      public function get enabledCommands() : Array
      {
         return this.var_2761;
      }
   }
}
