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
    render "shifts/dashboard"
  end

  def failure
  end

  def destroy
    reset_session
    
    render "shifts/logout"
  end

end
