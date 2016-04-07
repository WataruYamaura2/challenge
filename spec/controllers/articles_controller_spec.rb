require 'rails_helper'
require 'pry-rails'
RSpec.describe ArticlesController do
  shared_examples_for '2tests' do |template|
    it { expect(response.status).to eq(200) }
    it { expect(response).to render_template template }
  end
  describe 'POST #create' do
    context 'when was able to saves' do
      before { post :create, article: attributes_for(:article) }
      it { change(Article, :count).by(1) }
      it { expect(response).to redirect_to articles_path(assigns([:articles])) }
    end
    context 'when was able to not saves' do
      before { post :create, article: attributes_for(:article, title: nil) }
      it_behaves_like '2tests', :new
    end
  end
  describe 'GET #index' do
    before { get :index }
    it_behaves_like '2tests', :index
  end
  describe 'GET #new' do
    before { get :new }
    it_behaves_like '2tests', :new
  end

  describe 'GET #show' do
    before do
      @article = create(:article)
      get :show, id: @article
    end
    it { expect(assigns(:article)).to eq @article }
    it_behaves_like '2tests', :show
  end
end
