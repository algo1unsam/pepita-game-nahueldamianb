import ciudades.*

object pepita {

	var property energia = 100
	var property ciudad = buenosAires
	var property posicion = game.at(3, 3)


	method come(comida) {
		energia = energia + comida.energia()
	}

	method volaHacia(unaCiudad) {
	if (ciudad != unaCiudad){
	if (energia > self.energiaParaVolar(posicion.distance(unaCiudad.posicion()))){ 
			self.move(unaCiudad.posicion())
			ciudad = unaCiudad
			}
			else 
				
				game.say(self, "Tengo Hambre")
		}
		else
		unaCiudad.estoyEn(self)
		}
	
	method energiaParaVolar(distancia) = 15 + 5 * distancia

	method move(nuevaPosicion) {
		
		if (energia >= 20) {
			energia -= self.energiaParaVolar(posicion.distance(nuevaPosicion))
			self.posicion(nuevaPosicion)
		} else {
			game.say(self, "Necesito que me alimenten!!")
		}
	}

	method teEncontro(alguien) {
		alguien.darComida(self)
	}
	
		method imagen() {
		if (energia < 10) {
			return "pepitaCansada.png"
		}
		if (energia > 100) {
			return "pepitaGorda1.png"
		} else {
			return "pepita.png"
		}
	}

}


