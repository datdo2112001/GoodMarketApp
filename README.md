<<<<<<< HEAD
# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...
=======
# MarketApp

- Tính năng:
+ Đăng nhập. 
+ Đăng ký + xác thực tài khoản qua email. 
+ Chỉnh sửa profile user (mật khẩu, tên,..).
+ remember user + quên mật khẩu. 
+ Đăng nhập vs facebook google 
+ admin user : xóa user, bài đăng, comment.
+ tìm kiếm mặt hàng.
+ Đăng tin mua bán.
+ Bình luận vs thả like dưới mỗi bài đăng.
+ Follow người dùng.

 Để cấp quyền admin cho user ta làm các bước sau:
+ Mở terminal, gõ rails c.
+ Tìm và gán user cần cấp quyền vào biến user thông qua câu lệnh user = User.find(attribute)
+ user.add_role :admin

Để app có thể hoạt động tốt ta cần thiết lập https cho localhost, ta dùng cú pháp sau:

$> openssl req -x509 -sha256 -nodes -newkey rsa:2048 -days 365 -keyout localhost.key -out localhost.crt

$> rails s -b 'ssl://localhost:3000?key=localhost.key&cert=localhost.crt'




>>>>>>> 09287a83f17ef8ee7e40202df546f64653e39406
