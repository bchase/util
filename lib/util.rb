require "util/version"
require "util/string/japanese_helpers"

module Util
  # Allows shortcut:
  #
  #   class Foo
  #     virtus :foo, :bar
  #   end
  #
  # Instead of:
  #
  #   class Foo
  #     include Virtus.model
  #
  #     attribute :foo
  #     attribute :bar
  #   end
  #
  def self.define_virtus_helper
    require 'virtus'

    Object.class_eval do
      def virtus(*attr_syms)
        self.include ::Virtus.model

        attr_syms.each do |attr_sym|
          self.attribute attr_sym
        end
      end
    end
  end

  def self.define_pathname_helper
    require 'pathname'

    Kernel.class_eval do
      alias :pn :Pathname
    end
  end
end
