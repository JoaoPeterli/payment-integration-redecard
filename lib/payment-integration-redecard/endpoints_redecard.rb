 module REDECARD_END_POINT   

  #Responsibl
  TRANSACTION_TEST = "https://ecommerce.redecard.com.br/pos_virtual/wskomerci/cap_teste.asmx/GetAuthorizedTst"


  #Responsible for PreAuthorize teste
  PREAUTHORIZE_TEST = "https://ecommerce.redecard.com.br/pos_virtual/wskomerci/cap_teste.asmx/ConfPreAuthorizationTst"


  #Responsible for receipt teste
  RECEIPT_TEST ="https://ecommerce.userede.com.br/pos_virtual/wskomerci/cap_teste.asmx/VoidTransactionTst"


  #Responsible for transaction
  TRANSACTION = "https://ecommerce.redecard.com.br/pos_virtual/wskomerci/cap.asmx/GetAuthorized"


  #Responsible for PreAuthorize
  PREAUTHORIZE = "https://ecommerce.redecard.com.br/pos_virtual/wskomerci/cap.asmx/ConfPreAuthorization"


  #Responsible for receipt
  RECEIPT ="https://ecommerce.userede.com.br/pos_virtual/wskomerci/cap.asmx/VoidTransaction"

 end
