cask "better-screenshoot" do
  version "0.4.0"

  on_arm do
    url "https://github.com/sriverogalan/better-screenshoot/releases/download/v#{version}/Better-Screenshoot_#{version}_aarch64.dmg"
    sha256 "6468fca4551e893e283395bc2f830d9cb7fed8e8083f29dbc16d5576e331ce77"
  end

  on_intel do
    url "https://github.com/sriverogalan/better-screenshoot/releases/download/v#{version}/Better-Screenshoot_#{version}_x64.dmg"
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
