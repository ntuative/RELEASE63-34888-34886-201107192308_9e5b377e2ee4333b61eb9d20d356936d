package com.hurlant.math
{
   use namespace bi_internal;
   
   class MontgomeryReduction implements IReduction
   {
       
      
      private var m:BigInteger;
      
      private var var_1954:int;
      
      private var var_1953:int;
      
      private var var_2663:int;
      
      private var var_2662:int;
      
      private var var_2664:int;
      
      function MontgomeryReduction(param1:BigInteger)
      {
         super();
         this.m = param1;
         this.var_1954 = param1.invDigit();
         this.var_1953 = this.var_1954 & 32767;
         this.var_2663 = this.var_1954 >> 15;
         this.var_2662 = 131071;
         this.var_2664 = 2 * param1.t;
      }
      
      public function convert(param1:BigInteger) : BigInteger
      {
         var _loc2_:BigInteger = new BigInteger();
         param1.abs().dlShiftTo(this.m.t,_loc2_);
         _loc2_.divRemTo(this.m,null,_loc2_);
         if(param1.s < 0 && _loc2_.compareTo(BigInteger.const_195) > 0)
         {
            this.m.subTo(_loc2_,_loc2_);
         }
         return _loc2_;
      }
      
      public function revert(param1:BigInteger) : BigInteger
      {
         var _loc2_:BigInteger = new BigInteger();
         param1.copyTo(_loc2_);
         this.method_2(_loc2_);
         return _loc2_;
      }
      
      public function method_2(param1:BigInteger) : void
      {
         /*
          * Decompilation error
          * Code may be obfuscated
          * Deobfuscation is activated but decompilation still failed. If the file is NOT obfuscated, disable "Automatic deobfuscation" for better results.
          * Error type: NullPointerException (null)
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
      
      public function sqrTo(param1:BigInteger, param2:BigInteger) : void
      {
         param1.squareTo(param2);
         this.method_2(param2);
      }
      
      public function mulTo(param1:BigInteger, param2:BigInteger, param3:BigInteger) : void
      {
         param1.multiplyTo(param2,param3);
         this.method_2(param3);
      }
   }
}
