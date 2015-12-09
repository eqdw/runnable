module Runnable
  def self.included base
    base.send :include, InstanceMethods
    base.extend ClassMethods
  end

  module InstanceMethods
    def initialize(*args)
      @args = args
    end
  end

  module ClassMethods
    def run(*args)
      new(*args).run
    end
  end
end
