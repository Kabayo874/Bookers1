Rails.application.routes.draw do
  get '/' => "homes#top"
  resources :books
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end


#  resourceで指定しているが欲しいページが表示されない
# rails routesで確認。books/indexというルートは無かった