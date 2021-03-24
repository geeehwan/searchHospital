# -*- coding:utf-8 -*-
from cx_Oracle import connect

# 연결
con  = connect("sdedu/1@121.160.41.151:1521/xe")

fff = open("/Users/yjson/Downloads/s_hospital.txt", "r" , encoding="utf-8")

cur = con.cursor()

hospitalData = None
for line in fff.readlines():
    hospitalData = (line.replace("\n", "").split("\t"))
    DUTYADDR = hospitalData[0].replace("'", " ")
    DUTYNAME = hospitalData[2].replace("'", " ")
    WGS84LAT = float(hospitalData[3])
    WGS84LON = float(hospitalData[4])
    DUTYERYN = int(hospitalData[5])
    DUTYTIME1S = hospitalData[6]
    DUTYTIME1C = hospitalData[7]
    DUTYTIME2S = hospitalData[8]
    DUTYTIME2C = hospitalData[9]
    DUTYTIME3S = hospitalData[10]
    DUTYTIME3C = hospitalData[11]
    DUTYTIME4S = hospitalData[12]
    DUTYTIME4C = hospitalData[13]
    DUTYTIME5S = hospitalData[14]
    DUTYTIME5C = hospitalData[15]
    DUTYTIME6S = hospitalData[16]
    DUTYTIME6C = hospitalData[17]
    DUTYTIME7S = hospitalData[18]
    DUTYTIME7C = hospitalData[19]
    DUTYTIME8S = hospitalData[20]
    DUTYTIME8C = hospitalData[21]
    DUTYTEL1 = hospitalData[22]
    sql = "insert into hospital_info values(hospital_info_seq.nextval, '%s', %d, '%s', '%s', %f, %f, '%s', '%s', '%s', '%s', '%s', '%s', '%s', '%s', '%s', '%s', '%s', '%s', '%s', '%s', '%s', '%s')" % (DUTYADDR, DUTYERYN, DUTYNAME, DUTYTEL1, WGS84LAT, WGS84LON, DUTYTIME1S, DUTYTIME1C, DUTYTIME2S, DUTYTIME2C,DUTYTIME3S, DUTYTIME3C,DUTYTIME4S, DUTYTIME4C,DUTYTIME5S, DUTYTIME5C,DUTYTIME6S, DUTYTIME6C,DUTYTIME7S, DUTYTIME7C,DUTYTIME8S, DUTYTIME8C)
    print(sql)
    cur.execute(sql)
con.commit() 
fff.close()

if cur.rowcount == 1:
    print("성공")
    
con.close()
