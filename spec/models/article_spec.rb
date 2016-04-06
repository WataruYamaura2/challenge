require 'rails_helper'

RSpec.describe Article do
  let(:article) { create(:article) }
  describe 'title' do
    context 'when it is empty' do
      before { article.title = nil }
      it { is_expected.not_to be_valid }
    end

    context 'when it is over' do
      before { article.title = 'a' * 1001 }
      it { is_expected.not_to be_valid }
    end
  end
  describe 'body' do
    context 'when it is empty' do
      before { article.body = nil }
      it { is_expected.not_to be_valid }
    end

    context 'when it is over' do
      before { article.body = 'a' * 51 }
      it { is_expected.not_to be_valid }
    end
  end
end
