require 'rest-client'

module FetchCatsService
     API_URL = 'https://api.thecatapi.com/v1'
  def self.get_cats(count)
    headers = { 'Content-Type' => 'application/json', :"x-api-key" => '12a71f24-1ff4-49bd-8c8e-e958a8866ee4' }
    url = "#{API_URL}/images/search?format=json&category_ids=9&limit=#{count}"
    JSON.parse(RestClient.get(url, headers).body)
  end
end
