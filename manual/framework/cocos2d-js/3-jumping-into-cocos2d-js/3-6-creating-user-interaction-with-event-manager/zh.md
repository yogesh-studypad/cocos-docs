# 3.6 使用事件管理器创建用户交互

Cocos2d-js v3.x中事件分发机制进行了重写，事件可以与任意对象绑定，而不是只有Layer才能获取。对象创建自己的事件监听器，然后加入到全局的事件管理器统一管理。

事件监听器有以下几种：

- 触摸事件
- 键盘响应事件
- 鼠标响应事件
- 自定义事件
- 加速计事件

以监听用户触摸事件为例，我们需要：

1. 定义用户监听器实例

	```
	createEventListener:function() {
		var touchListener = cc.EventListener.create({
			event: cc.EventListener.TOUCH_ONE_BY_ONE,
			// When "swallow touches" is true, then returning 'true' from the onTouchBegan method will "swallow" the touch event, preventing other listeners from using it.
			swallowTouches: true,
			//onTouchBegan event callback function
			onTouchBegan: function (touch, event) {
				var pos = touch.getLocation();//Cocos2d-js坐标
				cc.log(pos.x + "," + pos.y);

				return true;
			}
		});

		return touchListener;
    },
	```
	
	`cc.EventListener.create`扩展出一个用户监听器。event属性，定义这个监听器监听的类型。swallowTouches属性设置是否吃掉事件，事件被吃掉后不会递给下一层监听器。
	onTouchBegan方法处理触摸点击按下事件，我们在这里打印出触摸点的坐标。
* 注册监听器到事件管理器。在ctor函数中加入下载的代码。

	```
	var touchListener = this.createEventListener();
	cc.eventManager.addListener(touchListener,this);
	```
	
	调用第一步实现的监听器创建函数，创建一个监听器实例，然后把这个实例添加在引擎事件管理器。
