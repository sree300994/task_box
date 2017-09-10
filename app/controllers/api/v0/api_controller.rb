class Api::V0::ApiController < ApplicationController
	skip_before_action :verify_authenticity_token

	rescue_from ActiveRecord::RecordNotFound do
		render 'record_not_found.json'
	end
end


