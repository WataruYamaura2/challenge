require 'rails_helper'

RSpec.describe BlogsController do
  describe 'POST #create' do
    it 'saves the new blog in the database' do
      expect do
        post :create, blog: FactoryGirl.attributes_for(:blog)
      end.to change(Blog, :count).by(1)
    end
  end
end
