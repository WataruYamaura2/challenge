require 'rails_helper'

RSpec.describe Blog do
  let(:blog) { create(:blog) }
  describe 'title' do
    context 'when it is empty' do
      before { blog.title = nil }
      it { is_expected.not_to be_valid }
    end

    context 'when it is over' do
      before { blog.title = 'a' * 1001 }
      it { is_expected.not_to be_valid }
    end
  end
  describe 'body' do
    context 'when it is empty' do
      before { blog.body = nil }
      it { is_expected.not_to be_valid }
    end

    context 'when it is over' do
      before { blog.body = 'a' * 51 }
      it { is_expected.not_to be_valid }
    end
  end
end
