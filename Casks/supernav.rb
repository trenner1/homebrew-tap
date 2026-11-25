cask "supernav" do
  version "1.0.3"
  sha256 "9bc2f998363b5dc263d69da2667a03553476924f4629376681deaca32cbfa575"

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
