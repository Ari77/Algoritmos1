
object empresaMensajeria {
	var mensajeros=[]
	
	method contratarA(mensajero){
		mensajeros.add(mensajero)
	}
	method despedirA(mensajero){
		mensajeros.remove(mensajero)
	}
	method despedirTodos(){
		mensajeros.forEach{mensajero=>mensajero.remove()}
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

}