require "twitter"
class TwitterClient

	def initialize(options={})
		@client_type = options[:client_type]
		@consumer_key        = "oIWXPp9IIpjRmoyAc5L4X0ec0"
		@consumer_secret     = "3I7ywnm2wnux7dh38bTbeL5uMz1CIORGgPr0Pd6gW1eeuSTkkF"
		@access_token        = "261888282-5d2uVvSIMiRVaD3rZSntLzFOnI6sxA3TZrARIqCC"
		@access_token_secret = "DTkwxYtQMwgIYk5Xy2FXRWye6s85DbyqfCN8EusjLulBe"		
	end

	def setup_client
		twitter_client = if @client_type == 'streaming'
							Twitter::Streaming::Client
						else
							Twitter::REST::Client
						end
		twitter_client.new do |config|
			config.consumer_key        = @consumer_key
			config.consumer_secret     = @consumer_secret
			config.access_token        = @access_token
			config.access_token_secret = @access_token_secret
		end
	end
end