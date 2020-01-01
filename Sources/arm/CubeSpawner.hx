package arm;

import iron.object.Object;
import iron.system.Input;
import iron.Scene;
import armory.trait.physics.RigidBody;

class CubeSpawner extends iron.Trait {
	public function new() {
		super();

		notifyOnUpdate(updateListenInput);

		// notifyOnInit(function() {
		// });

		// notifyOnUpdate(function() {
		// });

		// notifyOnRemove(function() {
		// });
	}

	function updateListenInput() {
		if (Input.getKeyboard().started("f")) {
			Scene.active.spawnObject("SpawnCube", null, boxSpawned);
		}
	}

	function boxSpawned(o:Object) {
		// object is the object that this trait (script) is on
		var traitOwner = object;

		// o is the object is to spawn
		o.transform.loc.setFrom(traitOwner.transform.loc);

		// Box object has a rigid body trait
		// Notify physics system to take the new location into effect.
		o.getTrait(RigidBody).syncTransform();
	}
}
