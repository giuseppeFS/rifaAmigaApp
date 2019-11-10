class PaymentsController < ApplicationController
  def boleto
    @boleto = Itau.new
    @boleto.cedente = "Nando Vieira"
    @boleto.sacado = "Jos� da Silva"
    @boleto.documento_cedente = "123.456.789-00"
    @boleto.pixel_branco = url_for "/images/boleto/b.gif"
    @boleto.pixel_preto = '/images/boleto/p.gif'
    @boleto.valor = 30.00
    @boleto.agencia = "0047"
    @boleto.conta_corrente = "52881"
    @boleto.nosso_numero = "00001050"
    @boleto.numero_documento = "00513"
    @boleto.data_vencimento = Date.today
    @boleto.local_pagamento = "PAG�VEL NA REDE BANC�RIA AT� O VENCIMENTO"
    @boleto.instrucao1 = "Pag�vel na rede banc�ria at� a data de vencimento. Ap�s vencimento pag�vel somente nas ag�ncias do Ita�"
    @boleto.instrucao2 = "DESCONTO DE R$ 59,00 AT� 05/11/2006"
    @boleto.instrucao3 = "DESCONTO DE R$ 29,50 AP�S 05/11/2006 AT� 15/11/2006"
    @boleto.instrucao4 = "N�O RECEBER AP�S 15/11/2006"
    @boleto.instrucao5 = ""
    @boleto.instrucao6 = "ACRESCER R$ 4,00 REFERENTE AO BOLETO BANC�RIO"
    @boleto.sacado_linha1 = "Jos� da Silva"
    @boleto.sacado_linha2 = "CPF: 123.456.789-00"
    @boleto.criar()
    
    render :layout => false
  end
end