require 'rails_helper'


RSpec.describe TweetsController, :type => :controller do


  let(:valid_attributes) {
    skip("Add a hash of attributes valid for your model")
  }

  let(:invalid_attributes) {
    skip("Add a hash of attributes invalid for your model")
  }

  let(:valid_session) { {} }

  # describe "GET default homepage user @stackcommerce" do
  #   it "Should Be Correct User Name" do
  #     twitter_user = $twitter.user_timeline("stackcommerce").first
  #     expect(twitter_user.user.name).to eq('stackcommerce')
  #   end
  # end

  describe "GET default homepage user @stackcommerce" do
    it "Should Be Correct User ID" do
      twitter_user = $twitter.user_timeline("stackcommerce").first
      expect(twitter_user.user.id).to eq(2427682069)
    end
  end

  describe "GET Twitter user_timeline" do
    it "gets timeline" do
      twitter_data = $twitter.user_timeline("stackcommerce",{count:25})
      expect(twitter_data.count).to eq(25)
    end
  end

  describe "GET Twitter user" do
    it "Should Be Correct User Name" do
      twitter_user = $twitter.user_timeline("karliekloss").first
      expect(twitter_user.user.name).to eq('Karlie Kloss')
    end
  end

  describe "GET Twitter user" do
    it "Should Be Correct User ID" do
      twitter_user = $twitter.user_timeline("karliekloss").first
      expect(twitter_user.user.id).to eq(28412286)
    end
  end

  describe "GET Twitter user_timeline" do
    it "gets timeline" do
      twitter_data = $twitter.user_timeline("karliekloss",{count:25})
      expect(twitter_data.count).to eq(25)
    end
  end

end