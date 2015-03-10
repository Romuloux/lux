module Lux
  class FeaturedGame

    def self.featured_game(options = {})
      service = "featured_game"
      Lux.request(Lux.build_resource(service,options))
    end

  end
end