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
		state = playerStateIdle
		staminaRecovering = true
	}
}

function endPlayerSlide(imageIndex, imageSpeed, imageNumber){
	
if (imageIndex + imageSpeed >= imageNumber) {
		staminaRecovering = true
		state = playerStateIdle
	}
}

function endPlayerDefault(imageIndex, imageSpeed, imageNumber){
	
if (imageIndex + imageSpeed >= imageNumber) {
		
		state = playerStateIdle
	}
}

