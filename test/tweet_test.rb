require('test/unit')
require('simple_twitter')

class TweetTest < Test::Unit::TestCase

  def test_hash_turns_into_accessors
    data = {
      'text'              => 'Yo dude DaVinic Coders is so easy',
      'from_user'         => 'super_coder',
      'profile_image_url' => 'http://example.com',
      'created_at'        => 'NOW!',
    }

    tweet = SimpleTwitter::Tweet.new(data)
    assert_equal(data['text'], tweet.text)
    assert_equal(data['from_user'], tweet.user)
    assert_equal(data['profile_image_url'], tweet.profile_image_url)
    assert_equal(data['created_at'], tweet.time )
  end

end
