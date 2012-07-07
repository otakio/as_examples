﻿package  {	import flash.display.MovieClip;	import flash.events.Event;	import flash.text.TextField;	import flash.text.TextFormat;		public class ClockExample extends MovieClip{				var tfYear:TextField;		var tfMonth:TextField;		var tfDay:TextField;		var tfHours:TextField;		var tfMinutes:TextField;		var tfSeconds:TextField;		var tfMSeconds:TextField;		var textFormat:TextFormat;		public function ClockExample() {			// constructor code			this.addEventListener(Event.ENTER_FRAME, loop);						textFormat = new TextFormat();			textFormat.size = 48;			textFormat.font = "Hiragino Kaku Gothic Pro W3";						tfYear = new TextField();			setUpTextField(tfYear, 50, 100);			this.addChild(tfYear);			tfMonth = new TextField();			setUpTextField(tfMonth, 250, 100);			this.addChild(tfMonth);			tfDay = new TextField();			setUpTextField(tfDay, 350, 100);			this.addChild(tfDay);			tfHours = new TextField();			setUpTextField(tfHours, 50, 200);			this.addChild(tfHours);						tfMinutes = new TextField();			setUpTextField(tfMinutes, 175, 200);			this.addChild(tfMinutes);						tfSeconds = new TextField();			setUpTextField(tfSeconds, 300, 200);			this.addChild(tfSeconds);						tfMSeconds = new TextField();			setUpTextField(tfMSeconds, 425, 200);			this.addChild(tfMSeconds);					}		function setUpTextField(tf:TextField, xx:int, yy:int):void{			tf.text = "aa";			tf.x = xx;			tf.y = yy;			tf.width = 200;			tf.setTextFormat(textFormat);		}				function loop(e:Event):void{			var date:Date = new Date();						tfYear.text = date.getFullYear().toString() + "年";			tfYear.setTextFormat(textFormat);			tfMonth.text = (date.getMonth()+1).toString() + "月";			tfMonth.setTextFormat(textFormat);						tfDay.text = (date.getDate()).toString() + "日";			tfDay.setTextFormat(textFormat);			tfHours.text = date.getHours().toString() + "時";			tfHours.setTextFormat(textFormat);						tfMinutes.text = date.getMinutes().toString() + "分";			tfMinutes.setTextFormat(textFormat);						tfSeconds.text = date.getSeconds().toString() + "秒";			tfSeconds.setTextFormat(textFormat);						tfMSeconds.text = date.getMilliseconds().toString();			tfMSeconds.setTextFormat(textFormat);					}	}	}