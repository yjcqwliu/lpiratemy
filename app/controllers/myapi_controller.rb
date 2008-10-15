class MyapiController < ApplicationController
  def index
  api_key = "7bc6754b4a20457f4ed8e7aad90de750"
  secret_key = "d1a779a6b23f6c5131561731466a7081"
  
    params['method'] = "Friend.get"
	params['session_key'] = secret_key
	params['api_key'] = api_key
    params['format'] = 'XML'
	params['v'] = '0.1'
	params['call_id'] = '1'
	render :text => post(params).body.inspect
  
  end
  def post(params)
      #pp "### Posting Params: #{params.inspect}" if DEBUG
	  url = URI.parse('http://api.manyou.com/openapi.php')
      Net::HTTP.post_form(url, params)
    end
end
