USE QuanLySinhVien;
select * from Student where StudentName like 'h%';

select * from Class where StartDate >= 01/12/2008;

select * from Subject where Credit between 3 and 5;

SET SQL_SAFE_UPDATES = 0;
 update Student SET ClassId = 2 WHERE StudentName = 'hung';

select * from Student as S join Mark as M on M.StudentId = S.StudentId order by M.Mark desc ;

select student.StudentName as studentName, sub.SubName as SubName,  mark.Mark as Mark from Student as student 
join Mark as mark on mark.StudentId = student.StudentId
join Subject as sub On sub.SubId = mark.SubId
order by mark.Mark DESC, student.StudentName ASC