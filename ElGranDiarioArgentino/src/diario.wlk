object diario{
	var ediciones=[]
	var staff=[]
	const costoMantenimiento=10000
	const costoAlquileres=5000
		
	method ingresos(){
		return ediciones.sum({edicion=>edicion.ingresoPublicidad()})
	}
	method costoFijos(){
		return staff.sum({empleado=>empleado.sueldo()})+costoMantenimiento+costoAlquileres
	}
	method costoImpresion(){
		return ediciones.sum({edicion=>edicion.costoImpresion()})
	}
	method saldoFinalMes(){
		
	}
	
	
	
}