module TagsCount
  class RequestService
    def self.get(url)
      RestClient.get(url)
    end
  end
end
