import Denuncia.*
class Persona{
	var agresiones=[]
	var familia=[]
	var actitud
	
	method evaluarAgresion(_agresion){
		if(_agresion.esGrave()||self.esAgresionFamiliar(_agresion)||actitud.hacerDenuncia()){
			autoridades.denunciar(_agresion,self)
		}
	}
	method esAgresionFamiliar(_agresion){
		return familia.contains(_agresion.agresor())
	}
	method cambiarActitud(_actitud){
		actitud=_actitud
	}
	method amanazadaDeMuerte(){
		
	}
	method agresionesPor(_agresor){
		return agresiones.count({agresion=>agresion.agresor()==_agresor})
	}
	method fueAgredidaGravementePorFamiliar(){
		return agresiones.any({agresion=>familia.contains(agresion.agresor()) && agresion.esGrave()})
	}
}

object autoridades{
	var denuncias=[]
	var nro=0
	method denunciar(_agresion,_victima){
		nro+=1
		denuncias.add(new Denuncia(nro,_agresion,_victima))
	}
}
