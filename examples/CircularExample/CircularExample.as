﻿package  {	import flash.display.MovieClip;	import flash.events.Event;	import flash.geom.Point;	public class CircularExample extends MovieClip{				var center:Point;		var angle:Number = 0.0;		var r:Number = 150;		var symbol:MySymbol;		var centerSymbol:CenterSymbol;		public function CircularExample() {			// constructor code			center = new Point(300, 225);						symbol = new MySymbol();			symbol.x = 150;			symbol.y = 225;			this.addChild(symbol);						centerSymbol = new CenterSymbol();			centerSymbol.x = center.x;			centerSymbol.y = center.y;			this.addChild(centerSymbol);						this.addEventListener(Event.ENTER_FRAME, loop);		}		function loop(e:Event):void{			angle += 0.02;			symbol.x = center.x + r * Math.cos(angle);			symbol.y = center.y + r * Math.sin(angle);		}	}	}