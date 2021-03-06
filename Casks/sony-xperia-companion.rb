cask 'sony-xperia-companion' do
  version :latest
  sha256 :no_check

  url 'https://www-support-downloads.sonymobile.com/Software%20Downloads/Xperia%20Companion/XperiaCompanion.dmg'
  name 'Xperia™ Companion'
  homepage 'https://support.sonymobile.com/xperia-companion/'

  depends_on macos: '>= :el_capitan'

  app 'Xperia Companion.app'

  uninstall quit: 'com.sonymobile.Xperia-Companion*'

  zap trash: [
               '~/Library/Application Support/com.sonymobile.Xperia-Companion',
               '~/Library/Caches/com.plausiblelabs.crashreporter.data/com.sonymobile.Xperia-Companion',
               '~/Library/Caches/com.sonymobile.Xperia-Companion',
               '~/Library/Caches/com.sonymobile.Xperia-Companion-Agent',
               '~/Library/Preferences/com.sonymobile.Xperia-Companion-Agent.plist',
               '~/Library/Preferences/com.sonymobile.Xperia-Companion-Helper.plist',
               '~/Library/Preferences/com.sonymobile.Xperia-Companion.plist',
               '~/Library/Saved Application State/com.sonymobile.Xperia-Companion.savedState',
             ]
end
