package me.xplabs.isometric.iso 
{
	import me.xplabs.isometric.gemo.Point3D;
	import me.xplabs.isometric.interfance.IIsoObject;
	
	/**
	 * ...
	 * @author xiaohan
	 */
	public class IsoObject implements IIsoObject 
	{
		private var _x:int;
		private var _y:int;
		private var _z:int;
		private var _point3d:Point3D;
		private var _walkable:Boolean;
		private var _objType:int;
		private var _layerType:int;
		private var _col:int;
		private var _row:int;
		private var _cols:int;
		private var _rows:int;
		private var _prevCol:int;
		private var _prevRow:int;
		private var _displayObject:Object;
		/**
		 * 等角对象的构造函数
		 * @param	pLayerType 显示层的类型，可自定义显示层级类型
		 * @param	pDisplayObject 需要被添加到显示列表中的先是对象
		 */
		public function IsoObject(pLayerType:int, pDisplayObject:Object)
		{
			_layerType = pLayerType;
			_displayObject = pDisplayObject;
		}
		
		/* INTERFACE me.xplabs.interfance.IIsoObject */
		
		public function get x():Number 
		{
			return _x;
		}
		
		public function set x(value:Number):void 
		{
			_x = value;
		}
		
		public function get y():Number 
		{
			return _y;
		}
		
		public function set y(value:Number):void 
		{
			_y = value;
		}
		
		public function get z():Number 
		{
			return _z;
		}
		
		public function set z(value:Number):void 
		{
			_z = value;
		}
		
		public function get point3d():Point3D 
		{
			return _point3d;
		}
		
		public function set point3d(value:Point3D):void 
		{
			_point3d = value;
		}
		
		public function get walkable():Boolean 
		{
			return _walkable;
		}
		
		public function set walkable(value:Boolean):void 
		{
			_walkable = value;
		}
		
		public function get objType():int 
		{
			return _objType;
		}
		
		public function set objType(value:int):void 
		{
			_objType = value;
		}
		
		public function pointAddObservers(call:Function):void 
		{
			
		}
		
		public function pointDelObjservers(call:Function):void 
		{
			
		}
		
		
		public function set displayObject(value:Object):void 
		{
			if (!value.hasOwnProperty("parent"))
			{
				throw new Error("指定的显示对象必须包含父级属性parent");
				
			}
			_displayObject = value;
			
		}
		
		
		public function get displayObject():Object 
		{
			return _displayObject;
		}
		
		public function set col(value:int):void 
		{
			_col = value;
		}
		
		public function set row(value:int):void 
		{
			_row = value;
		}
		
		public function set cols(value:int):void 
		{
			_cols = value;
		}
		
		public function set rows(value:int):void 
		{
			_rows = value;
		}
		
		public function get layerType():int 
		{
			return _layerType;
		}
		
		public function set layerType(value:int):void 
		{
			_layerType = value;
		}
		
		public function get prevRow():int 
		{
			return _prevRow;
		}
		
		public function set prevRow(value:int):void 
		{
			_prevRow = value;
		}
		
		public function get prevCol():int 
		{
			return _prevCol;
		}
		
		public function set prevCol(value:int):void 
		{
			_prevCol = value;
		}
		
		public function get col():int 
		{
			return _col;
		}
		
		public function get row():int 
		{
			return _row;
		}
		
		public function get cols():int 
		{
			return _cols;
		}
		
		public function get rows():int 
		{
			return _rows;
		}
		
	}

}