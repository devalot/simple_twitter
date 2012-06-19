module SimpleTwitter
  class Search

    ############################################################################
    SEARCH_URL = "http://search.twitter.com/search.json"

    ############################################################################
    attr_accessor(:results_per_page)

    ############################################################################
    def initialize
      @resutls_per_page = 10
    end

    ############################################################################
    # Returns a Hash from Twitter's search results JSON.
    def search (search_term)
      params = {
        :q   => search_term,
        :rpp => @resutls_per_page,
      }

      response = HTTParty.get(SEARCH_URL, :query => params)
      JSON.parse(response.body)
    end
  end
end
