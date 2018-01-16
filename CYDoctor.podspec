
Pod::Spec.new do |s|

    s.platform = :ios, '8.0'
    s.name         = "CYDoctor"
    s.version      = "0.0.2"
    s.summary      = "慈云医生APP 简版SDK"

    s.description  = <<-DESC
                    this CYDoctor SDK is a simple version without login pages
                   DESC

    s.homepage     = "https://github.com/FangDH001/CYDoctor"

    s.license      = "MIT"
    s.author             = { "CiYun_FDH" => "FangDH001@github.com" }

    s.source       = { :git => "https://github.com/FangDH001/CYDoctor.git", :tag => "#{s.version}" }

    s.resources     = "CYDoctor/CYDoctor.bundle"
    s.vendored_frameworks = "CYDoctor/CYDoctor.framework"
    s.frameworks = 'UIKit','Foundation','CoreFoundation'

    s.dependency 'AFNetworking', '~> 3.1.0'
    s.dependency 'JSONModel', '~> 1.7.0'
    s.dependency 'SDWebImage', '~> 4.2.3'
    s.dependency 'MJRefresh', '~> 3.1.15.1'
    s.dependency 'Masonry', '~> 1.1.0'
    s.dependency 'IQKeyboardManager', '~> 3.3.7'
    s.dependency 'ZYQAssetPickerController', '~> 1.2.0'
    s.dependency 'SVProgressHUD', '~> 2.1.2'

end
