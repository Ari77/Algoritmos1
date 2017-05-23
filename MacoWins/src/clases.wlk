class Prenda{
	const tasaImportacion =1.3
	var esImportada
	constructor(_importada){
		esImportada=_importada
	}
	method tasaImportacion(){
		if(self.esImportada()){
			return tasaImportacion
		}else{
			return 0
		}
	}
	method esImportada() {
		return esImportada 
	}
	method precioFinal(){
		return negocio.valorFijo()+self.precioBase() * self.tasaImportacion()
	}
	method precioBase()
}
class Saco inherits Prenda{
	const precio = 1300
	constructor(_importada) = super(_importada)
	override method precioBase(){
		return precio
	}
}
class Pantalon inherits Prenda{
	const precio = 1250
	constructor(_importada) = super(_importada)
	override method precioBase(){
		return precio
	}
}
class Camisa inherits Prenda{
	const precio = 1200
	constructor(_importada) = super(_importada)	
	override method precioBase(){
		return precio
	}
}
class Venta{
	var prenda
	var cantidad
	
	constructor (_prenda,_cantidad){
		prenda=_prenda
		cantidad=_cantidad
	}
	method precioFinal(){
		return prenda.precioFinal()*cantidad
	}
}
object negocio{
	const valorFijo =100
	var ventas = []
	method valorFijo(){
		return valorFijo
	}
	method gananciaDeHoy(){
		return ventas.sum({venta=>venta.precioFinal()})
	}
	method agregarVenta(_venta){
		ventas.add(_venta)
	}
}