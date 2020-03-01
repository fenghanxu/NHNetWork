#
# Be sure to run `pod lib lint NHNetWork.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'NHNetWork'
  s.version          = '0.1.0'
  s.summary          = 'A short description of NHNetWork.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'https://github.com/fenghanxu/NHNetWork'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'fenghanxu' => '1162851277@qq.com' }
  s.source           = { :git => 'https://github.com/fenghanxu/NHNetWork.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  #最低支持的版本
  s.ios.deployment_target = '8.0'
  
  # 头文件访问路径
  s.public_header_files = ["NHNetWork/**/*.h","NHNetWork/*/**/*.h","NHNetWork/*/*/**/*.h","NHNetWork/*/*/*/**/*.h"]
  
  #文件访问路径
  #   source_files = ["Source/ScreensView/ScreensView.h"]   不行用这个
  s.source_files = ["NHNetWork/**","NHNetWork/*/**","NHNetWork/*/*/**","NHNetWork/*/*/*/**"]
  
  #图片访问路径
  s.resource_bundles = {
    'Asserts' => ['Asserts.bundle/*.png']
  }
  
  #Arc模式
  s.requires_arc = true
  
  # 系统依赖库
  s.frameworks = 'UIKit','Foundation'
  
  # 自己的依赖库   第三方依赖库
  # s.dependency 'AFNetworking'
  
end
