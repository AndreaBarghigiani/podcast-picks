if Rails.application.secrets.sentry_dsn.presence
  Sentry.init do |config|
    config.dsn = Rails.application.secrets.sentry_dsn
    config.environment = Rails.application.secrets.sentry_env
    config.breadcrumbs_logger = [:active_support_logger]

    # To activate performance monitoring, set one of these options.
    # We recommend adjusting the value in production:
    config.traces_sample_rate = Rails.application.secrets.sentry_traces_sample_rate
  end
end
