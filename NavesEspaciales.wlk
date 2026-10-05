class NaveEspacial{
  var velocidad = 10
  var direccion = 0
  var combustible = 100

  method velocidad(){
    return velocidad
  }

  method acelerar(cuanto){
    velocidad = (velocidad + cuanto).max(0).min(100000)
  }

  method desacelerar(cuanto){
    velocidad = (velocidad - cuanto).max(0).min(100000)
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

  method prepararViaje(){
    self.cargarCombustible(30000)
    self.acelerar(5000)
  }

  method cargarCombustible(cantCombustible){
    combustible += cantCombustible
  }

  method descargarCombustible(cantCombustible){
    combustible -= cantCombustible
  }
}

class NaveBaliza inherits NaveEspacial{
  var colorDeBaliza = "rojo"
  
  method cambiarColorDeBaliza(colorNuevo){
    colorDeBaliza = colorNuevo
  }

  override method prepararViaje(){
    super()
    self.cambiarColorDeBaliza("verde")
    self.ponerseParaleloAlSol()
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

  override method prepararViaje(){
    super()
    self.cargarRacionesComida(4 * cantPasajeros)
    self.cargarRacionesBebida(6 * cantPasajeros)
    self.acercarseUnPocoAlSol()
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
    return not mensajes.any({m => m.length() > 30})
  }

  method emitioMensaje(mensaje){
    return mensajes.contains(mensaje)
  }

  override method prepararViaje(){
    super()
    self.ponerseVisible()
    self.replegarMisiles()
    self.acelerar(15000)
    self.emitirMensaje("Saliendo en misión")
  }
}