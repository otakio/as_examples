﻿package{	import flash.display.MovieClip;	import flash.utils.Timer;	import flash.events.TimerEvent;	import flash.display.Sprite;		public class Otama extends MovieClip{		var oval_1:Array;	//黒い玉		var oval_2:Array;	//黒い玉を追いかけるグレーの玉		var tx:Array;	//黒い玉の目的地のx		var ty:Array;	//黒い玉の目的地のy		var ratio:Array;	//玉のスピード		var lines:Array;	//黒い玉とグレーの玉の間の線		var timer:Timer;	//メインループ用のタイマー		const stageW = 600;		const stageH = 450;		const ovalNum = 50;	//玉の数				function Otama(){			/* ovalNumの数だけoval_1とoval_2を作る。 */			oval_1 = new Array();			oval_2 = new Array();			for(var i:uint = 0; i < ovalNum; i ++){				oval_1.push(new Oval());				oval_1[i].x = stageW * Math.random();				oval_1[i].y = stageH * Math.random();				this.addChild(oval_1[i]);								oval_2.push(new Oval());				oval_2[i].x = oval_1[i].x;				oval_2[i].y = oval_1[i].y;				oval_2[i].alpha = 0.3;				this.addChild(oval_2[i]);			}			/* oval_1とoval_2の間の線 */			lines = new Array();			for(i = 0; i < oval_1.length; i ++){				lines.push(new Sprite());				lines[i].x = oval_1[i].x;				lines[i].y = oval_1[i].y;				this.addChild(lines[i]);			}			/* oval_1の目的地をランダムで生成 */			tx = new Array();			ty = new Array();			ratio = new Array();			for(i = 0; i < oval_1.length; i ++){				tx.push(new Number(stageW * Math.random()));				ty.push(new Number(stageH * Math.random()));				ratio.push(30);			}			/* メインループ用タイマー */			timer = new Timer(33);			timer.addEventListener(TimerEvent.TIMER, loop);			timer.start();		}		/* メインループ */		function loop(e:TimerEvent):void{			for(var i:uint = 0; i < oval_1.length; i ++){				/* oval_1[i]の座標をtx[i]に徐々に近づける */				oval_1[i].x += (tx[i] - oval_1[i].x) / ratio[i];				oval_1[i].y += (ty[i] - oval_1[i].y) / ratio[i];				/* oval_2[i]の座標をoval_1[i]の座標に徐々に近づける */				oval_2[i].x += (oval_1[i].x - oval_2[i].x) / 20;				oval_2[i].y += (oval_1[i].y - oval_2[i].y) / 20;				/* oval_1[i]の座標とoval_2[i]の座標の差が1px以下になったら再び目的地をランダムで設定する */				var dx:int = Math.round(tx[i] - oval_1[i].x);				var dy:int = Math.round(ty[i] - oval_1[i].y);				var dist:int = Math.round(Math.sqrt(dx * dx + dy * dy));				if(dist <= 1){					tx[i] = this.stage.stageWidth * Math.random();					ty[i] = this.stage.stageHeight * Math.random();				}			}			/* oval_1とoval_2の間に線を描く */			for(i = 0; i < oval_1.length; i ++){				lines[i].x = oval_1[i].x;				lines[i].y = oval_1[i].y;				lines[i].graphics.clear();				lines[i].graphics.lineStyle(0, 0x000000);				lines[i].graphics.moveTo(0, 0);				lines[i].graphics.lineTo(oval_2[i].x - lines[i].x, oval_2[i].y - lines[i].y);			}		}	}}