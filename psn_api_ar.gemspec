Gem::Specification.new do |s|
  s.name        = 'psn_api_ar'
  s.version     = '0.1.0'
  s.date        = '2012-04-04'
  s.summary     = "Psn Api"
  s.description = "psn api binding from http://www.psnapi.com.ar/ps3/api/psn.asmx"
  s.authors     = ["Thiago Oliveira"]
  s.email       = 'thiago@astux.com.br'
  s.files       = ["lib/psn_api_ar.rb"]
  s.homepage    = 'http://rubygems.org/gems/psn_api_ar'
  s.add_dependency 'nokogiri', '>= 1.5.0'
  s.add_dependency 'nori', '>= 1.1.0'
end
