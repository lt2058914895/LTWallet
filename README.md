# LTWallet
这是一个模仿MetaMask的APP，只模拟里3个页面：侧边栏设置页、首页、购买页。无需账号登录，用的localData，但也是放在viewModel，模拟网络请求数据,实现了视图与数据绑定。
整体项目结构分为common层、business业务层（侧边栏、首页、购买页）,
每一块的业务层又分为Model、View（viewControll+Views)、ViewModel,
用的SwiftUI（90%）、Swift（10%）技术语言，用了SwiftUI3.0里很多新的技术，比如toolbar、@Published、@ObservedObject、@Environment等属性修饰符。
每个视图将整块相同业务进行抽离，所以每个文件代码逻辑清晰，易于阅读和管理。

IDE: XCode

开发环境：iOS15+SuiftUI3.0

架构：MVVM+响应式编程

技术语言：SwiftUI、Swift






#测试用例

1、首页点击导航栏左侧设置按钮、实现侧边栏动画效果，点击半透明位置可实现侧边栏收回；

2、首页点击导航栏右侧购买按钮、去往购买页，刚进入购买页“购买”按钮置灰不可点击，填入比特币类型、金额后，“购买”按钮高亮可点击模拟购买成功逻辑，弹一个“购买成功！”toast提示，然后自动dismiss，回到首页，这个时候观察首页底部list列表数据，会发现刚购买的货币类型和金额也同步至内存数据，在list列表显示了；

3、首页底部list列表，可以左滑删除数据，删除数据也会同步至内存数据，在list列表上看就是少了一行。
