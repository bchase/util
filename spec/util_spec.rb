require 'spec_helper'

describe Util do
  describe '::define_virtus_helper' do
    let(:klass) {
      Class.new do
        virtus :foo
      end
    }

    before do
      Util.define_virtus_helper
    end

    it 'provides a shortcut for defining Virtus models' do
      klass.new(foo: 'bar').foo.should eq 'bar'
    end
  end
end
