﻿package  {	import flash.display.MovieClip;	import flash.events.Event;		public class Example extends MovieClip{				var scene1:Scene1;				public function Example() {			// constructor code			this.addEventListener(Event.ENTER_FRAME, loop);						scene1 = new Scene1(1);			this.addChild(scene1);					}		function loop(e:Event):void{		}	}}