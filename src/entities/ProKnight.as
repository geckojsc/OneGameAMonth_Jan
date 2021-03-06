package entities {
	import comps.items.Helmet;
	import entities.slots.Tower;
	
	public class ProKnight extends Knight {
		
		public function ProKnight(x:Number=0, y:Number=0, tower:Tower=null) {
			super(x, y, tower);
			health = maxHealth = 40;
			accuracy = 1;
			addComponent("helmet", new Helmet());
		}
		
		override public function die():void {
			super.die();
			removeComponent("helmet");
		}
	}
}