package me.xplabs.isometric.iso 
{
	import flash.utils.Dictionary;
	import me.xplabs.isometric.interfance.IIsoObject;
	import me.xplabs.isometric.interfance.IIsoTile;
	/**
	 * ...
	 * @author xiaohan
	 */
	public class IsoTile implements IIsoTile 
	{
		private var _col:int;
		private var _row:int;
		private var _walkable:Boolean;
		private var _itemsDict:Dictionary;
		
		public function IsoTile() 
		{
		}
		
		
		public function isoObjects(ptype:int):Vector.<IIsoObject> 
		{
			return _itemsDict[ptype];
		}
		
		public function addItem(isoObject:IIsoObject):void
		{
			if (!_itemsDict) _itemsDict = new Dictionary();
			var items:Vector.<IIsoObject> = _itemsDict[isoObject.layerType];
			if (!items)
			{
				items = new Vector.<IIsoObject>();
				_itemsDict[isoObject.layerType] = items;
			}
			items[items.length] = isoObject;
		}
		
		public function removeItem(isoObject:IIsoObject):void 
		{
			var items:Vector.<IIsoObject> = _itemsDict[isoObject.layerType];
			if (!items) return;
			var len:int = items.length;
			for (var i:int = 0; i < len; i++) 
			{
				if (items[i] == isoObject)
				{
					items.splice(i, 0);
					break;
				}
			}
		}
		
		public function get walkable():Boolean 
		{
			if (!_itemsDict || !_walkable) return _walkable;
			for each (var items: Vector.<IIsoObject> in _itemsDict) 
			{
				var len:int = items.length;
				for (var i:int = 0; i < len; i++) 
				{
					if (!items[i].walkable) return false;
				}
			}
			return _walkable;
		}
		
		public function set walkable(value:Boolean):void 
		{
			_walkable = value;
		}
		
		public function get col():int 
		{
			return _col;
		}
		
		public function set col(value:int):void 
		{
			_col = value;
		}
		
		public function get row():int 
		{
			return _row;
		}
		
		public function set row(value:int):void 
		{
			_row = value;
		}
		
	}

}