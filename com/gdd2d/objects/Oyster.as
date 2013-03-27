package com.gdd2d.objects {
	import flash.events.Event;
	import flash.utils.Timer;
	import flash.events.TimerEvent;
	
	public class Oyster extends GameObject{


		private var myTimer:Timer = new Timer(0,1);		//One second timer

		public function Oyster(startX:Number, startY:Number){
			super(startX, startY);

			myTimer.delay = (Math.random() * 1000) + 1;
			trace(myTimer.delay);
			myTimer.start();
			myTimer.addEventListener(TimerEvent.TIMER, atTimeOpen);
								  
		 }
		
		public function atTimeOpen(event:TimerEvent):void {
            myTimer.stop();
			myTimer.removeEventListener(TimerEvent.TIMER, atTimeOpen);
			myTimer.addEventListener(TimerEvent.TIMER, atTimeClose);
			trace("Oyster open!" + event);
			gotoAndPlay("opening_animation");
			myTimer.reset();
			myTimer.delay = (Math.random() * 1000) + 1000;
			myTimer.repeatCount = 1;
			myTimer.start();
			trace(myTimer.delay);
			
			
       	}
		
		public function atTimeClose(event:TimerEvent):void {
			trace("herp");
			myTimer.stop();
			myTimer.removeEventListener(TimerEvent.TIMER, atTimeClose);
			myTimer.addEventListener(TimerEvent.TIMER, atTimeOpen);
			trace("Oyster close!" + event);
			gotoAndPlay("closing_animation");
			myTimer.reset();
			myTimer.delay = (Math.random() * 1000) + 1000;
			myTimer.repeatCount = 1;
			myTimer.start();
			trace(myTimer.delay);
		}

	}
	
}
