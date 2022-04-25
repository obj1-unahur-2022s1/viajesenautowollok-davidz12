import remiseras.*
import clientes.*



object oficina {
	var primerRemisera
	var segundaRemisera
	
	method asignarRemiseras(remisera1, remisera2) {
		primerRemisera = remisera1
		segundaRemisera = remisera2
	}
	
	method cambiarPrimerRemiseraPor(unaRemisera) {
		primerRemisera = unaRemisera
	}
	
	method cambiarSegundaRemiseraPor(unaRemisera) {
		segundaRemisera = unaRemisera
	}
	
	method intercambiarRemiseras() {
		primerRemisera = segundaRemisera
		segundaRemisera = primerRemisera
	}
	
	method remiseraElegidaParaViaje(cliente,kms) {
		if (segundaRemisera.precioViaje(cliente, kms,segundaRemisera) < (primerRemisera.precioViaje(cliente,kms,primerRemisera))-30) {
			return segundaRemisera
		}else {
			return primerRemisera
		}
	}
	
}
