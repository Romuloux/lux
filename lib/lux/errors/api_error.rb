module Lux
  class ApiError < StandardError

    def initialize(code)
      super(code)
    end

  end
end