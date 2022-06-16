function endBanditDeath(imageIndex, imageSpeed, imageNumber){
	
if (imageIndex + imageSpeed >= imageNumber) {
		instance_destroy(self)
	}
}

function endBanditAttack(imageIndex, imageSpeed, imageNumber){
	
if (imageIndex + imageSpeed >= imageNumber) {
		instance_destroy(self.attack)
		state = enemyStateIdle
	}
}

function endBanditPatrollerAttack(imageIndex, imageSpeed, imageNumber){
	
if (imageIndex + imageSpeed >= imageNumber) {
		instance_destroy(self.attack)
		state = enemyPatrollerStateChasing
	}
}

function endBanditTurretAttack(imageIndex, imageSpeed, imageNumber){
	
if (imageIndex + imageSpeed >= imageNumber) {
		
		state = turretStateIdle
	}
}

function endPlayerDeath(imageIndex, imageSpeed, imageNumber){
	
if (imageIndex + imageSpeed >= imageNumber) {
		game_end()
	}
}

function endPlayerAttack(imageIndex, imageSpeed, imageNumber){
	
if (imageIndex + imageSpeed >= imageNumber) {
		canAttack = true
		instance_destroy(self.attack)
		playerState = playerStateIdle
		staminaRecovering = true
	}
}

function endPlayerSlide(imageIndex, imageSpeed, imageNumber){
	
if (imageIndex + imageSpeed >= imageNumber) {
		staminaRecovering = true
		playerState = playerStateIdle
	}
}

function endPlayerDefault(imageIndex, imageSpeed, imageNumber){
	
if (imageIndex + imageSpeed >= imageNumber) {
		
		playerState = playerStateIdle
	}
}

