module Lux
  class LuxError < StandardError

    def initialize(code)
      super(code)
    end

  end
end