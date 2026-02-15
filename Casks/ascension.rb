cask "ascension" do
  version "4.0.0"
  sha256 "7369d1f0b2af4bc63022147f0ecb87edc6b7b561ec62d2dd458920827e164d3e"

  url "https://github.com/vigo/Ascension/releases/download/v#{version}/Ascension-#{version}.zip"
  name "Ascension"
  desc "ANSI/ASCII art viewer and text editor for macOS"
  homepage "https://github.com/vigo/Ascension"

  depends_on macos: ">= :ventura"

  app "Ascension.app"

  zap trash: [
    "~/Library/Preferences/com.byteproject.Ascension.plist",
    "~/Library/Saved Application State/com.byteproject.Ascension.savedState",
  ]
end
