cask "unminimizer" do
  version "1.0.0"
  sha256 "903b7e69390ccbcb3e86e99aa4dbbd3b5afc95eb9e059a34b8090705f83eba37"

  url "https://github.com/bjornorri/Unminimizer/releases/download/v#{version}/Unminimizer-#{version}.zip"
  name "Unminimizer"
  desc "Unminimize windows with a keyboard shortcut"
  homepage "https://github.com/bjornorri/Unminimizer"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "Unminimizer.app"

  zap trash: [
    "~/Library/Preferences/com.bjornorri.Unminimizer.plist",
    "~/Library/Application Support/Unminimizer",
  ]
end
