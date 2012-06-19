﻿package  {	import flash.display.Sprite;	import flash.events.Event;	import FlaUtils.*;	import flash.geom.Point;		public class Oval extends Sprite{				var pt:PhysicalPoint;		var ox:int;		var oy:int;		public var isVacuum:Boolean = true;		public function Oval() {			// constructor code			this.graphics.clear();			FlaGraphics.setColor(0, 0, 200, 150);			FlaGraphics.fillCircle(this, -10, -10, 10);						pt = new PhysicalPoint(0, 0);			this.addEventListener(Event.ENTER_FRAME, loop);		}		public function setPoint(xx:Number, yy:Number){			pt.x = xx;			pt.y = yy;			x = xx;			y = yy;			ox = xx;			oy = yy;		}		private function loop(e:Event):void{			x = pt.x;			y = pt.y;			var location:Point = new Point(mouseX, mouseY);			var power:Number = 100 - pt.getDistanceTo(localToGlobal(location).x, localToGlobal(location).y);			if(power < 0)	power = 0;			power *= 0.1;			if(isVacuum){				pt.setAccelerationTo(localToGlobal(location).x, localToGlobal(location).y, power);			}else{				pt.setAccelerationTo(localToGlobal(location).x, localToGlobal(location).y, -power);							}			pt.setAccelerationTo(ox, oy, 10);		}	}	}