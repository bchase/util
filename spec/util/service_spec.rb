require 'spec_helper'

require_relative '../../lib/util/service.rb'

describe Util::Service do
  describe '.call' do
    it 'makes attr args available as barewords to #call' do
      h = TestService.call \
            foo: 'val1',
            bar: 'val2'
      h[:foo].should eq 'val1'
      h[:bar].should eq 'val2'
    end
  end
end

class TestService
  include Util::Service

  attribute :foo
  attribute :bar

  def call
    { foo: foo, bar: bar }
  end
end
