import Nave.*

class NaveBaliza inherits Nave {
	var property color
	
	method cambiarColorDeBaliza(colorNuevo){
		color = colorNuevo
	}
	
	override method prepararViaje(){
		self.cambiarColorDeBaliza("verde")
		self.ponerseParaleloAlSol()
		super()
	}
	
	method recibirAmenaza(){
		self.escapar()
		self.avisar()
	} 
	method escapar(){ self.irHaciaElSol() }
	method avisar() { self.cambiarColorDeBaliza("rojo") }
	
	override method estaTranquila(){
		return super() and color != "rojo"
	}
}
