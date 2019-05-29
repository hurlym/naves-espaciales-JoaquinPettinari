import Nave.*

class NavePasajeros inherits Nave{
	var property pasajeros
	var property comida
	var property bebida
	
	method cargarComidas(cuantas){
		comida += cuantas
	}
	method descargarComidas(cuantas){
		comida = (comida - cuantas).max(0)
	}
	method cargarBebidas(cuantas){
		bebida += cuantas
	}
	method descargarBebidas(cuantas){
		bebida = (bebida - cuantas).max(0) 
	}
	override method prepararViaje(){
		self.cargarComidas(pasajeros * 4)
		self.cargarBebidas(pasajeros * 6)
		self.acercarseUnPocoAlSol()
		super()
	}
	method recibirAmenaza(){
		self.escapar()
		self.avisar()
	}
	
	method escapar(){ self.acelerar(self.velocidad())}
	
	method avisar() {
		self.descargarComidas(pasajeros * 1)
		self.descargarBebidas(pasajeros * 2)
	}
	
}


