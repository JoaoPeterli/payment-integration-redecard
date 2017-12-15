require "spec_helper"
require "payment-integration-redecard"

describe "#Initialize " do
  before :each do
    
    filiation="21583129"
    user =' testews'
    password = 'testews'
   
    @transaction = PaymentIntegrationRedecard::RedecardPayment.new(filiation,password,user,endpoint='REDECARD::TRANSACTION_TEST')
    @receipt = PaymentIntegrationRedecard::RedecardPayment.new( filiation,password,user,endpoint='REDECARD::RECEIPT_TEST')
    @pre_autorizacao = PaymentIntegrationRedecard::RedecardPayment.new(filiation,password,user,endpoint='REDECARD::PREAUTHORIZE_TEST')


    @data_transation = { numpedido:'01',
                         transaction_type:'a_vista',     
                         total:'100',
                         installments:'1',
                         order:'janjo',
                         nrcard:'4654564546556',
                         cvc:'454',
                         month:'02', 
                         year:'2017',
                         carrier:'janjo',
                         rateshipping:'', 
                         distributor:'master',
                         concentrator:'',
                         input:'', 
                         pax1:'',
                         pax2:'',
                         pax3:'',
                         pax4:'',
                         numdoc1:'',
                         numdoc2:'',
                         numdoc3:'',
                         numdoc4:''
                       }

    @data_reversal= { total:"1000",
                      numcv:'4201',
                      numautor:'2147',
                      concentrator:nil
                    } 

  
    @data_preauth = { distributor:"1000",
                      data:"20161105",
                      transaction:"801",        
                      numautor:"2981",
                      numcv:"2614",
                      parcelas:"1",
                      transorig:"BRA",
                      total:'0' 
                     }

  end


   it "sends the requisition to a transaction" do
     transaction = @transaction.transaction(@data_transation)
    expect(transaction).to_not be_nil
  end



  it "Sends the request for a payment cancellation transaction" do  
    reversal_payment = @receipt.reversal_payment(@data_reversal)
    expect(reversal_payment).to_not be_nil
  end



  it "Requests an authorization request for a pre-authorization transaction" do
    pre_authorize = @pre_autorizacao.pre_authorize(@data_preauth)
    expect(pre_authorize).to_not be_nil
  end
end                                    
