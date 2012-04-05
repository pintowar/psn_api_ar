PsnApiAr
===========

A Ruby API bindings for http://psnapi.com.ar/ps3/api/psn.asmx
Simply parses xml from PSN Public Trophies.

Installation
------------

    gem install psn_api_ar

Usage
-----

    require "psn_api_ar"
    
    client = PsnApiAr::Client.new
    client.get_games 'user_id' #like pintowar ;)

