package com.sulake.habbo.navigator.domain
{
   import com.sulake.habbo.navigator.HabboNavigator;
   import com.sulake.habbo.navigator.mainview.MainViewCtrl;
   import com.sulake.habbo.navigator.mainview.tabpagedecorators.EventsTabPageDecorator;
   import com.sulake.habbo.navigator.mainview.tabpagedecorators.MyRoomsTabPageDecorator;
   import com.sulake.habbo.navigator.mainview.tabpagedecorators.OfficialTabPageDecorator;
   import com.sulake.habbo.navigator.mainview.tabpagedecorators.RoomsTabPageDecorator;
   import com.sulake.habbo.navigator.mainview.tabpagedecorators.SearchTabPageDecorator;
   
   public class Tabs
   {
      
      public static const const_347:int = 1;
      
      public static const const_229:int = 2;
      
      public static const const_265:int = 3;
      
      public static const const_371:int = 4;
      
      public static const const_280:int = 5;
      
      public static const const_407:int = 1;
      
      public static const const_790:int = 2;
      
      public static const const_1030:int = 3;
      
      public static const const_922:int = 4;
      
      public static const const_275:int = 5;
      
      public static const const_893:int = 6;
      
      public static const const_807:int = 7;
      
      public static const const_426:int = 8;
      
      public static const const_657:int = 9;
      
      public static const const_2213:int = 10;
      
      public static const const_923:int = 11;
      
      public static const const_559:int = 12;
       
      
      private var var_482:Array;
      
      private var _navigator:HabboNavigator;
      
      public function Tabs(param1:HabboNavigator)
      {
         super();
         this._navigator = param1;
         this.var_482 = new Array();
         this.var_482.push(new Tab(this._navigator,const_347,const_559,new EventsTabPageDecorator(this._navigator),MainViewCtrl.const_629));
         this.var_482.push(new Tab(this._navigator,const_229,const_407,new RoomsTabPageDecorator(this._navigator),MainViewCtrl.const_629));
         this.var_482.push(new Tab(this._navigator,const_371,const_923,new OfficialTabPageDecorator(this._navigator),MainViewCtrl.const_1218));
         this.var_482.push(new Tab(this._navigator,const_265,const_275,new MyRoomsTabPageDecorator(this._navigator),MainViewCtrl.const_629));
         this.var_482.push(new Tab(this._navigator,const_280,const_426,new SearchTabPageDecorator(this._navigator),MainViewCtrl.const_1328));
         this.setSelectedTab(const_347);
      }
      
      public function onFrontPage() : Boolean
      {
         return this.getSelected().id == const_371;
      }
      
      public function get tabs() : Array
      {
         return this.var_482;
      }
      
      public function setSelectedTab(param1:int) : void
      {
         this.clearSelected();
         this.getTab(param1).selected = true;
      }
      
      public function getSelected() : Tab
      {
         var _loc1_:* = null;
         for each(_loc1_ in this.var_482)
         {
            if(_loc1_.selected)
            {
               return _loc1_;
            }
         }
         return null;
      }
      
      private function clearSelected() : void
      {
         var _loc1_:* = null;
         for each(_loc1_ in this.var_482)
         {
            _loc1_.selected = false;
         }
      }
      
      public function getTab(param1:int) : Tab
      {
         var _loc2_:* = null;
         for each(_loc2_ in this.var_482)
         {
            if(_loc2_.id == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
   }
}
