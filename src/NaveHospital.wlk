import Nave.*
import NavePasajeros.*

class NaveHospital inherits NavePasajeros{
	var property quirofanosPreparados = false
	
	override method recibirAmenaza(){
		super()
		quirofanosPreparados = true
	}
	
	override method estaTranquila(){
		return super() and not quirofanosPreparados 
	}
}
