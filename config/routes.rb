Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
root to: "welcome#index"
resources :welcome 
resources :posts
resources :studios 
get "/api/studios/brickell" => "studios#brickell"
get "/api/studios/downtown" => "studios#downtown"
get "/api/studios/wynwood" => "studios#wynwood"
get "/api/studios/southbeach" => "studios#southbeach"


get "/welcome/wynwood/yoga" => "welcome#yogawyn"
get "/welcome/wynwood/barre" => "welcome#barrewyn"
get "/welcome/wynwood/boxing" => "welcome#boxingwyn"
get "/welcome/wynwood/pilates" => "welcome#pilateswyn"
get "/welcome/wynwood/cycling" => "welcome#cyclewyn"
get "/welcome/downtown/yoga" => "welcome#yogadt"
get "/welcome/downtown/barre" => "welcome#barredt"
get "/welcome/downtown/boxing" => "welcome#boxingdt"
get "/welcome/downtown/pilates" => "welcome#pilatesdt"
get "/welcome/downtown/cycling" => "welcome#cycledt"
get "/welcome/brickell/yoga" => "welcome#yogabrick"
get "/welcome/brickell/barre" => "welcome#barrebrick"
get "/welcome/brickell/boxing" => "welcome#boxingbrick"
get "/welcome/brickell/pilates" => "welcome#pilatesbrick"
get "/welcome/brickell/cycling" => "welcome#cyclebrick"
get "/welcome/southbeach/cycling" => "welcome#cyclesb"
get "/welcome/southbeach/yoga" => "welcome#yogasb"
get "/welcome/southbeach/pilates" => "welcome#pilatessb"
get "/welcome/southbeach/barre" => "welcome#barresb"
get "/welcome/southbeach/boxing" => "welcome#boxingsb"



scope "/api" do
resources :studios
end
end

