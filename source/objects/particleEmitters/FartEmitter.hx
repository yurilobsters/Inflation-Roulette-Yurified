package objects.particleEmitters;

import objects.particles.Puff;
import states.PlayState;

class FartEmitter extends FlxObject {
	public function new(x, y, floorY:Float = 690) {
		super(x, y);

		for (i in 0...FlxG.random.int(16, 20)) {
			var puff = new Puff(x, y, floorY);

			var newScale = FlxG.random.float(0.5, 1);
			puff.scale.set(newScale, newScale);

			var direction = FlxG.random.float(-180, 180);
			var force = FlxG.random.float(670, 1000);
			puff.velocity.x = Math.cos(direction * Constants.TO_RADIANS) * force;
			puff.velocity.y = Math.sin(direction * Constants.TO_RADIANS) * force;

			FlxG.state.members.insert(FlxG.state.members.indexOf(PlayState.instance.characterGroup) - 1, puff);
		}
		this.destroy();
	}

	override function update(elapsed:Float) {
		super.update(elapsed);
	}
}
