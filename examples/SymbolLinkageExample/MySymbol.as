﻿package  {	import flash.display.MovieClip;	import flash.events.Event;		public class MySymbol extends MovieClip{		public function MySymbol() {			// constructor code			this.addEventListener(Event.ENTER_FRAME, loop);		}		function loop(e:Event):void{			this.rotation += 1;		}	}	}