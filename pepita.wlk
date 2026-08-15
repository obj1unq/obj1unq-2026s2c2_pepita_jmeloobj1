object pepita{
    var energia = 100
     var entrenador = null
 method entrenador(_entrenador) {
   entrenador = _entrenador

 }
   
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
   var entrenador = null

 method entrenador(_entrenador) {
   entrenador = _entrenador
 }

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
  var ave 
  var cenas = 0
  
  method ave(_ave) {
     ave =_ave
     _ave.entrenador(self)
  }
  method alimentar(alimento){

      rebeca.ave.comer(alimento)
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