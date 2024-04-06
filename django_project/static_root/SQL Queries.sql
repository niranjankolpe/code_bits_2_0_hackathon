create database code_bits_data;

create table academic_performance (email varchar(50) primary key, html int, python int, java int, dsa int, oops int, maths int, communication int, writing int, reading int);

create table student_goals (email varchar(50) primary key, domain text(20), duration_weeks int, available_hours int);

create table student_profiles (email varchar(50), uname text(50), password varchar(50), foreign key academics(email) references academic_performance(email), foreign key goals(email) references student_goals(email));
