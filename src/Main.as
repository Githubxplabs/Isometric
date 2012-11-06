package
{
	import flash.display.Sprite;
	import flash.events.Event;
	import flash.geom.Point;
	import flash.utils.getTimer;
	import me.xplabs.interfance.IIsoObject;
	import me.xplabs.iso.IsoLayer;
	import me.xplabs.iso.IsoObject;
	import me.xplabs.iso.IsoWorld;
	import me.xplabs.utils.Isometric;
	
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
			
			var world:IsoWorld = new IsoWorld(10,10);
			var layer:IsoLayer = new IsoLayer();
			world.registerLayer(1, layer);
			var obj:IIsoObject = new IsoObject(1, new Sprite());
			world.addChildToWorld(obj);
		}
	
	}

}