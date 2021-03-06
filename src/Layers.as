package {
	public class Layers {
		
		private static var n:int = 0;
		
		public static const
			SCREEN_PROCESSING :int = n++,
			GUI               :int = n++,
			SLOT_GUI          :int = n++,
			OVERLAY           :int = n++,
			FOREGROUND        :int = n++,
			PROJECTILES       :int = n++,
			PLAYER            :int = n++,
			LIVING_ENTITIES   :int = n++,
			ROOF              :int = n++,
			BEHIND_ROOF       :int = n++,
			SLOT              :int = n++,
			BACKGROUND        :int = n++;
		
	}
}