Pod::Spec.new do |s|
  s.name             = "GooglePlacesSearchController"
  s.version          = "0.2.1"
  s.summary      = "Autocompleting address search controller, uses Google Maps Autocomplete API. Written in Swift 4."
  s.homepage         = "https://github.com/shmidt/GooglePlacesSearchController"
  s.screenshots = "https://raw.githubusercontent.com/shmidt/GooglePlacesSearchController/master/Screenshots/view.png", "https://raw.githubusercontent.com/shmidt/GooglePlacesSearchController/master/Screenshots/search.png"
  s.license          = 'MIT'
  s.author             = { "Dmitry Shmidt" => "dima.shmidt@gmail.com" }
  s.social_media_url   = "https://twitter.com/mind_detonator"
  s.swift_version = '4.0'
  s.source           = { :git => "https://github.com/shmidt/GooglePlacesSearchController.git", :tag => s.version.to_s }

  s.platform     = :ios, '8.0'
  s.requires_arc = true

  s.source_files = 'Pod/Classes/**/*'
  s.resources = 'Pod/Assets/*.png'

end
