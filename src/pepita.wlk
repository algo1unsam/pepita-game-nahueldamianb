import ciudades.*



object pepita {
	var property energia = 100
	var property ciudad = null


	var property posicion = game.at(3,3)
	var imagenActual = "pepita1.png"
	
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
		energia -= self.energiaParaVolar(posicion.distance(nuevaPosicion))
		self.posicion(nuevaPosicion)
		}
		
	method imagen() {
		if (energia < 10){imagenActual	= "pepita.png" return imagenActual}
		if (energia > 100){imagenActual = "pepita2.png" return imagenActual}
		else{imagenActual = "pepita1.png"}
		return imagenActual
		}
		
	method teEncontro(alguien){
		alguien.alimentarA(self)
	}

}



