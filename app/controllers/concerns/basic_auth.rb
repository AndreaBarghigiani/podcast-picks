module BasicAuth
  extend ActiveSupport::Concern

  included { before_action :check_basic_auth }

  private

  def check_basic_auth
    username = Rails.application.secrets.basic_auth_username
    password = Rails.application.secrets.basic_auth_password

    if username.present? && password.present?
      http_basic_authenticate_or_request_with(
        name: username, password: password
      )
    end
  end
end
