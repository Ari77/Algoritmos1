object diario{
	var ediciones=[]
	
	method ingresos(){
		return ediciones.sum({edicion=>edicion.ingresoPublicidad()})
	}
	
	
	
}