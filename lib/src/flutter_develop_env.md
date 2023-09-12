

# 在 Windows 操作系统上安装和配置 Flutter 开发环境

## 系统配置要求

- **操作系统**：Windows 10 或更高的版本（基于 x86-64 的64位操作系统）。

- **磁盘空间**：除安装 IDE 和一些工具之外还应有至少 1.64 GB 的空间。

- **工具**：要让 Flutter 在你的开发环境中正常使用，依赖于以下的工具：
  - [Windows PowerShell 5.0](https://docs.microsoft.com/en-us/powershell/scripting/install/installing-windows-powershell) 或者更高的版本（Windows 10 中已预装）
  - [Git for Windows](https://git-scm.com/download/win) 2.x，并且勾选**从 Windows 命令提示符使用 Git** 选项。

## 获取 Flutter SDK

1. 点击下方的安装包，获取 stable 发行通道的 Flutter SDK 最新版本

   > 清华大学镜像源:https://mirrors.tuna.tsinghua.edu.cn/flutter/flutter_infra/releases/stable/windows/
   > 或者
   > 腾讯云: https://mirrors.cloud.tencent.com/flutter/flutter_infra_release/releases/stable/windows/

2. 将压缩包解压，然后把其中的 flutter 目录整个放在你想放置 Flutter SDK 的路径中（例如 `C:\src\flutter`）。

3. 添加 flutter 到 Windows 环境变量

   > 1. 右击 桌面 [此电脑]->[高级系统设置]->[环境变量]->[系统变量]->[Path]->[新建]
   >
   >（例如 C:\src\flutter\bin）
   >
   > 2. 右击 桌面 [此电脑]->[高级系统设置]->[环境变量]->[系统变量]->[新建]
   > **PUB_HOSTED_URL** https://mirrors.tuna.tsinghua.edu.cn/dart-pub
   > **FLUTTER_STORAGE_BASE_URL** https://mirrors.tuna.tsinghua.edu.cn/flutter

4. 运行 `flutter doctor`

## 设置 Android 开发环境

1. 下载安装 Android Studio

   > 国内镜像下载 Android Studio 速度快: https://developer.android.google.cn/studio/

2. 添加 Android 到 Windows 环境变量

   > 右击 桌面 [此电脑]->[高级系统设置]->[环境变量]->env[系统变量]->[Path]->[新建]
   > （例如 C:\Users\用户名\AppData\Local\Android\Sdk\platform-tools）

3. 配置 Android 设备

   1. 在 Android 设备上运行或测试 Flutter 应用之前，你需要一个运行 Android 4.1（API 版本 16）或者更高的设备。
   2. 在设备上打开 Developer options 和 USB debugging 选项，你可以在 Android documentation 上查看更详细的方法介绍。
   3. 如果是在 Windows 平台上使用，需要安装 Google USB Driver
   4. 通过 USB 接口连接手机和电脑，如果在设备上弹出需要授权弹窗，允许授权以便让电脑能够访问你的开发设备。
   5. 在命令行中，使用 flutter devices 命令来确保 Flutter 能够识别出你所连接的 Android 设备。

4. 配置 Android 模拟器

   1. 激活机器上的 [VM acceleration](https://developer.android.google.cn/studio/run/emulator-acceleration) 选项。
   2. 打开 **Android Studio**，点击 **AVD Manager** 按钮，选择 **Create Virtual Device…**
   3. 在一些旧的 Android Studio 版本里，需要通过 **Android Studio > Tools > Android > AVD Manager**，然后选择 **Create Virtual Device…** 选项。（只有在 Android 项目中才会显示 **Android** 子选项。）
   4. 如果你以及还没打开某个项目，你可以选择 **Configure > AVD Manager** 然后选择 **Create Virtual Device** 选项
   5. 选择相应的设备并选择 **Next** 选项。
   6. 选择一个或多个你想要模拟的 Android 版本的系统镜像，然后选择 **Next** 选项。推荐选择 **x86** 或者 **x86_64** 镜像。
   7. 在 Emulated Performance 下选择 **Hardware - GLES 2.0** 选项来开启 [硬件加速](https://developer.android.google.cn/studio/run/emulator-acceleration)。
   8. 确保 AVD 选项配置正确，并选择 **Finish** 选项。 想要查看上述步骤的更多详细信息，请查看 [Managing AVDs](https://developer.android.google.cn/studio/run/managing-avds) 页面。
   9. 在 Android Virtual Device Manager 中，点击工具栏中的 **Run** 选项，模拟器会启动并为你所选择的系统版本和设备显示出相应的界面。

5. 同意 Android 协议

```shell
$ flutter doctor --android-licenses
```

6. 创建 Flutter 项目

```shell
# 全平台项目
$ flutter create <project-name> 
# 指定 ios,android, 可选参数(ios,android,windows,linux,macos,web)
$ flutter create --platforms=ios,android <project-name> 
# 指定 com.example 包名
$ flutter create --platforms=ios,android --org com.example <project-name>
```
## Flutter编译慢问题

修改 `flutter.gradle` 镜像源为国内的
> 找到 Flutte SDK 目录下的 Flutter 打包配置文件 flutter.gradle
> 一般路径为: `flutter\packages\flutter_tools\gradle\flutter.gradle`

 ```groovy
 buildscript {
   repositories {
     //注释
     // google()
     // jcenter()
     //添加
     maven {url 'https://maven.aliyun.com/repository/public/'}
     maven {url 'https://repo.huaweicloud.com/repository/maven/'}
   }
   dependencies {
     classpath 'com.android.tools.build:gradle:3.5.0'
   }
 }
 ```
   > 项目里: `android\build.gradle`
```groovy
 allprojects {
   repositories {
     //注释
     // google()
     // jcenter()
     maven {url 'https://maven.aliyun.com/repository/public/'}
     maven {url 'https://repo.huaweicloud.com/repository/maven/'}
   }
 }
```

## 构建和发布为 Android 应用

1. 创建密钥对：
```shell
keytool -genkey -v -keystore [project]/android/app/upload-keystore.jks -storetype JKS -keyalg RSA -keysize 2048 -validity 10000 -alias upload
```
2. 从 app 中引用密钥库。创建一个名为 `[projectRoot]/android/key.properties` 的文件，它包含了密钥库位置的定义：

```
storePassword=你的密码
keyPassword=你的密码
keyAlias=upload
storeFile=upload-keystore.jks
```

3. 在 gradle 中配置签名

   3.1. 在以 release 模式下构建你的应用时，修改 `[projectRoot]/android/app/build.gradle` 文件，以通过 gradle 配置你的上传密钥。（第28行左右）

```groovy
def keystoreProperties = new Properties()
def keystorePropertiesFile = rootProject.file('key.properties')
if (keystorePropertiesFile.exists()) {
   keystoreProperties.load(new FileInputStream(keystorePropertiesFile))
}
android {
   ...
}
```

​     3.2. 找到 buildTypes 代码块：（第63行左右）

```groovy
buildTypes {
  release {
      // TODO: Add your own signing config for the release build.
      // Signing with the debug keys for now,
      // so `flutter run --release` works.
      signingConfig signingConfigs.debug
  }
}
```

   3.3. 将其替换为我们的配置内容：

```groovy
signingConfigs {
    release {
      keyAlias keystoreProperties['keyAlias']
      keyPassword keystoreProperties['keyPassword']
      storeFile keystoreProperties['storeFile'] ? file(keystoreProperties['storeFile']) : null
      storePassword keystoreProperties['storePassword']
    }
}
buildTypes {
    release {
        signingConfig signingConfigs.release
    }
}
```

  3.4. 执行编译

输出路径一般为: `[project]\build\app\outputs\flutter-apk\app-release.apk`

执行命令:

```shell
flutter build apk
```
## References

- https://www.fluttericon.cn/flutter_inistall_doc.html