# Blue Green Deployment

1. 蓝绿部署是不停老版本，部署新版本然后进行测试，确认OK，将流量切到新版本，然后老版本同时也升级到新版本。
2. 灰度是选择部分部署新版本，将部分流量引入到新版本，新老版本同时提供服务。等待灰度的版本OK，可全量覆盖老版本。

灰度是不同版本共存，蓝绿是新旧版本切换，2种模式的出发点不一样。

> Azure App Service slot deployment is `easy`.

Tips:

* blue_green_deployment prod and slot env is `same`.


## A/B测试

A/B测试和蓝绿发布、滚动发布以及金丝雀发布，完全是两回事。

* 蓝绿发布、滚动发布和金丝雀是发布策略，目标是确保新上线的系统稳定，关注的是新系统的BUG、隐患。
* A/B测试关注的是不同版本的服务的实际效果，譬如说转化率、订单情况等。