require 'rails_helper'

RSpec.describe ArticlesController do
  describe 'POST #create' do
    context 'saves' do
      it 'the new article' do
        expect do
          post :create, article: FG.attributes_for(:article)
        end.to change(Article, :count).by(1)
      end
      it 'redirect to :index' do
        post :create, article: attributes_for(:article)
        expect(response).to redirect_to articles_path(assigns([:articles]))
      end
    end
    context 'not saves' do
      it "redirect to :new" do
        post :create, article: attributes_for(:article, title: nil)
        expect(response).to render_template :new
      end
    end
  end
end
