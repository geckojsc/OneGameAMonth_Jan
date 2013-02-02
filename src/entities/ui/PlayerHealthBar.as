package entities.ui {
	import entities.Player;
	import net.flashpunk.Entity;
	import net.flashpunk.graphics.Image;
	import net.flashpunk.graphics.TiledSpritemap;
	
	public class PlayerHealthBar extends Entity {
		
		[Embed(source="../../assets/heart.png")]
		private static const IMG_HEART:Class;
		
		private var
			hearts:/*Image*/Array = [],
			player:Player;
			
		public function PlayerHealthBar(x:Number, y:Number, player:Player) {
			super(x, y);
			this.player = player;
			layer = Layers.GUI;
			for (var i:int=0; i<5; i++) {
				var heart:Image = new Image(IMG_HEART);
				heart.x = i*heart.width;
				heart.scrollX = heart.scrollY = 0;
				hearts.push(heart);
				addGraphic(heart);
			}
		}
		
		override public function update():void {
			var visibleHearts:Number = Math.round(5 * player.health/player.maxHealth);
			for (var i:int=0; i<5; i++) {
				hearts[i].visible = i < visibleHearts;
			}
		}
		
	}

}