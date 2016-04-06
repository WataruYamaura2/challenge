require 'rails_helper'

RSpec.describe ArticlesController do
  describe 'POST #create' do
    it 'saves the new article' do
      expect do
        post :create, article: FactoryGirl.attributes_for(:article)
      end.to change(Article, :count).by(1)
    end
  end
end
