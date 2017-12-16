class ApplicationController < ActionController::API
  include DeviseTokenAuth::Concerns::SetUserByToken
  before_action :ensure_json_request

  rescue_from ActiveRecord::RecordNotFound, with: :record_not_found

  private

    def ensure_json_request
      return if request.headers['Accept'] =~ /vnd\.api\+json/
      head :not_acceptable
    end

    def record_not_found
      render json: { error: I18n.t('error.not_found') }, status: :not_content
    end
end
