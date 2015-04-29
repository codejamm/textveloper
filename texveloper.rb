require 'httparty'

class Textveloper
  include HTTParty
  base_uri 'http://api.textveloper.com/'

  def enviar(mensaje)
    options = {body: mensaje}
    self.class.post('/enviar/', options)
  end

  def puntos_cuenta(mensaje)
    options = {body: mensaje}
    self.class.post('/saldo-cuenta/', options)
  end

  def puntos_app(mensaje)
    options = {body: mensaje}
    self.class.post('/saldo-subcuenta/', options)
  end

  def historial_sub(mensaje)
    options = {body: mensaje}
    self.class.post('/historial-transferencias/', options)
  end

  def historial_compras(mensaje)
    options = {body: mensaje}
    self.class.post('/historial-compras/', options)
  end

  def historial_sms_enviados(mensaje)
    options = {body: mensaje}
    self.class.post('/historial-envios/', options)
  end

end

textveloper = Textveloper.new
