require 'rails_helper'

RSpec.describe SessionsController, type: :controller do
  
  describe "GET #new" do
    
    it "returns http success" do
      get :new
      expect(response).to have_http_status(:success)
    end
  end

  #describe "#create" do
  #  it "should successfully create a user" do
  #    expect {
  #      post :create, provider: :github
  #    }.to change{ User.count }.by(1)
  #  end
  #end
  
  describe "GET #failure" do
    
    it "returns http success" do
      get :failure
      expect(response).to have_http_status(:success)
    end
  end
  
  
  describe "GET #destroy" do
    let(:id1) {"1"}
    let(:user1) {instance_double('User', name: 'TestName', email: 'testemail@xyz.com')}
    
    it "returns http success" do
      allow(User).to receive(:find).with(session[id1]).and_return(user1)
      get :destroy
      expect(response).to have_http_status(:success)
    end
  end
  
end

