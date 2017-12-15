module Redecard
  class Transaction
    # Transaction  => Responsible for data transaction
    #
    # total             => Amount
    # transactiontype   => type transaction
    # installments      => installments
    # order             => order
    # nrcard            => number card
    # cvc               => Security code
    # month             => mes
    # year              => ano
    # carrier           => carrier
    # rateshipping      => rates shipping
    # distributor       => distributor
    # concentrator      => concentrator
    # input             => input
    # Pax1              =>
    # Pax2              =>
    # Pax3              =>
    # Pax4              =>
    # Numdoc1           =>
    # Numdoc2           =>
    # Numdoc3           =>
    # Numdoc4           =>
    # Numpedido         => number order
    # Transaction_type  => type transaction

     attr_accessor :total,
                   :installments,
                   :order,
                   :nrcard,
                   :cvc,
                   :month,
                   :year,
                   :carrier,
                   :rateshipping,
                   :distributor,
                   :concentrator,
                   :input,
                   :pax1,
                   :pax2,
                   :pax3,
                   :pax4,
                   :numdoc1,
                   :numdoc2,
                   :numdoc3,
                   :numdoc4,
                   :numpedido,
                   :transaction_type


  def initialize(data)
      @numpedido = data[:numpedido]
      @transaction_type = data[:transaction_type]
      @total = data[:total]
      @installments = data[:installments]
      @order = data[:order]
      @nrcard = data[:nrcard]
      @cvc = data[:cvc]
      @month = data[:month]
      @year = data[:year]
      @carrier = data[:carrier]
      @rateshipping = data[:rateshipping]
      @distributor = data[:distributor]
      @concentrator = data[:concentrator]
      @input = data[:input]
      @pax1 = data[:pax1]
      @pax2 = data[:pax2]
      @pax3 = data[:pax3]
      @pax4 = data[:pax4]
      @numdoc1 = data[:numdoc1]
      @numdoc2 = data[:numdoc2]
      @numdoc3 = data[:numdoc3]
      @numdoc4 = data[:numdoc4]
    end
  end
end
