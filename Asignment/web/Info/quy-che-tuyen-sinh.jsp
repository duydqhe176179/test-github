<%-- 
    Document   : quy-che-tuyen-sinh
    Created on : Nov 6, 2023, 12:52:34 AM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>
            body{
                padding: 0;
                margin: 0;
            }
            th,td{
                border: solid 1px ;
            }
            table{
                border-collapse: collapse
            }
            form{
                background: white
            }
        </style>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css
              " rel="stylesheet">
    </head>
    <body>
        <h1 style=" text-align: center;color: #F27125">TRƯỜNG ĐẠI HỌC FPT</h1>
        <img src="img/header-page.jpg" style="width: 100%">
        <div style="text-align: center">
            <h3>QUY CHẾ TUYỂN SINH HỆ ĐẠI HỌC CHÍNH QUY NĂM 2023</h3>
            <h3>TRƯỜNG ĐẠI HỌC FPT</h3>
        </div>
        <div style="margin: 0 15rem">
            <strong>I. Chỉ tiêu tuyển sinh và ngành đào tạo</strong><br>
            <strong>1. Chỉ tiêu tuyển sinh: 20.080</strong><br>
            <strong>2. Ngành học – mã ngành</strong><br>
            Mã Trường: FPT<br>
            <table>
                <thead>
                    <tr>
                        <th>Khối ngành</th>
                        <th>Ngành</th>
                        <th>Mã ngành	</th>
                        <th>Chuyên Ngành</th>
                        <th>Chỉ tiêu</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>III</td>
                        <td>Quản trị kinh doanh</td>
                        <td>7340101</td>
                        <td>Digital Marketing; Kinh doanh quốc tế; Quản trị khách sạn; Quản trị dịch vụ du lịch & lữ hành; Quản trị truyền thông đa phương tiện; Tài chính.</td>
                        <td>7880</td>
                    </tr>
                    <tr>
                        <td>V</td>
                        <td>Công nghệ thông tin</td>
                        <td>7480201</td>
                        <td>Kỹ thuật phần mềm; Hệ thống thông tin; Trí tuệ nhân tạo; An toàn thông tin; Thiết kế Mỹ thuật số.</td>
                        <td>11360</td>
                    </tr>
                    <tr>
                        <td>VII</td>
                        <td>Ngôn ngữ</td>
                        <td>7220201</td>
                        <td>Ngôn ngữ Anh – Anh,Ngôn ngữ Anh – Trung,Ngôn ngữ Nhật,Ngôn ngữ Hàn Quốc</td>
                        <td>840</td>
                    </tr>
                </tbody>
            </table>
            <strong>II. Đối tượng và Phương thức tuyển sinh</strong><br>
            <strong>1. Đối tượng tuyển sinh</strong><br>
            Các thí sinh đã được công nhận tốt nghiệp trung học phổ thông (THPT) của Việt Nam hoặc có bằng tốt nghiệp của nước ngoài được công nhận trình độ tương đương tính đến thời điểm nhập học, có nguyện vọng theo học tại Trường Đại học FPT.<br>
            <strong>2. Phương thức tuyển sinh</strong><br>
            <table border="1">
                <thead>
                    <tr>
                        <th>TT</th>
                        <th>Phương thức tuyển sinh</th>
                        <th>Điều kiện trúng tuyển</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td rowspan="2">1</td>
                        <td rowspan="2">Xét kết quả xếp hạng học sinh THPT năm 2023 (chứng nhận thực hiện trên trang https://SchoolRank.fpt.edu.vn)</td>
                        <td>1.1. Đạt xếp hạng Top50 theo học bạ THPT năm 2023</td>
                    </tr>
                    <tr>

                        <td>1.2. Đạt xếp hạng Top50 theo điểm thi THPT năm 2023 (theo số liệu Đại học FPT tổng hợp và công bố sau kỳ thi THPT 2023)</td>
                    </tr>
                    <tr>
                        <td rowspan="9">2</td>
                        <td rowspan="9">Xét tuyển thẳng</td>
                        <td>2.1. Thí sinh thuộc diện được xét tuyển thẳng trong Quy chế tuyển sinh Đại học, Cao đẳng hệ đại học chính quy của Bộ GD&ĐT năm 2023</td>
                    </tr>
                    <tr>

                        <td>2.2. Có chứng chỉ tiếng Anh TOEFL iBT từ 80 hoặc IELTS (Học thuật) từ 6.0 hoặc VSTEP bậc 5 hoặc quy đổi tương đương (áp dụng đối với ngành Ngôn Ngữ Anh); có chứng chỉ tiếng Nhật JLPT từ N3 trở lên (áp dụng đối với ngành Ngôn Ngữ Nhật); có chứng chỉ tiếng Hàn TOPIK cấp độ 4 trong kỳ thi TOPIK II (áp dụng đối với ngành Ngôn Ngữ Hàn Quốc)</td>
                    </tr>
                    <tr>

                        <td>2.3. Tốt nghiệp phổ thông với văn bằng do nước ngoài cấp</td>
                    </tr>
                    <tr>

                        <td>2.4. Tốt nghiệp một trong các chương trình sau: Chương trình APTECH HDSE/ADSE (đối với ngành Công nghệ thông tin); Chương trình ARENA ADIM (đối với chuyên ngành Thiết kế Mỹ thuật số); Chương trình BTEC HND; FUNiX Software Engineering; Chương trình Melbourne Polytechnic</td>
                    </tr>
                    <tr>

                        <td>2.5. Tốt nghiệp Đại học</td>
                    </tr>
                    <tr>

                        <td>2.6. Sinh viên từ nước ngoài về từ các trường đại học thuộc Top 1000 trong 3 bảng xếp hạng gần nhất: QS, ARWU và THE hoặc các trường đạt chứng nhận QS Star 5 sao về chất lượng đào tạo</td>
                    </tr>
                    <tr>

                        <td>2.7. Tốt nghiệp Top50 Chương trình Phổ thông Cao đẳng (9+) tại FPT Polytechnic; Tốt nghiệp Top50 Cao đẳng FPT Polytechnic</td>
                    </tr>
                    <tr>

                        <td>2.8. Đạt 21* điểm thi THPT năm 2023 (đã bao gồm điểm ưu tiên theo mục III.2 của Quy chế tuyển sinh này) tổ hợp Ax (gồm môn Toán và 2 môn thi bất kỳ)</td>
                    </tr>
                    <tr>

                        <td>2.9. Đạt 21* điểm học bạ cả năm lớp 12 theo tổ hợp Ax (gồm môn Toán học và 2 môn bất kỳ (trong các môn Ngữ văn, Ngoại ngữ, Vật lí, Hoá học, Sinh học, Lịch Sử, Địa lí, GDCD))</td>
                    </tr>
                </tbody>
            </table>
            <br>
            Lưu ý: (*) làm tròn đến 2 (hai) chữ số thập phân.<br>
            <strong>3. Trình độ tiếng Anh theo yêu cầu</strong><br>
            Thí sinh cần đạt một trong các chứng chỉ tiếng Anh ở các mức điểm chi tiết như sau:<br>
            <table border="1">
                <thead>
                    <tr>
                        <th colspan="8">Điểm chứng chỉ</th>

                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>VSTEP</td>
                        <td>TOEFL PBT</td>
                        <td>TOEFL ITP</td>
                        <td>TOEFL iBT</td>
                        <td>IELTS Academic</td>
                        <td>TOEIC</td>
                        <td>PTE Academic</td>
                        <td>Cambridge English exam
                            (KET, PET, FCE, CAE, CPE)</td>
                    </tr>
                    <tr>
                        <td>Từ Bậc 4/6</td>
                        <td>575+</td>
                        <td>B2+ ~ 542+</td>
                        <td>60+</td>
                        <td>6.0+</td>
                        <td>800+</td>
                        <td>46+</td>
                        <td>B2 ~ FCE, C1 ~ CAE, C2 ~ CPE</td>
                    </tr>
                </tbody>
            </table><br>
            <strong>Lưu ý:</strong><br>
            <ul>
                <li>Thí sinh chưa đạt trình độ tiếng Anh theo yêu cầu được đăng ký học chương trình tiếng Anh dự bị của trường cho tới khi đủ điều kiện vào học chương trình đào tạo hệ đại học chính quy;</li>
                <li>Chứng chỉ để tính quy đổi phải hợp lệ và còn thời hạn sử dụng.
                </li>
            </ul>
            <br>
            <div class="wow fadeInUp" data-wow-delay="0.5s">
                <h4 style="text-align: center">Đăng Ký Tư Vấn</h4>
                <div class="bg-light rounded h-100 d-flex align-items-center p-5">
                    <form action="add"  onsubmit="return validateForm()" method="post">
                        <div class="row g-3">
                            <div class="col-12 col-sm-6">
                                <input type="text" class="form-control border-0" placeholder="Your Name*" style="height: 55px;" name="name" required>
                            </div>
                            <div class="col-12 col-sm-6">
                                <input type="text" class="form-control border-0"  placeholder="Your Phone*" id="telephone" style="height: 55px;" name="phone" required pattern="[0-9]{10}">
                            </div>
                            <div class="col-12 col-sm-6">
                                <input type="email" class="form-control border-0" placeholder="Email*" style="height: 55px;" name="email" required>
                            </div>
                            <div class="col-12 col-sm-6">
                                <input type="date" class="form-control border-0" placeholder="Birthday" style="height: 55px;" name="birth" required>
                            </div>
                            <div class="col-12 col-sm-6">
                                <input type="text" class="form-control border-0" placeholder="Province/city*" style="height: 55px;" name="city" required>
                            </div>
                            <div class="col-12 col-sm-6">
                                <input type="text" class="form-control border-0" placeholder="THPT" style="height: 55px;"name="thpt" required>     
                            </div>
                            <div class="col-12">
                                <input type="text" class="form-control border-0" placeholder="Facebook link" style="height: 55px;" name="face" required>     
                            </div>

                            <p style="color: black">register*</p>
                            <div class="row">
                                <div class="col-3">
                                    <input type="checkbox" value="1" name="tu_van" >tư vấn
                                </div>
                                <div class="col-3">
                                    <input type="checkbox" value="1" name="tuyen_sinh" >tuyển sinh
                                </div>
                                <div class="col-3">
                                    <input type="checkbox" value="1" name="xet" >xét học bổng
                                </div>
                                <div class="col-3">
                                    <input type="checkbox" value="1" name="thi" >thi học bổng
                                </div>
                            </div>
                            <button class="btn btn-primary w-100 py-3" type="submit">Register</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>

    </body>
</html>
