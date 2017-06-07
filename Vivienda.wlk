import UserException.*

class Vivienda{
	var horasTrabajoRestante
	var horasTrabajoAcceso
	var habitantes=[]

	constructor(_horasTrabajoAcceso, _horasTrabajoRestante){
		horasTrabajoAcceso = _horasTrabajoAcceso
		horasTrabajoRestante = _horasTrabajoRestante
		}

	
	method esHabitable(){
		if (horasTrabajoRestante == 0 && self.estaVacia()){
		return true
		}
		else 
		{
		throw new UserException("La casa no esta habitable")
		}
	}
	
	method estaVacia(){ 		
		return habitantes.isEmpty()
	}
	method tiempoTrabajado(cantHoras){
		self.disminuyeHorasRestantes(cantHoras)
	}
	
	method disminuyeHorasRestantes(cantHoras){
		horasTrabajoRestante=horasTrabajoRestante - cantHoras
	}
	
	method horasTrabajoRestante(){
		return horasTrabajoRestante
	}
	
	method horasTrabajoAcceso(){
		return horasTrabajoAcceso
	}
	
	method puedeAcceder(unaFamilia){
		return (self.esHabitable() && self.cumpleHorasNecesariasAcceso(unaFamilia) 
		&& self.soportaFamilia(unaFamilia.cantMiembrosFamilia())
	}
			
	method cumpleHorasNecesariasAcceso(unaFamilia){
		return unaFamilia.cantHorasTrabajadas()>= self.horasTrabajoAcceso() 
	
	}
	
	method habitar(familia){
		habitantes = familia.miembrosFamilia()
	}
}
