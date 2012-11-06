package me.xplabs.isometric.interfance 
{
	
	/**
	 * ...
	 * @author xiaohan
	 */
	public interface IIsoTile
	{
		function addItem(isoObject:IIsoObject):void;
		function removeItem(isoObject:IIsoObject):void;
		function isoObjects(ptype:int):Vector.<IIsoObject>;
		function get col():int;
		function set col(value:int):void;
		function get row():int;
		function set row(value:int):void;
		function get walkable():Boolean;
		function set walkable(value:Boolean):void;
	}
	
}