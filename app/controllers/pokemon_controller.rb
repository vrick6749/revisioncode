class PokemonController < ApplicationController
    skip_before_action :verify_authenticity_token
    def create

        render json: {name: params[:name], type: params[:type]}
    end 
end