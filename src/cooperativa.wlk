/*
 * Cooperativa: Bien- (no estaba bien implementado el método para intercambiar)
 */
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
		//No era correcto, ya que la forma en que habías implementado
		//al reemplazar las variables se pierde el valor de primerRemisera.
		//Te dejo la forma correcta que consiste en reutilizar el método
		//asignarRemiseras(remisera1,remisera2)
		self.asignarRemiseras(segundaRemisera,primerRemisera)

	}
	
	method remiseraElegidaParaViaje(cliente,kms) =
		//No era necesario el parametro remisera.
		//También se podría haber implementado un método auxiliar para
		//que no quede tan larga la expresión, te dejo la sugerencia:
		if (self.difPrecio(cliente,kms) > 30) segundaRemisera else primerRemisera
	
	method difPrecio(cliente,kms) = 
		primerRemisera.precioViaje(cliente,kms) - segundaRemisera.precioViaje(cliente,kms)
	
}
