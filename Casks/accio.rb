cask "accio" do
  version "1.0.2"
  sha256 "7a7f47cac3a64961692d72940b37e28eb71de9f1a7cc013a40c9ee3f8aea4602"

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
