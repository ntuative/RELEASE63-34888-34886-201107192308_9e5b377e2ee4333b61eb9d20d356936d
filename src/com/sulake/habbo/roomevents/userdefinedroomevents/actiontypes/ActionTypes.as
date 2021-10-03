package com.sulake.habbo.roomevents.userdefinedroomevents.actiontypes
{
   import com.sulake.habbo.communication.messages.incoming.userdefinedroomevents.ActionDefinition;
   import com.sulake.habbo.communication.messages.incoming.userdefinedroomevents.Triggerable;
   import com.sulake.habbo.roomevents.userdefinedroomevents.Element;
   import com.sulake.habbo.roomevents.userdefinedroomevents.ElementTypeHolder;
   
   public class ActionTypes implements ElementTypeHolder
   {
       
      
      private var var_152:Array;
      
      public function ActionTypes()
      {
         this.var_152 = new Array();
         super();
         this.var_152.push(new ToggleFurniState());
         this.var_152.push(new Reset());
         this.var_152.push(new SetFurniStateTo());
         this.var_152.push(new MoveFurni());
         this.var_152.push(new GiveScore());
         this.var_152.push(new Chat());
         this.var_152.push(new Teleport());
         this.var_152.push(new JoinTeam());
         this.var_152.push(new LeaveTeam());
         this.var_152.push(new Chase());
         this.var_152.push(new Flee());
         this.var_152.push(new MoveToDirection());
         this.var_152.push(new GiveScoreToPredefinedTeam());
         this.var_152.push(new ToggleToRandomState());
         this.var_152.push(new MoveFurniTo());
      }
      
      public function get types() : Array
      {
         return this.var_152;
      }
      
      public function getByCode(param1:int) : ActionType
      {
         var _loc2_:* = null;
         for each(_loc2_ in this.var_152)
         {
            if(_loc2_.code == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      public function getElementByCode(param1:int) : Element
      {
         return this.getByCode(param1);
      }
      
      public function acceptTriggerable(param1:Triggerable) : Boolean
      {
         return param1 as ActionDefinition != null;
      }
      
      public function getKey() : String
      {
         return "action";
      }
   }
}
