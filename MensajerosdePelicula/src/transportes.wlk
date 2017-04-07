
object bicicleta {
	var pesoPropio = 0
	method peso() {
		return pesoPropio
	}
}

object camion {
	const pesoPorAcoplado = 500
	var cantidadDeAcoplados 
	
	method cantidadDeAcoplados(){
		return cantidadDeAcoplados
	}
	method cantidadDeAcoplados(cantidad){
		cantidadDeAcoplados= cantidad
	} 
	method peso() {
		return cantidadDeAcoplados * pesoPorAcoplado
	}
}