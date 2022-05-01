/*
 * Clientes: Bien- (en objeto anaMaria no había forma de cambiar estabilidad)
 */

object ludmila {
	// Esta es otra forma resumida para escribir este método
	method precioKm() = 18
}

object anaMaria {
	var estaEstable = true
	
	method estaEstable() = estaEstable // idem anterior
	
	method cambiarEstabilidad() {
		// la forma que habías implementado solo permitiría cambiar a
		// estaEstable = false, y nunca podría volver a estaEstable = true
		// Una buena forma de implementar esto es con un método así como te
		// dejo acá.
		estaEstable = not estaEstable
	}
	
	
	method precioKm() = if (estaEstable) {30} else {25} // se puede resumir así
	
}

object teresa {
	var precioKm = 22
	
	method precioKm() {
		return precioKm
	}
	
	method cambiarPrecioKm(unPrecio) {
		precioKm = unPrecio
	}
}



object melina {
	var trabajaPara
	
	method precioKm(){
		return trabajaPara.precioKm() - 3
	}
	
	method trabajarPara(cliente) {
		trabajaPara = cliente
	}
	
	method trabajaPara() {
		return trabajaPara
	}
}
