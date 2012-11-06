package me.xplabs.iso 
{
	import me.xplabs.interfance.IIsoObject;
	import me.xplabs.interfance.IIsoLayer;
	import me.xplabs.interfance.ISortable;
	
	/**
	 * ...
	 * @author xiaohan
	 */
	public class IsoLayer implements IIsoLayer 
	{
		protected var _containers:Vector.<IIsoObject>;
		protected var _container:Object;
		public function IsoLayer() 
		{
			_containers = new Vector.<IIsoObject>();
		}
		
		/* INTERFACE me.xplabs.interfance.ILayer */
		
		public function sort():void 
		{
			var list:Vector.<IIsoObject> = _containers.slice(0);
			
			_containers.length = 0;
			
			for (var i:int = 0; i < list.length;++i) {
				var nsi:ISortable = list[i];
				
				var added:Boolean = false;
				for (var j:int = 0; j < _containers.length;++j ) {
					var si:ISortable = _containers[j];
					
					if (nsi.col <= si.col+si.cols-1 && nsi.row <= si.row+si.rows-1) {
						_containers.splice(j, 0, nsi);
						added = true;
						break;
					}
				}
				if (!added) {
					_containers.push(nsi);
				}
			}
			
			for (i = 0; i < _containers.length;++i) {
				_container.addChildAt(_containers[i].displayObject, i);
			}
		}
		
		public function addChild(isoObject:IIsoObject):void 
		{
			_containers[_containers.length] = isoObject;
		}
		
		public function removeChild(isoObject:IIsoObject):void 
		{
			var len:int = _containers.length;
			for (var i:int = 0; i < len; i++) 
			{
				if (_containers[i] == isoObject)
				{
					if (_containers[i].displayObject.parent) _containers[i].displayObject.parent.removeChild(_containers[i].displayObject);
					_containers.splice(i, 1);
					break;
				}
			}
		}
		
	}

}