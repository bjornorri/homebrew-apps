cask "accio" do
  version "1.0.0"
  sha256 "0357bd8d15f413f2480b3a0da3a34aa08c98d58306d5b200ca2947e46689d1ff"

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
