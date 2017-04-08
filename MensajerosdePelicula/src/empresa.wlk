
object empresaMensajeria {
	var mensajeros=[]
	
	method contratarA(mensajero){
		mensajeros.add(mensajero)
	}
	method despedirA(mensajero){
		mensajeros.remove(mensajero)
	}
	method despedirTodos(){
		mensajeros.clear()
	}
	method esGrande(){
		return mensajeros.size()>2
	}
	method puedeSerEntregado(paquete,destino){
		return paquete.puedeSerEntregado(mensajeros.first(),destino)
	}
	method pesoUltimoMensajero(){
		return mensajeros.last().pesoTotal()
	}
	method esEmpleado(mensajero){
		return mensajeros.contains(mensajero)
	}
	method mensajeros(){
		return mensajeros
	}

}