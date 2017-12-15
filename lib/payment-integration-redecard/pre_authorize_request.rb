module Redecard
  class PreAuthorizeRequest

    def serialize(pre_authorize,filiation,password,user)

      params ={
        :Filiacao     => filiation,
        :Distribuidor => filiation,
        :Total        => "%.2f" %  pre_authorize.total,
        :TransOrig    => pre_authorize.transorig,
        :Parcelas     => pre_authorize.parcelas,
        :Data         => pre_authorize.data,
        :NumAutor     => pre_authorize.numautor,
        :NumCV        => pre_authorize.numcv,
        :Concentrador => '',
        :Usr          => user,
        :Pwd          => password
      }
    end
  end
end
