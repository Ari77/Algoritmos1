object diario{
	var ediciones=[]
	var staff=[]
	const costoMantenimiento=10000
	const costoAlquileres=5000
	const costoImpresion=0.001
		
	method ingresos(){
		return ediciones.sum({edicion=>edicion.ingresoPorPublicidad()})
	}
	method costoFijos(){
		return staff.sum({empleado=>empleado.sueldo()})+costoMantenimiento+costoAlquileres
	}
	method costoImpresion(){
		return ediciones.sum({edicion=>edicion.costoImpresion(costoImpresion)})
	}
	method saldoFinalMes(){
		
	}
	method costoDeEdicion(_edicion){
		return ediciones.filter(_edicion).costoVariable()
	}
	
	
	
}