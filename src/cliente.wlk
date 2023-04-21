object ludmila {
	
	method precioViaje() { return 18}
	
	
}

object anaMaria {
		var property economicamenteEstable = true
	method precioViaje()  { 
		if (economicamenteEstable) 
			return 30
		else
			return 25
	}
	
	
}

object teresa {
	var property precio = 22
	method precioViaje() { return precio} 
	
	
}


object melina{
	
	var property clienta 
	
	method precioViaje(){
		
	return clienta.precioViaje() - 3
	}
}