class Dia {
	var paginas
	var cantEjemplares
	var precio

	constructor(_paginas,_cantEjemplares,_precio){
		paginas=_paginas
		cantEjemplares=_cantEjemplares
		precio=_precio
	}
	method cantidadHojas(){
		return paginas
	}
}

object domingo inherits Dia(48,100000,3){}