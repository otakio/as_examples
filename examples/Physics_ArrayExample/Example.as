﻿package  {	import flash.display.MovieClip;	import flash.events.Event;	import FlaUtils.*;	import flash.events.MouseEvent;		public class Example extends MovieClip{				var ovals:Array;		public function Example() {			// constructor code			this.addEventListener(Event.ENTER_FRAME, loop);						ovals = new Array();			var curX:int = 170;			var curY:int = 90;			for(var i:uint = 0; i < 100; i++){				ovals.push(new Oval());				ovals[i].setPoint(curX, curY);				curX += 30;				if(i%10 == 9){					curY += 30;					curX = 170;				}				this.addChild(ovals[i]);			}			this.stage.addEventListener(MouseEvent.MOUSE_DOWN, onMDown);			this.stage.addEventListener(MouseEvent.MOUSE_UP, onMUp);		}		function loop(e:Event):void{		}				function onMDown(e:MouseEvent):void{			for(var i:uint = 0; i < ovals.length; i++){				ovals[i].isVacuum = false;			}		}		function onMUp(e:MouseEvent):void{			for(var i:uint = 0; i < ovals.length; i++){				ovals[i].isVacuum = true;			}					}	}	}