class EmailerController < ApplicationController

  def get_send_mail
    url = request.original_url
	RestClient.post "#{url}send_mail", {to: 'saisujith717@gmail.com', subject: 'hello world', body: 'test mail body'}.to_json, accept: :json, content_type: :json
  end
  
  def send_mail
     toaddr, sub, mbody = params[:to], params[:subject], params[:body]	 
	 
     Mail.deliver do
	   to        toaddr
	   subject   sub
	   from      'noreply@example.com'
	   body      mbody
	 end 
  
  end
  
end
