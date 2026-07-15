cask "better-screenshoot" do
  version "0.5.0"

  on_arm do
    url "https://github.com/sriverogalan/better-screenshoot/releases/download/v#{version}/Better.Screenshoot_#{version}_aarch64.dmg"
    sha256 "820a34450087c3671c8e4b13647525491ca7068edc539aa5bae8b201e8bc45cc"
  end

  on_intel do
    odie "better-screenshoot is currently only available for Apple Silicon (arm64) Macs."
  end

  name "Better Screenshoot"
  desc "Screenshot tool with a built-in editor"
  homepage "https://github.com/sriverogalan/better-screenshoot"

  app "Better Screenshoot.app"

  postflight do
    system_command "/usr/bin/xattr",
                   args: ["-cr", "#{appdir}/Better Screenshoot.app"]
  end
end
