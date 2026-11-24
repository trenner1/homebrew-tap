cask "supernav" do
  version "1.0.1"
  sha256 "d79ac057cacd2b330fe49acfb8cf04f6a57ca813bd6ebc1eb92cc12dc5575b8a"

  url "https://github.com/trenner1/supernav/releases/download/v#{version}/SuperNav.zip"
  name "SuperNav"
  desc "Pop!_OS-style keyboard navigation between monitors and workspaces"
  homepage "https://github.com/trenner1/supernav"

  depends_on macos: :sonoma

  app "SuperNav.app"

  uninstall quit: "local.supernav"

  zap trash: "~/Library/Preferences/local.supernav.plist"

  caveats <<~EOS
    SuperNav is Developer ID signed and notarized by Apple.
    On first launch, grant it Accessibility access under
      System Settings → Privacy & Security → Accessibility

    To start it at login, add it under System Settings → General → Login Items.
  EOS
end
