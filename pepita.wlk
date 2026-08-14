object pepita{
    var energia = 100
    method volar(distancia){
        energia = energia - 10 - distancia/10
    }
    method comer(alimentos){
        energia = energia + alimento.energiaQueAporta()
    }
    method descansa(){
        energia = energia + 10
    }
}

object alpiste{
    method energiaQueApota() {
      return 25
    }
}

object manzana{
var gradoMadurez = 1
method energiaQueAporta {
  return if (gradoMadurez<3){
    gradoMadurez * 20
  }
  else{
    0
  }
}

}