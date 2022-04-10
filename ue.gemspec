require_relative "lib/ue/version"

Gem::Specification.new do |s|
  s.name = "ue"
  s.version = Ue::VERSION
  s.summary = "ue"
  s.authors = ["Kaíque Kandy Koga"]
  s.homepage = "https://github.com/kaiquekandykoga/ue"
  s.license = "MIT"
  s.files = Dir["lib/**/*.rb"]

  s.add_dependency "rack"
end
