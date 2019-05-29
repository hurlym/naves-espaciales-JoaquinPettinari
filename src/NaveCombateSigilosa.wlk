import NaveCombate.*
import Nave.*

class NaveCombateSigilosa inherits NaveCombate {
	
	override method escapar(){
		super()
		self.desplegarMisiles()
		self.ponerseInvisible()
	}
	override method estaTranquila(){
		return super() and self.estaInvisible()
	}
	
}
