class ApplicationController < ActionController::API
  include DeviseTokenAuth::Concerns::SetUserByToken
  
  before_action :ensure_json_request

  rescue_from ActiveRecord::RecordNotFound, with: :record_not_found

  private

    def ensure_json_request
      unless request.headers['Accept'] =~ /vnd\.api\+json/
        head :not_acceptable
      else
        unless request.get?
          return if request.headers['Content-Type'] =~ /vnd\.api\+json/
          head :unsupported_media_type
        end
      end 
    end

    def record_not_found
      render json: { error: I18n.t('error.not_found') }, status: :not_content
    end
end
