 #Payment-Integration-Redecard

 This is a way to facilitate transactions with the network-card API with transaction, pre-authorization and reverse payment requests.

 ##Installation

 Add this line to your application's Gemfile:

 ```ruby
  gem  'payment-integration-redecard'
 ```

  And then execute:

   $ bundle

  Or install it yourself as:

   $ gem install payment-integration-redecard



  ##**Lista de End Point**
  Responsible for transaction teste whith Rede Card
  TRANSACTION_TEST

  Responsible for PreAuthorize teste  whith Rede Card
  PREAUTHORIZE_TEST

  Responsible for receipt teste  whith Rede Card
  RECEIPT_TEST

  Responsible for transaction  whith Rede Card
  TRANSACTION

  Responsible for PreAuthorize  whith Rede Card
  PREAUTHORIZE

  Responsible for receipt  whith Rede Card
  RECEIPT
                            

  ##**Create Transaction**
                            ```
  require "payment-integration-redecard"

  filiation="21583129"
  user =' testews'
  password = 'testews'
  endpoint = 'REDECARD::TRANSACTION_TEST'

  obj = PaymentIntegrationRedecard::RedecardPayment.new(filiation,password,user,endpoint) 

  transaction=obj.transaction(data)

  obj.transaction_request(transaction)

  ```

  ##**Receiver**
  ```
  require "payment-integration-redecard"

  filiation="21583129"
  user =' testews'
  password = 'testews'
  endpoint = 'REDECARD::RECEIPT_TEST'

  obj = PaymentIntegrationRedecard::RedecardPayment.new(filiation,password,user,endpoint) 

  reversal_payment=obj.reversal_payment(data)

  obj.reversal_payment_request(reversal_payment)

  ```

  ##**Pre-Transaction**
  ```
  require "payment-integration-redecard"

  filiation="21583129"
  user =' testews'
  password = 'testews'
  endpoint = 'REDECARD::PREAUTHORIZE_TEST'

  obj = PaymentIntegrationRedecard::RedecardPayment.new(filiation,password,user,endpoint)  

  pre_authorize=obj.pre_authorize(data)

  obj.pre_authorize_request(pre_authorize)

  ```

  ##**Comments**
  Here are examples of how data should be passed for submission.

  Example of a date for a transaction, a note, in the parameter of transaction_type it is responsible for the type of transaction. Here is the list of transactions:
   ```  
     a_vista 
     parcelado_emissor 
     parcelado_estabelecimento
     pre_autorizacao 

   @data = { numpedido:'01',
             transaction_type:'a_vista',     
             total:'100',
             installments:'1',
             order:'teste',
             nrcard:'4654564546556',
             cvc:'454',
             month:'02', 
             year:'2017',
             carrier:'teste',
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
 
    ``` 
   Example of a date for a reverse
   ```  
   @data= { total:"1000",
            numcv:'4201',
            numautor:'2147',
            concentrator:nil
          }  

   ``` 
   Example of a date for a pre-authorization
  
   ``` 
   @data = { distributor:"1000",
            data:"20161105",
            transaction:"705",        
            numautor:"2981",
            numcv:"2614",
            parcelas:"1",
            transorig:"BRA",
            total:'0' 
           }       
   ``` 
   The parameter date is a hash of parameters that are requested by the Network Card for each type of transaction requested. In case of doubt regarding the data to be passed, follow the link in the manual below.
    [case of doubt](https://www.userede.com.br/pt-BR/Lists/Downloads/Attachments/12/2955-Manual-Komerci_WebService.pdf)
  ## Development

  After checking out the repo, run `bin/setup` to install dependencies. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

  To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

 ##Contributing

   Bug reports and pull requests are welcome on GitHub at https://github.com/JoaoPeterli/payment-integration-redecard.

