cask "default-apps" do
  version "0.1.10"
  sha256 "94ae5ea540dff568df85bdf3f752759deaf362dc1917b57f01d097291af9cd08"

  url "https://github.com/sunven/default-apps/releases/download/v#{version}/default-apps-darwin-arm64.zip"
  name "Default Apps"
  desc "Set default apps for file types and URL schemes, with preview and read-back verification"
  homepage "https://github.com/sunven/default-apps"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on arch: :arm64
  depends_on macos: ">= :ventura"

  app "Default Apps.app"

  zap trash: [
    "~/Library/Application Support/Default Apps",
    "~/Library/Preferences/io.github.sunven.default-apps.plist",
  ]

  caveats do
    <<~EOS
      This build is ad-hoc signed and not notarized.
      If Gatekeeper blocks the first launch, run:
        xattr -dr com.apple.quarantine "/Applications/Default Apps.app"
    EOS
  end
end
