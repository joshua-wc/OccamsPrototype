function endBanditDeath(){
	
if (image_index + image_speed >= image_number) {
		instance_destroy(self)
	}
}

function endBanditAttack(){
	
if (image_index + image_speed >= image_number) {
		instance_destroy(self.attack)
		state = enemyStateIdle
	}
}

function endBanditPatrollerAttack(){
	
if (image_index + image_speed >= image_number) {
		instance_destroy(self.attack)
		state = enemyPatrollerStateChasing
	}
}

function endBanditTurretAttack(){
	
if (image_index + image_speed >= image_number) {
		
		state = turretStateIdle
	}
}

function endPlayerDeath(){
	
if (image_index + image_speed >= image_number) {
		game_end()
	}
}

function endPlayerAttack(){
	
if (image_index + image_speed >= image_number) {
		canAttack = true
		instance_destroy(self.attack)
		state = playerStateIdle
		staminaRecovering = true
	}
}

function endPlayerSlide(){
	
if (image_index + image_speed >= image_number) {
		staminaRecovering = true
		state = playerStateIdle
	}
}

function endPlayerThrow(){
	
if (image_index + image_speed >= image_number) {
		canThrow = true
		state = playerStateIdle
	}
}

function endPlayerDefault(){
	
if (image_index + image_speed >= image_number) {		
		state = playerStateIdle
	}
}

