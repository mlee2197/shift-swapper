OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do
    provider :developer if Rails.env.development?
    provider :github, '158500103ec9974e2a98','1fabe65879036e8028539ee91ea49b6515ba7814'
           #{ :name => ":github", :scope => ['read:user','user:email']}

end