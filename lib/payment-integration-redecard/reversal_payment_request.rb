module Redecard
  class ReversalPaymentRequest

    def serialize(reversal_payment,filiation,password,user)
      parms = {
        :Total => "%.2f" %  reversal_payment.total,
        :Filiacao => filiation,
        :NumCV => reversal_payment.numcv,
        :NumAutor => reversal_payment.numautor,
        :Concentrador =>nil,
        :Usr => user,
        :Pwd => password
      }
   end
  end
end
