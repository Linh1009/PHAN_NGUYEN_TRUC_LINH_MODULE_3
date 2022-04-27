use quanlysinhvien;
-- Hiển thị tất cả các thông tin môn học (bảng subject) có credit lớn nhất.
select subname, credit from subject 
where credit = (select max(credit) from subject);

-- Hiển thị các thông tin môn học có điểm thi lớn nhất.
select * from mark join `subject` on mark.subid = `subject`.subid 
where mark = (select max(mark) from mark);


