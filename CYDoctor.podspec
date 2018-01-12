
Pod::Spec.new do |s|

    s.platform = :ios, '8.0'
    s.name         = "CYDoctor"
    s.version      = "1.0.2"
    s.summary      = "慈云医生APP 简版SDK"

    s.description  = <<-DESC
                    this CYDoctor SDK is a simple version without login pages
                   DESC

    s.homepage     = "http://git.ciyun.cn/fangdonghai/CYDoctor"

    s.license      = "MIT"
    s.author             = { "CiYun_FDH" => "fangdonghai@ciyun.cn" }

    s.source       = { :git => "http://git.ciyun.cn/fangdonghai/CYDoctor.git", :tag => "#{s.version}" }

    s.resources     = "CYDoctor/CYDoctor.bundle"
    s.vendored_frameworks = "CYDoctor/CYDoctor.framework"
    s.frameworks = 'UIKit','Foundation','CoreFoundation'

    s.dependency 'AFNetworking', '~> 3.1.0'
    s.dependency 'JSONModel', '~> 1.1.0'
    s.dependency 'SDWebImage', '~> 3.7.3'
    s.dependency 'MJRefresh', '~> 2.2.0'
    s.dependency 'Masonry', '~> 0.6.1'
    s.dependency 'FMDB', '~> 2.5'
    s.dependency 'IQKeyboardManager', '~> 4.0.9'
    s.dependency 'ZYQAssetPickerController', '~> 1.0.0'
    s.dependency 'SVProgressHUD', '~> 1.1.3'

end
