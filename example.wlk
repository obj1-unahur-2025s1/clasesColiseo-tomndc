class Arma {
  method poderAtaque() = 0
}

class ArmaFilo inherits Arma {
  var property filo // entre 0 y 1
  var property longitud // en centímetros
  
  method filo(unFilo) {
    if ((unFilo > 1) or (unFilo < 0)) {
      unFilo.error("Filo incorrecto")
    } else {
      filo = unFilo
    }
  }
  
  override method poderAtaque() = filo * longitud
}

class ArmaContundente inherits Arma {
  var property peso
  
  override method poderAtaque() = peso
}

class Gladiador {
  
}

class Mirmillon inherits Gladiador {
  
}