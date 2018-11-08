require 'rubygems'
require 'nokogiri'
require 'open-uri'
require 'time'

class StartScrap
    attr_accessor :base_url, :data

    def initialize
        @base_url = 'https://coinmarketcap.com/all/views/all/'
        @data = {}
    end

    def scrapping_crypomonney
        data = get_content(@base_url)
        data.css('table tr[id*="id-"]').each do |line|
            price = line.css('td')[4].css('a').inner_html
            brand = line.css('td')[1].css('a')[1].inner_html
            @data[brand] = price.split('$')[1].to_f
        end
        self.save_to_db
    end

    def save_to_db
        @data.each do |k, v|
            Crypto.create(name: k, price: v).save
        end
    end

    def perform
        # Appel de la méthode scrapping_crypomonney pour récupérer les noms et valeurs des cryptomonnaies
        # Dans une boucle infinie pour relancer le script toutes les 15 secondes
            self.scrapping_crypomonney
    end

    def get_content(url)
        return Nokogiri::HTML(open(url))
    end
end
