# WeChat
微信公众平台服务器接入到BAE
## 发布项目到BAE
1、 git clone https://git.duapp.com/appidpadgk3amjb  <br>
2、 cd appidpadgk3amjb   <br>
3、 git config --global http.postBuffer 524288000    <br>
4、 git status   <br>
5、 git add -A   <br>
6、 git commit -m 'xxxxx'    <br>
7、 git push     <br>

## 关于AccessToken的缓存
1.每天请求次数为2000次；  <br>
2.每个Access_Token有效期为2小时；  <br>
### 存储方案：
1.数据库：通过微信接口获取到 Access_Token 之后，将 Access_Token +　当前时间戳序列化存储，每次需要　Access_Token 时，从数据库取出，然后反序列化对比时间戳，如果过期，重新调用微信接口并更新数据库记录；  <br>
2.NoSQl：这里以 Redis 为例子。通过微信接口获取到 Access_Token 之后，存入 Redis 并设置过期时间，每次需要　Access_Token 时，去　Redis 查询，如果没有查询到记录说明上次获取到的 Access_Token 已过期，重新获取并更新记录；  <br>
3.文件存储：这个比较适合单一公众号的情况。通过微信接口获取到 Access_Token 之后，存入文件，可以选择性将时间戳一并存入。每次需要　Access_Token 时，如果之前未记录时间戳，则比较文件修改时间与当前时间，然后选择读取记录或者重新调用微信接口更新记录，否则先读取文件内容，然后对比之后选择下一步行为。  <br>
NoSQL方案 > 数据库 > 文件管理

## 公司
1、 http://182.254.208.205/WeChat/index  <br>
2、 myshiyun     <br>
3、 appId： wx929901e3e44556d6   <br>
4、appsecret: d638f95c664c90147ca9d12833d2f7d2    <br>
5、 182.254.208.205
