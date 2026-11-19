cask "tuff" do
  version "11.4.0"
  sha256 "09fd05c0465e5fcc64553fbe9965b387f3b6ce7cca1ad8b750843429e5792dc1"

  url "https://github.com/tuff-app/TUFF/releases/download/v#{version}/TUFF-v#{version}-macos-arm64.zip"
  name "TUFF"
  desc "Run local language models, including ones bigger than your memory"
  homepage "https://tuff-app.github.io/"

  auto_updates true
  depends_on arch: :arm64
  depends_on macos: :sequoia

  app "TUFF.app"
  binary "#{appdir}/TUFF.app/Contents/Resources/bin/tuff"

  caveats <<~EOS
    TUFF is ad-hoc signed and not notarized. macOS may require approval in
    System Settings > Privacy & Security before its first launch.
    Model weights are downloaded separately in the app.
  EOS
end
