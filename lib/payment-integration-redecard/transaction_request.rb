module Redecard
  class TransactionRequest

      ALLOWED_TRANSACTIONS = {
        :a_vista => "04",
        :parcelado_emissor => "06",
        :parcelado_estabelecimento => "08",
        :pre_autorizacao => "73"
      }

   def serialize(transaction,filiation)
     params = {
       :Total =>"%.2f" % transaction.total,
       :Transacao => TransactionRequest::ALLOWED_TRANSACTIONS[:"#{transaction.transaction_type}"],
       :Parcelas => transaction.installments,
       :Filiacao => filiation,
       :NumPedido => transaction.numpedido,
       :Nrcartao => transaction.nrcard,
       :CVC2 => transaction.cvc,
       :Mes => transaction.month,
       :Ano => transaction.year,
       :Portador => transaction.carrier,


       :IATA => '',
       :Distribuidor => '',
       :Concentrador => '',
       :TaxaEmbarque =>'' ,
       :Entrada => '',
       :Pax1 => '',
       :Pax2 => '',
       :Pax3 => '',
       :Pax4 => '',
       :Numdoc1 => '',
       :Numdoc2 =>'' ,
       :Numdoc3 => '',
       :Numdoc4 => '',
       :ConfTxn => "S",
       :AddData =>''
     }
   end
  end
end
