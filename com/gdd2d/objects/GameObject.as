package com.gdd2d.objects {
	import flash.display.MovieClip;
	
	public class GameObject extends MovieClip {

		public function GameObject(startX:Number, startY:Number) {
			x = startX;
			y = startY;
		}
		
		public function update(dT:Number):void { }
	}
	
}
