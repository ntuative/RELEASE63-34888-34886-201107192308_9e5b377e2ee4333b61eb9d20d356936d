package com.sulake.habbo.communication.messages.incoming.handshake
{
   import com.sulake.core.communication.messages.IMessageEvent;
   import com.sulake.core.communication.messages.MessageEvent;
   import com.sulake.habbo.communication.messages.parser.handshake.DisconnectReasonParser;
   
   public class DisconnectReasonEvent extends MessageEvent implements IMessageEvent
   {
      
      public static const const_2147:int = 0;
      
      public static const const_2019:int = 1;
      
      public static const const_2031:int = 2;
      
      public static const const_2242:int = 3;
      
      public static const const_2115:int = 4;
      
      public static const const_2117:int = 5;
      
      public static const const_1889:int = 10;
      
      public static const const_2174:int = 11;
      
      public static const const_2165:int = 12;
      
      public static const const_2110:int = 13;
      
      public static const const_2263:int = 16;
      
      public static const const_2241:int = 17;
      
      public static const const_2302:int = 18;
      
      public static const const_2327:int = 19;
      
      public static const const_2132:int = 20;
      
      public static const const_2143:int = 22;
      
      public static const const_2283:int = 23;
      
      public static const const_2296:int = 24;
      
      public static const const_2221:int = 25;
      
      public static const const_2318:int = 26;
      
      public static const const_2139:int = 27;
      
      public static const const_2306:int = 28;
      
      public static const const_2197:int = 29;
      
      public static const const_2161:int = 100;
      
      public static const const_2271:int = 101;
      
      public static const const_2193:int = 102;
      
      public static const const_2153:int = 103;
      
      public static const const_2219:int = 104;
      
      public static const const_2177:int = 105;
      
      public static const const_2160:int = 106;
      
      public static const const_2204:int = 107;
      
      public static const const_2282:int = 108;
      
      public static const const_2166:int = 109;
      
      public static const const_2200:int = 110;
      
      public static const const_2208:int = 111;
      
      public static const const_2228:int = 112;
      
      public static const const_2308:int = 113;
      
      public static const const_2293:int = 114;
      
      public static const const_2289:int = 115;
      
      public static const const_2113:int = 116;
      
      public static const const_2170:int = 117;
      
      public static const const_2233:int = 118;
      
      public static const const_2232:int = 119;
       
      
      public function DisconnectReasonEvent(param1:Function)
      {
         super(param1,DisconnectReasonParser);
      }
      
      public function get reason() : int
      {
         return (this.var_9 as DisconnectReasonParser).reason;
      }
      
      public function get reasonString() : String
      {
         switch(this.reason)
         {
            case const_2019:
            case const_1889:
               return "banned";
            case const_2031:
               return "concurrentlogin";
            default:
               return "logout";
         }
      }
   }
}
