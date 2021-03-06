package entities {
	import net.flashpunk.Entity;
	import net.flashpunk.FP;
	import net.flashpunk.graphics.Image;
	import net.flashpunk.graphics.Spritemap;
	import net.flashpunk.graphics.Text;
	import states.PlayWorld;
	
	/**
	 * ...
	 * @author Allyally
	 */
	public class GUI extends Entity {
		
		private var p_world:PlayWorld;
		
		private var currencyTxt:Text;
		private var currencyShade:Text;
		private var currencyImg:Spritemap;
		
		public function GUI() {
			currencyTxt = new Text("Money: ", 20, 0);
			currencyTxt.scrollX = 0;
			currencyTxt.scrollY = 0;
			currencyShade = new Text("Money: ", 21, 1, { color:0 } );
			currencyShade.scrollX = 0;
			currencyShade.scrollY = 0;
			currencyImg = new Spritemap(Sprites.COIN_SPIN, 12, 12);
			currencyImg.add("spin", FP.frames(1, 6), 10);
			currencyImg.play("spin");
			currencyImg.scrollX = 0;
			currencyImg.scrollY = 0;
			currencyImg.x = 3;
			currencyImg.y = 3;
			
			addGraphic(currencyShade);
			addGraphic(currencyTxt);
			addGraphic(currencyImg);
			
			layer = Layers.GUI;
		}
		
		override public function added():void 
		{
			super.added();
			p_world = world as PlayWorld;
		}
		
		override public function update():void 
		{
			super.update();
			currencyTxt.text = String(p_world.money);
			currencyShade.text = currencyTxt.text;
		}
	}

}