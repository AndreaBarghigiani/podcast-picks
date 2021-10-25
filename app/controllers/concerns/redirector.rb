module Redirector
  extend ActiveSupport::Concern

  included { before_action :redirect_host? }

  private

  def redirect_host?
    unless Rails.env.development? || request.host == Rails.application.secrets.http_host
      redirect_to "https://#{Rails.application.secrets.http_host}#{request.path}"
    end
  end
end
