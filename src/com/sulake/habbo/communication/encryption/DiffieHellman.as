package com.sulake.habbo.communication.encryption
{
   import com.hurlant.math.BigInteger;
   import com.sulake.core.communication.handshake.IKeyExchange;
   import com.sulake.core.utils.ErrorReportStorage;
   
   public class DiffieHellman implements IKeyExchange
   {
       
      
      private var var_1097:BigInteger;
      
      private var var_2314:BigInteger;
      
      private var var_2058:BigInteger;
      
      private var var_2864:BigInteger;
      
      private var var_1621:BigInteger;
      
      private var var_2057:BigInteger;
      
      public function DiffieHellman(param1:BigInteger, param2:BigInteger)
      {
         super();
         this.var_1621 = param1;
         this.var_2057 = param2;
      }
      
      public function init(param1:String, param2:uint = 16) : Boolean
      {
         ErrorReportStorage.addDebugData("DiffieHellman","Prime: " + this.var_1621.toString() + ",generator: " + this.var_2057.toString() + ",secret: " + param1);
         this.var_1097 = new BigInteger();
         this.var_1097.fromRadix(param1,param2);
         this.var_2314 = this.var_2057.modPow(this.var_1097,this.var_1621);
         return true;
      }
      
      public function generateSharedKey(param1:String, param2:uint = 16) : String
      {
         this.var_2058 = new BigInteger();
         this.var_2058.fromRadix(param1,param2);
         this.var_2864 = this.var_2058.modPow(this.var_1097,this.var_1621);
         return this.getSharedKey(param2);
      }
      
      public function getPublicKey(param1:uint = 16) : String
      {
         return this.var_2314.toRadix(param1);
      }
      
      public function getSharedKey(param1:uint = 16) : String
      {
         return this.var_2864.toRadix(param1);
      }
   }
}
