package arm.node;

@:keep class NodeTree extends armory.logicnode.LogicTree {

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
		_SetLocation.addInput(new armory.logicnode.ObjectNode(this, "Cylinder"), 0);
		var _Vector = new armory.logicnode.VectorNode(this);
		_Vector.addInput(new armory.logicnode.FloatNode(this, 0.0), 0);
		var _Math = new armory.logicnode.MathNode(this);
		_Math.property0 = "Sine";
		_Math.property1 = "false";
		var _Time = new armory.logicnode.TimeNode(this);
		_Time.addOutputs([_Math]);
		_Time.addOutputs([_Math]);
		_Math.addInput(_Time, 0);
		_Math.addInput(_Time, 1);
		_Math.addOutputs([_Vector]);
		_Vector.addInput(_Math, 0);
		_Vector.addInput(new armory.logicnode.FloatNode(this, 0.0), 0);
		_Vector.addOutputs([_SetLocation]);
		_SetLocation.addInput(_Vector, 0);
		_SetLocation.addOutputs([new armory.logicnode.NullNode(this)]);
	}
}