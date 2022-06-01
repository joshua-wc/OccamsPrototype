// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function checkAnimEnd(anim, imageIndex, imageSpeed, imageNumber, instance){
if (imageIndex + imageSpeed >= imageNumber) {
	switch (anim) {
					case sPlayerDeath: game_end() break
					case sBanditAttack: {
						instance_destroy(self.attack)
						banditState = enemyStateIdle
					} break
					case sBanditDeath: {
						instance_destroy(instance)	
					} break
					case sPlayerAttack: {
						canAttack = true
						instance_destroy(self.attack)
						playerState = playerStateIdle
						staminaRecovering = true
					} break
					case sPlayerSlide: {
						staminaRecovering = true
						playerState = playerStateIdle
					} break
					default: playerState = playerStateIdle
	
				}
		}
}