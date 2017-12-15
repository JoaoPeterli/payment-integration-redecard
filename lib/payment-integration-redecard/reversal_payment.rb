module Redecard
  class ReversalPayment
    # ReversalPayment  => Responsible for data ReversalPayment
    #
    # NumCV          => Sales Receipt Number
    # NumAutor       => Authorization Number
    # concentrator   => concentrator
    # transacao      => Responsible for transacao

    attr_accessor :total,
                  :numcv,
                  :numautor,
                  :concentrator

      def initialize(data)
          @total = data[:total]
          @numcv = data[:numcv]
          @numautor = data[:numautor]
          @concentrator = data[:concentrator]
      end
   end
end
