module Lux
  class Resource

    def self.champions(region,opts,raw_options)
      "https://#{region}.api.pvp.net/api/lol/#{region}/v1.2/champion?#{opts}"
    end

    def self.champions_by_id(region,opts,raw_options)
      "https://#{region}.api.pvp.net/api/lol/#{region}/v1.2/champion/#{raw_options[:id]}?#{opts}"
    end

    def self.current_game(region,opts,raw_options)
      "https://#{region}.api.pvp.net/observer-mode/rest/consumer/getSpectatorGameInfo/#{raw_options[:platformId]}/#{raw_options[:summonerId]}?#{opts}"
    end

    def self.featured_game(region,opts,raw_options)
      "https://#{region}.api.pvp.net/observer-mode/rest/featured?#{opts}"
    end

  end
end