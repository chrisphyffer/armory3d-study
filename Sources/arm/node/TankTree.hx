package arm.node;

@:keep class TankTree extends armory.logicnode.LogicTree {

	var functionNodes:Map<String, armory.logicnode.FunctionNode>;

	var functionOutputNodes:Map<String, armory.logicnode.FunctionOutputNode>;

	public function new() {
		super();
		this.functionNodes = new Map();
		this.functionOutputNodes = new Map();
		notifyOnAdd(add);
	}

	override public function add() {
		var _TranslateObject = new armory.logicnode.TranslateObjectNode(this);
		var _OnEvent_001 = new armory.logicnode.OnEventNode(this);
		_OnEvent_001.property0 = "forward";
		_OnEvent_001.addOutputs([_TranslateObject]);
		_TranslateObject.addInput(_OnEvent_001, 0);
		_TranslateObject.addInput(new armory.logicnode.ObjectNode(this, ""), 0);
		var _VectorMath = new armory.logicnode.VectorMathNode(this);
		_VectorMath.property0 = "Multiply";
		var _VectorFromTransform = new armory.logicnode.VectorFromTransformNode(this);
		_VectorFromTransform.property0 = "Look";
		var _GetTransform = new armory.logicnode.GetTransformNode(this);
		_GetTransform.addInput(new armory.logicnode.ObjectNode(this, ""), 0);
		_GetTransform.addOutputs([_VectorFromTransform]);
		_VectorFromTransform.addInput(_GetTransform, 0);
		_VectorFromTransform.addOutputs([_VectorMath]);
		_VectorMath.addInput(_VectorFromTransform, 0);
		_VectorMath.addInput(new armory.logicnode.VectorNode(this, 0.05000000074505806, 0.05000000074505806, 0.05000000074505806), 0);
		_VectorMath.addOutputs([_TranslateObject]);
		_VectorMath.addOutputs([new armory.logicnode.FloatNode(this, 0.0)]);
		_TranslateObject.addInput(_VectorMath, 0);
		_TranslateObject.addInput(new armory.logicnode.BooleanNode(this, false), 0);
		_TranslateObject.addOutputs([new armory.logicnode.NullNode(this)]);
		var _RotateObject = new armory.logicnode.RotateObjectNode(this);
		var _OnEvent = new armory.logicnode.OnEventNode(this);
		_OnEvent.property0 = "turn_left";
		_OnEvent.addOutputs([_RotateObject]);
		_RotateObject.addInput(_OnEvent, 0);
		_RotateObject.addInput(new armory.logicnode.ObjectNode(this, ""), 0);
		var _Vector = new armory.logicnode.VectorNode(this);
		_Vector.addInput(new armory.logicnode.FloatNode(this, 0.0), 0);
		_Vector.addInput(new armory.logicnode.FloatNode(this, 0.0), 0);
		_Vector.addInput(new armory.logicnode.FloatNode(this, 0.029999999329447746), 0);
		_Vector.addOutputs([_RotateObject]);
		_RotateObject.addInput(_Vector, 0);
		_RotateObject.addOutputs([new armory.logicnode.NullNode(this)]);
		var _RotateObject_001 = new armory.logicnode.RotateObjectNode(this);
		var _OnEvent_003 = new armory.logicnode.OnEventNode(this);
		_OnEvent_003.property0 = "turn_right";
		_OnEvent_003.addOutputs([_RotateObject_001]);
		_RotateObject_001.addInput(_OnEvent_003, 0);
		_RotateObject_001.addInput(new armory.logicnode.ObjectNode(this, ""), 0);
		var _Vector_001 = new armory.logicnode.VectorNode(this);
		_Vector_001.addInput(new armory.logicnode.FloatNode(this, 0.0), 0);
		_Vector_001.addInput(new armory.logicnode.FloatNode(this, 0.0), 0);
		_Vector_001.addInput(new armory.logicnode.FloatNode(this, -0.029999999329447746), 0);
		_Vector_001.addOutputs([_RotateObject_001]);
		_RotateObject_001.addInput(_Vector_001, 0);
		_RotateObject_001.addOutputs([new armory.logicnode.NullNode(this)]);
		var _TranslateObject_001 = new armory.logicnode.TranslateObjectNode(this);
		var _OnEvent_002 = new armory.logicnode.OnEventNode(this);
		_OnEvent_002.property0 = "backward";
		_OnEvent_002.addOutputs([_TranslateObject_001]);
		_TranslateObject_001.addInput(_OnEvent_002, 0);
		_TranslateObject_001.addInput(new armory.logicnode.ObjectNode(this, ""), 0);
		var _VectorMath_001 = new armory.logicnode.VectorMathNode(this);
		_VectorMath_001.property0 = "Multiply";
		var _VectorFromTransform_001 = new armory.logicnode.VectorFromTransformNode(this);
		_VectorFromTransform_001.property0 = "Look";
		var _GetTransform_001 = new armory.logicnode.GetTransformNode(this);
		_GetTransform_001.addInput(new armory.logicnode.ObjectNode(this, ""), 0);
		_GetTransform_001.addOutputs([_VectorFromTransform_001]);
		_VectorFromTransform_001.addInput(_GetTransform_001, 0);
		_VectorFromTransform_001.addOutputs([_VectorMath_001]);
		_VectorMath_001.addInput(_VectorFromTransform_001, 0);
		_VectorMath_001.addInput(new armory.logicnode.VectorNode(this, -0.05000000074505806, -0.05000000074505806, -0.05000000074505806), 0);
		_VectorMath_001.addOutputs([_TranslateObject_001]);
		_VectorMath_001.addOutputs([new armory.logicnode.FloatNode(this, 0.0)]);
		_TranslateObject_001.addInput(_VectorMath_001, 0);
		_TranslateObject_001.addInput(new armory.logicnode.BooleanNode(this, false), 0);
		_TranslateObject_001.addOutputs([new armory.logicnode.NullNode(this)]);
		var _SetLocation = new armory.logicnode.SetLocationNode(this);
		var _SpawnObject = new armory.logicnode.SpawnObjectNode(this);
		var _OnEvent_004 = new armory.logicnode.OnEventNode(this);
		_OnEvent_004.property0 = "shoot";
		_OnEvent_004.addOutputs([_SpawnObject]);
		_SpawnObject.addInput(_OnEvent_004, 0);
		_SpawnObject.addInput(new armory.logicnode.ObjectNode(this, "Tank_Bullet"), 0);
		_SpawnObject.addInput(new armory.logicnode.NullNode(this), 0);
		_SpawnObject.addInput(new armory.logicnode.BooleanNode(this, true), 0);
		_SpawnObject.addOutputs([_SetLocation]);
		_SpawnObject.addOutputs([_SetLocation]);
		_SetLocation.addInput(_SpawnObject, 0);
		_SetLocation.addInput(_SpawnObject, 1);
		var _GetLocation = new armory.logicnode.GetLocationNode(this);
		_GetLocation.addInput(new armory.logicnode.ObjectNode(this, "Tank_Bullet_Spawner"), 0);
		_GetLocation.addOutputs([_SetLocation]);
		_SetLocation.addInput(_GetLocation, 0);
		_SetLocation.addOutputs([new armory.logicnode.NullNode(this)]);
	}
}