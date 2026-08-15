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

    method energia() {
      return energia
    }

    method energia(_energia) {
      energia = _energia
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

     method energia() {
      return energia
    }

    method energia(_energia) {
      energia = _energia
    }
}

object rebeca{
  var ave = pepita
  var cenas = 0
  method tieneAve() {
    return ave
  }
  method alimentar(alimento){
    if (tieneAve() = pepita){
      pepita.comer(alimento)
     cenas = cenas +1 
    } 
    else pepon.comer(alimento)
    cenas = cenas +1 
  }
  method cenas() {
    return cenas
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