﻿package  {	import flash.display.MovieClip;		public class SymbolLinkageExample extends MovieClip{		var mySymbol:MySymbol;		public function SymbolLinkageExample() {			// constructor code			mySymbol = new MySymbol();			mySymbol.x = 300;			mySymbol.y = 200;			this.addChild(mySymbol);		}	}	}