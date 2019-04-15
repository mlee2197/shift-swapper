class SessionsController < ApplicationController
  def new
  end

   def nested_hash nh
    puts "VALUE is a nested hash"
    p nh
    nh.each_pair do |key, value| 
      puts "KEY: #{key}"
      if value.kind_of?(Hash) 
        nested_hash(value)
      else
        puts "VALUE: #{value}"
      end
    end
  end

  def create
    auth_hash = request.env['omniauth.auth']
    puts "\nauth_hash\n"
    p auth_hash
    puts ' '
    auth_hash.each_pair do |key, value| 
      puts "KEY: #{key}"
      if value.kind_of?(Hash)
        nested_hash(value)
      else
        puts "VALUE: #{value}"
      end
    end
    #p auth_hash.kind_of?(Hash)
    puts ' '
    @authorization = Authorization.find_by(provider: auth_hash["provider"], uid: auth_hash["uid"])
    puts "\nauthorization\n"
    p @authorization
    puts ' '
    if @authorization
      #render :text => "Welcome back #{@authorization.user.name}! You have already signed up."
      render "shifts/dashboard"
    else
      @user = User.create! :name => auth_hash["info"]["name"], :email => auth_hash["info"]["email"]
      @authorization = 
        @user.authorizations.create :provider => auth_hash["provider"], :uid => auth_hash["uid"]
      puts "\n @user\n"
      p @user
      puts '\n'   
      puts "\n @user.authorizations\n"
      p @user.authorizations
      puts '\n'        
      #render :text => "Hi #{@user.name}! You've signed up."
      render "shifts/dashboard"
    end 
  end
  
  #def create
  #  render "shifts/dashboard"
  #end

  def failure
  end

  def destroy
    reset_session
    
    render "shifts/logout"
  end

end
