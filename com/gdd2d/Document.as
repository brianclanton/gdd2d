package com.gdd2d {
	
	import flash.display.MovieClip;
	import flash.events.Event;
	import flash.utils.getTimer;
	import com.gdd2d.objects.TestBall;
	
	public class Document extends MovieClip {
		
		private var test:TestBall;
		
		private var lastTime:Number, currentTime:Number;
		private var dT:Number;
		
		public function Document() {
			test = new TestBall(stage.stageWidth / 2, stage.stageHeight / 2);
			addChild(test);
			
			lastTime = getTimer();
			addEventListener(Event.ENTER_FRAME, enterFrame);
		}
		
		private function enterFrame(e:Event) {
			// do update based on clock time
			currentTime = getTimer();
			dT = (currentTime - lastTime) / 1000;
			lastTime = currentTime;
			
			test.update(dT);
		}
	}
	
}
