﻿package  FlaUtils{	import flash.display.Sprite;	import flash.geom.ColorTransform;	import flash.geom.Transform;		public class FlaGraphics {				private static var _lineWidth:uint = 0;		private static var _r:uint = 0;		private static var _g:uint = 0;		private static var _b:uint = 0;		private static var _a:uint = 255;		private static var _color32:int = 0xffffffff;		private static var _color24:int = 0xffffff;		public static function setColor(r:int = 0, g:int = 0, b:int = 0, a:int = 255):void{			_r = r;			_g = g;			_b = b;			_a = a;			_color24 = _r << 16 | _g << 8 | _b;			_color32 = _a << 24 | _r << 16 | _g << 8 | _b;		}		public static function setLineWidth(w:int = 0):void{			_lineWidth = w;		}		public static function drawLine(target:Sprite, x1:int, y1:int, x2:int, y2:int):void{			target.graphics.lineStyle(_lineWidth, _color24, 1.0 / 255 * _a);			target.graphics.moveTo(x1, y1);			target.graphics.lineTo(x2, y2);		}		public static function drawCurves(target:Sprite, pts: Array):void{			target.graphics.lineStyle(_lineWidth, _color24, 1.0 / 255 * _a);			target.graphics.moveTo(pts[0].x, pts[0].y);  			for(var i:uint = 1; i < pts.length-1; i++){			  target.graphics.curveTo(pts[i].x, pts[i].y, (pts[i].x + pts[i+1].x)/2, (pts[i].y+pts[i+1].y)/2);      			}		}		public static function drawRect(target:Sprite, x:Number = 0, y:Number = 0, w:Number = 100, h:Number = 100):void{			trace("kaiteruyo");			target.graphics.lineStyle(_lineWidth, _color24, 1.0 / 255 * _a);			target.graphics.drawRect(x, y, w, h);		}		public static function fillRect(target:Sprite, x:Number = 0, y:Number = 0, w:Number = 100, h:Number = 100):void{			target.graphics.lineStyle(0, 0, 0);			target.graphics.beginFill(_color24, 1.0/255*_a);			target.graphics.drawRect(x, y, w, h);			target.graphics.endFill();		}		public static function drawRoundRect(target:Sprite, 									  x:Number = 0, y:Number = 0, 									  w:Number = 100, h:Number = 100, 									  ellipseWidth:Number = 1, ellipseHeight:Number = 1):void{			target.graphics.lineStyle(_lineWidth, _color24, 1.0 / 255 * _a);						target.graphics.drawRoundRect(x, y, w, h, ellipseWidth, ellipseHeight);		}		public static function fillRoundRect(target:Sprite, 									  x:Number = 0, y:Number = 0, 									  w:Number = 100, h:Number = 100, 									  ellipseWidth:Number = 1, ellipseHeight:Number = 1):void{			target.graphics.lineStyle(0, 0, 0);			target.graphics.beginFill(_color24, 1.0/255*_a);			target.graphics.drawRoundRect(x, y, w, h, ellipseWidth, ellipseHeight);			target.graphics.endFill();		}		public static function drawCircle(target:Sprite, 								   x:Number = 0, //center x								   y:Number = 0, //center y								   radius:Number = 0):void{			target.graphics.lineStyle(_lineWidth, _color24, 1.0 / 255 * _a);			target.graphics.drawCircle(x, y, radius);		}		public static function fillCircle(target:Sprite, 								   x:Number = 0, //center x								   y:Number = 0, //center y								   radius:Number = 0):void{			target.graphics.lineStyle(0, 0, 0);			target.graphics.beginFill(_color24, 1.0/255*_a);			target.graphics.drawCircle(x, y, radius);			target.graphics.endFill();				}	}	}