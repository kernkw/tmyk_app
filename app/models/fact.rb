require 'httparty'
require 'pry'

class Fact < ActiveRecord::Base

  def self.random_text
    @facts = Fact.order("RANDOM()").first
    result = HTTParty.get("#{@facts.url}")
    return result['value']['joke'] if @facts.url.include?('random')
    return result['facts'] if @facts.url.include?('cats')
    return result['insult'] if @facts.url.include?('insult')
  end
end

#   "http://numbersapi.com/#{n}"
#   # 5 is the number of babies born in a quintuplet.

#   "http://tts-api.com/tts.mp3?q=#{}"
#   # Text to voice
