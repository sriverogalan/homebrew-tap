cask "better-screenshoot" do
  version "0.5.1"

  on_arm do
    url "https://github.com/sriverogalan/better-screenshoot/releases/download/v#{version}/Better.Screenshoot_#{version}_aarch64.dmg"
    sha256 "3cbf368567549979e54f42b7fc84c9b65851cdc69947b0076d4f805cdbecf3e6"
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
