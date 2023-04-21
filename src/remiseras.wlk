import cliente.*

object roxana{
	
	method precioViaje(cliente,distancia) { return cliente.precioViaje() * distancia}
}

object gabriela{
	
	method precioViaje(cliente,distancia) { return (cliente.precioViaje()+(cliente.precioViaje() *0.20))* distancia}
}

object mariela{
	
	method precioViaje(cliente,distancia)  {return cliente.precioViaje() * distancia + 50}
}

object juana{
	
	method precioViaje(cliente,distancia) {
		var	costoDeViaje = 200
		if (distancia<= 8)
		  	costoDeViaje = 100
		return costoDeViaje
	}
}

object lucia{
	
	method precioViaje(remisera,cliente,distancia ){ 
		
		return remisera.precioViaje(cliente,distancia)
	}
}

