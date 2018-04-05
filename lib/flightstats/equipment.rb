module FlightStats
  class Equipment < Resource
    attr_accessor :iata,
                  :name,
                  :turbo_prop,
                  :jet,
                  :widebody,
                  :regional
  end

  @@base_path = "/flex/airlines/equipment/v1/json"

  class << self
    def all(options = {})
      from_response API.get("#{base_path}/all", {}, options), 'airlines'
    end

    def by_iata_code(iata_code, options = {})
      from_response API.get("#{base_path}/iata/#{iata_code}", {}, options), 'equipment'
    end

    def base_path
      @@base_path
    end
  end
end