cask 'fujitsu-scansnap-manager' do
  version '6.3L50'
  sha256 'ea694ec0746cc0269790ec8cbe76f96e514fccc48f83501613f853c6352ecfee'

  url "https://www.fujitsu.com/downloads/IMAGE/driver/ss/mgr/m-s1300i/MacS1300iManagerV#{version.no_dots}WW1.dmg"
  name 'ScanSnap Manager for Mac'
  homepage 'https://scansnap.fujitsu.com/'

  pkg 'ScanSnap Manager.pkg'

  uninstall pkgutil: "jp.co.pfu.ScanSnapV#{version.no_dots}WW"
end
