class Datasource
    attr_accessor :response
    def set_key key
        @key = key
    end
    def create name
        @response = 200
        self
    end
end