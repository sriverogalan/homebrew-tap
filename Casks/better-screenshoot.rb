cask "better-screenshoot" do
  version "0.4.0"

  on_arm do
    url "https://github.com/sriverogalan/better-screenshoot/releases/download/v#{version}/Better-Screenshoot_#{version}_aarch64.dmg"
    sha256 "a47d85a208dc8fd3d5171b11b275b74a2941e0093a6c7b901a17949a6f3b7139"
  end

  on_intel do
    url "https://github.com/sriverogalan/better-screenshoot/releases/download/v#{version}/Better-Screenshoot_#{version}_x64.dmg"
    sha256 "b64f56aedccab27164e1c6928df6fd762263bbd421b24b5a1dd0efb371159479"
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
