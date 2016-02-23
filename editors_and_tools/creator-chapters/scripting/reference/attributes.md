# 属性参数

> 属性参数用来给已定义的属性附加元数据，类似于脚本语言的 Decorator 或者 C# 的 Attribute。

### 属性检查器相关属性

参数名 | 说明 | 类型 | 默认值
--- | --- |:---:|:---:
type | 限定属性的数据类型 | (Any) | undefined
visible | 在 **属性检视器** 面板中显示或隐藏 | boolean | (注1)
displayName | 在 **属性检视器** 面板中显示为另一个名字 | string |
tooltip | 在 **属性检视器** 面板中添加属性的 Tooltip | string |
multiline | 在 **属性检视器** 面板中使用多行文本框 | boolean | false
readonly | 在 **属性检视器** 面板中只读 | boolean | false
range | 以滑动条的形式限定数值的最大最小值 | [min, max] |

### 序列化相关属性

这些属性不能用于 get 方法

参数名 | 说明 | 类型 | 默认值
--- | --- |:---:|:---:
serializable | 序列化该属性 | boolean | true
editorOnly | 在导出项目前剔除该属性 | boolean | false

### 其它属性

参数名 | 说明 | 类型 | 备注
--- | --- |:---:|:---:
default | 定义属性的默认值 | (Any) | (注2，3)
url | 该属性为指定资源的 url | function () {} |
notify | 当属性修改时触发指定方法 | function (oldValue) {} | 需要定义 default 属性
override | 当重载父类属性时需要定义该参数为 true | boolean | 默认为 false
animatable | 该属性是否能被动画修改 | boolean | 默认为 true

**注1:** visible 的默认值取决于属性名。当属性名以下划线 `_` 开头时，默认隐藏，否则默认显示。

**注2:** 可序列化属性的 default 值修改后并不影响已保存或打开的场景。

**注3:** default 定义的默认数组或字典只能是空的（`[]` 及 `{}`），如果需要包含内容，需要定义成函数：

```javascript
  properties: {
    names: {
      default: function () {
        return ['foo', 'bar', 'foobar'];
      },
      type: [cc.String]
    },
  }
```
