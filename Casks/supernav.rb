cask "supernav" do
  version "1.0.2"
  sha256 "ea80f7faa91df21731eaf1cec62fe63f8e5dabd05efb18c899d42022ff90949a"

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
