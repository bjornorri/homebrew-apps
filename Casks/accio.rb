cask "accio" do
  version "1.1.1"
  sha256 "14236dd0d712a63241efc071ecc507e376ec697157dab8882f32aee15f5dbb2f"

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
