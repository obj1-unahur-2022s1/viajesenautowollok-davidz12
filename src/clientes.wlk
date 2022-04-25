object ludmila {
	method precioKm() {
		return 18
	}
	

}

object anaMaria {
	var estaEstable = true
	
	method estaEstable() {
		return estaEstable
	}
	
	method setNoEstaEstable() {
		estaEstable = false
	}
	
	
	method precioKm() {
		if (estaEstable) {
			return 30
		}else{
			return 25
		}
	}
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
