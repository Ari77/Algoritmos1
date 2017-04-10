
object roberto {
	var transporte
	const pesoPropio = 90

	method transporte(){
		return transporte
	}
	method transporte(unTransporte) {
		transporte = unTransporte
	}
	method pesoTotal() {
		return transporte.peso() + pesoPropio
	}
	method puedeHacerUnaLlamada() {
		return false
	}
}
object neo {
	var tieneCredito = false
	const pesoTotal = 0
	method pesoTotal() {
		return pesoTotal
	}
	method puedeHacerUnaLlamada() {
		return tieneCredito
	}
	method cargarCredito(){
		tieneCredito=true
	}
}
object chuck {
	const pesoPropio = 900

	method pesoTotal() {
		return pesoPropio
	}
	method puedeHacerUnaLlamada() {
		return true
	}
}