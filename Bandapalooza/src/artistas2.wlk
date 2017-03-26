object jimmyHendrix{
	var canto =70
	var guitarra=90
	var bateria=0
	var bajo=60
	var piano =0
	var composicion=80
	var carisma=60
	var descontrol=0
	var tocarconOtro=true
	
	method tocarCon(artista){
		return (tocarconOtro && self.validarArtista(artista) && artista.tocarCon(self))
	}
	method validarArtista(artista){
		return ((canto==0 && artista.canto()>canto) ||
				(guitarra==0 && artista.guitarra() > guitarra) ||
				(bateria==0 && artista.guitarra() > bateria) ||
				(bajo==0 && artista.guitarra() > bajo) ||
				(piano==0 && artista.guitarra() > piano) ||
				(composicion==0 && artista.guitarra() > composicion) ||
				(carisma==0 && artista.guitarra() > carisma))
	}
	method descontrol(){
		descontrol++
		tocarconOtro=true
		if(descontrol=10){
			canto=0
			guitarra=0
			bajo=0
			bateria=0
			piano=0
			composicion=0
			carisma=0
			tocarconOtro=false
		}else if(descontrol>=5 && descontrol < 10){
			var plus=(descontrol-4)*5
			self.setCanto(canto+plus)
			self.setGuitarra(guitarra+plus)
			self.setBajo(bajo+plus)
			self.setBateria(bateria+plus)
			self.setPiano(piano+plus)
			self.setComposicion(composicion+plus)
			self.setCarisma(carisma+plus)
		}

	}
	method setCanto(value){
		if(value > 100){
			canto=100
		}else if(value < 0){
			canto=0
		}else{
			canto=value
		}
	}
	method setGuitarra(value){
		if(value > 100){
			guitarra=100
		}else if(value < 0){
			guitarra=0
		}else{
			guitarra=value
		}
	}
	method setBateria(value){
		if(value > 100){
			bateria=100
		}else if(value < 0){
			bateria=0
		}else{
			bateria=value
		}
	}
	method setBajo(value){
		if(value > 100){
			bajo=100
		}else if(value < 0){
			bajo=0
		}else{
			bajo=value
		}
	}
	method setPiano(value){
		if(value > 100){
			piano=100
		}else if(value < 0){
			piano=0
		}else{
			piano=value
		}
	}
	method setComposicion(value){
		if(value > 100){
			composicion=100
		}else if(value < 0){
			composicion=0
		}else{
			composicion=value
		}
	}
	method setCarisma(value){
		if(value > 100){
			carisma=100
		}else if(value < 0){
			carisma=0
		}else{
			carisma=value
		}
	}

	method canto(){return canto}
	method guitarra(){return guitarra}
	method bateria(){return bateria}
	method bajo(){return bajo}
	method piano(){return piano}
	method composicion(){return composicion}
	method carisma(){return carisma}

}
object johnLennon{
	var canto =70
	var guitarra=40
	var bateria=0
	var bajo=30
	var piano =50
	var composicion=90
	var carisma=80
	var yokoCerca =true
	var reductor=0.8
	method tocarCon(artista){
		return (!yokoCerca && self.promedioArtista(artista)>70  && artista.tocarCon(self))
	}
	method reducir(valor){
		if(yokoCerca){
			return valor*reductor
		}else{
			return valor
		}
	}	
	method canto(){return self.reducir(canto)}
	method guitarra(){return self.reducir(guitarra)}
	method bateria(){return self.reducir(bateria)}
	method bajo(){return self.reducir(bajo)}
	method piano(){return self.reducir(piano)}
	method composicion(){return self.reducir(composicion)}
	method carisma(){return self.reducir(carisma)}
	method promedioArtista(artista) {
		var suma = 0
		var cantidad = 0
		if (artista.canto() != 0) {
			suma += artista.canto()
			cantidad ++
		} if (artista.guitarra() != 0) {
			suma += artista.guitarra()
			cantidad ++
		} if (artista.bateria() != 0) {
			suma += artista.bateria()
			cantidad ++
		} if (artista.bajo() != 0) {
			suma += artista.bajo()
			cantidad ++
		} if (artista.piano() != 0) {
			suma += artista.piano()
			cantidad ++
		} if (artista.composicion() != 0) {
			suma += artista.composicion()
			cantidad ++
		} if (artista.carisma() != 0) {
			suma += artista.carisma()
			cantidad ++
		} 
		return suma / cantidad
	}
}
object paulMcCartney{
	var canto =80
	var guitarra=60
	var bajo=70
	var bateria=20
	var piano =40
	var composicion=95
	var carisma=60

	
	method canto(){return canto}
	method guitarra(){return guitarra}
	method bateria(){return bateria}
	method bajo(){return bajo}
	method piano(){return piano}
	method composicion(){return composicion}
	method carisma(){return carisma}

	method tocarCon(artista){
		return ((artista.canto()>canto ||
				artista.guitarra() > guitarra ||
				artista.guitarra() > bateria ||
				artista.guitarra() > bajo ||
				artista.guitarra() > piano ||
				artista.guitarra() > composicion ||
				artista.guitarra() > carisma) &&  artista.tocarCon(self))
	}

		
}
object charlyGarcia{
	var canto =60
	var guitarra=60
	var bajo=20
	var bateria=0
	var piano =80
	var composicion=90
	var carisma=65
	
	method tocarCon(artista){
		return  (self.humor()>0.8 && artista.tocarCon(self))
	}
	method humor(){
		return 0.0.randomUpTo(1)
	}
	method reducir(valor){
		return valor * self.humor()
	}	
	method canto(){return self.reducir(canto)}
	method guitarra(){return self.reducir(guitarra)}
	method bateria(){return self.reducir(bateria)}
	method bajo(){return self.reducir(bajo)}
	method piano(){return self.reducir(piano)}
	method composicion(){return self.reducir(composicion)}
	method carisma(){return self.reducir(carisma)}
}