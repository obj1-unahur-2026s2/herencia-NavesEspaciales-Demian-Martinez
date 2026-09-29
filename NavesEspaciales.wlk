class NaveEspacial{
  var velocidad = 10
  var direccion = 0

  method velocidad(){
    return velocidad
  }

  method acelerar(cuanto){
    velocidad = 0.max(cuanto) and 100000.min(cuanto)
  }

  method desacelerar(cuanto){
    velocidad = 0.max(cuanto) and 100000.min(cuanto)
  }

  method irHaciaElSol(){
    direccion = 10
  }

  method escaparDelSol(){
    direccion = -10
  }

  method ponerseParaleloAlSol(){
    direccion = 0
  }

  method acercarseUnPocoAlSol(){
    direccion += 1
  }

  method alejarseUnPocoAlSol(){
    direccion -= 1
  }
}

class NaveBaliza inherits NaveEspacial{
  var colorDeBaliza = "rojo"
  
  method cambiarColorDeBaliza(colorNuevo){
    colorDeBaliza = colorNuevo
  }
}

class NaveDePasajeros inherits NaveEspacial{
  const cantPasajeros
  var cantRacionesComida = 0
  var cantRacionesBebida = 0

  method cantRacionesComida(){
    return cantRacionesComida
  }

  method cantRacionesBebida(){
    return cantRacionesBebida
  }

  method cargarRacionesComida(cantRaciones){
    cantRacionesComida += cantRaciones
  }

  method descargarRacionesComida(cantRaciones){
    cantRacionesComida -= cantRaciones
  }

  method cargarRacionesBebida(cantRaciones){
    cantRacionesBebida += cantRaciones
  }

  method descargarRacionesBebida(cantRaciones){
    cantRacionesBebida -= cantRaciones
  }
}

class NaveDeCombate inherits NaveEspacial{
  const mensajes = []
  var estaInvisible = false
  var misilesDesplegados = false

  method ponerseVisible(){
    estaInvisible = false
  }

  method ponerseInvisible(){
    estaInvisible = true
  }

  method estaInvisible(){
    return estaInvisible
  }

  method desplegarMisiles(){
    misilesDesplegados = true
  }

  method replegarMisiles(){
    misilesDesplegados = false
  }

  method misilesDesplegados(){
    return misilesDesplegados
  }

  method emitirMensaje(mensaje){
    mensajes.add(mensaje)
  }

  method mensajesEmitidos(){
    return mensajes
  }

  method primerMensajeEmitido(){
    return mensajes.first()
  }

  method ultimoMensajeEmitido(){
    return mensajes.last()
  }

  method esEscueta(){
    
  }
}