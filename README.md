Bước 1. Tắt máy, ấn và giữ nút Nguồn khoảng 10s, chọn Option, máy sẽ vào Recovery Mode.

Bước 2. Nhập mật khẩu User nếu được yêu cầu, trên thanh công cụ, mở Terminal

Bước 3. Gõ theo thứ tự các lệnh :
csrutil disable
csrutil authenticated-root disable
Nhập Pass Admin nếu được yêu cầu.
Reboot

Bước 4. Trong màn hình chính, mở Terminal

Bước 5. Gõ theo thứ tự các lệnh :
sudo -s
cd ../../etc
echo "0.0.0.0 albert.apple.com" >> hosts
echo "0.0.0.0 iprofiles.apple.com" >> hosts
echo "0.0.0.0 mdmenrollment.apple.com" >> hosts
echo "0.0.0.0 deviceenrollment.apple.com" >> hosts
echo "0.0.0.0 gdmf.apple.com" >> hosts

Bước 6. Reboot máy

Bước 7. Vào lại Terminal, gõ các lệnh sau để kiểm tra :
profiles status -type enrollment
(Enrolled via DEP: No
MDM enrollment: No) là OK

sudo profiles show -type enrollment
(Lệnh này nếu còn MDM sẽ hiện ra, và liệt kê những quyền mà bên phía Đăng ký có thể can thiệp trên máy, nếu báo một vài dòng ERROR, thì máy đã OK, không còn liên kết được với Server MDM để nhận lệnh.)

Bước 8. Khởi động lại vào Recovery, mở Terminal, chạy dòng lệnh :
csrutil authenticated-root enable