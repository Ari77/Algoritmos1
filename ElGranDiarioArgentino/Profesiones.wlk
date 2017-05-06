class Profesion{
	var valorPorNota
	constructor(_valorPorNota){
		valorPorNota=_valorPorNota
	}	
	method valorPorNota(){
		return valorPorNota
	}
}
object periodistas inherits Profesion(50){}
object escritor inherits Profesion(100){}
object celebridad inherits Profesion(500){}
object colaboradores inherits Profesion(25){}


