
object paquete {
	var estaPago = false
	var entregado = false
	method puedeSerEntregado(mensajero, destino) {
		return destino.puedeSerAccedidoPor(mensajero) and estaPago
	}
	method pagar(){
		estaPago=true
	}
	method entregar(){
		entregado=true
	}
}