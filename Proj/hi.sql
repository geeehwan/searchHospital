create table hospital_info(
	DUTYNO number(6) primary key,
	DUTYADDR varchar2(250 char) not null,
	DUTYERYN number(2) not null,
	DUTYNAME varchar2(150 char) not null,
	DUTYTEL1 varchar2(50 char) not null,
	WGS84LAT number(30,26) not null,
	WGS84LON number(30,26) not null,
	DUTYTIME1S varchar2(10 char) not null,
	DUTYTIME1C varchar2(10 char) not null,
	DUTYTIME2S varchar2(10 char) not null,
	DUTYTIME2C varchar2(10 char) not null,
	DUTYTIME3S varchar2(10 char) not null,
	DUTYTIME3C varchar2(10 char) not null,
	DUTYTIME4S varchar2(10 char) not null,
	DUTYTIME4C varchar2(10 char) not null,
	DUTYTIME5S varchar2(10 char) not null,
	DUTYTIME5C varchar2(10 char) not null,
	DUTYTIME6S varchar2(10 char) not null,
	DUTYTIME6C varchar2(10 char) not null,
	DUTYTIME7S varchar2(10 char) not null,
	DUTYTIME7C varchar2(10 char) not null,
	DUTYTIME8S varchar2(10 char) not null,
	DUTYTIME8C varchar2(10 char) not null
);
insert into hospital_info values(hospital_info_seq.nextval, '서울특별시 강남구 봉은사로 612 (삼성동)', 2, '(의)가산의료재단광동한방병원', '02-2222-4888', 127.062148, 37.514280, '0900', '1800', '0900', '1800', '0900', '1800', '0900', '1800', '0900', '1800', '0900', '1500', '0', '0', '0', '0')
create sequence hospital_info_seq;
select * from hospital_info;
drop table hospital_info;