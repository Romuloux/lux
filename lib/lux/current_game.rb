module Lux
  class CurrentGame

    # V1.0
    
    def self.current_game(options = {})
      validate_opts(options)
      service = "current_game"
      Lux.request(Lux.build_resource(service,options))
    end

    private

    def self.validate_opts(options = {})
      raise Lux.LuxError.new("Platform ID is not set") if options[:platformId].nil?
      raise Lux.LuxError.new("Summoner ID is not set") if options[:summonerId].nil?
    end

  end
end