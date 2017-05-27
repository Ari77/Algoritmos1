object miedo {
	method hacerDenuncia(_persona,_agresion){
		return false
	}
}
object militante{
	method hacerDenuncia(_persona,_agresion){
		return true
	}
}
object aguerrida{
	method hacerDenuncia(_persona,_agresion){
		return _persona.fueAgredidaGravementePorFamiliar()
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
}
