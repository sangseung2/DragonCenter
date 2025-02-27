select * from tblteachermanagement;

drop table tblTeacherManagement;

-- 강의 교사 관리 100개

create table tblTeacherManagement
(
    tm_seq number,
    oc_seq number not null,
    teacher_seq number not null,
    tm_state varchar2(6) not null
);

create sequence tm_seq
    cache 1000;

alter table tblTeacherManagement
    add constraint tbltm_tm_seq_pk primary key(tm_seq);
alter table tblTeacherManagement
    add constraint tbltm_oc_seq_fk foreign key(oc_seq) references tblOpenCourse(oc_seq);
alter table tblTeacherManagement
    add constraint tbltm_teacher_seq_fk foreign key(teacher_seq) references tblTeacher(teacher_seq);
alter table tblTeacherManagement
    add constraint tbltm_tm_state_ck check(tm_state in('배치', '교체'));
    
insert into tblTeacherManagement(tm_seq, oc_seq, teacher_seq, tm_state) values (tm_seq.nextval,  1,  1, '배치'); 
insert into tblTeacherManagement(tm_seq, oc_seq, teacher_seq, tm_state) values (tm_seq.nextval,  2,  2, '배치');
insert into tblTeacherManagement(tm_seq, oc_seq, teacher_seq, tm_state) values (tm_seq.nextval,  3,  3, '배치');
insert into tblTeacherManagement(tm_seq, oc_seq, teacher_seq, tm_state) values (tm_seq.nextval,  4,  4, '배치');
insert into tblTeacherManagement(tm_seq, oc_seq, teacher_seq, tm_state) values (tm_seq.nextval,  5,  5, '배치');
insert into tblTeacherManagement(tm_seq, oc_seq, teacher_seq, tm_state) values (tm_seq.nextval,  6,  6, '배치');
insert into tblTeacherManagement(tm_seq, oc_seq, teacher_seq, tm_state) values (tm_seq.nextval,  1,  7, '교체');
insert into tblTeacherManagement(tm_seq, oc_seq, teacher_seq, tm_state) values (tm_seq.nextval,  1,  8, '교체');
insert into tblTeacherManagement(tm_seq, oc_seq, teacher_seq, tm_state) values (tm_seq.nextval,  2,  9, '교체');
insert into tblTeacherManagement(tm_seq, oc_seq, teacher_seq, tm_state) values (tm_seq.nextval,  3,  10, '교체');

