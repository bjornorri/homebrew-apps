cask "accio" do
  version "1.0.1"
  sha256 "77f670b8145a4b1138cdbaee26d3eabf88c3fffac1d51d64f3cabcaefc1fc6b4"

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
