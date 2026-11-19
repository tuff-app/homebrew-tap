cask "tuff" do
  version "11.2.3"
  sha256 "8750ed0a752167f608713d1c3df5af6783ffaa2016cf134fa461392af7897371"

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
