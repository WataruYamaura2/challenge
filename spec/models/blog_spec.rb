require 'rails_helper'

RSpec.describe Blog, type: :model do
  context '#title' do
    it 'is nil' do
      blog = Blog.new(FactoryGirl.attributes_for(:blog, :title_nil))
      blog.valid?
      expect(blog.errors[:title]).to be_present
    end

    it 'is ovar' do
      blog = Blog.new(FactoryGirl.attributes_for(:blog, :title_over))
      blog.valid?
      expect(blog.errors[:title]).to be_present
    end
  end
  context '#text' do
    it 'is nil' do
      blog = Blog.new(FactoryGirl.attributes_for(:blog, :text_nil))
      blog.valid?
      expect(blog.errors[:text]).to be_present
    end

    it 'is ovar' do
      blog = Blog.new(FactoryGirl.attributes_for(:blog, :text_over))
      blog.valid?
      expect(blog.errors[:text]).to be_present
    end
  end
end
