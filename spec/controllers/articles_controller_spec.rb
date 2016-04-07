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
      it 'redirect to :new' do
        post :create, article: attributes_for(:article, title: nil)
        expect(response).to render_template :new
      end
    end
  end
  describe 'GET #index' do
    it 'render template index' do
      get :index
      expect(response).to render_template :index
    end
  end
  describe 'GET #new' do
    it 'render template new' do
      get :new
      expect(response).to render_template :new
    end
  end

  describe 'GET #show' do
    it 'the requested article to @article' do
      article = create(:article)
      get :show, id: article
      expect(assigns(:article)).to eq article
    end

    it 'render template show' do
      article = create(:article)
      get :show, id: article
      expect(response).to render_template :show
    end
  end
end
