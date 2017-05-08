class Edicion {
	var notas = []
	var publicidades = []
	var dia
	
	constructor(_dia){
		dia=_dia
	}
	method costoContenido(){
		return notas.sum({nota=>nota.costo()})
	}
	method ingresoPorPublicidad(){
		return publicidades.sum({publicidad=>publicidad.valor()})
	}
	method agregarNota(_nota){
		notas.add(_nota)
	}
	method agregarPublicidad(_publicidad){
		publicidades.add(_publicidad)
	}
	method costoImpresion(_costo){
		return dia.cantidadHojas()*_costo
	}
	method dia(){
		return dia
	}
	method cuantasVecesEstaLaPublicidad(_publicidad){
		return publicidades.map({_publicidad}).size()
	}
}




