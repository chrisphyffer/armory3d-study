package arm.node;

@:keep class Player1Controls extends armory.logicnode.LogicTree {

	var functionNodes:Map<String, armory.logicnode.FunctionNode>;

	var functionOutputNodes:Map<String, armory.logicnode.FunctionOutputNode>;

	public function new() {
		super();
		this.functionNodes = new Map();
		this.functionOutputNodes = new Map();
		notifyOnAdd(add);
	}

	override public function add() {
		var _SendEvent_003 = new armory.logicnode.SendEventNode(this);
		var _Merge_002 = new armory.logicnode.MergeNode(this);
		var _OnKeyboard_002 = new armory.logicnode.OnKeyboardNode(this);
		_OnKeyboard_002.property0 = "Down";
		_OnKeyboard_002.property1 = "right";
		_OnKeyboard_002.addOutputs([_Merge_002]);
		_Merge_002.addInput(_OnKeyboard_002, 0);
		var _OnGamepad_002 = new armory.logicnode.OnGamepadNode(this);
		_OnGamepad_002.property0 = "Down";
		_OnGamepad_002.property1 = "right";
		_OnGamepad_002.addInput(new armory.logicnode.IntegerNode(this, 0), 0);
		_OnGamepad_002.addOutputs([_Merge_002]);
		_Merge_002.addInput(_OnGamepad_002, 0);
		_Merge_002.addOutputs([_SendEvent_003]);
		_SendEvent_003.addInput(_Merge_002, 0);
		_SendEvent_003.addInput(new armory.logicnode.StringNode(this, "turn_right"), 0);
		_SendEvent_003.addInput(new armory.logicnode.ObjectNode(this, ""), 0);
		_SendEvent_003.addOutputs([new armory.logicnode.NullNode(this)]);
		var _SendEvent = new armory.logicnode.SendEventNode(this);
		var _Merge = new armory.logicnode.MergeNode(this);
		var _OnKeyboard = new armory.logicnode.OnKeyboardNode(this);
		_OnKeyboard.property0 = "Down";
		_OnKeyboard.property1 = "left";
		_OnKeyboard.addOutputs([_Merge]);
		_Merge.addInput(_OnKeyboard, 0);
		var _OnGamepad = new armory.logicnode.OnGamepadNode(this);
		_OnGamepad.property0 = "Down";
		_OnGamepad.property1 = "left";
		_OnGamepad.addInput(new armory.logicnode.IntegerNode(this, 0), 0);
		_OnGamepad.addOutputs([_Merge]);
		_Merge.addInput(_OnGamepad, 0);
		_Merge.addOutputs([_SendEvent]);
		_SendEvent.addInput(_Merge, 0);
		_SendEvent.addInput(new armory.logicnode.StringNode(this, "turn_left"), 0);
		_SendEvent.addInput(new armory.logicnode.ObjectNode(this, ""), 0);
		_SendEvent.addOutputs([new armory.logicnode.NullNode(this)]);
		var _SendEvent_002 = new armory.logicnode.SendEventNode(this);
		var _Merge_003 = new armory.logicnode.MergeNode(this);
		var _OnKeyboard_003 = new armory.logicnode.OnKeyboardNode(this);
		_OnKeyboard_003.property0 = "Down";
		_OnKeyboard_003.property1 = "down";
		_OnKeyboard_003.addOutputs([_Merge_003]);
		_Merge_003.addInput(_OnKeyboard_003, 0);
		var _OnGamepad_003 = new armory.logicnode.OnGamepadNode(this);
		_OnGamepad_003.property0 = "Down";
		_OnGamepad_003.property1 = "down";
		_OnGamepad_003.addInput(new armory.logicnode.IntegerNode(this, 0), 0);
		_OnGamepad_003.addOutputs([_Merge_003]);
		_Merge_003.addInput(_OnGamepad_003, 0);
		_Merge_003.addOutputs([_SendEvent_002]);
		_SendEvent_002.addInput(_Merge_003, 0);
		_SendEvent_002.addInput(new armory.logicnode.StringNode(this, "backward"), 0);
		_SendEvent_002.addInput(new armory.logicnode.ObjectNode(this, ""), 0);
		_SendEvent_002.addOutputs([new armory.logicnode.NullNode(this)]);
		var _SendEvent_001 = new armory.logicnode.SendEventNode(this);
		var _Merge_001 = new armory.logicnode.MergeNode(this);
		var _OnKeyboard_001 = new armory.logicnode.OnKeyboardNode(this);
		_OnKeyboard_001.property0 = "Down";
		_OnKeyboard_001.property1 = "up";
		_OnKeyboard_001.addOutputs([_Merge_001]);
		_Merge_001.addInput(_OnKeyboard_001, 0);
		var _OnGamepad_001 = new armory.logicnode.OnGamepadNode(this);
		_OnGamepad_001.property0 = "Down";
		_OnGamepad_001.property1 = "up";
		_OnGamepad_001.addInput(new armory.logicnode.IntegerNode(this, 0), 0);
		_OnGamepad_001.addOutputs([_Merge_001]);
		_Merge_001.addInput(_OnGamepad_001, 0);
		_Merge_001.addOutputs([_SendEvent_001]);
		_SendEvent_001.addInput(_Merge_001, 0);
		_SendEvent_001.addInput(new armory.logicnode.StringNode(this, "forward"), 0);
		_SendEvent_001.addInput(new armory.logicnode.ObjectNode(this, ""), 0);
		_SendEvent_001.addOutputs([new armory.logicnode.NullNode(this)]);
		var _SendEvent_004 = new armory.logicnode.SendEventNode(this);
		var _Merge_004 = new armory.logicnode.MergeNode(this);
		var _OnKeyboard_004 = new armory.logicnode.OnKeyboardNode(this);
		_OnKeyboard_004.property0 = "Down";
		_OnKeyboard_004.property1 = "e";
		_OnKeyboard_004.addOutputs([_Merge_004]);
		_Merge_004.addInput(_OnKeyboard_004, 0);
		var _OnGamepad_004 = new armory.logicnode.OnGamepadNode(this);
		_OnGamepad_004.property0 = "Started";
		_OnGamepad_004.property1 = "cross";
		_OnGamepad_004.addInput(new armory.logicnode.IntegerNode(this, 0), 0);
		_OnGamepad_004.addOutputs([_Merge_004]);
		_Merge_004.addInput(_OnGamepad_004, 0);
		_Merge_004.addOutputs([_SendEvent_004]);
		_SendEvent_004.addInput(_Merge_004, 0);
		_SendEvent_004.addInput(new armory.logicnode.StringNode(this, "shoot"), 0);
		_SendEvent_004.addInput(new armory.logicnode.ObjectNode(this, ""), 0);
		_SendEvent_004.addOutputs([new armory.logicnode.NullNode(this)]);
	}
}