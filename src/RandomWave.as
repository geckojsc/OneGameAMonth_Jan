package {

	public class RandomWave extends Wave {
		
		public function RandomWave(difficulty:int) {
			super({
				name: "wave " + String(difficulty),
				canSkip: false,
				difficulty: difficulty,
				spawns: [{type:"zombie", amount:5+2*difficulty},
						{type:"parachuter", amount:5+2*difficulty},
						{type:"ninja", amount:int(difficulty / 3)},
						{Type:"rat", amount:5+2*difficulty}]
			});
		}	
	}
}