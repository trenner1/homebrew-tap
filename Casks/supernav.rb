cask "supernav" do
  version "1.0.0"
  sha256 "a888bea5a91fad829f2cb3de48324628c4a660e40f3f2889af91b2fbb0d839fa"

  url "https://github.com/trenner1/supernav/releases/download/v#{version}/SuperNav.zip"
  name "SuperNav"
  desc "Pop!_OS-style keyboard navigation between monitors and workspaces"
  homepage "https://github.com/trenner1/supernav"

  depends_on macos: :sonoma

  app "SuperNav.app"

  uninstall quit: "local.supernav"

  zap trash: "~/Library/Preferences/local.supernav.plist"

  caveats <<~EOS
    SuperNav is not notarized. On first launch, allow it under
      System Settings → Privacy & Security → Open Anyway
    then grant it Accessibility access under
      System Settings → Privacy & Security → Accessibility

    To start it at login, add it under System Settings → General → Login Items.
  EOS
end
