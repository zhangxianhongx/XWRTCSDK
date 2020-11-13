#
# Be sure to run `pod lib lint XWRTCSDK.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'XWRTCSDK'
  s.version          = '0.2.1'
  s.summary          = '欣网视频客服'
  s.description      = '欣网视频客服sdk，iOS客户端，包含客服端和用户端'
  s.homepage         = 'https://github.com/zhangxianhongx/XWRTCSDK'
#许可证
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'zhangxianhongx' => '384323457@qq.com' }
#git 地址
  s.source           = { :git => 'https://github.com/zhangxianhongx/XWRTCSDK.git', :tag => s.version.to_s }

  s.ios.deployment_target = '8.0'


#代码地址
  s.source_files = 'SPKF/**/*.{h,m}',' SPKF/**/**/*.{h,m}','SPKF/**/**/**/*.{h,m}','SPKF/**/**/**/**/*.{h,m}'

#build setting 设置
s.user_target_xcconfig = {'OTHER_LDFLAGS' => ['-ObjC','-all_load']}

  #图片地址
   s.resource_bundles = {
     'XWRTCImage' => ['SPKF/livechatimages/*.{png,gif,mp3}']
   }

  #framework 地址
  s.vendored_framework = 'SPKF/AgoraRtcKit/*.framework'
#公开的头文件
  s.public_header_files = 'SPKF/SPKFCommond/Third/XWAPPID.h','SPKF/MainManager/XWRTCManager.h','SPKF/Reachability/Reachability.h','SPKF/Reachability/Reachability.m.h','SPKF/Reachability/Reachability+Extension.h','SPKF/Reachability/Reachability+Extension.m'

#pch 文件地址
#s.prefix_header_file = 'SPKF/**/*.pch'

#依赖的系统文件
  s.libraries = 'z'

#依赖的三方库
   
   s.dependency 'SDWebImage', '~>5.8.1'
   s.dependency 'AFNetworking', '~>3.2.0'
   s.dependency 'MBProgressHUD', '~>1.2.0'
   s.dependency 'Masonry', '~>1.1.0'
   s.dependency 'MJRefresh', '~>3.5.0'

#所有的依赖库
#s.frameworks = 'UIKit','SDWebImage','AFNetworking','MBProgressHUD','MJRefresh'

end
