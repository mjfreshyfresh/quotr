require 'app'
require 'test/unit'
require 'rack/test'
require 'nokogiri'

set :environment, :test

class AppTest < Test::Unit::TestCase
  include Rack::Test::Methods

  def app
    Sinatra::Application
  end

  def test_its_alive
    get '/'
    assert last_response.ok?
    assert last_response.body.include?('Quote')
  end

  def test_its_got_a_quote
    get '/'
    doc = Nokogiri::HTML(last_response.body)
    assert doc.search('//p[@id="quote"]').inner_html.size > 0    
  end
end