require 'rails_helper'

RSpec.describe CatsController, type: :controller do
  
  describe '#index' do
    before { get :index }

    it { should render_template :index }
    it { should respond_with :success  }
  end

  describe '#new' do
    before { get :new }

    it { should render_template :new }
    it { should respond_with :success }
  end

end
