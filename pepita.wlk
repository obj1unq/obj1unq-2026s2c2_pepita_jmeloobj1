object pepita{
    var energia = 100
    method volar(distancia){
        energia = energia - 10 - distancia/10
    }
    method comer(alimento){
        energia = energia + alimento.energiaQueAporta()
    }
    method descansa(){
        energia = energia + 10
    }
    method estáCansada() {
      return energia<30
    }
}

object pepon{
  var energia = 30
  method comer(alimento){
    energia = energia + alimento.energiaQueAporta()/2
  }
    method volar(distancia){
      energia = energia - 20 - 2 * distancia
    }
    method estáCansada(){
      return energia<34
    }
}

object rebeca{
  var mascota = pepita
  method tieneAve() {
    return mascota
  }
}

object alpiste{
    method energiaQueApota() {
      return 25
    }
}

object manzana{
const gradoMadurez = 1
method energiaQueAporta() {
  return if (gradoMadurez<3){
    gradoMadurez * 20
  }
  else{
    0
  }
}

}