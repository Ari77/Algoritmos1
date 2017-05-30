import Denuncia.*
import Actitud.*
import Agresion.*


class Persona{
	var agresiones=[]
	var familia=[]
	var actitud

	constructor(_actitud){
		actitud=_actitud
	}
	method recibirAgresion(_agresion){
		agresiones.add(_agresion)
		if (self.denunciaLaAgresion(_agresion)){
			autoridades.denunciar(_agresion,self)
		}
	}
	method denunciaLaAgresion(_agresion){
		return (_agresion.esGrave()||self.esAgresionFamiliar(_agresion)||actitud.hacerDenuncia())
	}
	method esAgresionFamiliar(_agresion){
		return familia.contains(_agresion.agresor())
	}
	method cambiarActitud(_actitud){
		actitud=_actitud
	}
	method amanazadaDeMuerte(){
		actitud.amenazada()
	}
	method agresionesPor(_agresor){
		return agresiones.count({agresion=>agresion.agresor()==_agresor})
	}
	method fueAgredidaGravementePorFamiliar(){
		return agresiones.any({agresion=>familia.contains(agresion.agresor()) && agresion.esGrave()})
	}
	method actitud(){
		return actitud
	}
	method serAcompaniadoPor(_persona){
		self.cambiarActitud(_persona.actitud())
	}
	method participarDeOrganizacionSocial(){
		self.cambiarActitud(militante)
	}
	method agregarFamiliar(unFamiliar){
		familia.add(unFamiliar)
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
