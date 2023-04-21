import cliente.*
import remiseras.*

object oficina {
	var  remiseraOpcion1
	var  remiseraOpcion2
	
	method asignarRemiseras(remisera1, remisera2){
		remiseraOpcion1=remisera1
		remiseraOpcion2=remisera2
	}
	
	method cambiarPrimerRemiserarPor(remisera){
		remiseraOpcion1=remisera
	}
	
	method cambiarSegundoRemiseraPor(remisera){
		remiseraOpcion2=remisera
	}
	 
	method intercambiarRemiseras(){
	  var	remiseratemporal= remiseraOpcion1 
	  remiseraOpcion2 = remiseraOpcion1
	  remiseraOpcion1= remiseratemporal
	}
	
	method diferenciaDeViajes(cliente,kms){
		return remiseraOpcion1.precioViaje(cliente,kms) - remiseraOpcion2.precioViaje(cliente,kms)
	}
	
	method remisera2EsMasCaro(cliente,kms){
		return remiseraOpcion1.precioViaje(cliente,kms) < remiseraOpcion2.precioViaje(cliente,kms)
	}
	method remiseraElegidaParaViaje(cliente, kms){
		var remiseraElegida = remiseraOpcion2
		if (self.diferenciaDeViajes(cliente,kms)>=30 and self.remisera2EsMasCaro(cliente,kms) )
			remiseraElegida=  remiseraOpcion1
			
		return remiseraElegida
		}


}