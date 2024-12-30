timer--

if instance_exists(self) 
	with oParticleSys {
		partState = "Sandstorm"
}

if timer <= 0{
	with oParticleSys {
		partState = "Default"
	}
	instance_destroy(self)
}
