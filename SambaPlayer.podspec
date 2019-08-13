Pod::Spec.new do |s|
	s.name = 'SambaPlayer'
	s.version = '2.1.1'
	s.license = { :type => 'MIT', :file => 'LICENSE' }
	s.summary = 'Samba Tech media player SDK for iOS'
	s.homepage = 'http://sambatech.com'
	s.authors = { 'Samba Tech Player Team' => 'player@sambatech.com' }
	s.source = { :git => 'https://github.com/affbedran/player_sdk_ios.git', :tag => s.version.to_s }

	s.ios.deployment_target = '10.0'

	s.ios.dependency 'GoogleAds-IMA-iOS-SDK', '~> 3.2.1'

	s.ios.dependency 'google-cast-sdk', '~> 4.0'
end
