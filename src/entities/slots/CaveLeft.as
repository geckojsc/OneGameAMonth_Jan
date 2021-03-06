package entities.slots {
	
	import entities.Player;
	import net.flashpunk.graphics.Image;
	import net.flashpunk.masks.Hitbox;
	import net.flashpunk.masks.Masklist;
	
	public class CaveLeft extends Slot {
		
		private var masks:Masklist = new Masklist();
		
		public function get spawnX():Number {
			return x + 176;
		}
		public function get spawnY():Number {
			return y - 8;
		}
		
		public function CaveLeft(x:Number=0, y:Number=0) {
			super(x, y);
			graphic = new Image(Sprites.CAVE_L);
			graphic.y -= 400;
			graphic.x -= 400;
			
			masks.add(new Hitbox(400, 200, 0, 0));
			masks.add(new Hitbox(200, 200, 0, -220));
			masks.add(new Hitbox(200, 400, -30, -220));
			mask = masks;
			
			type = "ground";
			name = "cave_l";
			layer = Layers.SLOT;
		}
		
		override public function added():void {
			world.addGraphic(new Image(Sprites.CAVE_L_OVERLAY), Layers.FOREGROUND, x, y-400);
		}
		
		override public function update():void {
			var player:Player = world.getInstance("player");
			if (player && player.centerX < x+180) {
				var caveRight:CaveRight = world.getInstance("cave_r");
				player.x = caveRight.spawnX;
			}
		}
		
	}

}