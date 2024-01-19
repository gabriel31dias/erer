Rails.application.routes.draw do
  devise_for :users
  root to: 'mains#home'

  resources :main
  # Rotas adicionais
  get '/home', to: 'mains#home', as: 'home'
  get '/nivel1', to: 'mains#nivel1', as: 'nivel1'
  post '/nivel1', to: 'mains#nivel1_post', as: 'nivel1_post'
  get '/nivel2', to: 'mains#nivel2', as: 'nivel2'
  post '/nivel2', to: 'mains#nivel2_post', as: 'nivel2_post'
  get '/nivel3', to: 'mains#nivel3', as: 'nivel3'
  post '/nivel3', to: 'mains#nivel3_post', as: 'nivel3_post'
  get '/nivel4', to: 'mains#nivel4', as: 'nivel4'
  post '/nivel4', to: 'mains#nivel4_post', as: 'nivel4_post'
  get '/nivel5', to: 'mains#nivel5', as: 'nivel5'
  post '/nivel5', to: 'mains#nivel5_post', as: 'nivel5_post'
  get '/nivel6', to: 'mains#nivel6', as: 'nivel6'
  post '/nivel6', to: 'mains#nivel6_post', as: 'nivel6_post'
  get '/nivelamento', to: 'mains#nivelamento', as: 'nivelamento'
  post '/nivelamento', to: 'mains#nivelamento', as: 'nivelamento_post'

  get '/o_brasas', to: 'mains#o_brasas', as: 'o_brasas_post'
  get '/metodo', to: 'mains#metodo', as: 'metodo'
  get '/unidades', to: 'mains#unidades', as: 'unidades'
  get '/indique_e_ganhe', to: 'mains#indique_e_ganhe', as: 'indique_e_ganhe'
  get '/feed', to: 'mains#feed', as: 'feed'

  get '/fale_conosco', to: 'mains#fale_conosco', as: 'fale_conosco'
  post '/fale_conosco', to: 'mains#fale_conosco_post', as: 'fale_conosco_post'

  get '/trabalhe', to: 'mains#trabalhe', as: 'trabalhe'
  post '/trabalhe', to: 'mains#trabalhe', as: 'trabalhe_post'

  get 'contato', to: 'mains#contato', as: 'contato'
  post 'contato', to: 'mains#contato', as: 'contato_post'

  get '/franqueado', to: 'mains#franqueado', as: 'franqueado'

  get '/concluido', to: 'mains#concluido', as: 'concluido'
  get '/cursos', to: 'mains#cursos', as: 'cursos'
  get '/tipo', to: 'mains#tipo', as: 'tipo'
  get '/prek', to: 'mains#prek', as: 'prek'
  get '/kids', to: 'mains#kids', as: 'kids'
  get '/jr_teens', to: 'mains#jr_teens', as: 'jr_teens'
  get 'adults', to: 'mains#adults', as: 'adults'
  get '/certificacoes', to: 'mains#certificacoes', as: 'certificacoes'
  get '/on_demand', to: 'mains#on_demand', as: 'on_demand'
  get '/bol', to: 'mains#bol', as: 'bol'
  get 'imersao', to: 'mains#imersao', as: 'imersao'
  get '/conversation', to: 'mains#conversation', as: 'conversation'
  get '/pff', to: 'mains#pff', as: 'pff'
  get '/seniors', to: 'mains#seniors', as: 'seniors'
  get 'pra_mim', to: 'mains#pra_mim', as: 'pra_mim'





  get '/mains/new', to: 'mains#new', as: 'mains_new'

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check
end
