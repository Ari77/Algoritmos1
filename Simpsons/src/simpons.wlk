object plantaNuclear {
	var empleados=[]
		
	method contratarEmpleado(nuevoEmpleado){
		empleados.add(nuevoEmpleado)
	}
	method enPeligro(){
		return (deposito.muchasBarras() && empleados.last().estaDistraido())  || mrsBurns.esPobre()
	}
	method pagarSueldos(){
		/* 
		empleado.cobrarSueldo()
		mrsBurns.cobrarSueldo()
		*/ 
	}
	method despedirEmpleado(empleadoaDespedir){
		empleados.remove(empleadoaDespedir)
	}
	method empresaVacia(){
		return empleados.empty()
	}
	method conflictoIntereses(){
		return empleados.contains(mrsBurns)
	}
	method funcionaBien(){
		return empleados.size()>deposito.cantidadBarras()
	}
}
object deposito {
	var barras = 10000 
	method variarBarras(cantidad){
		barras += cantidad
	}
	method muchasBarras(){
		return barras > 4000
	}
	method cantidadBarras(){
		return barras
	}
}
object patoBalancin{
	method estaDistraido(){
		return false
	}
	method cobraSueldor(){
	}
}
object homero{
	var donas = 0
	const precioDona = 3
	const sueldo = 1000
	
	method cobrarSueldo(){
		self.comprarDonas(sueldo.div(precioDona))
	}
	method comprarDonas(cantidad){
		donas+=cantidad		
	}
	method comerDonas(cantidad){
		donas-=cantidad
	}
	method estaDistraido(){
		return  donas < 2
	}
}
object barney{
	var estadoEtilico = sobrio
	var temaFavorito = "jijiji"
	
	method tomar(){
		estadoEtilico = ebrio
	}
	method rescatarse(){
		estadoEtilico = sobrio 
	}
	method estaDistraido(temaEnLaRadio){
		return estadoEtilico.estaDistraido(self)
	}
	method estaAlegre(){
		return radio.tema() == temaFavorito
	}
}
object radio{
	method tema() {
		return "mi perro dinamita"
	}
}
object sobrio {
	method estaDistraido(alguien) {
		return alguien.estaAlegre()
	}
}
object ebrio {
	method estaDistraido(alguien) {
		return true
	}
}
object mrsBurns{
	var rico = false

	method esPobre(){
		return not rico
	}
	method cobrarSueldo(){
		rico = true
	}
}
object carl{
	var donasXdia=[]
	var donasComidasHoy=30
	const maxDonas=50
	
	method estaDistraido(){
		return (donasXdia.sum()>maxDonas) && (donasXdia.max()>donasXdia.last())
	}
	method registrarDonasDelDia(){
		donasXdia.add(donasComidasHoy)
		donasComidasHoy=0
	}
	method comerDonas(cantidad){
		donasComidasHoy+=cantidad
	}
}