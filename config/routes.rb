ActionController::Routing::Routes.draw do |map|
  map.resources :cardsets, :has_many => :cards
end
