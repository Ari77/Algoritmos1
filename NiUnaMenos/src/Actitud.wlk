object miedo {
	method hacerDenuncia(_persona,_agresion){
		return false
	}
	method amenazada(_persona){
		
	}
}
object militante{
	method hacerDenuncia(_persona,_agresion){
		return true
	}
	method amenazada(_persona){
		_persona.cambiarActitud(aguerrida)
	}	
}
object aguerrida{
	method hacerDenuncia(_persona,_agresion){
		return _persona.fueAgredidaGravementePorFamiliar()
	}
	method amenazada(_persona){
		_persona.cambiarActitud(new Paciente(5))
	}	
}
class Paciente{
	var umbralTolerancia
	constructor(_tolerancia){
		umbralTolerancia=_tolerancia
	}
	method hacerDenuncia(_persona,_agresion){
		return _persona.agresionesPor(_agresion.agresor()) > umbralTolerancia
	}
	method amenazada(_persona){
		umbralTolerancia=umbralTolerancia*2
	}
	
}
