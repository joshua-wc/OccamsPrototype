// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function checkAnimEnd(anim, imageIndex, imageSpeed, imageNumber){
if (imageIndex + imageSpeed >= imageNumber) {
	switch (anim) {
					case sPlayerDeath: game_end() 
					break
					case sBanditAttack: {
						instance_destroy(self.attack)
						var name = object_get_name(object_index)
						switch (name) {
							case "oBandit": state = enemyStateIdle
							break
							case "oBanditPatroller": state = enemyPatrollerStateChasing

						}
					} 
					break
					case sBanditDeath: {
						instance_destroy(self)	
					} 
					break
					case sPlayerAttack: {
						canAttack = true
						instance_destroy(self.attack)
						playerState = playerStateIdle
						staminaRecovering = true
					} 
					break
					case sPlayerSlide: {
						staminaRecovering = true
						playerState = playerStateIdle
					} 
					break
					default: playerState = playerStateIdle
	
				}
		}
}