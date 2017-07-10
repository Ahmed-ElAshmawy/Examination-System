-----------------------------------Topic------------------------
--insert
create proc ins_topic @Top_id int,@Top_name varchar(50),@Crs_id int
as 
if exists (select Crs_id from Course where Crs_id=@Crs_id) and not exists(select Top_id from Topic where Top_id=@Top_id )
insert into Topic values (@Top_id,@Top_name,@Crs_id)

--Delete
create proc del_topic @Top_id int
as 
delete from Topic where Top_id=@Top_id

--update
create proc update_topic @Top_id int,@Crs_id int,@Top_name varchar(50)
as 
if exists (select Crs_id from Course where Crs_id=@Crs_id)
update Topic
set Top_name=@Top_name ,Crs_id=@Crs_id
where Top_id= @Top_id

---------------------------------Course
--insert
create proc ins_course @Crs_id int,@Crs_name varchar(50),@Crs_duration int
as
if not exists (select Crs_id from Course where Crs_id=@Crs_id)
insert into Course 
values (@Crs_id ,@Crs_name,@Crs_duration)

--update
create proc update_course @Crs_id int,@Crs_name varchar(50),@Crs_duration int
as
update Course 
set Crs_name=@Crs_name ,Crs_duration=@Crs_duration
where Crs_id=@Crs_id

--delete
create proc del_course @Crs_id int
as
if not exists (select Crs_id from Std_Crs_Ins where Crs_id=@Crs_id) and not exists (select Crs_id from Question where Crs_id=@Crs_id)
delete from Course
where Crs_id=@Crs_id

-------------------------------------Student
--insert
alter proc insert_student @St_id int,@St_name varchar(50),@St_age int,@Dept_id int,@St_U_N varchar(50)
as
if not exists(select St_id from Student where St_id=@St_id)  and
exists(select Dept_id from  Department where Dept_id=@Dept_id) and exists (select U_Name from Clients where U_Name=@St_U_N)
insert into Student
values(@St_id ,@St_name,@St_age,@Dept_id,@St_U_N)

--update
create proc update_std  @St_id int,@St_name varchar(50),@St_age int,@Dept_id int
as
if exists(select Dept_id from Department where Dept_id =@Dept_id)
update Student
set St_name =@St_name,St_age =@St_age, Dept_id =@Dept_id
where  St_id =@St_id 

--delete  
create proc del_student @St_id int
as
delete from Student where St_id=@St_id


-------------------------------------------Instructor
--Insert
create proc insert_inst @Ins_id int ,@Ins_name varchar(50) ,@Ins_salary int,@Dept_id int,@Ins_U_N varchar(50)
as
if not exists(select Ins_id from Instructor where Ins_id =@Ins_id )and 
exists(select Dept_id  from Department where Dept_id =@Dept_id) and exists (select U_Name from Clients where U_Name=@Ins_U_N)
insert into Instructor
values(@Ins_id,@Ins_name,@Ins_salary,@Dept_id,@Ins_U_N)

--Update
create proc update_inst @Ins_id int ,@Ins_name varchar(50) ,@Ins_salary int,@Dept_id int
as
if exists(select Dept_id from Department where Dept_id =@Dept_id)
update Instructor
set Ins_name =@Ins_name, Ins_salary =@Ins_salary, Dept_id =@Dept_id
where Ins_id =@Ins_id

--delete
create proc del_inst @Ins_id int
as
if not exists(select Ins_id from Std_Crs_Ins where Ins_id=@Ins_id)
delete from Instructor
where Ins_id=@Ins_id

------------------------------------Questions
--insert
create proc ins_ques @Q_id int, @Q_type varchar(50), @Q_body varchar(max),@Q_mans varchar(50), @Crs_id int,@Q_grade int
as
if not exists (select Q_id from Question where Q_id=@Q_id) and exists (select Crs_id from Course where Crs_id=@Crs_id)
insert into Question 
values (@Q_id,@Q_type,@Q_body,@Q_mans,@Crs_id,@Q_grade)

