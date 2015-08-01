require 'active_support/concern'
require 'virtus'

# http://brewhouse.io/blog/2014/04/30/gourmet-service-objects.html#real-world-services
module Util::Service
  extend ActiveSupport::Concern


  included do
    def self.call(*args)
      new(*args).call
    end

    self.include Virtus.model
  end
end
