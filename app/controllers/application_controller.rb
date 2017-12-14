class ApplicationController < ActionController::API
  rescue_from ActiveRecord::RecordNotFound, with: :record_not_found

  private

    def record_not_found
      render json: { error: I18n.t('error.not_found') }, status: :not_content
    end
end
