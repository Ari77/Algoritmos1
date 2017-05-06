class Autor{
	var profesion
	
	constructor(_profesion){
		profesion=_profesion
	}
	method cobraPorNota(){
		return profesion.valorPorNota()
	}
}
