# Assembly
Bài Tập 1 (Assembly)

1. Viết chương trình sử dụng hàm 7, ngắt 21h để nhận 1 ký tự từ bàn phím, dùng 1
biến để lưu trữ ký tự nhận được (do sinh viên tự đặt tên biến), sau đó sử dụng hàm
2, ngắt 21h để in ra màn hình ký tự nhận được đang lưu trong biến ấy. Chương
trình phải có đủ các câu thông báo nhập và xuất.
Ví dụ: Hay go 1 phim: B
Ky tu nhan duoc la: B

2. Làm lại chương trình bài 1 sao cho không cần sử dụng biến để lưu trữ ký tự mà
kết quả chạy chương trình vẫn không thay đổi.

3. Viết chương trình nhận 1 ký tự từ bàn phím, sau đó in ra màn hình ký tự kế
trước và kế sau của ký tự vừa nhập
Ví dụ: Hay go 1 phim: B
Ky tu ke truoc : A
Ky tu ke sau : C

4. Viết chương trình cho phép nhập từ bàn phím tên của 1 người, sao đó in ra màn
hình chuỗi có dạng như sau:
Xin chao <tên_đã_nhập>
Ví dụ: Khi chạy chương trình, nhập vào là: Nguyen Van A
Chuỗi in ra màn hình sẽ là: Xin chao Nguyen Van A
5. Viết chương trình cho nhập 1 ký tự từ màn hình và xuất câu thông báo tương ứng
sau:
- Nếu ký tự nhập là ‘S’ hay ‘s’ thì in ra “Good morning!”
- Nếu ký tự nhập là ‘T’ hay ‘t’ thì in ra “Good Afternoon!”
- Nếu ký tự nhập là ‘C’ hay ‘c’ thì in ra “Good everning!”

6. Viết chương trình nhập từ bàn phím 1 ký tự thường. Sau đó in ra màn hình lần lượt
các ký tự từ ký tự nhận được đến 'z' sao cho giữa các ký tự có 1 khoảng trống.

7. Không dùng hàm 0Ah/21h, hãy dùng lệnh lặp để viết chương trình nhập vào 1
chuỗi ký tự. Sau khi nhập xong đếm xem chuỗi có bao nhiêu ký tự. In ra màn hình
chuỗi nhận được và số ký tự có trong chuỗi.
Ví dụ: S = "Hello world !" ==> Số kí tự trong chuỗi là 13.

8. Viết chương trình cho phép nhập vào một chuỗi bất kỳ. Sau đó:
- Đổi tất cả ký tự thường thành ký tự hoa và in ra màn hình.
- Đổi tất cả ký tự hoa thành ký tự thường và in ra màn hình.
Ví dụ: S = ‘weLcOme To AssEmblY’
In ra: welcome to assembly - WELCOME TO ASSEMBLY


9. Nhập vào 2 chuỗi số, đổi 2 chuỗi thành số, sau đó cộng hai số, đổi ra chuỗi và xuất
chuỗi tổng.
Ví dụ: S1 = "123" => N1 = 123
S2 = "456" => N2 = 456
N = N1 + N2 = 123 + 456 = 579 => S = "579" (xuất S ra màn hình)

1.Dùng hàm 0AH (hàm 10) để nhập, cần 2 mảng.
2.Nhập từng ký tự vào mảng (cần 2 mảng).
3.Nhập từng ký tự và xử lý trực tiếp trên ký tự đó (chuyển ký tự thành số, nhận 10, cộng dồn)
a.Số ban đầu sbd=0
b.nhập 1 ký tự => số (-30H)
c.lấy sbd * 10, + với số vừa nhập, lưu lại vào sbd
d.lập lại b cho đến khi enter để kết thúc

10. Nhập 2 số nguyên dương A, B. Tính A/B, A*B (không dùng lệnh DIV, MUL) và
in ra màn hình kết quả.
Ví dụ: A=18, B=3
Tính A/B: 18 - 3 - 3 - 3 - 3 - 3 - 3 = 0, vậy A/B = 6 (tổng trừ B cho đến khi A = 0).
Tính A*B = 18 + 18 + 18 = 54
11. Viết chương trình nhập 2 số nhị phân 16 bit A và B. Sau đó in ra màn hình các kết
quả ở dạng nhị phân: A + B, A – B, A and B, A or B.
Ví dụ: Nhập số nhị phân A: 10101010
Nhập số nhị phân B: 01010101
A + B = 11111111 A – B = 01010101
A and B = 00000000 A or B = 11111111

12. Viết chương trình nhập 1 ký tự từ bàn phím, sau đó in ra màn hình mã ASCII của
ký tự nhận được ở dạng thập lục phân, thập phân và nhị phân.
Ví dụ: Nhập 1 ký tự: A
Mã ASCII dạng Hex: 41h
Mã ASCII dạng Dec: 65
Mã ASCII dạng Bin: 01000001b

13. Viết lại chương trình bài 11 nhưng 2 số A và B được nhập theo dạng thập lục
phân. Các kết quả được in ra màn hình ở dạng nhị phân.

14. Viết lại chương trình bài 11 nhưng 2 số A và B được nhập theo dạng thập phân.
In các kết quả ở dạng thập phân: A + B, A – B.

15. Viết chương trình tính giai thừa n! Với n là số nguyên dương nhập từ bàn phím. In
kết quả ra màn hình ở dạng thập phân. Cho biết, khả năng của 8086 tính được n
lớn nhất là bao nhiêu?
16. Viết chương trình tính ước số chung lớn nhất của 2 số a và b! Với a, b là số nguyên dương nhập từ bàn phím. In kết quả ra màn hình ở dạng thập phân. 

17. Viết chương trình nhập 1 chuỗi ký tự. In chuổi dã nhập theo thứ tự ngược. Chương trình có dạng.
Nhập ký tự: abcdef
Chuổi ngược: fedcba

18. Nhập vào một dãy số, tính trung bình cộng của dãy số đó.
Nhập vào dãy số: 1  3   5  6  8
Trung bình cộng: (1+3+5+6+8)/5 = 4

19. Nhập vào một số, tính tổng các chữ số của một số
Nhập vào số: 1234
Tổng các chữ số: 10

20. Nhập vào n, kiểm tra n có phải là số hoàn hảo. Số hoàn hảo là số có tổng các ước số tự nhiên không kể chính nó bằng nó
Ví dụ: 6 = 1 + 2 + 3  => 6 là số hoàn hảo
