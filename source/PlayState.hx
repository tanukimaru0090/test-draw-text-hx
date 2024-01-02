package;

import flixel.FlxState;
import flixel.text.FlxText;
import flixel.util.FlxTimer;
import flixel.FlxG;
import flixel.util.FlxColor;

class PlayState extends FlxState
{
	override public function create()
	{
		super.create();
		FlxG.switchState(new MainState());
	}


	override public function update(elapsed:Float)
	{
		super.update(elapsed);
	}
}




