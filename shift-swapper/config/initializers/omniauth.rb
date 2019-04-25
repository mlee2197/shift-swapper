OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do
    provider :developer if Rails.env.development?
    provider :github, 'ce69cb4e90e805d4082e','f18ddd9d56b3a07bf004f38d0fbe3b30fac25d32'
     #    { :name => "github", :scope => ['read:user','user:email']}       
    provider :facebook, '429123957844787', '47dbd42613fa704351363a82bc30f02a'

end