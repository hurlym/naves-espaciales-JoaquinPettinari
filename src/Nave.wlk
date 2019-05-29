class Nave { //Clase madre
	var property velocidad = 0
	var property direccion = 0	
	var property combustible = 0
	
	
	method acelerar(cuanto) { velocidad = (velocidad + cuanto).min(100000) }
	method desacelerar(cuanto) { velocidad -= (velocidad - cuanto).max(0) }
	
	method irHaciaElSol() { direccion = 10 }
	method escaparDelSol() { direccion = -10 }
	method ponerseParaleloAlSol() { direccion = 0 }
	
	method acercarseUnPocoAlSol() { direccion += (direccion + 1).min(10) }
	method alejarseUnPocoDelSol() { direccion -= (direccion + 1).max(-10) }
	
	method cargarCombustible(cuanto){ combustible += cuanto }
	method descargarCombustible(cuanto) {combustible = (combustible-cuanto).max(0)}
	
	method prepararViaje(){
		self.cargarCombustible(30000)
		self.acelerar(5000)		
	}
	/*method recibirAmenaza(){
		
	}*/
	method estaTranquila(){
		return combustible >= 4000 and velocidad < 12000		
	}
	
}