/*--update
create proc update_ques @Q_id int, @Q_type varchar(50), @Q_body varchar(max),@Q_mans varchar(50), @Crs_id int,@Q_grade int,
as
*/

--delete
create proc del_ques  @Q_id int
as
if  not exists (select Q_id from Exam_Ques where Q_id=@Q_id) and not exists (select Q_id from Std_Ex_Ques where Q_id=@Q_id)
delete from Question
where Q_id=@Q_id


------------------------------------Exam
--insert
create proc ins_exam @Ex_id int,@Ex_duration int
as
if not exists(select Ex_id from Exam where Ex_id=@Ex_id)
insert into Exam
values(@Ex_id,@Ex_duration)

--update
create proc update_exam @Ex_id int,@Ex_duration int
as
update Exam
set Ex_duration=@Ex_duration
where Ex_id=@Ex_id

--delete
create proc del_exam @Ex_id int
as
if not exists(select Ex_id from Std_Ex_Ques where Ex_id=@Ex_id) 
delete from Exam
where Ex_id=@Ex_id

-----------------------------------------------Exam_QUestions
--insert
create proc ins_Ex_ques @Ex_id int,@Q_id int
as
if not exists (select Ex_id, Q_id from Exam_Ques where Ex_id=@Ex_id and Q_id=@Q_id )
and exists (select Ex_id from Exam where Ex_id=@Ex_id) and exists (select Q_id from Question where Q_id=@Q_id)
insert into Exam_Ques
values (@Ex_id,@Q_id)

--update
----
create proc update_Ex_ques @Ex_id int,@Q_id int
as
if not exists (select Ex_id from Exam_Ques where Ex_id=@Ex_id and Q_id=@Q_id )
and not exists (select Ex_id from Std_Ex_Ques where Ex_id= @Ex_id  )
update Exam_Ques
set Q_id=@Q_id
where Ex_id=@Ex_id

--delete
create proc del_Ex_ques @Ex_id int
as
if not exists (select Ex_id from Std_Ex_Ques where Ex_id=@Ex_id) 
delete from Exam_Ques
where Ex_id=@Ex_id
----------------------------------------Department
--insert
create proc ins_dept @Dept_id int,@Dept_name varchar(50),@Mang_id int
as 
if not exists(select Dept_id from Department where Dept_id= @Dept_id) and
  exists(select Ins_id from Instructor where Ins_id=@Mang_id)
insert into Department
values(@Dept_id,@Dept_name,@Mang_id)


--update
create proc update_dept @Dept_id int,@Dept_name varchar(50),@Mang_id int
as 
if exists(select Ins_id from Instructor where Ins_id=@Mang_id)
update  Department
set Dept_name=@Dept_name,Mang_id=@Mang_id
where Dept_id=@Dept_id

--delete
create proc del_dept @Dept_id int
as 
if not exists(select Ins_id from Instructor where Dept_id=@Dept_id)
and not exists(select St_id from Student where Dept_id=@Dept_id)
delete from Department 
where Dept_id=@Dept_id

--------------------------------------student_exam_question
--insert
create proc ins_Std_Ex_Ques @St_id int ,@Ex_id int ,@Q_id int,@St_ans varchar(50)
as
if not exists (select St_id,Ex_id,Q_id from Std_Ex_Ques where St_id=@St_id and Ex_id=@Ex_id and Q_id=@Q_id)
and exists (select St_id from Student where St_id=@St_id) and exists (select Ex_id from Exam where Ex_id=@Ex_id)
and exists (select Q_id from Question where Q_id=@Q_id)
insert into Std_Ex_Ques values(@St_id,@Ex_id,@Q_id,@St_ans)

