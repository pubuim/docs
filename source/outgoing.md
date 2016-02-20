title: 接入 Outgoing，无限拓宽聊天可能性
---
>Outgoing 一款自定义触发机器人，聊天中发送的信息可以触发您的网址回调，来无限拓展聊天的可能性。

## 配置方法

### 1.在频道菜单点击「添加扩展」或点击团队名称后点击「配置扩展」

![在频道菜单点击「添加扩展」或点击团队名称后点击「配置扩展」](https://pubu.zendesk.com/hc/zh-cn/article_attachments/202253886/-------5.png)

### 2.进入添加扩展会看到服务列表，搜索或找到 Outgoing，点击「添加」

![进入添加扩展会看到服务列表，搜索或找到 Outgoing，点击「添加」](https://pubu.zendesk.com/hc/zh-cn/article_attachments/202315086/_____2015-12-24_2.37.59_PM.png)

### 3.进入添加页面，选择添加服务的频道，点击「添加扩展服务」

![进入添加页面，选择添加服务的频道，点击「添加扩展服务」](https://pubu.zendesk.com/hc/zh-cn/article_attachments/202253906/_____2015-12-17_4.08.19_PM.png)

### 4.发送

> 数据会以 **application/x-www-form-urlencoded** 方式发送

```
team_id: *********************
channel_id: *********************
channel_name: 所有人
timestamp: ********
user_name: jingjing
text: 搜索 微软
token: ***********
trigger_word: 搜索
```

### 5.返回

> 如果要返回消息，请注意添加 **Content-Type: application/json** 到 **Header**

```JSON
{
  "text": "文本",
  "attachments": [{
    "title": "标题",
    "description": "描述",
    "url": "链接",
    "color": "warning|info|primary|error|muted|success"
  }],
  "username": "机器人名称",
  "icon_url": "头像地址"
}
```

> 如果返回其它格式则不做任何处理
如果返回的状态码不是 200 则最多重试 3 次

### 6.填写回调地址和触发关键词

![填写回调地址和触发关键词](https://pubu.zendesk.com/hc/zh-cn/article_attachments/202482613/_____2015-12-24_2.41.19_PM.png)

### 最后点击「保存设置」完成配置
