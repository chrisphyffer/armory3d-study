package arm.node;

@:keep class MoveCylinder extends armory.logicnode.LogicTree {

	var functionNodes:Map<String, armory.logicnode.FunctionNode>;

	var functionOutputNodes:Map<String, armory.logicnode.FunctionOutputNode>;

	public function new() {
		super();
		this.functionNodes = new Map();
		this.functionOutputNodes = new Map();
		notifyOnAdd(add);
	}

	override public function add() {
		var _SetLocation = new armory.logicnode.SetLocationNode(this);
		var _OnUpdate = new armory.logicnode.OnUpdateNode(this);
		_OnUpdate.property0 = "Update";
		_OnUpdate.addOutputs([_SetLocation]);
		_SetLocation.addInput(_OnUpdate, 0);
		_SetLocation.addInput(new armory.logicnode.ObjectNode(this, ""), 0);
		var _Vector = new armory.logicnode.VectorNode(this);
		var _Math_001 = new armory.logicnode.MathNode(this);
		_Math_001.property0 = "Multiply";
		_Math_001.property1 = "false";
		var _Math = new armory.logicnode.MathNode(this);
		_Math.property0 = "Sine";
		_Math.property1 = "false";
		var _Time = new armory.logicnode.TimeNode(this);
		_Time.addOutputs([_Math]);
		_Time.addOutputs([new armory.logicnode.FloatNode(this, 0.0)]);
		_Math.addInput(_Time, 0);
		_Math.addInput(new armory.logicnode.FloatNode(this, 0.5), 0);
		_Math.addOutputs([_Math_001]);
		_Math_001.addInput(_Math, 0);
		_Math_001.addInput(new armory.logicnode.FloatNode(this, 4.0), 0);
		_Math_001.addOutputs([_Vector]);
		_Vector.addInput(_Math_001, 0);
		var _SeparateXYZ = new armory.logicnode.SeparateVectorNode(this);
		var _GetLocation = new armory.logicnode.GetLocationNode(this);
		_GetLocation.addInput(new armory.logicnode.ObjectNode(this, ""), 0);
		_GetLocation.addOutputs([_SeparateXYZ]);
		_SeparateXYZ.addInput(_GetLocation, 0);
		_SeparateXYZ.addOutputs([new armory.logicnode.FloatNode(this, 0.0)]);
		_SeparateXYZ.addOutputs([_Vector]);
		_SeparateXYZ.addOutputs([_Vector]);
		_Vector.addInput(_SeparateXYZ, 1);
		_Vector.addInput(_SeparateXYZ, 2);
		_Vector.addOutputs([_SetLocation]);
		_SetLocation.addInput(_Vector, 0);
		_SetLocation.addOutputs([new armory.logicnode.NullNode(this)]);
	}
}