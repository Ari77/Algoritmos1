class Publicidad {
	var centimetros
	var precioAcordado
	var cliente
	
	constructor(_centimetros,_precioAcordado, _cliente){
		centimetros=_centimetros
		precioAcordado=_precioAcordado
		cliente=_cliente
	}
	method valor(){
		return centimetros * precioAcordado
	}
	method centimetros(){
		return centimetros
	}
	
}