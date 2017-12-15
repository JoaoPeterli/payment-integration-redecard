module Redecard
  class PreAuthorize
    ## PreAuthorize  => Responsible for data PreAuthorize
    #
    # Total         => Amount
    # Data          => Date transaction
    # Transaction   => Transaction
    # Numautor      => Authorization Number
    # Numcv         => Sales Receipt Number
    # Parcelas      => Number Installments
    # Transorig     => Type transaction origin


    attr_accessor :distributor,
                  :total,
                  :data,
                  :transaction,
                  :numautor,
                  :numcv,
                  :parcelas,
                  :transorig


   def initialize(data)

     @distributor = data[:distributor]
     @data        = data[:data]
     @transaction = data[:transaction]
     @numautor    = data[:numautor]
     @numcv       = data[:numcv]
     @parcelas    = data[:parcelas]
     @transorig   = data[:transorig]
     @total       = data[:total]
   end
  end
end
