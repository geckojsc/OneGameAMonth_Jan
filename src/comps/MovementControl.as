package comps {
	import entities.LivingEntity;
	import net.flashpunk.Component;
	import net.flashpunk.utils.Input;
	import net.flashpunk.utils.Key;
	
	/**
	 * Simple movement control component, with jumps and moving to right and left.
	 */
	public class MovementControl extends Component{
		
		private var livingEntity:LivingEntity;
		
		public function MovementControl() { }
		
		override public function added():void {
			if (entity is LivingEntity) livingEntity = entity as LivingEntity;
		}
		
		override public function update():void {
			
			if (Input.released(Key.LEFT) || Input.released(Key.RIGHT)) {
				livingEntity.idle();
			}
			
			if (!(entity.flags & Flags.ATTACKING)) {
				if (!(entity.flags & Flags.RUNNING)) {
					if (Input.check(Key.LEFT)) livingEntity.runLeft();
					if (Input.check(Key.RIGHT)) livingEntity.runRight();
				}
				if (Input.pressed(Key.C)) {
					if (entity.getComponent("sword")) {
						livingEntity.idle();
						livingEntity.strike();
					}
				}
			}
			
			if (Input.pressed(Key.Z) && livingEntity.isOnFloor) {
				livingEntity.jump();
			}
		}
	}
}