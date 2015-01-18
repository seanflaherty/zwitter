class ZweetsController < ApplicationController
    before_action :get_zweet, only: [:edit, :update, :destroy]
    before_action :check_auth, :only => [:edit, :update, :destroy]

    def index
        # if params[:zipcode]
        #     @zweets = Zweet.where(zipcode: params[:zipcode])
        # else
        #     @zweets = Zweet.all
        # end
        # respond_to do |format|
        #     format.html # index.html.erb
        #     format.json { render json: @zweets }
        #     format.xml { render xml: @zweets }
        # end
        #
        # if params[:name]
        #     @zombie = Zombie.where(name: params[:name]).first
        #     @zweets = @zombie.zweets
        # else
            @zweets = Zweet.all
        #end
    end


    def get_zweet
        @zweet = Zweet.find(params[:id])
    end

    def check_auth
        if session[:zombie_id] != @tweet.zombie_id
            flash[:notice] = "sorry, you can't edit this tweet"
            redirect_to zweets_path
        end
    end

    def show
        #SCF @zweet =
    end

end
