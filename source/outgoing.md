title: 接入 Outgoing，无限拓宽聊天可能性
---
>Outgoing 一款自定义触发机器人，聊天中发送的信息可以触发您的网址回调，来无限拓展聊天的可能性。

## 配置方法

#### 1.在频道菜单点击「添加扩展」或点击团队名称后点击「配置扩展」

> ![](https://pubu.zendesk.com/hc/zh-cn/article_attachments/202253886/-------5.png)

#### 2.进入添加扩展会看到服务列表，搜索或找到 Outgoing，点击「添加」

> ![](https://pubu.zendesk.com/hc/zh-cn/article_attachments/202315086/_____2015-12-24_2.37.59_PM.png)

#### 3.进入添加页面，选择添加服务的频道，点击「添加扩展服务」

> ![](https://pubu.zendesk.com/hc/zh-cn/article_attachments/202253906/_____2015-12-17_4.08.19_PM.png)

#### 4.发送：数据会以 POST form-encoded 方式发送到您设置的 URL 上，数据结构如下

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

#### 5.响应：如果返回一个包含 text 字段的 json 数据，将会直接发送到当前聊天频道中」

> 请注意需要添加 **Content-Type: application/json** 到 Header。

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

#### 6.填写回调地址和触发关键词

> ![](https://pubu.zendesk.com/hc/zh-cn/article_attachments/202482613/_____2015-12-24_2.41.19_PM.png)

#### 最后点击「瀑布IM」上的「保存设置」，完成配置
