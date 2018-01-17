慈云医生APP-SDK
==============
    该版本SDK不包含登录页面，在集成SDK后，调用[CYDoctorApi loginWithAccount:@"xxxx" mobile:@"xxxx"]方法即可直接登录。在登录状态下，调用[CYDoctorApi pushToNavigation:xxxx]即可进入慈云医生APP。进入后，可查看并管理医生的工作信息、资讯、患者信息和我的排班情况。

    本版本SDK为iOS版本专用包，支持iOS 8.0及以上版本。

集成方式
--------------
    支持两种集成方式：【借助pods进行管理】或者【文件直接引入】

#pods管理方式（二选一）

    建议CocoaPods版本为1.4.0.beta.2及以上（具体安装方法请自行查阅相关资料）
    需要引入的库：CYDoctor 的最新版本
    该库依赖的第三方库有：
    'AFNetworking', '~> 3.1.0'
    'IQKeyboardManager', '~> 3.3.7'
    'JSONModel', '~> 1.7.0'
    'Masonry', '~> 1.1.0'
    'MJRefresh', '~> 3.1.15.1'
    'SDWebImage', '~> 4.2.3'
    'SVProgressHUD', '~> 2.1.2'
    'ZYQAssetPickerController', '~> 1.2.0'
    若无引用冲突，不用显示引入，CYDoctor会主动引入依赖库。如果当前项目已引用了上面库中的其他版本，请以上面列出的版本为准，否则可能SDK编译失败。


    ##具体操作：
    
    ##1.打开命令窗口，定位到需要集成的项目路径下，与.xcodeproj文件同层级。然后执行vim，创建pods管理文件如下：
    platform :ios, '8.0'

    target 'xxxx' do

        pod 'CYDoctor'

    use_frameworks!

    end

    ##2.编辑完成后，保存并执行pod install
    
    ##3.待安装完成后，在项目路径下打开.xcworkspace文件，按后面的【项目设置】中设置完毕，即可编译运行了。
    
    


#文件直接引入方式（二选一）

    将下载的CYDoctor.framework以及CYDoctor.bundle/IQKeyboardManager.bundle/MJRefresh.bundle/SVProgressHUD.bundle/ZYQAssetPicker.Bundle文件引入到工程中。然后按后面的【项目设置】设置完毕即可运行。
    如果引入的文件与原有的项目文件有冲突，请自行删改原项目文件，以下载的CYDoctor包中的文件为准。
    
    
#项目设置

    ##1.因为慈云医生APP可能会访问http请求，所以需要在项目Info.plist中添加以下键值对：
    <key>NSAppTransportSecurity</key>
    <dict>
        <key>NSAllowsArbitraryLoads</key>
        <true/>
    </dict>
    
    ##2.慈云医生APP用到了相机、麦克风，所以需要以下授权：
    麦克风权限：Privacy - Microphone Usage Description 是否允许此App使用你的麦克风？
    相机权限： Privacy - Camera Usage Description 是否允许此App使用你的相机？
    相册权限： Privacy - Photo Library Usage Description 是否允许此App访问你的媒体资料库？


#问题列表

    ##1.如果引入SDK后，报duplicate symbol异常，请确认是否当前项目原有文件有相同的定义，并修改原有项目定义或删改第三方库版本以达到兼容SDK的目标。

    ##2.如果集成SDK后编译不通过，可能是有Category执行失败，在当前项目target的Build Settings中，找到Other Linker Flags，添加-ObjC和-all_load参数，引入所有库文件即可。

    ##3.如果添加-all_load后，引入了更多编译错误，请尝试使用-force_load $(PROJECT_DIR)/xxx/.../CYDoctor.framework  后面为CYDoctor.framewoke在项目中的存放路径 





