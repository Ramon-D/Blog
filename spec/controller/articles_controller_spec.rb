require 'spec_helper'

RSpec.describe ArticlesController, type: :controller do
  describe 'GET #index' do
    it 'should respond with success and render template' do
      get :index
      expect(response).to be_success
      expect(response).to render_template(:index)
    end
  end

  describe 'GET #new' do
    before { get :new }

    it 'should respond with success and render template' do
      expect(response).to be_success
      expect(response).to render_template(:new)
    end

    it 'should initiate a new article' do
      expect(assigns(:article)).to be_new_record
    end
  end

  describe 'POST #create' do
    it 'should create a new article'
    end

    it 'should not create a new article'
    end
  end
end
