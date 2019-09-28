Rails.application.routes.draw do
  
  post '/outcall', to: "outbound_calls#initiate_calling" 
  
  namespace 'api' do
    namespace 'v1' do
      resources :articles
    end  
  end
  
end
