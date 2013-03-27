package com.gdd2d.objects {
	
	import com.rhuno.Airxbc;
	import com.rhuno.X360Gamepad;
	
	public class Input {

		private var _ext:Airxbc;
		private var _gamepad1:X360Gamepad;
		private var _gamepad2:X360Gamepad;
		private var _gamepad3:X360Gamepad;
		private var _gamepad4:X360Gamepad;
		private var _gamepads = [_gamepad1, _gamepad2, _gamepad3, _gamepad4];
		private var _numControllers:Number;
		
		public function Input() 
		{
			// constructor code
			_ext = new Airxbc();
			pollControllers();
		}
		
		/* PollControllers()
		 *
		 * Get the controllers connected to the computer
		 */
		public function pollControllers()
		{
			try
			{
				_numControllers = _ext.getNumControllers();
				for(var i:Number = 0; i < _numControllers; i++)
					_gamepads[i] = _ext.pollGamePad(i);
			}
			catch(e:Error)
			{
				return;
			}
		}
		
		public function pollController(num:Number) : Boolean
		{
			try
			{
				_numControllers = _ext.getNumControllers();
				if(num > 0 && num < _numControllers)
				{
					_gamepads[i] = _ext.pollGamePad(num);
					return true;
				}
				else
					return false;
			}
			catch(e:Error)
			{
				return false;
			}
		}
		
		/* getNumControllers()
		 *
		 * return the number of active controllers
		 */
		public function getNumControllers() : Number
		{
			return _numControllers;
		}
		
		/* isAPressed()
		 * 
		 * checks to see if the a button on the specified controller is pressed
		 *
		 */
		public function isAPressed(num:Number) : Boolean
		{
			if( num > 0 && num < _numControllers && pollController(num))
				return _gamepads[num].isAPressed();
			return false;
		}
		
		/* isBPressed()
		* 
		* checks to see if the a button on the specified controller is pressed
		*
		*/
		public function isBPressed(num:Number) : Boolean
		{
			if( num > 0 && num < _numControllers && pollController(num))
				return _gamepads[num].isBPressed();
			return false;
		}
		
		/* isYPressed()
		* 
		* checks to see if the a button on the specified controller is pressed
		*
		*/
		public function isYPressed(num:Number) : Boolean
		{
			if( num > 0 && num < _numControllers && pollController(num))
				return _gamepads[num].isYPressed();
			return false;
		}
		
		/* isXPressed()
		* 
		* checks to see if the a button on the specified controller is pressed
		*
		*/
		public function isXPressed(num:Number) : Boolean
		{
			if( num > 0 && num < _numControllers && pollController(num))
				return _gamepads[num].isXPressed();
			return false;
		}
		
		/* isDPadDownPressed()
		* 
		* checks to see if the a button on the specified controller is pressed
		*
		*/
		public function isDPadDownPressed(num:Number) : Boolean
		{
			if( num > 0 && num < _numControllers && pollController(num))
				return _gamepads[num].isDPadDownPressed();
			return false;
		}
		
		/* isDPadUpPressed()
		* 
		* checks to see if the a button on the specified controller is pressed
		*
		*/
		public function isDPadUpPressed(num:Number) : Boolean
		{
			if( num > 0 && num < _numControllers && pollController(num))
				return _gamepads[num].isDPadupPressed();
			return false;
		}
		
		/* isDPadRightPressed()
		* 
		* checks to see if the a button on the specified controller is pressed
		*
		*/
		public function isDPadRightPressed(num:Number) : Boolean
		{
			if( num > 0 && num < _numControllers && pollController(num))
				return _gamepads[num].isDPadRightPressed();
			return false;
		}
		
		/* isDPadLeftPressed()
		* 
		* checks to see if the a button on the specified controller is pressed
		*
		*/
		public function isDPadLeftPressed(num:Number) : Boolean
		{
			if( num > 0 && num < _numControllers && pollController(num))
				return _gamepads[num].isDPadLeftPressed();
			return false;
		}
		
		/* isLeftShoulderPressed()
		* 
		* checks to see if the a button on the specified controller is pressed
		*
		*/
		public function isLeftShoulderPressed(num:Number) : Boolean
		{
			if( num > 0 && num < _numControllers  && pollController(num))
				return _gamepads[num].isLeftShoulderPressed();
			return false;
		}
		
		/* isLeftTriggerPressed()
		* 
		* checks to see if the a button on the specified controller is pressed
		*
		*/
		public function isLeftTriggerPressed(num:Number) : Boolean
		{
			if( num > 0 && num < _numControllers && pollController(num))
				return _gamepads[num].isLeftTriggerPressed();
			return false;
		}
		
		/* isRightShoulderPressed()
		* 
		* checks to see if the a button on the specified controller is pressed
		*
		*/
		public function isRightShoulderPressed(num:Number) : Boolean
		{
			if( num > 0 && num < _numControllers && pollController(num))
				return _gamepads[num].isRightShoulderPressed();
			return false;
		}
		
		/* isRightShoulderPressed()
		* 
		* checks to see if the a button on the specified controller is pressed
		*
		*/
		public function isRightTriggerPressed(num:Number) : Boolean
		{
			if( num > 0 && num < _numControllers && pollController(num))
				return _gamepads[num].isRightTriggerPressed();
			return false;
		}
		
		/* getLeftStickX()
		 *
		 * -10000 - 10000 is the dead zone
		 *
		 * returns the value of the left stick
		 */
		public function getLeftStickX(num:Number) : Number
		{
			if( num > 0 && num < _numControllers && pollController(num))
				return _gamepads[num].leftStickX;
			return 0;
		}
		
	   /* getLeftStickY()
		*
		* -10000 - 10000 is the dead zone
		*
		* returns the value of the left stick
		*/
		public function getLeftStickY(num:Number) : Number
		{
			if( num > 0 && num < _numControllers && pollController(num))
				return _gamepads[num].leftStickY;
			return 0;
		}
		
	   /* getRightStickX()
		*
		* -10000 - 10000 is the dead zone
		*
		* returns the value of the right stick
		*/
		public function getRightStickX(num:Number) : Number
		{
			if( num > 0 && num < _numControllers && pollController(num))
				return _gamepads[num].rightStickX;
			return 0;
		}
		
		/* getRightStickY()
		*
		* -10000 - 10000 is the dead zone
		*
		* returns the value of the right stick
		*/
		public function getRightStickY(num:Number) : Number
		{
			if( num > 0 && num < _numControllers && pollController(num))
				return _gamepads[num].rightStickX;
			return 0;
		}
		
		/* isStartPressed()
		 *
		 * checks to see if the start button is pressed on the specified controller
		 */
		public function isStartpressed(num:Number) : Number
		{
			if( num > 0 && num < _numControllers && pollController(num))
				return _gamepads[num].isStartPressed();
			return 0;
		}
		
		/* isBackPressed()
		*
		* checks to see if the start button is pressed on the specified controller
		*/
		public function isBackpressed(num:Number) : Number
		{
			if( num > 0 && num < _numControllers && pollController(num))
				return _gamepads[num].isBackPressed();
			return 0;
		}
		
		/* setVibration()
		 *
		 * vibrate a controller
		 * left and right paramaters must be between 0 and 1
		 */
		public function setVibration(num:Number, leftMotor:Number, rightMotor:Number)
		{
			if( num > 0 && num < _numControllers && pollController(num))
				_ext.setVibration(num, leftMotor, rightMotor);
		}
	}
}
