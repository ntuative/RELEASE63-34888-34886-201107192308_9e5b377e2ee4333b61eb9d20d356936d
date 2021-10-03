package com.sulake.habbo.room.messages
{
   import com.sulake.room.messages.RoomObjectUpdateMessage;
   import com.sulake.room.utils.IVector3d;
   
   public class RoomObjectMoveUpdateMessage extends RoomObjectUpdateMessage
   {
       
      
      private var var_224:IVector3d;
      
      private var var_2630:Boolean;
      
      public function RoomObjectMoveUpdateMessage(param1:IVector3d, param2:IVector3d, param3:IVector3d, param4:Boolean = false)
      {
         super(param1,param3);
         this.var_2630 = param4;
         this.var_224 = param2;
      }
      
      public function get targetLoc() : IVector3d
      {
         if(this.var_224 == null)
         {
            return loc;
         }
         return this.var_224;
      }
      
      public function get realTargetLoc() : IVector3d
      {
         return this.var_224;
      }
      
      public function get isSlideUpdate() : Boolean
      {
         return this.var_2630;
      }
   }
}
