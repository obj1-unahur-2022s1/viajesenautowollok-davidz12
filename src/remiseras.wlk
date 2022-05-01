/*
 * Remiseras: Bien- (usabas un parámetro que no era necesario)
 */
import clientes.*


object roxana {
	
	method precioViaje(cliente,km) = cliente.precioKm() * km 
		// no es correcto pasar como parámetro la remisera. Es suficiente
		// con cliente y km.
		// y también se puede resumir de la forma que te muestro acá
	
	
}

object gabriela {
	
	method precioViaje(cliente,km) = cliente.precioKm() * 1.2 * km 
	//no se necesita parámetro remisera y te dejo forma resumida.
		
}


object mariela {
	
	method precioViaje(cliente,km) {
		//no se necesita parámetro remisera. 
		//bien implementado el método max()
		return 50.max(cliente.precioKm() * km)
	}
}


object juana {
	
	method precioViaje(cliente,km) = if (km <= 8) 100 else 200
	//no se necesita parámetro remisera y te dejo la forma resumida
}


object lucia {
	var reemplazaA
	
	method precioViaje(cliente,km) {
		//no hace falta el parámetro remisera porque lucia se tiene que 
		//acordar de a quién reemplaza en la variable reemplazaA. Entonces,
		//el código quedaría como te lo muestro acá (usando return)
		return reemplazaA.precioViaje(cliente,km) 
	}
	
	method reemplazar(remiseraReemplazada){
		reemplazaA = remiseraReemplazada
	}
	
	method reemplazaA() {
		return reemplazaA
	}
}








