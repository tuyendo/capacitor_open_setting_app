
  Pod::Spec.new do |s|
    s.name = 'Setting'
    s.version = '0.0.1'
    s.summary = 'open setting app'
    s.license = 'MIT'
    s.homepage = 'https://github.com/tuyendo/capacitor_open_setting_app.git'
    s.author = 'lucy do'
    s.source = { :git => 'https://github.com/tuyendo/capacitor_open_setting_app.git', :tag => s.version.to_s }
    s.source_files = 'ios/Plugin/**/*.{swift,h,m,c,cc,mm,cpp}'
    s.ios.deployment_target  = '11.0'
    s.dependency 'Capacitor'
  end