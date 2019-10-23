Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root "application#root"
  post "/cart", to: "application#add_item_to_cart"
  get "poducts/index", to: "application#product_index"
end
