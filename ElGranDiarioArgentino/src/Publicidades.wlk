class Publicidades {
	var centimetros
	var cliente
	
	constructor(_centimetros,_cliente){
		centimetros=_centimetros
		cliente=_cliente
	}
	method valor(){
		return centimetros * cliente.precioAcordado()
	}
	method centimetros(){
		return centimetros
	}
	
}