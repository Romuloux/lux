module Lux
  class Champion

    # V1.2

    def self.champion(options = {})
      if options[:id].nil?
        service = "champions"  
      else
        service = "champions_by_id"
      end
      Lux.request(Lux.build_resource(service,options))
    end

  end
end