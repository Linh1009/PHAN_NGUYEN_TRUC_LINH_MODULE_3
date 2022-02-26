USE QuanLySinhVien;
# Hien thi tat ca ten sinh vien bat dau bang ki tu 'h'.
select * from Student where StudentName like 'h%';

# Hien thi thong tin lop co thoi gian bat dau thang 12.
select * from Class where StartDate >= 01/12/2008;

# Hien thi tat ca thong tin mon hoc co credit giua 3 va 5.
select * from Subject where Credit between 3 and 5;

# Thay doi ma lop (ClassID) cua sinh vien co ten la hung la 2.
SET SQL_SAFE_UPDATES = 0;
 update Student SET ClassId = 2 WHERE StudentName = 'hung';

# Hiển thị các thông tin: StudentName, SubName, Mark. Dữ liệu sắp xếp theo điểm thi (mark) giảm dần. nếu trùng sắp theo tên tăng dần.

select * from Student as S join Mark as M on M.StudentId = S.StudentId order by M.Mark desc ;

select student.StudentName as studentName, sub.SubName as SubName,  mark.Mark as Mark from Student as student 
join Mark as mark on mark.StudentId = student.StudentId
join Subject as sub On sub.SubId = mark.SubId
order by mark.Mark DESC, student.StudentName ASC