--Update
create proc update_Std_Ex_Ques @St_id int ,@Ex_id int ,@Q_id int,@St_ans varchar(50)
as
update Std_Ex_Ques
set St_ans=@St_ans
where St_id=@St_id and Ex_id=@Ex_id and Q_id=@Q_id 

--delete
-- need trigger
create proc del_Std_Ex_Ques @St_id int ,@Ex_id int ,@Q_id int
if not exists(select St_id from Student where St_id=@St_id ) 
and not exists(select Ex_id from Exam where Ex_id=@Ex_id )
and not exists(select Q_id from Question where Q_id=@Q_id )
delete from Std_Ex_Ques where St_id=@St_id and Ex_id=@Ex_id and Q_id=@Q_id

--------------------------------------choices

--insert 
--insert  one choice
create proc  ins_one_Choice @Q_id int ,@op1 varchar(50)
as
if not exists(select @Q_id,@op1 from Choices where Q_id=@Q_id and op1=@op1) and exists(select Q_id from Question where Q_id=@Q_id)
insert into Choices(Q_id,op1) values(@Q_id,@op1)
--insert all choices
create proc ins_option @Q_id int ,@op1 varchar(50),@op2 varchar(50),@op3 varchar(50)
as 
 execute ins_one_Choice @Q_id,@op1
 execute ins_one_Choice @Q_id,@op2
 execute ins_one_Choice @Q_id,@op3
 ---------------------------------------------------------Std_Crs_Ins
 --insert
 create proc ins_Std_Crs_Ins @St_id int,@Ins_id int, @Crs_id int,@grad int
 as
 if not exists (select grad from Std_Crs_Ins where St_id=@St_id and Ins_id=@Ins_id and Crs_id=@Crs_id )
 and exists (select St_id from Student where St_id=@St_id )
 and exists( select Ins_id from Instructor where Ins_id=@Ins_id )
 and exists (select Crs_id from Course where Crs_id=@Crs_id)
 insert into Std_Crs_Ins
 values(@St_id,@Ins_id,@Crs_id,@grad)

 --delete
 create proc del_Std_Crs_Ins @St_id int,@Ins_id int, @Crs_id int
 as
 if not exists (select St_id from Student where St_id=@St_id)
 and not exists (select Ins_id from Instructor where Ins_id=@Ins_id)
 and not exists (select Crs_id from Course where Crs_id=@Crs_id )
 delete from Std_Crs_Ins
 where St_id=@St_id and Ins_id=@Ins_id and Crs_id=@Crs_id

 --update
 create proc update_Std_Crs_Ins @St_id int,@Ins_id int, @Crs_id int,@grad int
 as
-- if exists (select St_id from Student where St_id=@St_id )
--and exists( select Ins_id from Instructor where Ins_id=@Ins_id )
-- and exists (select Crs_id from Course where Crs_id=@Crs_id)
 update Std_Crs_Ins
 set grad=@grad
 where St_id=@St_id and Ins_id=@Ins_id and Crs_id=@Crs_id






 --------------------------------------------------
  --Generate Exam
 alter proc Generate_Exam @Crs_Name varchar(50),@MSQ int,@TF int,@Ex_id int,@Ex_duration int
as
begin

declare @t1 as table (Exam int ,Ques int)
declare @t2 as table (Exam int,Ques int)

declare @Crs_id int
select @Crs_id=Crs_id from Course where Crs_name=@Crs_Name

if not exists (select Ex_id from Exam where Ex_id=@Ex_id)
begin
insert into Exam values (@Ex_id,@Ex_duration,@Crs_id)
end 

insert into @t1 select top (@MSQ) @Ex_id,Q_id 
from Question q,Course c
where q.Crs_id=c.Crs_id and Crs_name=@Crs_Name and Q_type='mcq'
order by NEWID()

insert into @t2 select top (@TF)@Ex_id, Q_id 
from Question q,Course c
where q.Crs_id=c.Crs_id and Crs_name=@Crs_Name and Q_type='TF'
order by NEWID()