insert into tblTeacherManagement(tm_seq, oc_seq, teacher_seq, tm_state) values (tm_seq.nextval, 11, 7, '배치');
insert into tblTeacherManagement(tm_seq, oc_seq, teacher_seq, tm_state) values (tm_seq.nextval, 12, 8, '교체');
insert into tblTeacherManagement(tm_seq, oc_seq, teacher_seq, tm_state) values (tm_seq.nextval, 15, 9, '배치');
insert into tblTeacherManagement(tm_seq, oc_seq, teacher_seq, tm_state) values (tm_seq.nextval, 18, 3, '배치');
insert into tblTeacherManagement(tm_seq, oc_seq, teacher_seq, tm_state) values (tm_seq.nextval, 2, 3, '교체');
insert into tblTeacherManagement(tm_seq, oc_seq, teacher_seq, tm_state) values (tm_seq.nextval, 12, 4, '배치');
insert into tblTeacherManagement(tm_seq, oc_seq, teacher_seq, tm_state) values (tm_seq.nextval, 3, 9, '배치');
insert into tblTeacherManagement(tm_seq, oc_seq, teacher_seq, tm_state) values (tm_seq.nextval, 16, 10, '교체');
insert into tblTeacherManagement(tm_seq, oc_seq, teacher_seq, tm_state) values (tm_seq.nextval, 14, 9, '교체');
insert into tblTeacherManagement(tm_seq, oc_seq, teacher_seq, tm_state) values (tm_seq.nextval, 20, 4, '배치');
insert into tblTeacherManagement(tm_seq, oc_seq, teacher_seq, tm_state) values (tm_seq.nextval, 4, 6, '배치');
insert into tblTeacherManagement(tm_seq, oc_seq, teacher_seq, tm_state) values (tm_seq.nextval, 13, 5, '교체');
insert into tblTeacherManagement(tm_seq, oc_seq, teacher_seq, tm_state) values (tm_seq.nextval, 1, 2, '교체');
insert into tblTeacherManagement(tm_seq, oc_seq, teacher_seq, tm_state) values (tm_seq.nextval, 11, 7, '배치');
insert into tblTeacherManagement(tm_seq, oc_seq, teacher_seq, tm_state) values (tm_seq.nextval, 19, 9, '교체');
insert into tblTeacherManagement(tm_seq, oc_seq, teacher_seq, tm_state) values (tm_seq.nextval, 8, 9, '교체');
insert into tblTeacherManagement(tm_seq, oc_seq, teacher_seq, tm_state) values (tm_seq.nextval, 7, 7, '배치');
insert into tblTeacherManagement(tm_seq, oc_seq, teacher_seq, tm_state) values (tm_seq.nextval, 3, 10, '교체');
insert into tblTeacherManagement(tm_seq, oc_seq, teacher_seq, tm_state) values (tm_seq.nextval, 12, 6, '교체');
insert into tblTeacherManagement(tm_seq, oc_seq, teacher_seq, tm_state) values (tm_seq.nextval, 2, 2, '교체');
insert into tblTeacherManagement(tm_seq, oc_seq, teacher_seq, tm_state) values (tm_seq.nextval, 19, 7, '교체');
insert into tblTeacherManagement(tm_seq, oc_seq, teacher_seq, tm_state) values (tm_seq.nextval, 16, 7, '배치');
insert into tblTeacherManagement(tm_seq, oc_seq, teacher_seq, tm_state) values (tm_seq.nextval, 15, 4, '배치');
insert into tblTeacherManagement(tm_seq, oc_seq, teacher_seq, tm_state) values (tm_seq.nextval, 8, 8, '교체');
insert into tblTeacherManagement(tm_seq, oc_seq, teacher_seq, tm_state) values (tm_seq.nextval, 16, 10, '배치');
insert into tblTeacherManagement(tm_seq, oc_seq, teacher_seq, tm_state) values (tm_seq.nextval, 5, 7, '교체');
insert into tblTeacherManagement(tm_seq, oc_seq, teacher_seq, tm_state) values (tm_seq.nextval, 19, 7, '배치');
insert into tblTeacherManagement(tm_seq, oc_seq, teacher_seq, tm_state) values (tm_seq.nextval, 14, 4, '교체');
insert into tblTeacherManagement(tm_seq, oc_seq, teacher_seq, tm_state) values (tm_seq.nextval, 1, 4, '교체');
insert into tblTeacherManagement(tm_seq, oc_seq, teacher_seq, tm_state) values (tm_seq.nextval, 18, 4, '배치');
insert into tblTeacherManagement(tm_seq, oc_seq, teacher_seq, tm_state) values (tm_seq.nextval, 13, 5, '배치');
insert into tblTeacherManagement(tm_seq, oc_seq, teacher_seq, tm_state) values (tm_seq.nextval, 18, 3, '배치');
insert into tblTeacherManagement(tm_seq, oc_seq, teacher_seq, tm_state) values (tm_seq.nextval, 18, 7, '배치');
insert into tblTeacherManagement(tm_seq, oc_seq, teacher_seq, tm_state) values (tm_seq.nextval, 9, 7, '배치');
insert into tblTeacherManagement(tm_seq, oc_seq, teacher_seq, tm_state) values (tm_seq.nextval, 4, 5, '교체');
insert into tblTeacherManagement(tm_seq, oc_seq, teacher_seq, tm_state) values (tm_seq.nextval, 7, 5, '교체');
insert into tblTeacherManagement(tm_seq, oc_seq, teacher_seq, tm_state) values (tm_seq.nextval, 3, 2, '교체');
insert into tblTeacherManagement(tm_seq, oc_seq, teacher_seq, tm_state) values (tm_seq.nextval, 1, 9, '배치');
insert into tblTeacherManagement(tm_seq, oc_seq, teacher_seq, tm_state) values (tm_seq.nextval, 14, 5, '배치');
insert into tblTeacherManagement(tm_seq, oc_seq, teacher_seq, tm_state) values (tm_seq.nextval, 16, 3, '교체');
insert into tblTeacherManagement(tm_seq, oc_seq, teacher_seq, tm_state) values (tm_seq.nextval, 3, 7, '교체');
insert into tblTeacherManagement(tm_seq, oc_seq, teacher_seq, tm_state) values (tm_seq.nextval, 5, 10, '배치');
insert into tblTeacherManagement(tm_seq, oc_seq, teacher_seq, tm_state) values (tm_seq.nextval, 19, 7, '교체');
insert into tblTeacherManagement(tm_seq, oc_seq, teacher_seq, tm_state) values (tm_seq.nextval, 9, 9, '교체');
insert into tblTeacherManagement(tm_seq, oc_seq, teacher_seq, tm_state) values (tm_seq.nextval, 9, 5, '배치');
insert into tblTeacherManagement(tm_seq, oc_seq, teacher_seq, tm_state) values (tm_seq.nextval, 14, 6, '교체');
insert into tblTeacherManagement(tm_seq, oc_seq, teacher_seq, tm_state) values (tm_seq.nextval, 4, 6, '배치');
insert into tblTeacherManagement(tm_seq, oc_seq, teacher_seq, tm_state) values (tm_seq.nextval, 6, 9, '배치');
insert into tblTeacherManagement(tm_seq, oc_seq, teacher_seq, tm_state) values (tm_seq.nextval, 18, 5, '교체');
insert into tblTeacherManagement(tm_seq, oc_seq, teacher_seq, tm_state) values (tm_seq.nextval, 5, 5, '배치');
insert into tblTeacherManagement(tm_seq, oc_seq, teacher_seq, tm_state) values (tm_seq.nextval, 9, 5, '교체');
insert into tblTeacherManagement(tm_seq, oc_seq, teacher_seq, tm_state) values (tm_seq.nextval, 4, 10, '배치');
insert into tblTeacherManagement(tm_seq, oc_seq, teacher_seq, tm_state) values (tm_seq.nextval, 15, 7, '교체');
insert into tblTeacherManagement(tm_seq, oc_seq, teacher_seq, tm_state) values (tm_seq.nextval, 11, 8, '배치');
insert into tblTeacherManagement(tm_seq, oc_seq, teacher_seq, tm_state) values (tm_seq.nextval, 19, 9, '배치');
insert into tblTeacherManagement(tm_seq, oc_seq, teacher_seq, tm_state) values (tm_seq.nextval, 20, 10, '교체');
insert into tblTeacherManagement(tm_seq, oc_seq, teacher_seq, tm_state) values (tm_seq.nextval, 3, 4, '교체');
insert into tblTeacherManagement(tm_seq, oc_seq, teacher_seq, tm_state) values (tm_seq.nextval, 10, 7, '교체');
insert into tblTeacherManagement(tm_seq, oc_seq, teacher_seq, tm_state) values (tm_seq.nextval, 7, 7, '배치');
insert into tblTeacherManagement(tm_seq, oc_seq, teacher_seq, tm_state) values (tm_seq.nextval, 14, 9, '교체');
insert into tblTeacherManagement(tm_seq, oc_seq, teacher_seq, tm_state) values (tm_seq.nextval, 14, 10, '배치');
insert into tblTeacherManagement(tm_seq, oc_seq, teacher_seq, tm_state) values (tm_seq.nextval, 5, 9, '교체');
insert into tblTeacherManagement(tm_seq, oc_seq, teacher_seq, tm_state) values (tm_seq.nextval, 3, 2, '배치');
insert into tblTeacherManagement(tm_seq, oc_seq, teacher_seq, tm_state) values (tm_seq.nextval, 3, 9, '배치');
insert into tblTeacherManagement(tm_seq, oc_seq, teacher_seq, tm_state) values (tm_seq.nextval, 9, 2, '배치');
insert into tblTeacherManagement(tm_seq, oc_seq, teacher_seq, tm_state) values (tm_seq.nextval, 1, 10, '배치');
insert into tblTeacherManagement(tm_seq, oc_seq, teacher_seq, tm_state) values (tm_seq.nextval, 15, 8, '배치');
insert into tblTeacherManagement(tm_seq, oc_seq, teacher_seq, tm_state) values (tm_seq.nextval, 20, 3, '배치');
insert into tblTeacherManagement(tm_seq, oc_seq, teacher_seq, tm_state) values (tm_seq.nextval, 17, 3, '교체');
insert into tblTeacherManagement(tm_seq, oc_seq, teacher_seq, tm_state) values (tm_seq.nextval, 13, 5, '교체');
insert into tblTeacherManagement(tm_seq, oc_seq, teacher_seq, tm_state) values (tm_seq.nextval, 6, 2, '배치');
insert into tblTeacherManagement(tm_seq, oc_seq, teacher_seq, tm_state) values (tm_seq.nextval, 12, 3, '교체');
insert into tblTeacherManagement(tm_seq, oc_seq, teacher_seq, tm_state) values (tm_seq.nextval, 3, 1, '교체');
insert into tblTeacherManagement(tm_seq, oc_seq, teacher_seq, tm_state) values (tm_seq.nextval, 8, 1, '배치');
insert into tblTeacherManagement(tm_seq, oc_seq, teacher_seq, tm_state) values (tm_seq.nextval, 20, 1, '교체');
insert into tblTeacherManagement(tm_seq, oc_seq, teacher_seq, tm_state) values (tm_seq.nextval, 4, 1, '배치');
insert into tblTeacherManagement(tm_seq, oc_seq, teacher_seq, tm_state) values (tm_seq.nextval, 10, 5, '배치');
insert into tblTeacherManagement(tm_seq, oc_seq, teacher_seq, tm_state) values (tm_seq.nextval, 17, 3, '배치');
insert into tblTeacherManagement(tm_seq, oc_seq, teacher_seq, tm_state) values (tm_seq.nextval, 15, 4, '배치');
insert into tblTeacherManagement(tm_seq, oc_seq, teacher_seq, tm_state) values (tm_seq.nextval, 14, 2, '배치');
insert into tblTeacherManagement(tm_seq, oc_seq, teacher_seq, tm_state) values (tm_seq.nextval, 19, 2, '교체');
insert into tblTeacherManagement(tm_seq, oc_seq, teacher_seq, tm_state) values (tm_seq.nextval, 11, 7, '교체');
insert into tblTeacherManagement(tm_seq, oc_seq, teacher_seq, tm_state) values (tm_seq.nextval, 5, 3, '배치');
insert into tblTeacherManagement(tm_seq, oc_seq, teacher_seq, tm_state) values (tm_seq.nextval, 11, 10, '교체');
insert into tblTeacherManagement(tm_seq, oc_seq, teacher_seq, tm_state) values (tm_seq.nextval, 3, 2, '배치');
insert into tblTeacherManagement(tm_seq, oc_seq, teacher_seq, tm_state) values (tm_seq.nextval, 7, 9, '교체');
insert into tblTeacherManagement(tm_seq, oc_seq, teacher_seq, tm_state) values (tm_seq.nextval, 17, 7, '배치');
insert into tblTeacherManagement(tm_seq, oc_seq, teacher_seq, tm_state) values (tm_seq.nextval, 10, 4, '교체');
insert into tblTeacherManagement(tm_seq, oc_seq, teacher_seq, tm_state) values (tm_seq.nextval, 15, 9, '배치');
insert into tblTeacherManagement(tm_seq, oc_seq, teacher_seq, tm_state) values (tm_seq.nextval, 19, 8, '배치');
