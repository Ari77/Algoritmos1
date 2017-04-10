
object puenteDeBrooklin {

	method puedeSerAccedidoPor(mensajero){
		 return mensajero.pesoTotal() < 1000
	}
}
object laMatrix {
	method puedeSerAccedidoPor(mensajero) {
		return mensajero.puedeHacerUnaLlamada()
	}
}