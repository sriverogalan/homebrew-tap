cask "better-screenshoot" do
  version "0.6.0"

  on_arm do
    url "https://github.com/sriverogalan/better-screenshoot/releases/download/v#{version}/Better.Screenshoot_#{version}_aarch64.dmg"
    sha256 "a41f209578091fc0c3a7785e1ffafbd85486ece6931eebace8baf1babed36335"
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
