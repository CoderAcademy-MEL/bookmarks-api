Rails.application.routes.draw do
  get "/", to: "bookmarks#index"
  post "/create", to: "bookmarks#create"
end
