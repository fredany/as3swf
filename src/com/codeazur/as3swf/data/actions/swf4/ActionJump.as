﻿package com.codeazur.as3swf.data.actions.swf4
{
	import com.codeazur.as3swf.data.actions.*;
	import com.codeazur.as3swf.SWFData;
	
	public class ActionJump extends Action implements IAction
	{
		public var branchOffset:int;
		
		public function ActionJump(code:uint, length:uint) {
			super(code, length);
		}
		
		override public function parse(data:SWFData):void {
			branchOffset = data.readSI16();
		}
		
		public function toString(indent:uint = 0):String {
			return "[ActionJump] BranchOffset: " + branchOffset;
		}
	}
}