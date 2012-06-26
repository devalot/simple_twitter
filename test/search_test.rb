################################################################################
require('test/unit')
require('mocha')
require('simple_twitter')

################################################################################
class SearchTest < Test::Unit::TestCase

  ##############################################################################
  def test_search_method
    # Don't talk with Twitter, use a file instead
    json_file = File.expand_path('gaga.json', File.dirname(__FILE__))
    response = stub('response', :body => File.read(json_file))
    HTTParty.expects(:get).returns(response)

    # Test SimpleTwitter::Search#search
    searcher = SimpleTwitter::Search.new
    tweets = searcher.search("doesn't matter")

    assert(tweets.is_a?(Array))
    assert(tweets.all? {|t| t.is_a?(SimpleTwitter::Tweet)})
  end
end
