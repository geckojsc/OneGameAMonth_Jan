package entities {
	import net.flashpunk.Entity;

	public class LivingEntity extends Entity {
		
		public function LivingEntity(x:Number = 0, y:Number = 0) {
			super(x, y);
		}
		
		public function jump():void { }
		
		public function moveRight() { }
		
		public function moveLeft() { }
	}
}