require 'spec_helper'
require_relative '../../../../apps/web/controllers/users/sign_in'

describe Web::Controllers::Users::SignIn do
  let(:action) { Web::Controllers::Users::SignIn.new }
  let(:params) { Hash[] }

  it 'is successful' do
    response = action.call(params)
    response[0].must_equal 200
  end
end
