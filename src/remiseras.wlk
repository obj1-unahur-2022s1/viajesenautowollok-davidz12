import clientes.*


object roxana {
	
	method precioViaje(cliente,km,remisera){
		return cliente.precioKm() * km
	}
}

object gabriela {
	
	method precioViaje(cliente,km,remisera){
		return cliente.precioKm() * 1.2 * km
	}
}


object mariela {
	
	method precioViaje(cliente,km,remisera) {
		return 50.max(cliente.precioKm() * km)
	}
}


object juana {
	
	method precioViaje(cliente,km,remisera) {
		if (km <= 8) {
			return 100
		}else {
			return 200
		}
	}
}


object lucia {
	var reemplazaA
	
	method precioViaje(cliente,km,remisera) {
		return remisera.precioViaje(cliente,km,remisera) 
	}
	
	method reemplazar(remiseraReemplazada){
		reemplazaA = remiseraReemplazada
	}
	
	method reemplazaA() {
		return reemplazaA
	}
}








