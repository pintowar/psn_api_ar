require 'nokogiri'
require 'nori'
require 'open-uri'

module PsnApiAr
	class Client
		def initialize
			@url_base = "http://www.psnapi.com.ar/ps3/api/psn.asmx"
		end

		def get_game(username, game_id)
			doc = Nokogiri::XML(open("#{@url_base}/getGame?sPSNID=#{username}&sIdGame=#{game_id}"))
			Nori.parse(doc.to_s)
		end

		def get_games(username)
			doc = Nokogiri::XML(open("#{@url_base}/getGames?sPSNID=#{username}"))
			Nori.parse(doc.to_s)["ArrayOfGame"]["Game"]
		end

		def get_list_games(game_id)
			doc = Nokogiri::XML(open("#{@url_base}/getListGames?sGameId=#{game_id}"))
			Nori.parse(doc.to_s)["ArrayOfGame"]["Game"]
		end

		def get_number_list_games
			doc = Nokogiri::XML(open("#{@url_base}/getNumberListGames?"))
			Nori.parse(doc.to_s)["int"]
		end

		def get_psnid(username)
			doc = Nokogiri::XML(open("#{@url_base}/getPSNID?sPSNID=#{username}"))
			Nori.parse(doc.to_s)["PSNId"]
		end

		def get_trophies(username, game_id)
			doc = Nokogiri::XML(open("#{@url_base}/getTrophies?sPSNID=#{username}&sGameId=#{game_id}"))
			Nori.parse(doc.to_s)["ArrayOfTrophy"]["Trophy"]
		end
	end
end
