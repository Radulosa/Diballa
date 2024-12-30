timer--

if instance_exists(self) 
with oParticleSys {
	partState = "Rain"
}

if timer <= 0
with oParticleSys {
	partState = "Default"
	instance_destroy(other)
}


