class NotaComprada {
	var precioAcordado
	var cantCaracteres

	constructor(_precioAcordado,_cantCaracteres){
		precioAcordado=_precioAcordado
		cantCaracteres=_cantCaracteres
	}
	method costo(){
		return precioAcordado
	}
}

class NotaEspecial{
	var autor
	var cantCaracteres

	constructor(_autor,_cantCaracteres){
		autor=_autor
		cantCaracteres=_cantCaracteres
	}	
	method costo(){
		return cantCaracteres/1000 * autor.cobraPorNota()
	}	
	
}
class NotaStaff{
	var autor
	var cantCaracteres

	constructor(_autor,_cantCaracteres){
		autor=_autor
		cantCaracteres=_cantCaracteres
	}	
	method costo(){
		return 0
	}
}