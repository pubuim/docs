title: 接入 Command，个性化快速命令
---
> 自定义命令 ，使用 /xxx 的指令来处理一些常用的个性模式

## 使用方法图

![使用方法图](https://pubu.zendesk.com/hc/zh-cn/article_attachments/202434786/_____2016-01-11___7.51.24.png)

## 配置方法

#### 1.在频道菜单点击「添加扩展」或点击团队名称后点击「配置扩展」

![在频道菜单点击「添加扩展」或点击团队名称后点击「配置扩展」](https://pubu.zendesk.com/hc/zh-cn/article_attachments/202423353/-------5.png)

#### 2.进入添加扩展会看到服务列表，搜索或找到 Command，点击「添加」

![进入添加扩展会看到服务列表，搜索或找到 Command，点击「添加」](https://pubu.zendesk.com/hc/zh-cn/article_attachments/202253766/-----2015-07-23---11-50-15.png)

#### 3.进入添加页面，选择添加服务的频道，点击「添加扩展服务」

![进入添加页面，选择添加服务的频道，点击「添加扩展服务」](https://pubu.zendesk.com/hc/zh-cn/article_attachments/202253786/_____2015-12-17_3.47.21_PM.png)

#### 4.请求会以 POST 方式发送到目标 URL 上，数据结构如下

```
team_id: ********************
channel_id: *******************
channel_name: 所有人
timestamp: ***********
user_name: jingjing
text: 微软
command: /search
```

#### 5.填写「命令名称」、「命令描述」、「请求地址」

![](https://pubu.zendesk.com/hc/zh-cn/article_attachments/202315426/_____2015-12-24_3.53.31_PM.png)

#### 最后点击「瀑布IM」上的「保存设置」，完成配置
