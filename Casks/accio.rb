cask "accio" do
  version "1.0.2"
  sha256 "f5e77c38e0faf02c0bac6ee511a5edad6e0db0ef96b4603d98f0c8dc7529778c"

  url "https://github.com/bjornorri/Accio/releases/download/v#{version}/Accio-#{version}.zip"
  name "Accio"
  desc "Summon your MacOS apps with keyboard shortcuts"
  homepage "https://github.com/bjornorri/Accio"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "Accio.app"

  zap trash: [
    "~/Library/Preferences/com.bjornorri.Accio.plist",
    "~/Library/Application Support/Accio",
  ]
end
