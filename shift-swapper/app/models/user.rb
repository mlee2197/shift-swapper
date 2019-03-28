class User < ActiveRecord::Base
    validates_format_of :email, :with => /\w+[@]\w+[.]\w+/, :message => "Entered email is Invalid"
end