if not exists  (select Ex_id from Exam_Ques where Ex_id=@Ex_id)
begin
insert into Exam_Ques

Select * from  @t1 
union
Select * from @t2
end
end

Generate_Exam 'C#',9,1 ,1,10

select *from Exam_Ques
--------------------------------------------------------------------------------------------
---------------------------exam answer------------------------------------------------------------
alter proc Exam_Ans @St_name varchar(50),@Ex_id int,@ans1 varchar(50),@ans2 varchar(50),@ans3 varchar(50),@ans4 varchar(50),@ans5 varchar(50),@ans6 varchar(50),@ans7 varchar(50),@ans8 varchar(50),@ans9 varchar(50),@ans10 varchar(50)
as 
begin 

declare @St_id int
Select @St_id=St_id from Student where St_name=@St_name

delete from Std_Ex_Ques
where St_id=@St_id and Ex_id=@Ex_id

declare @ta as table (a varchar(50))
insert into @ta values
(@ans1),(@ans2),(@ans3),(@ans4),(@ans5)
,(@ans6),(@ans7),(@ans8),(@ans9),(@ans10)

declare ins_curse cursor
for select a from  @ta 
for read only 
declare @answer varchar(50)
open ins_curse
fetch ins_curse into @answer

declare ins_ques cursor
for  select Q_id from Exam_Ques where Ex_id=@Ex_id
for read only 
declare @Ques int
open ins_ques
fetch ins_ques into @Ques

while @@FETCH_STATUS =0
begin 
insert into Std_Ex_Ques (St_id,Ex_id,Q_id,St_ans)
values(@St_id,@Ex_id,@Ques,@answer)
fetch ins_curse into @answer
fetch ins_ques into @Ques
end
close ins_ques
close ins_curse
deallocate ins_ques
deallocate ins_curse

end

Exam_Ans 'Ahmed Mohamed',1,'ToBoolean','ToBoolean','ToBoolean','ToBoolean','ToBoolean','ToBoolean','ToBoolean','ToBoolean','ToBoolean','ToBoolean'
exam_correction 'Ahmed Mohamed',1
------------------------------Correct Answer-----------------------
-------------------------------third stored------------------------
alter proc exam_correction @St_name varchar(50),@Ex_id int 
as
begin
declare @st_id int
select @st_id=St_id from Student where St_name=@St_name

declare @crs_id int
select @crs_id=Crs_id from Exam where Ex_id=@Ex_id

declare curser1 cursor
for select Q_id,St_ans from Std_Ex_Ques where Ex_id=@Ex_id
for read only 
declare @q_id int
declare @answer varchar(50)
open curser1
fetch curser1 into @q_id,@answer


--declare curser2 cursor
--for select Q_mans from Question where Q_id=@q_id
--for read only 
declare @model varchar(50)
--open curser2
--fetch curser2 into @model

declare @total int =0

while @@FETCH_STATUS =0
begin 
select @model =Q_mans from Question where Q_id=@q_id
if (@answer=@model)
begin
set @total=@total+1
end

fetch curser1 into @q_id,@answer
--fetch curser2 into @model
end

close curser1
--close curser2
deallocate curser1
--deallocate curser2

update Std_Crs_Ins
set grad=@total
where St_id=@st_id and Crs_id=@crs_id

end


------------------------------------------------------------------------
 -----------------------------------------------------------------------------
 --------------------Reports---------------------------------------------------
 ----------------------report that return studen's info according to Dept id----------------
