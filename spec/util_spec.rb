require 'spec_helper'

describe Util do
  describe '::define_virtus_helper' do
    let(:klass) {
      Class.new do
        virtus :foo
        # vattr :baz, default: 'boo'
      end
    }

    before do
      Util.define_virtus_helper
    end

    it 'provides a `virtus` shortcut for including Virtus.model and defining Virtus attributes' do
      klass.new(foo: 'bar').foo.should eq 'bar'
    end

    it 'provides a `vattr` shortcut for defining Virtus attributes' do
      pending
      klass.new(foo: 'bar').baz.should eq 'boo'
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
