class Saco{
	const precio = 1300
		
	method precioBase(){
		return precio
	}
}
class Pantalon{
	const precio = 1250
		
	method precioBase(){
		return precio
	}
}
class Camisa{
	const precio = 1200
		
	method precioBase(){
		return precio
	}
}
class Prenda{
	const tasaImportacion =30
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
}
object negocio{
	const valorFijo =100
	
	method valorFijo(){
		return valorFijo
	}
}