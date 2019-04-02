require 'rails_helper'

describe UsersController do
   describe "#create" do
       context 'when I create a new user' do
           it 'should redirect me to login page' do
               user_parameters = {fname: 'Michael', lname: 'Tseng', uname: 'Ltseng1', pwd: 'Ltseng1', email: 'ltseng1@binghamton.edu'}
               post :create, user: user_parameters 
               expect(response).to redirect_to(index_path)
            end
       end
    end
end