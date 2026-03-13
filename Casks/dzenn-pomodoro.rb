cask "dzenn-pomodoro" do
  version "0.1.2"

  on_arm do
    sha256 "fafdc64cbc74547b80e0e03435d481f17e1ed1650157912797bdd66c56bdf12f"
    url "https://github.com/dzenn-app/pomodoro/releases/download/v#{version}/dzenn-#{version}-mac-arm64.dmg"
  end

  on_intel do
    sha256 "3d28ae4a5a3533e4e9639104f09e528f22e8ece3659ccaff8fe9ffac754f13ba"
    url "https://github.com/dzenn-app/pomodoro/releases/download/v#{version}/dzenn-#{version}-mac-intel.dmg"
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
