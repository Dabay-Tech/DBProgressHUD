# DBProgressHUD

DBProgressHUD是在开源框架MBProgressHUD（version 1.0.0）的基础上进行了一些功能的增加。

本项目是为DBNetworking进行开发的，目前DBNetworking已经使用了本项目中相关功能。

如果现在的项目中有MBProgressHUD的1.0.0版本且利用CocoaPods进行管理的，那么只要pod 'DBProgressHUD'即可将本项目加入现有的项目中， 可以兼容完全兼容MBProgressHUD的1.0.0版本。MBProgressHUD的1.0.0以下的版本暂时未做适配。

## 使用CocoaPods添加DBProgressHUD到项目中

本项目DBProgressHUD已经放在CocoaPods上进行管理，目前版本1.1.5。

推荐使用CocoaPods引入DBProgressHUD并对项目中的第三方框架进行管理。

1. 在Podfile文件中添加 `pod 'DBProgressHUD'`
2. 进入Podfile同级目录，使用命令 `pod install`进行本项目的安装.
3. 建议在项目的pch文件中导入本项目或者在要使用的时候引入 `#import "DBProgressHUD.h"`.

## 使用说明

之前的MBProgressHUD在使用时经常要在使用的控制器中拥有MBProgressHUD类型的属性，添加HUD时进行还有指定相关的View，导致整个项目中有很多类似的代码，使用起来比较麻烦。另外，在非视图控制器中拿不到相应的view，想使用MBProgressHUD进行相应的提示就不是很方便了。

`本项目中新增的方法都是DBProgressHUD的类方法且方法名都是以db_开头。`



在进行耗时操作需要给用户一些提示时，推荐使用：

```objective-c
[DBProgressHUD db_showLoading:@"加载中..."];
```

在耗时操作结束需要结束提示时，推荐使用：

```objective-c
[DBProgressHUD db_hideHUD];
```

在操作成功需要提示时，推荐使用：(默认3秒后自动消失)

```objective-c
[DBProgressHUD db_showMessage:@"认证成功！"];
```

在操作失败需要提示时，推荐使用：(默认3秒后自动消失)

```objective-c
[DBProgressHUD db_showError:@"服务暂不可用，请稍后重试"];
```



如果要提示的内容有多行，DBProgressHUD提供了相应的方法。例如：

```objective-c
[DBProgressHUD db_showMultiLineMessage:@"服务暂不可用，请稍后重试 服务暂不可用，请稍后重试"];
```

如果想要特定的位置进行换行，在已在想要换行的位置加\n即可。例如：

```objective-c
[DBProgressHUD db_showMultiLineMessage:@"服务暂不可用，请稍后\n重试 服务暂不可用，请稍后重试"];
```

其他的成功、失败的提示类似。

想使用更多的方法，建议简单浏览下DBProgressHUD.h。



