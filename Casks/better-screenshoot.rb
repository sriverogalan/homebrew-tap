cask "better-screenshoot" do
  version "0.3.2"

  on_arm do
    url "https://github.com/sriverogalan/better-screenshoot/releases/download/v#{version}/Better.Screenshoot_#{version}_aarch64.dmg"
    sha256 "3bc43fc7ee4365c2afb041c3ec54e6d8aa79a73a5a47d8d3840666c5b5a4555b"
  end

  on_intel do
    url "https://github.com/sriverogalan/better-screenshoot/releases/download/v#{version}/Better.Screenshoot_#{version}_x64.dmg"
    sha256 ""
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
