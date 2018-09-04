import ciudades.*
import comidas.*
import alguien.*


object pepita {
	var property energia = 100
	var property ciudad = null


	var property posicion = game.at(3,3)
	method imagen() = "pepita.png"

	method come(comida) {
		energia = energia + comida.energia()
	}
	
	method volaHacia(unaCiudad) {
	if (ciudad != unaCiudad){
	if (energia > self.energiaParaVolar(posicion.distance(unaCiudad.posicion()))){ //QUE DATO TIENE "DISTANCE"?
			self.move(unaCiudad.posicion())
			ciudad = unaCiudad
			}
			else 
				
				game.say(self, "Dame de comer")
		}
		else
		unaCiudad.estoyEn(self)
		}
	

	method energiaParaVolar(distancia) = 15 + 5 * distancia 

	method move(nuevaPosicion) {
		energia -= self.energiaParaVolar(posicion.distance(nuevaPosicion))
		self.posicion(nuevaPosicion)
		}

	method teEncontro(alguien){
		alguien.queHasEncontrado()
	}

}



