cask "better-screenshoot" do
  version "0.7.0"

  on_arm do
    url "https://github.com/sriverogalan/better-screenshoot/releases/download/v#{version}/Better.Screenshoot_#{version}_aarch64.dmg"
    sha256 "34981c66d8e0a3ba60bbb83d5a460c91763a3dde7cce02923adb09c3aeca6094"
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
