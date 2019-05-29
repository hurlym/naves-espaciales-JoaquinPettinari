import Nave.*

class NaveCombate inherits Nave{
	var property estaInvisible = false
	var property misilesDesplegados = false
	const property mensajes = []
	
	method ponerseInvisible() { estaInvisible = true}
	method ponerseVisible() { estaInvisible = false}
	method estaInvisible() = estaInvisible
	
	method desplegarMisiles(){ misilesDesplegados = true }
	method replegarMisiles(){ misilesDesplegados = false }
	method misilesDesplegados() = misilesDesplegados
	
	method emitirMensaje(mensaje){ mensajes.add(mensaje)}
	method mensajesEmitidos() = mensajes.size()
	method primerMensajeEmitido() = mensajes.first()
	method ultimoMensajeEmitido() = mensajes.last()
	method esEscueta(){ return mensajes.any{ mensaje => not mensaje.size() >= 30 } }
	method emitioMensaje(mensaje) = mensajes.contains(mensaje)
	
	override method prepararViaje(){
		self.ponerseVisible()
		self.replegarMisiles()
		super()
		self.acelerar(15000)
		self.emitirMensaje("Saliendo en mision")
	}
	
	method recibirAmenaza(){ 
		self.escapar()
		self.avisar()
	}
	method escapar(){
		self.acercarseUnPocoAlSol()
		self.acercarseUnPocoAlSol()
	}
	method avisar(){
		self.emitirMensaje("Amenaza recibida")
	}
	override method estaTranquila(){
		return super() and not self.misilesDesplegados()
	}
	
	
}
