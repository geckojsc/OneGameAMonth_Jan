package comps.items {
	import fp.MultiSpritemap;
	import net.flashpunk.Component;
	import net.flashpunk.graphics.Spritemap;

	public class Crown extends Component {
		
		[Embed(source = "../../assets/crown_sheet.png")]
		private static const IMG_CROWN:Class;
		
		private var
			anim:Spritemap = new Spritemap(IMG_CROWN, 20,20);
		
		public function Crown() {
			anim.y = -7;
			anim.add("idle_l", [0], 30, false);
			anim.add("idle_r", [4], 30, false);
			anim.add("run_l", [0,1,2,3], 15, true);
			anim.add("run_r", [4,5,6,7], 15, true);
			anim.add("jump_l", [1], 30, false);
			anim.add("jump_r", [5], 30, false);
			anim.add("strike_l", [8,9,10,11], 15, false);
			anim.add("strike_r", [12, 13, 14, 15], 15, false);
		}
		
		override public function added():void {
			if (entity.graphic is MultiSpritemap) {
				var sprites:MultiSpritemap = entity.graphic as MultiSpritemap;
				sprites.addFg(anim);
			}
			trace("ok then.....");
		}
		
		override public function removed():void {
			if (entity.graphic is MultiSpritemap) {
				var sprites:MultiSpritemap = entity.graphic as MultiSpritemap;
				sprites.remove(anim);
			}
		}
	}
}