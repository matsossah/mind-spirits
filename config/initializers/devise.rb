# Use this hook to configure devise mailer, warden hooks and so forth.
# Many of these configuration options can be set straight in your model.
Devise.setup do |config|

  config.mailer_sender = 'mind-spirits@gmail.com'

  require 'devise/orm/active_record'

  config.case_insensitive_keys = [:email]

  config.strip_whitespace_keys = [:email]


  config.skip_session_storage = [:http_auth]


  config.stretches = Rails.env.test? ? 1 : 10


  config.reconfirmable = true


  config.expire_all_remember_me_on_sign_out = true


  config.password_length = 8..72


  config.reset_password_within = 6.hours


  config.sign_out_via = :delete

  Devise.setup do |config|
    config.omniauth :facebook, ENV["FB_ID"], ENV["FB_SECRET"], scope: 'email', info_fields: 'email, first_name,last_name', image_size: 'large'
  end

end
