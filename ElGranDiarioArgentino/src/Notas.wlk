class NotaComprada {
	var precioAcordado
	var cantCaracteres
	var autor
	constructor(_precioAcordado,_cantCaracteres,_autor){
		precioAcordado=_precioAcordado
		cantCaracteres=_cantCaracteres
		autor=_autor
	}
	method costo(){return precioAcordado}
	method autor(){return autor}
	method cantCentimetros(){return cantCaracteres/20}
}
class NotaEspecial{
	var autor
	var cantCaracteres
	constructor(_autor,_cantCaracteres){
		autor=_autor
		cantCaracteres=_cantCaracteres
	}	
	method costo(){return cantCaracteres/1000 * autor.cobraPorNota()}	
	method autor(){return autor}
	method cantCentimetros(){return cantCaracteres/20}	
}
class NotaStaff{
	var autor
	var cantCaracteres
	constructor(_autor,_cantCaracteres){
		autor=_autor
		cantCaracteres=_cantCaracteres
	}	
	method costo(){return 0}
	method autor(){return autor}
	method cantCentimetros(){return cantCaracteres/20}
}