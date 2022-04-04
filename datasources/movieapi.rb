#irb(main):001:0> 

require 'themoviedb'
=> true
irb(main):002:0> Tmdb::Api.key 'cc4b67c52acb514bdf4931f7cedfd12b'
=> "cc4b67c52acb514bdf4931f7cedfd12b"
irb(main):003:0> search = Tmdb::Search.new
=> #<Tmdb::Search:0x000001bee7d11a30 @params={}, @resource="/search/movie">
irb(main):004:0> search.resource 'movie'
=> #<Tmdb::Search:0x000001bee7d11a30 @params={}, @resource="/search/movie">
irb(main):005:0> search.query 'hardware'
=> #<Tmdb::Search:0x000001bee7d11a30 @params={:query=>"hardware"}, @resource="/search/movie">
irb(main):006:0> result = search.fetch
=>
[{"adult"=>false,
...
irb(main):007:0> result.class
=> Array
irb(main):008:0> result.respond_to? :each
=> true
irb(main):009:0> result[0].keys
=>
["adult",
 "backdrop_path",
 "genre_ids",
 "id",
 "original_language",
 "original_title",
 "overview",
 "popularity",
 "poster_path",
 "release_date",
 "title",
 "video",
 "vote_average",
 "vote_count"]
irb(main):010:0> result[0]['id']
=> 11309
irb(main):011:0> m = Tmdb::Movie.detail(11309)
=>
{"adult"=>false,
...
irb(main):012:0> m.title
(irb):12:in `<main>': undefined method `title' for {"adult"=>false, "backdrop_path"=>"/nC1qaINaRBY1crPCQoFVPhSrq16.jpg", "belongs_to_collection"=>nil, "budget"=>1500000, "genres"=>[{"id"=>878, "name"=>"Science Fiction"}, {"id"=>53, "name"=>"Thriller"}, {"id"=>27, "name"=>"Horror"}], "homepage"=>"", "id"=>11309, "imdb_id"=>"tt0099740", "original_language"=>"en", "original_title"=>"Hardware", "overview"=>"Mark 13 is a government-built killing machine programmed with artificial intelligence, able to repair and recharge itself from any energy source. Through a series of coincidences, the cyborg's head ends up in the home of a sculptress as a bizarre Christmas present from her boyfriend. Once inside its new home, the cyborg promptly reconstructs the rest of its body using a variety of household utensils and proceeds to go on a murderous rampage.", "popularity"=>9.905, "poster_path"=>"/23vwKsAsPzzb2eZ5y68meBAHL.jpg", "production_companies"=>[{"id"=>927, "logo_path"=>nil, "name"=>"Palace Pictures", "origin_country"=>""}, {"id"=>12745, "logo_path"=>nil, "name"=>"British Screen Productions", "origin_country"=>"GB"}, {"id"=>21443, "logo_path"=>nil, "name"=>"Wicked Films", "origin_country"=>""}, {"id"=>89601, "logo_path"=>nil, "name"=>"British Satellite Broadcasting (BSB)", "origin_country"=>""}], "production_countries"=>[{"iso_3166_1"=>"GB", "name"=>"United Kingdom"}, {"iso_3166_1"=>"US", "name"=>"United States of America"}], "release_date"=>"1990-09-14", "revenue"=>5728953, "runtime"=>93, "spoken_languages"=>[{"english_name"=>"English", "iso_639_1"=>"en", "name"=>"English"}], "status"=>"Released", "tagline"=>"You can't stop progress.", "title"=>"Hardware", "video"=>false, "vote_average"=>5.9, "vote_count"=>211}:Hash (NoMethodError)
        from C:/Ruby30-x64/lib/ruby/gems/3.0.0/gems/irb-1.4.1/exe/irb:11:in `<top (required)>'
        from C:/Ruby30-x64/bin/irb:23:in `load'
        from C:/Ruby30-x64/bin/irb:23:in `<main>'
irb(main):013:0> m.release_date
(irb):13:in `<main>': undefined method `release_date' for {"adult"=>false, "backdrop_path"=>"/nC1qaINaRBY1crPCQoFVPhSrq16.jpg", "belongs_to_collection"=>nil, "budget"=>1500000, "genres"=>[{"id"=>878, "name"=>"Science Fiction"}, {"id"=>53, "name"=>"Thriller"}, {"id"=>27, "name"=>"Horror"}], "homepage"=>"", "id"=>11309, "imdb_id"=>"tt0099740", "original_language"=>"en", "original_title"=>"Hardware", "overview"=>"Mark 13 is a government-built killing machine programmed with artificial intelligence, able to repair and recharge itself from any energy source. Through a series of coincidences, the cyborg's head ends up in the home of a sculptress as a bizarre Christmas present from her boyfriend. Once inside its new home, the cyborg promptly reconstructs the rest of its body using a variety of household utensils and proceeds to go on a murderous rampage.", "popularity"=>9.905, "poster_path"=>"/23vwKsAsPzzb2eZ5y68meBAHL.jpg", "production_companies"=>[{"id"=>927, "logo_path"=>nil, "name"=>"Palace Pictures", "origin_country"=>""}, {"id"=>12745, "logo_path"=>nil, "name"=>"British Screen Productions", "origin_country"=>"GB"}, {"id"=>21443, "logo_path"=>nil, "name"=>"Wicked Films", "origin_country"=>""}, {"id"=>89601, "logo_path"=>nil, "name"=>"British Satellite Broadcasting (BSB)", "origin_country"=>""}], "production_countries"=>[{"iso_3166_1"=>"GB", "name"=>"United Kingdom"}, {"iso_3166_1"=>"US", "name"=>"United States of America"}], "release_date"=>"1990-09-14", "revenue"=>5728953, "runtime"=>93, "spoken_languages"=>[{"english_name"=>"English", "iso_639_1"=>"en", "name"=>"English"}], "status"=>"Released", "tagline"=>"You can't stop progress.", "title"=>"Hardware", "video"=>false, "vote_average"=>5.9, "vote_count"=>211}:Hash (NoMethodError)
        from C:/Ruby30-x64/lib/ruby/gems/3.0.0/gems/irb-1.4.1/exe/irb:11:in `<top (required)>'
        from C:/Ruby30-x64/bin/irb:23:in `load'
        from C:/Ruby30-x64/bin/irb:23:in `<main>'
irb(main):014:0>