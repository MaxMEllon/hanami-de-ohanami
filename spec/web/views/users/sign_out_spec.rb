require 'spec_helper'
require_relative '../../../../apps/web/views/users/sign_out'

describe Web::Views::Users::SignOut do
  let(:exposures) { Hash[foo: 'bar'] }
  let(:template)  { Hanami::View::Template.new('apps/web/templates/users/sign_out.html.slim') }
  let(:view)      { Web::Views::Users::SignOut.new(template, exposures) }
  let(:rendered)  { view.render }

  it 'exposes #foo' do
    skip 'This is an auto-generated test. Edit it and add your own tests.'

    # Example
    view.foo.must_equal exposures.fetch(:foo)
  end
end
