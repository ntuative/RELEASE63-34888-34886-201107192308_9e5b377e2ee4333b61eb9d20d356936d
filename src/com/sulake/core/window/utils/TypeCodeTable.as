package com.sulake.core.window.utils
{
   import com.sulake.core.window.enum.WindowType;
   import flash.utils.Dictionary;
   
   public class TypeCodeTable extends WindowType
   {
       
      
      public function TypeCodeTable()
      {
         super();
      }
      
      public static function fillTables(param1:Dictionary, param2:Dictionary = null) : void
      {
         var _loc3_:* = null;
         param1["background"] = const_890;
         param1["badge"] = const_1003;
         param1["bitmap"] = const_429;
         param1["border"] = const_831;
         param1["border_notify"] = const_1890;
         param1["bubble"] = const_789;
         param1["bubble_pointer_up"] = const_1181;
         param1["bubble_pointer_right"] = const_1371;
         param1["bubble_pointer_down"] = const_1325;
         param1["bubble_pointer_left"] = const_1383;
         param1["button"] = const_556;
         param1["button_thick"] = const_776;
         param1["button_icon"] = const_1831;
         param1["button_group_left"] = const_829;
         param1["button_group_center"] = const_1012;
         param1["button_group_right"] = const_753;
         param1["canvas"] = const_736;
         param1["checkbox"] = const_916;
         param1["closebutton"] = const_1176;
         param1["container"] = const_433;
         param1["container_button"] = const_772;
         param1["display_object_wrapper"] = const_969;
         param1["dropmenu"] = const_660;
         param1["dropmenu_item"] = const_574;
         param1["frame"] = const_397;
         param1["frame_notify"] = const_1998;
         param1["header"] = const_856;
         param1["html"] = const_1217;
         param1["icon"] = const_1326;
         param1["itemgrid"] = const_1324;
         param1["itemgrid_horizontal"] = const_510;
         param1["itemgrid_vertical"] = const_804;
         param1["itemlist"] = WINDOW_TYPE_ITEMLIST;
         param1["itemlist_horizontal"] = const_452;
         param1["itemlist_vertical"] = const_439;
         param1["label"] = const_976;
         param1["maximizebox"] = const_1744;
         param1["menu"] = const_1773;
         param1["menu_item"] = const_1873;
         param1["submenu"] = const_1386;
         param1["minimizebox"] = const_1876;
         param1["notify"] = const_1885;
         param1["null"] = const_820;
         param1["password"] = const_875;
         param1["radiobutton"] = const_877;
         param1["region"] = const_332;
         param1["restorebox"] = const_1905;
         param1["scaler"] = const_611;
         param1["scaler_horizontal"] = const_1793;
         param1["scaler_vertical"] = const_1972;
         param1["scrollbar_horizontal"] = const_609;
         param1["scrollbar_vertical"] = const_990;
         param1["scrollbar_slider_button_up"] = const_1346;
         param1["scrollbar_slider_button_down"] = const_1285;
         param1["scrollbar_slider_button_left"] = const_1315;
         param1["scrollbar_slider_button_right"] = const_1206;
         param1["scrollbar_slider_bar_horizontal"] = const_1401;
         param1["scrollbar_slider_bar_vertical"] = const_1253;
         param1["scrollbar_slider_track_horizontal"] = const_1177;
         param1["scrollbar_slider_track_vertical"] = const_1394;
         param1["scrollable_itemlist"] = const_1941;
         param1["scrollable_itemlist_vertical"] = const_522;
         param1["scrollable_itemlist_horizontal"] = const_1255;
         param1["selector"] = const_743;
         param1["selector_list"] = const_823;
         param1["submenu"] = const_1386;
         param1["tab_button"] = const_884;
         param1["tab_container_button"] = const_1235;
         param1["tab_context"] = const_440;
         param1["tab_content"] = const_1271;
         param1["tab_selector"] = const_1008;
         param1["text"] = const_912;
         param1["input"] = const_971;
         param1["toolbar"] = const_1975;
         param1["tooltip"] = const_393;
         if(param2 != null)
         {
            for(param2[param1[_loc3_]] in param1)
            {
            }
         }
      }
   }
}
