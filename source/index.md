title: 接入 Incoming，自定义接收各类通知
---
> Incoming 一款自定义消息推送机器人，生成一个地址调用，来让您推送通知到团队。

## 使用效果图

> ![](https://pubu.zendesk.com/hc/zh-cn/article_attachments/202315436/_____2015-12-24_3.48.14_PM.png)

## 配置方法

#### 1.在频道菜单点击「添加扩展」或点击团队名称后点击「配置扩展」

> ![](https://pubu.zendesk.com/hc/zh-cn/article_attachments/202253866/-------5.png)

####  2.进入添加扩展会看到服务列表，搜索或找到 Incoming，点击「添加」

> ![](https://blog.pubu.im/content/images/2015/11/-----2015-11-20-10-59-45-AM.png)

#### 3.进入添加页面，选择添加服务的频道，点击「添加扩展服务」

> ![](https://blog.pubu.im/content/images/2015/11/-----2015-11-20-11-00-21-AM.png)

#### 4.添加扩展后，需要开发程序 POST 数据到相应的 URL 来发送消息

> ![](https://pubu.zendesk.com/hc/zh-cn/article_attachments/202482693/_____2015-12-24_3.06.19_PM.png)

##### Slack 兼容模式

###### 1.发送的 POST 数据结构如下：

```JSON
payload={"text":"文本"}
```

###### 2.POST 中的 payload 是一个 JSON 字符串，例子如下：

```JSON
{
  "text": "文本",
  "username": "机器人名称",
  "icon_url": "头像地址"
}
```

###### 3.在命令行下可以使用下列方式做测试

```
curl https://hooks.pubu.im/services/1dpxvwde7dl1syy -X POST --data-urlencode  'payload={"text": "测试消息"}'
```

##### 标准模式（支持文件）

###### 1.用 application/json 发送 POST 的例子如下（不支持文件上传）：

```JSON
{
  "text": "文本",
  "attachments": [{
    "title": "标题",
    "description": "描述",
    "url": "链接",
    "color": "warning|info|primary|error|muted|success"
  }],
  "displayUser": {
    "name": "机器人名称",
    "avatarUrl": "头像地址"
  }
}
```

> attachments 数组最多支持 50 个元素

###### 2.用 form-encoded 方式 发送 POST 例子如下（不支持文件上传）：

```
text=消息内容
attachments[0][title]=附件标题
attachments[0][description]=描述信息
attachments[0][url]=链接
attachments[0][color]=warning|info|primary|error|muted|success
displayUser[name]=显示的名字
displayUser[avatarUrl]=显示的头像
```

> attachments 数组最多支持 50 个元素

###### 3.用 multiple-part 方式可以上传文件，键名为 file

###### 4.在命令行下可以使用下列方式做测试

```
curl https://hooks.pubu.im/services/1dpxvwde7dl1syy -F text=看下这张图 -F file=@image.png
```

#### 最后点击「瀑布IM」上的「保存设置」，完成配置