--1
alter proc stud_dept @Dept_id int
as
if exists (select Dept_id from Student where Dept_id=@Dept_id)
select St_id,St_name,St_age from Student where Dept_id=@Dept_id
-----------------------------------------------------------------------------------------------------
--------------------report that take student id & return sum of grades--------------------------------
--2
alter proc stud_grade @St_id int 
as
if exists (select Std_id from Std_Crs_Ins where Std_id=@St_id)
select Std_Crs_Ins.grad as [student's grade],Course.Crs_name from Std_Crs_Ins,Course
where Course.Crs_id=Std_Crs_Ins.Crs_id and Std_Crs_Ins.St_id=@St_id
------------------------------------------------------------------------------------------------------------
----------------------
--3
alter proc ins_crs_stud @Ins_id int 
as 
if exists(select Ins_id from Std_Crs_Ins where Ins_id=@Ins_id)
select Course.Crs_name,count(Std_Crs_Ins.St_id) as [number of students per course] from Course,Std_Crs_Ins
where Std_Crs_Ins.Ins_id=@Ins_id and Course.Crs_id=Std_Crs_Ins.Crs_id
group by Course.Crs_name


--------------------------------------------
--4-	Report that takes course ID and returns its topics  
create proc Crs_id_topic @Crs_id int 
as
select Top_id,Top_name from Topic where Crs_id=@Crs_id
--check
Crs_id_topic 100

-----------------------------------------------

--5-•	Report that takes exam number and returns the Questions in it
create proc Ex_Q @Ex_id int
as
select e.Q_id ,q.Q_body,q.Q_type ,c.op1 from Exam_Ques e ,Question q ,choices c where e.Ex_id=@Ex_id and q.Q_id=e.Q_id and q.Q_id=c.Q_id
--note
-----must make TF Qustion answer as Choices
--------------------------------------------------
--6 •	Report that takes exam number and the student ID then returns the Questions in this exam with the student answers.
--- problem in display St_ans that repeat answer  with all options
Create proc Ex_Std_1 @Ex_id int,@Std_id int 
as 
select q.Q_id,q.Q_body,q.Q_type,seq.St_ans
from Std_Ex_Ques seq,Question q 
where seq.St_id=@Std_id and seq.Ex_id=@Ex_id and seq.Q_id=q.Q_id

-------------------------------------------------------------------------
-----------------Login---------------------
alter proc Check_user @User_Name varchar(50),@Password varchar(50)
as
declare @role varchar(50)
if exists(select * from Clients where U_Name=@User_Name and U_Pass=@Password)
begin
select @role=U_Role from Clients where U_Name=@User_Name and U_Pass=@Password
if(@role='Student')
begin
select St_id,@role from Student where St_U_N=@User_name
end
else if((@role='Instructor')or( @role='Admin'))
begin
select Ins_id,@role from Instructor where Ins_U_N=@User_name
end
end


Check_user 'Ahmed_Aly',123

------------------------------
---
alter proc get_questions @Ex_id int
as
select *from (
select TOP 100 Question.Q_id, Question.Q_body,op1,Num from Exam_Ques,Question,Choices where Ex_id=@Ex_id and Exam_Ques.Q_id=Question.Q_id and Choices.Q_id=Question.Q_id  order by Exam_Ques.Q_id) src
pivot
(Max(op1) for Num in (a,b,c))As Pvt

get_questions 1

------------------------------------Display all questions data with Crs_id
create proc Question_Data @Crs_id int
as
select *
from(
select q.Q_id,q.Q_body,c.op1,q.Q_grade,c.num from Question q,Choices c where q.Crs_id=@Crs_id and q.Q_id=c.Q_id) src
pivot
(
Max(op1)
for num in(a,b,c)
)As pvt;
Question_Data 1

-----------------------insert into client
alter proc ins_user @U_Name varchar(50),@U_Pass varchar(50),@U_Role varchar(50)
as
if not exists (select U_Name from Clients where U_Name=@U_Name)
insert into Clients
values (@U_Name,@U_Pass,@U_Role)

-------------------------Change Pass
create proc [dbo].[change_password] @UName varchar(50),@OldPass varchar(50),@NewPass varchar(50)
as
if exists (select * from Clients where  U_Pass=@OldPass and U_name=@UName)
 begin 
update Clients
set U_Pass=@NewPass
where U_name= @UName 
end

