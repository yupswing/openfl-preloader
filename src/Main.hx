package;

import openfl.Lib;
import openfl.Assets;
import openfl.events.Event;
import openfl.display.Bitmap;
import openfl.display.BitmapData;
import openfl.display.Sprite;

class Main extends Sprite {

	var currentScale:Float = 1; // scale factor used by the resize function
	
	
	public function new () {
		
		super ();
		
		init ();
		
		//first resize and listener
		stage_onResize(null);
		Lib.current.stage.addEventListener (Event.RESIZE, stage_onResize);
		
	}
	
	
	private function init ():Void {
		
		// add the picture (which makes most of the payload of this example)
		// to the stage
		var bitmapData = Assets.getBitmapData ("assets/loaded.png");
		var bitmap = new Bitmap (bitmapData);
		bitmap.smoothing = true;
        addChild(bitmap);
		
	}
	
	
	private function stage_onResize (event:Event):Void {
		
		resize (Lib.current.stage.stageWidth, Lib.current.stage.stageHeight);
		
	}


	public function resize (newWidth:Int, newHeight:Int):Void {
		//Resize the content scale to fit the window and center the content (leaving some margins)

		// margins
		var maxWidth = newWidth * 0.95;
		var maxHeight = newHeight * 0.95;
		
		currentScale = 1;
		scaleX = 1;
		scaleY = 1;
		
		var currentWidth = width;
		var currentHeight = height;
		
		if (currentWidth > maxWidth || currentHeight > maxHeight) {
			var maxScaleX = maxWidth / currentWidth;
			var maxScaleY = maxHeight / currentHeight;
			if (maxScaleX < maxScaleY) {
				currentScale = maxScaleX;
			} else {
				currentScale = maxScaleY;
			}
			scaleX = currentScale;
			scaleY = currentScale;
		}
		
		// center content
		x = newWidth / 2 - (currentWidth * currentScale) / 2;
		y = newHeight / 2 - (currentHeight * currentScale) / 2;
		
	}
	
	
}
