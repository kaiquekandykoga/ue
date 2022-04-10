require_relative "lib/ue/version"

Gem::Specification.new do |s|
  s.name = "ue"
  s.version = Ue::VERSION
  s.licenses = ["MIT"]
  s.summary = "ue"
  s.description = ""
  s.homepage = "https://github.com/kaiquekandykoga/ue"
  s.author = "Kaíque Kandy Koga"
  s.files = Dir["lib/**/*.rb"]

  s.add_dependency "rack"
end
