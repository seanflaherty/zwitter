Rails.application.routes.draw do
    resources :zweets

    root to: 'zweets#index'

    # to retrieve zweets by zipcode ==NOT USED==
    # get '/local_tweets/:zipcode' => 'tweets#index', as: local_tweets

    # get zweets by a specific username
    #get ':name' => 'tweets#index', as: 'zombie_zweets'
end
