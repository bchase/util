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

  describe '::define_pathname_helper' do
    it 'provides a shortcut for defining Virtus models' do
      self.should_not respond_to(:pn)

      Util.define_pathname_helper

      pn('foo.bar').should eq Pathname.new('foo.bar')
    end
  end
end
