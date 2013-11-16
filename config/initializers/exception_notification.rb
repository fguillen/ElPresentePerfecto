if Rails.env.production? || Rails.env.staging?
  ElPresentePerfecto::Application.config.middleware.use(
    ExceptionNotifier,
    :email_prefix => "[ElPresentePerfecto] ",
    :sender_address => APP_CONFIG[:admin_email],
    :exception_recipients => [APP_CONFIG[:admin_email]]
  )
end
