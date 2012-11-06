package me.xplabs.isometric.interfance 
{
	
	/**
	 * ...
	 * @author xiaohan
	 */
	public interface IIsoLayer 
	{
		/**
		 * 排序
		 */
		function sort():void;
		/**
		 * 添加对象到层
		 * @param	isoObject
		 */
		function addChild(isoObject:IIsoObject):void;
		/**
		 * 从层中删除
		 * @param	isoObject
		 */
		function removeChild(isoObject:IIsoObject):void;
	}
	
}