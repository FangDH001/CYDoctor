
Pod::Spec.new do |s|

    s.platform = :ios, '8.0'
    s.name         = "CYDoctor"
    s.version      = "1.0.0"
    s.summary      = "慈云医生APP 简版SDK"

    s.description  = <<-DESC
                    this CYDoctor SDK is a simple version without login pages
                   DESC

    s.homepage     = "http://git.ciyun.cn/fangdonghai/CYDoctor"

    s.license      = "MIT"
    s.author             = { "CiYun_FDH" => "fangdonghai@ciyun.cn" }

    s.source       = { :git => "http://git.ciyun.cn/fangdonghai/CYDoctor.git", :tag => "#{s.version}" }

    s.resources     = "CYDoctor/*.{bundle}", "CYDoctor/**/*.{bundle}", "CYDoctor/*", "*"
    s.vendored_frameworks = "CYDoctor.framework"
    s.framework  = "UIKit","Foundation"

    s.ios.deployment_target  = '8.0'
    s.dependency 'AFNetworking'
    s.dependency 'IQKeyboardManager'
    s.dependency 'JSONModel'
    s.dependency 'Masonry'
    s.dependency 'MJRefresh'
    s.dependency 'SDWebImage'
    s.dependency 'SVProgressHUD'
    s.dependency 'FMDB'
    s.dependency 'BlocksKit'
    s.dependency 'ZYQAssetPickerController'

end
