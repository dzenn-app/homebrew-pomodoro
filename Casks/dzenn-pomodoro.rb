cask "dzenn-pomodoro" do
  version "0.1.1"
  sha256 :no_check

  on_arm do
    sha256 "50295e7c16716f8785ba8ff7cba2dfbdae621e44d2e951a0083cd354a4a4b5ea"
    url "https://github.com/dzenn-app/dzenn/releases/download/v#{version}/dzenn-#{version}-mac-arm64.dmg"
  end

  on_intel do
    sha256 "3f6179962fccf258c8394b1e68700cbb9132e921a8da3a28d21407fcd83d1cde"
    url "https://github.com/dzenn-app/dzenn/releases/download/v#{version}/dzenn-#{version}-mac-intel.dmg"
  end
  name "Dzenn"
  desc "Minimal pomodoro timer"
  homepage "https://dzenn.app"

  app "Dzenn.app"

  caveats <<~EOS
    If macOS blocks the app (unsigned), go to:
    System Settings -> Privacy & Security -> Open Anyway.
  EOS
end
