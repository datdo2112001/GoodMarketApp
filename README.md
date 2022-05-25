
# MarketApp
Framework: Ruby on rails
Install:
+ Mở terminal ubuntu.
+ brew install ruby.
+ gem install rails.
+ bundle install.
+ rails s để chạy app.

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





