class Edicion {
	var notas = []
	var publicidades = []
	var staff=[]
	
	
	method costoContenido(){
		return notas.sum({nota=>nota.costo()})
	}
	
	method costoVariable(){
		
	}
	method ingresoPublicidad(){
		return publicidades.sum({publicidad=>publicidad.valor()})
	}
}