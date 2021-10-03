package com.sulake.core.assets
{
   import com.sulake.core.assets.loaders.AssetLoaderEvent;
   import com.sulake.core.assets.loaders.BinaryFileLoader;
   import com.sulake.core.assets.loaders.BitmapFileLoader;
   import com.sulake.core.assets.loaders.IAssetLoader;
   import com.sulake.core.assets.loaders.SoundFileLoader;
   import com.sulake.core.assets.loaders.ZipFileLoader;
   import com.sulake.core.runtime.events.EventDispatcher;
   import com.sulake.core.utils.LibraryLoader;
   import com.sulake.core.utils.LibraryLoaderEvent;
   import flash.events.Event;
   import flash.events.ProgressEvent;
   import flash.net.URLRequest;
   import flash.utils.Dictionary;
   import flash.utils.getQualifiedClassName;
   import flash.utils.getTimer;
   
   public class AssetLibrary extends EventDispatcher implements IAssetLibrary
   {
      
      public static const const_1310:String = "AssetLibraryReady";
      
      public static const const_996:String = "AssetLibraryLoaded";
      
      public static const const_1858:String = "AssetLibraryUnloaded";
      
      public static const const_1849:String = "AssetLibraryLoadError";
      
      private static const const_704:String = "name";
      
      private static const const_1156:String = "asset";
      
      private static const const_1157:String = "param";
      
      private static const TYPE:String = "mimeType";
      
      private static const const_1155:String = "library";
      
      private static var var_351:Dictionary;
      
      private static var var_2160:LazyAssetProcessor = new LazyAssetProcessor();
      
      private static var var_597:uint = 0;
      
      private static var var_1117:Array = new Array();
       
      
      private var _name:String;
      
      private var var_734:String;
      
      private var _manifest:XML;
      
      private var var_1119:Boolean;
      
      private var var_504:uint;
      
      private var var_44:LibraryLoader;
      
      private var var_733:Class;
      
      private var var_1118:Dictionary;
      
      private var var_189:Dictionary;
      
      private var var_1120:Boolean = true;
      
      private var var_598:Dictionary;
      
      private var var_502:Array;
      
      private var var_503:Dictionary;
      
      public function AssetLibrary(param1:String)
      {
         super();
         this._name = param1;
         this._manifest = new XML();
         this.var_504 = 0;
         this.var_502 = new Array();
         if(var_351 == null)
         {
            var_351 = new Dictionary(false);
            this.registerAssetTypeDeclaration(new AssetTypeDeclaration("application/octet-stream",UnknownAsset,BinaryFileLoader));
            this.registerAssetTypeDeclaration(new AssetTypeDeclaration("application/x-shockwave-flash",DisplayAsset,BitmapFileLoader,"swf"));
            this.registerAssetTypeDeclaration(new AssetTypeDeclaration("application/x-font-truetype",FontAsset,BinaryFileLoader,"ttf","otf"));
            this.registerAssetTypeDeclaration(new AssetTypeDeclaration("application/zip",UnknownAsset,ZipFileLoader,"zip"));
            this.registerAssetTypeDeclaration(new AssetTypeDeclaration("text/xml",XmlAsset,BinaryFileLoader,"xml"));
            this.registerAssetTypeDeclaration(new AssetTypeDeclaration("text/html",XmlAsset,BinaryFileLoader,"htm","html"));
            this.registerAssetTypeDeclaration(new AssetTypeDeclaration("text/plain",TextAsset,BinaryFileLoader,"txt"));
            this.registerAssetTypeDeclaration(new AssetTypeDeclaration("image/jpeg",BitmapDataAsset,BitmapFileLoader,"jpg","jpeg"));
            this.registerAssetTypeDeclaration(new AssetTypeDeclaration("image/gif",BitmapDataAsset,BitmapFileLoader,"gif"));
            this.registerAssetTypeDeclaration(new AssetTypeDeclaration("image/png",BitmapDataAsset,BitmapFileLoader,"png"));
            this.registerAssetTypeDeclaration(new AssetTypeDeclaration("image/tiff",BitmapDataAsset,BitmapFileLoader,"tif","tiff"));
            this.registerAssetTypeDeclaration(new AssetTypeDeclaration("sound/mp3",SoundAsset,SoundFileLoader,"mp3"));
         }
         ++var_597;
         this.var_503 = new Dictionary(false);
         this.var_598 = new Dictionary(false);
         this.var_1118 = new Dictionary(false);
         this.var_189 = new Dictionary(false);
         var_1117.push(this);
      }
      
      public static function get numAssetLibraryInstances() : uint
      {
         return var_597;
      }
      
      public static function get assetLibraryRefArray() : Array
      {
         return var_1117;
      }
      
      private static function fetchLibraryContents(param1:AssetLibrary, param2:XML, param3:Class) : Boolean
      {
         var _loc6_:* = null;
         var _loc7_:* = null;
         var _loc8_:* = null;
         var _loc9_:* = null;
         var _loc10_:* = null;
         var _loc11_:* = null;
         var _loc12_:int = 0;
         var _loc13_:* = null;
         var _loc14_:* = null;
         var _loc15_:int = 0;
         var _loc4_:int = getTimer();
         if(param3 == null)
         {
            throw new Error("Library " + param1.var_734 + " doesn\'t contain valid resource class!");
         }
         var _loc5_:XMLList = param2.child(const_1155);
         if(_loc5_ == null)
         {
            throw Error("Provided manifest doesn\'t contain library node!");
         }
         _loc5_ = _loc5_[0].assets;
         if(_loc5_ != null)
         {
            _loc5_ = _loc5_.child(const_1156);
            _loc12_ = _loc5_.length();
            _loc14_ = null;
            _loc15_ = 0;
            while(_loc15_ < _loc12_)
            {
               _loc6_ = _loc5_[_loc15_];
               _loc7_ = _loc6_.attribute(const_704);
               _loc8_ = _loc6_.attribute(TYPE);
               if(_loc8_ == _loc14_)
               {
                  _loc9_ = _loc13_;
               }
               else
               {
                  _loc9_ = param1.getAssetTypeDeclarationByMimeType(_loc8_);
                  _loc14_ = _loc8_;
                  _loc13_ = _loc9_;
               }
               if(_loc9_ != null)
               {
                  _loc10_ = new _loc9_.assetClass(_loc9_) as IAsset;
                  _loc10_.setUnknownContent(param3[_loc7_]);
                  _loc11_ = _loc6_.child(const_1157);
                  if(_loc11_.length())
                  {
                     _loc10_.setParamsDesc(_loc11_);
                  }
                  param1.setAsset(_loc7_,_loc10_);
               }
               else
               {
                  Logger.log("Failed to extract asset " + _loc7_ + " from Library " + param1.var_734 + "!");
               }
               _loc15_++;
            }
         }
         _loc4_ = getTimer() - _loc4_;
         return true;
      }
      
      public function get url() : String
      {
         return this.var_734;
      }
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function get isReady() : Boolean
      {
         return this.var_1119;
      }
      
      public function get manifest() : XML
      {
         return this._manifest;
      }
      
      public function get numAssets() : uint
      {
         return this.var_504;
      }
      
      public function get nameArray() : Array
      {
         return this.var_502;
      }
      
      override public function dispose() : void
      {
         if(!disposed)
         {
            this.unload();
            super.dispose();
            var_1117.splice(var_1117.indexOf(this),1);
            --var_597;
            this.var_598 = null;
            this.var_1118 = null;
            this.var_189 = null;
            this.var_502 = null;
            this._manifest = null;
            this.var_504 = 0;
            this.var_1119 = false;
            this._name = null;
         }
      }
      
      public function loadFromFile(param1:LibraryLoader, param2:Boolean = true) : void
      {
         if(this.var_734 == param1.url && this.var_1119)
         {
            if(!this.var_1120 && param2)
            {
               AssetLibrary.fetchLibraryContents(this,this._manifest,this.var_733);
            }
            this.var_1120 = param2;
            dispatchEvent(new Event(AssetLibrary.const_1310));
         }
         else
         {
            if(this.var_44 == null || this.var_44.disposed)
            {
               this.var_44 = param1;
               this.var_44.addEventListener(LibraryLoaderEvent.LIBRARY_LOADER_EVENT_COMPLETE,this.libraryLoadedHandler);
               this.var_44.addEventListener(LibraryLoaderEvent.LIBRARY_LOADER_EVENT_ERROR,this.loadErrorHandler);
            }
            this.var_1120 = param2;
            this.var_734 = this.var_44.url;
         }
      }
      
      public function loadFromResource(param1:XML, param2:Class) : Boolean
      {
         return AssetLibrary.fetchLibraryContents(this,param1,param2);
      }
      
      public function unload() : void
      {
         var _loc1_:* = null;
         var _loc2_:* = null;
         for(_loc1_ in this.var_598)
         {
            _loc2_ = this.var_598[_loc1_];
            _loc2_.assetLoader.dispose();
            delete this.var_598[_loc1_];
         }
         for(_loc1_ in this.var_189)
         {
            delete this.var_189[_loc1_];
         }
         for(_loc1_ in this.var_1118)
         {
            delete this.var_1118[_loc1_];
         }
         if(this.var_44 != null)
         {
            this.var_44.dispose();
            this.var_44 = null;
         }
         this.var_504 = 0;
         this.var_1119 = false;
         this.var_734 = null;
         dispatchEvent(new Event(AssetLibrary.const_1858));
      }
      
      public function getClass(param1:String) : Class
      {
         var _loc2_:Class = this.var_1118[param1];
         if(_loc2_ != null)
         {
            return _loc2_;
         }
         if(this.var_44 != null)
         {
            if(this.var_44.hasDefinition(param1))
            {
               _loc2_ = this.var_44.getDefinition(param1) as Class;
               if(_loc2_ != null)
               {
                  this.var_1118[param1] = _loc2_;
                  return _loc2_;
               }
            }
         }
         return null;
      }
      
      public function loadAssetFromFile(param1:String, param2:URLRequest, param3:String = null) : AssetLoaderStruct
      {
         var _loc5_:* = null;
         if(this.getAssetByName(param1) != null)
         {
            throw new Error("Asset with name " + param1 + " already exists!");
         }
         var _loc4_:AssetLoaderStruct = this.var_598[param2.url];
         if(_loc4_ != null)
         {
            if(_loc4_.assetName == param1)
            {
               return _loc4_;
            }
         }
         if(param3 == null)
         {
            _loc5_ = this.solveAssetTypeDeclarationFromUrl(param2.url);
            if(_loc5_ == null)
            {
               throw new Error("Couldn\'t solve asset type for file " + param2.url + "!");
            }
         }
         else
         {
            _loc5_ = this.getAssetTypeDeclarationByMimeType(param3,true);
            if(_loc5_ == null)
            {
               throw new Error("Asset type declaration for mime type " + param3 + "not found!");
            }
         }
         var _loc6_:IAssetLoader = new _loc5_.loaderClass(_loc5_.mimeType,param2);
         if(_loc6_ == null)
         {
            throw new Error("Invalid file loader class defined for mime type " + param3 + "!");
         }
         _loc6_.addEventListener(AssetLoaderEvent.ASSET_LOADER_EVENT_COMPLETE,this.assetLoadEventHandler);
         _loc6_.addEventListener(AssetLoaderEvent.const_42,this.assetLoadEventHandler);
         _loc6_.addEventListener(AssetLoaderEvent.const_1191,this.assetLoadEventHandler);
         _loc6_.addEventListener(AssetLoaderEvent.const_1393,this.assetLoadEventHandler);
         _loc6_.addEventListener(AssetLoaderEvent.const_1404,this.assetLoadEventHandler);
         _loc6_.addEventListener(AssetLoaderEvent.const_1343,this.assetLoadEventHandler);
         _loc4_ = new AssetLoaderStruct(param1,_loc6_);
         this.var_598[param2.url] = _loc4_;
         return _loc4_;
      }
      
      private function assetLoadEventHandler(param1:AssetLoaderEvent) : void
      {
         var loader:IAssetLoader = null;
         var type:String = null;
         var decl:AssetTypeDeclaration = null;
         var asset:IAsset = null;
         var e:AssetLoaderEvent = param1;
         var remove:Boolean = false;
         loader = e.target as IAssetLoader;
         if(loader == null)
         {
            throw new Error("Failed to downcast object to asset loader!");
         }
         var struct:AssetLoaderStruct = this.var_598[loader.url];
         if(struct == null)
         {
            throw new Error("Asset loader structure was lost! " + (!!loader ? loader.url : ""));
         }
         switch(e.type)
         {
            case AssetLoaderEvent.ASSET_LOADER_EVENT_COMPLETE:
               type = loader.mimeType;
               decl = this.getAssetTypeDeclarationByMimeType(type);
               remove = true;
               if(decl != null)
               {
                  asset = new decl.assetClass(decl,loader.url);
                  try
                  {
                     asset.setUnknownContent(loader.content);
                  }
                  catch(error:Error)
                  {
                     asset.dispose();
                     Logger.log("Failed to build asset from loaded file \"" + loader.url + "\" type: " + type + " error: " + error.name + " / " + error.message);
                     e = new AssetLoaderEvent(AssetLoaderEvent.const_42,e.status);
                     break;
                  }
                  if(this.var_189[struct.assetName] == null)
                  {
                     ++this.var_504;
                     this.var_502.push(struct.assetName);
                  }
                  this.var_189[struct.assetName] = asset;
               }
               else
               {
                  Logger.log("Failed to resolve asset type declaration: \"" + loader.url + "\" type: " + type);
                  e = new AssetLoaderEvent(AssetLoaderEvent.const_42,e.status);
               }
               break;
            case AssetLoaderEvent.const_42:
               remove = true;
               Logger.log("Failed to download file \"" + loader.url + "\" error: " + loader.errorCode);
         }
         struct.dispatchEvent(new AssetLoaderEvent(e.type,e.status));
         if(remove)
         {
            if(!_disposed && loader)
            {
               delete this.var_598[loader.url];
            }
            if(struct)
            {
               struct.dispose();
            }
         }
      }
      
      public function getAssetByName(param1:String) : IAsset
      {
         var _loc2_:IAsset = this.var_189[param1];
         if(_loc2_ != null)
         {
            return _loc2_;
         }
         if(this.var_1120)
         {
            return null;
         }
         return this.fetchAssetFromResource(param1);
      }
      
      public function getAssetByIndex(param1:uint) : IAsset
      {
         return param1 < this.var_502.length ? this.getAssetByName(this.var_502[param1]) : null;
      }
      
      public function getAssetByContent(param1:Object) : IAsset
      {
         var _loc2_:* = null;
         var _loc3_:* = null;
         for(_loc2_ in this.var_189)
         {
            _loc3_ = this.var_189[_loc2_];
            if(_loc3_.content === param1)
            {
               return _loc3_;
            }
         }
         return null;
      }
      
      public function getAssetIndex(param1:IAsset) : int
      {
         var _loc2_:* = null;
         for(_loc2_ in this.var_189)
         {
            if(this.var_189[_loc2_] == param1)
            {
               return this.var_502.indexOf(_loc2_);
            }
         }
         return -1;
      }
      
      public function hasAsset(param1:String) : Boolean
      {
         return this.var_189[param1] != null || (this.var_733 != null ? this.var_733[param1] != null : false);
      }
      
      public function setAsset(param1:String, param2:IAsset, param3:Boolean = true) : Boolean
      {
         var _loc4_:* = this.var_189[param1] == null;
         if((param3 || _loc4_) && param2)
         {
            if(_loc4_)
            {
               ++this.var_504;
               this.var_502.push(param1);
            }
            this.var_189[param1] = param2;
            if(param2 is ILazyAsset)
            {
               var_2160.push(param2 as ILazyAsset);
            }
            return true;
         }
         return false;
      }
      
      public function createAsset(param1:String, param2:AssetTypeDeclaration) : IAsset
      {
         if(this.hasAsset(param1) || !param2)
         {
            return null;
         }
         var _loc3_:* = new param2.assetClass(param2);
         if(!this.setAsset(param1,_loc3_))
         {
            _loc3_.dispose();
            _loc3_ = null;
         }
         return _loc3_;
      }
      
      public function removeAsset(param1:IAsset) : IAsset
      {
         var _loc2_:* = null;
         if(param1)
         {
            for(_loc2_ in this.var_189)
            {
               if(this.var_189[_loc2_] == param1)
               {
                  this.var_502.splice(this.var_502.indexOf(_loc2_),1);
                  delete this.var_189[_loc2_];
                  --this.var_504;
                  return param1;
               }
            }
         }
         return null;
      }
      
      public function registerAssetTypeDeclaration(param1:AssetTypeDeclaration, param2:Boolean = true) : Boolean
      {
         if(param2)
         {
            if(var_351.hasOwnProperty(param1.mimeType))
            {
               throw new Error("Asset type " + param1.mimeType + " already registered!");
            }
            var_351[param1.mimeType] = param1;
         }
         else
         {
            if(this.var_503.hasOwnProperty(param1.mimeType))
            {
               throw new Error("Asset type " + param1.mimeType + " already registered!");
            }
            this.var_503[param1.mimeType] = param1;
         }
         return true;
      }
      
      public function getAssetTypeDeclarationByMimeType(param1:String, param2:Boolean = true) : AssetTypeDeclaration
      {
         var _loc3_:* = null;
         if(param2)
         {
            _loc3_ = AssetTypeDeclaration(var_351[param1]);
            if(_loc3_ != null)
            {
               return _loc3_;
            }
         }
         return AssetTypeDeclaration(this.var_503[param1]);
      }
      
      public function getAssetTypeDeclarationByClass(param1:Class, param2:Boolean = true) : AssetTypeDeclaration
      {
         var _loc3_:* = null;
         var _loc4_:* = null;
         if(param2)
         {
            for(_loc4_ in var_351)
            {
               _loc3_ = AssetTypeDeclaration(var_351[_loc4_]);
               if(_loc3_ != null)
               {
                  if(_loc3_.assetClass == param1)
                  {
                     return _loc3_;
                  }
               }
            }
         }
         for(_loc4_ in this.var_503)
         {
            _loc3_ = AssetTypeDeclaration(this.var_503[_loc4_]);
            if(_loc3_ != null)
            {
               if(_loc3_.assetClass == param1)
               {
                  return _loc3_;
               }
            }
         }
         return null;
      }
      
      public function getAssetTypeDeclarationByFileName(param1:String, param2:Boolean = true) : AssetTypeDeclaration
      {
         var _loc4_:* = null;
         var _loc5_:* = null;
         var _loc3_:String = param1.substr(param1.lastIndexOf(".") + 1,param1.length);
         if(_loc3_.indexOf("?"))
         {
            _loc3_ = _loc3_.substr(0,_loc3_.indexOf("?") - 1);
         }
         if(param2)
         {
            for(_loc5_ in var_351)
            {
               _loc4_ = AssetTypeDeclaration(var_351[_loc5_]);
               if(_loc4_ != null)
               {
                  if(_loc4_.fileTypes.indexOf(_loc3_))
                  {
                     return _loc4_;
                  }
               }
            }
         }
         for(_loc5_ in this.var_503)
         {
            _loc4_ = AssetTypeDeclaration(this.var_503[_loc5_]);
            if(_loc4_ != null)
            {
               if(_loc4_.fileTypes.indexOf(_loc3_))
               {
                  return _loc4_;
               }
            }
         }
         return null;
      }
      
      private function libraryLoadedHandler(param1:LibraryLoaderEvent) : void
      {
         var _loc2_:LibraryLoader = param1.target as LibraryLoader;
         if(_loc2_.manifest == null)
         {
            throw new Error("loader.manifest was null, which would have caused error 1009 anyway. See HL-22347.");
         }
         this._manifest = _loc2_.manifest.copy();
         this.var_733 = _loc2_.resource;
         this.var_734 = _loc2_.url;
         if(this.var_1120)
         {
            AssetLibrary.fetchLibraryContents(this,this._manifest,this.var_733);
         }
         this.var_1119 = true;
         dispatchEvent(new Event(AssetLibrary.const_996));
         dispatchEvent(new Event(AssetLibrary.const_1310));
         if(this.var_1120)
         {
            this.var_44.removeEventListener(LibraryLoaderEvent.LIBRARY_LOADER_EVENT_COMPLETE,this.libraryLoadedHandler);
            this.var_44.removeEventListener(LibraryLoaderEvent.LIBRARY_LOADER_EVENT_ERROR,this.loadErrorHandler);
            this.var_44.addEventListener(LibraryLoader.LIBRARY_LOADER_FINALIZE,this.finalizeLoaderEventHandler);
            this.var_44 = null;
            this.var_733 = null;
         }
      }
      
      private function finalizeLoaderEventHandler(param1:Event) : void
      {
         var _loc2_:LibraryLoader = param1.target as LibraryLoader;
         if(_loc2_ && !_loc2_.disposed)
         {
            if(!_loc2_.hasEventListener(LibraryLoaderEvent.LIBRARY_LOADER_EVENT_COMPLETE))
            {
               _loc2_.removeEventListener(LibraryLoader.LIBRARY_LOADER_FINALIZE,this.finalizeLoaderEventHandler);
               _loc2_.dispose();
            }
         }
      }
      
      private function onLoadProgress(param1:ProgressEvent) : void
      {
         dispatchEvent(param1.clone());
      }
      
      private function loadErrorHandler(param1:LibraryLoaderEvent) : void
      {
         this.var_1119 = false;
         var _loc2_:LibraryLoader = param1.target as LibraryLoader;
         var _loc3_:String = !!_loc2_ ? _loc2_.name : "unknown";
         Logger.log("Cannot load the specified file: " + _loc3_ + " " + param1.status);
         dispatchEvent(new Event(AssetLibrary.const_1849));
         this.var_44 = null;
      }
      
      private function solveAssetTypeDeclarationFromUrl(param1:String) : AssetTypeDeclaration
      {
         var _loc2_:int = 0;
         var _loc3_:* = null;
         var _loc4_:* = null;
         var _loc5_:* = null;
         _loc2_ = param1.indexOf("?",0);
         if(_loc2_ > 0)
         {
            param1 = param1.slice(0,_loc2_);
         }
         _loc2_ = param1.lastIndexOf(".");
         if(_loc2_ == -1)
         {
            return null;
         }
         param1 = param1.slice(_loc2_ + 1,param1.length);
         for(_loc5_ in this.var_503)
         {
            _loc3_ = this.var_503[_loc5_];
            _loc4_ = _loc3_.fileTypes;
            if(_loc4_ != null)
            {
               if(_loc4_.indexOf(param1,0) > -1)
               {
                  return _loc3_;
               }
            }
         }
         for(_loc5_ in var_351)
         {
            _loc3_ = var_351[_loc5_];
            _loc4_ = _loc3_.fileTypes;
            if(_loc4_ != null)
            {
               if(_loc4_.indexOf(param1,0) > -1)
               {
                  return _loc3_;
               }
            }
         }
         return null;
      }
      
      private function fetchAssetFromResource(param1:String) : IAsset
      {
         var _loc3_:* = null;
         var _loc4_:* = null;
         var _loc5_:* = null;
         var _loc6_:* = null;
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         if(!this.var_733)
         {
            return null;
         }
         var _loc2_:XMLList = this._manifest.child(const_1155);
         if(_loc2_ == null)
         {
            throw new Error("Provided manifest doesn\'t contain library node!");
         }
         if(_loc2_.length() == 0)
         {
            return null;
         }
         _loc2_ = _loc2_[0].assets;
         if(_loc2_ != null)
         {
            _loc2_ = _loc2_.child(const_1156);
            if(_loc2_ != null)
            {
               _loc5_ = null;
               _loc7_ = _loc2_.length();
               _loc8_ = 0;
               while(_loc8_ < _loc7_)
               {
                  _loc3_ = _loc2_[_loc8_];
                  if(_loc3_.attribute(const_704) && _loc3_.attribute(const_704).toString() == param1)
                  {
                     _loc4_ = this.getAssetTypeDeclarationByMimeType(_loc3_.attribute(TYPE));
                     if(_loc4_ == null)
                     {
                        throw new Error("Failed to extract asset " + param1 + " from Library " + this.var_734 + "!");
                     }
                     _loc5_ = new _loc4_.assetClass(_loc4_) as IAsset;
                     _loc5_.setUnknownContent(this.var_733[param1]);
                     _loc6_ = _loc3_.child(const_1157);
                     if(_loc6_ && _loc6_.length())
                     {
                        _loc5_.setParamsDesc(_loc6_);
                     }
                     this.setAsset(param1,_loc5_);
                     return _loc5_;
                  }
                  _loc8_++;
               }
            }
         }
         return null;
      }
      
      public function toString() : String
      {
         return getQualifiedClassName(this) + ": " + this._name;
      }
   }
}
