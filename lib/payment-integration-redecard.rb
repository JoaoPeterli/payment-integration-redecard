require "payment-integration-redecard/version"
require "payment-integration-redecard/transaction"
require "payment-integration-redecard/reversal_payment"
require "payment-integration-redecard/reversal_payment_request"
require "payment-integration-redecard/transaction_request"
require "payment-integration-redecard/pre_authorize"
require "payment-integration-redecard/pre_authorize_request"
require "payment-integration-redecard/endpoints_redecard.rb" 
require "rest-client"
require "time"





module PaymentIntegrationRedecard
  class RedecardPayment

      attr_accessor :user,
                    :password,
                    :filiation,
                    :total,
                    :transactiontype,
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
                    :numpedido,
                    :transaction_type


    def initialize(filiation,password,user,endpoint=nil)
       @filiation = filiation
       @password = password
       @user = user
       @endpoint = endpoint
    end

    ## Transaction  => Responsible for data transaction
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
    # Pax1              => ''
    # Pax2              => ''
    # Pax3              => ''
    # Pax4              => ''
    # Numdoc1           => ''
    # Numdoc2           => ''
    # Numdoc3           => ''
    # Numdoc4           => ''
    # Numpedido         => number order
    # Transaction_type  => type transaction
    def transaction(data)
       return Redecard::Transaction.new(data)
    end


    ## Receipt  => Responsible for data receipt payment
    #
    # Total          => Amount
    # NumCV          => Sales Receipt Number
    # NumAutor       => Authorization Number
    # concentrator   => concentrator
    # Usr            => Responsible for user
    # Pwd            => Responsible for password
    def reversal_payment(data)
       return Redecard::ReversalPayment.new(data)
    end


    ## PreAuthorize  => Responsible for data PreAuthorize
    #
    # Total         => Amount
    # Data          => Date transaction
    # Transaction   => Transaction
    # Numautor      => Authorization Number
    # Numcv         => Sales Receipt Number
    # Parcelas      => Number Installments
    # Transorig     => Type transaction origin
  #  def pre_authorize(total,data,transaction,numautor,numcv,parcelas,transorig,distributor=nil)
  #     return RedcardIe::PreAuthorize.new(total,data,transaction,numautor,numcv,parcelas,transorig,distributor=nil)
  #  end

    def pre_authorize(data)
       return Redecard::PreAuthorize.new(data)
    end


   ## Send Request Redecard  => Responsible for data payment
   #
   # transaction      => Data for transaction
   # type_transactio  => Type for transaction
   def transaction_request(transaction)
      transaction_request = Redecard::TransactionRequest.new
      send_request(transaction_request.serialize(transaction,@filiation))
   end


   ## Send Request Reversal Payment  => Responsible for data reversal payment
   #
   # reversal_payment  => Data for reversal payment
   def reversal_payment_request(reversal_payment)
      reversal_request = Redecard::ReversalPaymentRequest.new
      send_request(reversal_request.serialize(reversal_payment,@filiation,@password,@user))
   end


   ## Send Request Pre Authorization Payment => Responsible for data
   #
   #pre_authorize => Data for pre_authorize
   def pre_authorize_request(pre_authorize)
      authorize_request=  Redecard::PreAuthorizeRequest.new
      send_request(authorize_request.serialize(pre_authorize,@filiation,@password,@user))
   end


private

    def send_request(message)
       uri = @endpoint
       response = RestClient.post(uri, message)
       response.body
    end
  end
end
