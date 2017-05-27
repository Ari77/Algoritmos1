class Agresion{
	var agresor
	var palabras=[]
	var lugar
	constructor(_lugar,_agresor,_palabras){
		lugar=_lugar
		agresor=_agresor
		palabras=_palabras
	}
	method esGrave(){
		return palabras.any{palabra => rupi.esInaceptable(palabra)}
	}
	method esIgnea(){
		return palabras.contains("fuego")
	}
	method agresor(){
		return agresor
	}
}
class AgresionFisica inherits Agresion{
	var elemento
	constructor (_lugar,_agresor,_palabras, _elemento)= super(_lugar,_agresor,_palabras){
		elemento=_elemento
	}
	override method esGrave(){
		return true
	}
	override method esIgnea(){
		return elemento == "combustible" or super()
	}
}
object rupi{
	var palabrasInaceptables=[]
	method esInaceptable(_palabra){
		return palabrasInaceptables.contains(_palabra)
	}
}