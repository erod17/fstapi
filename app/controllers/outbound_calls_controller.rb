class OutboundCallsController < ApplicationController
  require 'drb'
  require 'json'
  
  Adhearsion = DRbObject.new_with_uri "druby://fivestartelco.com:9050"
  
  def initiate_calling
    
    call_params = outbound_call_params.to_json
        
    count = Adhearsion.initiate_outbound_call(call_params)
    render json: {status: 'SUCCESS', message: 'Call count', data: count }, status: :ok
    
    
  end
  
  
  
  private

  def outbound_call_params
      params.permit(:to, :from)
  end

  
end
