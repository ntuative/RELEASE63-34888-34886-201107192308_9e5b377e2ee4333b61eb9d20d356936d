package com.sulake.habbo.session.events
{
   import com.sulake.habbo.session.IRoomSession;
   
   public class RoomSessionPetPackageEvent extends RoomSessionEvent
   {
      
      public static const const_512:String = "RSOPPE_OPEN_PET_PACKAGE_REQUESTED";
      
      public static const const_537:String = "RSOPPE_OPEN_PET_PACKAGE_RESULT";
       
      
      private var var_240:int = -1;
      
      private var var_1326:int = -1;
      
      private var var_1926:int = -1;
      
      private var _color:String = "";
      
      private var var_1760:int = 0;
      
      private var var_1761:String = null;
      
      public function RoomSessionPetPackageEvent(param1:String, param2:IRoomSession, param3:int, param4:int, param5:int, param6:String, param7:int, param8:String, param9:Boolean = false, param10:Boolean = false)
      {
         super(param1,param2,param9,param10);
         this.var_240 = param3;
         this.var_1326 = param4;
         this.var_1926 = param5;
         this._color = param6;
         this.var_1760 = param7;
         this.var_1761 = param8;
      }
      
      public function get objectId() : int
      {
         return this.var_240;
      }
      
      public function get petType() : int
      {
         return this.var_1326;
      }
      
      public function get breed() : int
      {
         return this.var_1926;
      }
      
      public function get color() : String
      {
         return this._color;
      }
      
      public function get nameValidationStatus() : int
      {
         return this.var_1760;
      }
      
      public function get nameValidationInfo() : String
      {
         return this.var_1761;
      }
   }
}
