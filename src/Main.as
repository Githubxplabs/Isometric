package
{
	import flash.display.Sprite;
	import flash.events.Event;
	import flash.geom.Point;
	import flash.utils.getTimer;
	import me.xplabs.isometric.astar.AStar;
	import me.xplabs.isometric.interfance.IIsoObject;
	import me.xplabs.isometric.iso.IsoLayer;
	import me.xplabs.isometric.iso.IsoObject;
	import me.xplabs.isometric.iso.IsoWorld;

	
	/**
	 * ...
	 * @author xiaohan
	 */
	public class Main extends Sprite
	{
		private var _num:int = 10000;
		
		public function Main():void
		{
			if (stage)
				init();
			else
				addEventListener(Event.ADDED_TO_STAGE, init);
		}
		
		private function init(e:Event = null):void
		{
			removeEventListener(Event.ADDED_TO_STAGE, init);
			// entry point
		}
	
	}

}