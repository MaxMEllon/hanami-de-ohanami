require 'spec_helper'
require_relative '../../../../apps/web/controllers/users/sign_out'

describe Web::Controllers::Users::SignOut do
  let(:action) { Web::Controllers::Users::SignOut.new }
  let(:params) { Hash[] }

  it 'is successful' do
    response = action.call(params)
    response[0].must_equal 200
  end
end
