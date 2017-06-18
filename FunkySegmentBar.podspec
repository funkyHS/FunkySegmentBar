

Pod::Spec.new do |s|
  s.name             = 'FunkySegmentBar'
  s.version          = '0.1.3'
  s.summary          = 'FunkySegmentBar'

  s.description      = <<-DESC
FunkySegmentBar 是FM的选项卡组件，可以对选项卡进行样式的配置
                       DESC

  s.homepage         = 'https://github.com/funkyHS/FunkySegmentBar'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'funkyHS' => 'hs1024942667@163.com' }
  s.source           = { :git => 'https://github.com/funkyHS/FunkySegmentBar.git', :tag => s.version.to_s }

  s.ios.deployment_target = '8.0'

  s.source_files = 'FunkySegmentBar/Classes/**/*'

  s.dependency 'FunkyFMBase/Category'

end


