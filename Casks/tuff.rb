cask "tuff" do
  version "11.6.0"
  sha256 "9292f9bf0858a346bd7fec3b842c559fcef7d75bd0ea35ec8f3a5b710312d0d7"

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
