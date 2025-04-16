object rolando {
  const artefactos = #{}
  const historial = []
  var capacidad = 2
  const morada = castillo
  
  method artefactos() = artefactos
  
  method historial() = historial
  
  method incrementarCapacidad(cantidad) {
    capacidad += cantidad
  }
  
  method posesiones() = artefactos + morada.baul()
  
  method tieneCapacidad() = artefactos.size() < capacidad
  
  method encontrar(artefacto) {
    if (self.tieneCapacidad()) artefactos.add(artefacto)
    historial.add(artefacto)
  }
  
  method irMorada() {
    morada.depositar(artefactos)
    artefactos.clear()
  }
}
//################################ ARTEFACTOS ################################### 

object espada {
  
}

object libro {
  
}

object collar {
  
}

object armadura {
  
} //################################ MORADA ################################### 

object castillo {
  const baul = #{}
  
  method depositar(artefactos) {
    baul.addAll(artefactos)
  }
  
  method baul() = baul
}