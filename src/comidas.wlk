
object manzana {
	const property imagen = "manzana.png"
	method energia() = 80
	method teEncontro (alguien){
		alguien.agarrarComida(self)
		game.say(alguien, "Me dieron una Manzana")
		game.removeVisual(self) //Saca del campo
	}
}

object alpiste {
	const property imagen = "alpiste.png"
	method energia() = 5
	method teEncontro (alguien){
		alguien.agarrarComida(self)
		game.say(alguien, "Me dieron Alpiste")
		game.removeVisual(self) //saca comida del tablero
	}
	}
