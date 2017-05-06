class Edicion {
	var notas = []
	var publicidades = []
	var dia
	
	constructor(_fecha){
		dia=_fecha.dayOfWeek()
	}
	method costoContenido(){
		return notas.sum({nota=>nota.costo()})
	}
	method ingresoPublicidad(){
		return publicidades.sum({publicidad=>publicidad.valor()})
	}
	method agregarNota(_nota){
		notas.add(_nota)
	}
	method agregarPublicidad(_publicidad){
		publicidades.add(_publicidad)
	}
	method costoImpresion(){
		return dia.cantidadHojas()*0.001
	}
	method dia(){
		return dia
	}
	
	
}




