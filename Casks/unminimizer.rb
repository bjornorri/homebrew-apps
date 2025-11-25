cask "unminimizer" do
  version "1.0.0"
  sha256 "0cf5aae68c4538042220888bc34c809469083e5d6e1af1d11fdb481662affd3e"

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
