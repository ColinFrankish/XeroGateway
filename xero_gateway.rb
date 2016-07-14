require 'xero_gateway'
require 'pry'

class GatewayTest

  #Use example controller for authentication at https://github.com/xero-gateway/xero_gateway

  def set_gateway  #this is basically what happens in controller to create a gateway object from
                    #which we can extract the necessary info using built in and custom code as below. 

  #   @gateway = XeroGateway::Gateway.new('QCH8UE8M45XRGM6SX90SOH4J8VDX6E', 'WRLSBHUJGLYUPKMXXZLGJ6T2KFINZL')
  #   token = @gateway.request_token
  #   token.authorize_url
  #   
  #   # user returns the oauth verification token passed as a param as below:
  #   gateway.authorize_from_request(request_token.token, request_token.secret, :oauth_verifier => params[:oauth_verifier])
  #
  #   Which is the same as below:
  #   @gateway.authorize_from_request(token.token, token.secret, oauth_verifier: "5441267")
  end

  # Obviously we might want to store some things in instance variables - not sure yet.
  def all_invoices
    @gateway.get_invoices.invoices
  end

  def get_all_ACC_RECEIVABLES
    all_invoices.select{ |inv| inv.invoice_type == "ACCREC"}
  end

  def count_ACC_RECEIVABLES
    get_all_ACC_RECEIVABLES.count
  end

  def total_ACC_RECEIVABLES_payments
    get_all_ACC_RECEIVABLES.map { |accrec| accrec.amount_paid.to_i}.sum
  end

  # and so on and so forth

end



