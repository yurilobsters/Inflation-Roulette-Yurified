package objects.particleEmitters;

import objects.particles.Puff;
import states.PlayState;

class FartEmitter extends FlxObject {
	public function new(x, y, directMin, directMax, intensity:Float = 1.0, floorY:Float = 690) {
		super(x, y);

		for (i in 0...FlxG.random.int(16, 20)) {
			var puff = new Puff(x, y, floorY);

			var newScale = FlxG.random.float(0.5, Math.min(0.5, intensity) + 0.4);
			puff.scale.set(newScale, newScale);

			var direction = FlxG.random.float(directMin, directMax);

			var base = 700 + intensity * 250;
			var force = FlxG.random.float(650, base);

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
