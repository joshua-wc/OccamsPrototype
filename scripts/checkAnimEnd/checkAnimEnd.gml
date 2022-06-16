// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function checkAnimEnd(anim, imageIndex, imageSpeed, imageNumber){
if (imageIndex + imageSpeed >= imageNumber) {
	switch (anim) {
					case sPlayerDeath: game_end() 
					break
					case sBanditAttack: {
						
						var name = object_get_name(object_index)
						switch (name) {
							case "oBandit": {
								instance_destroy(self.attack)
								state = enemyStateIdle
							}
							break
							case "oBanditPatroller": {
								instance_destroy(self.attack)
								state = enemyPatrollerStateChasing
							}
							break
							case "oBanditTurret": {
								state = turretStateIdle
							}

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