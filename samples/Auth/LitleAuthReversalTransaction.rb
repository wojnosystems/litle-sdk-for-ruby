require 'LitleOnline'
include LitleOnline
 
#Auth Reversal
#litleTxnId contains the Litle Transaction Id returned on the authorization
reversal_info = {'litleTxnId' => '100000000000000001'}
reversal_response = LitleOnlineRequest.new.auth_reversal(reversal_info)
 
#display results
puts "Response: " + reversal_response.authReversalResponse.response
puts "Message: " + reversal_response.authReversalResponse.message
puts "Litle Transaction ID: " + reversal_response .authReversalResponse.litleTxnId

if (!reversal_response.authReversalResponse.message.eql?'Approved')
   raise ArgumentError, "LitleAuthReversalTransaction has not been Approved", caller
end
