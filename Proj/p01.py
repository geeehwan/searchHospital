# -*- coding:utf-8 -*-

# 4f6a6547456b6368333355736a714f
from http.client import HTTPConnection
from json import loads

f=open("/Users/yjson/Downloads/s_hospital.txt", "a", encoding="utf-8")
# http://openapi.seoul.go.kr:8088/sample/json/TbHospitalInfo/1/5/
hc = HTTPConnection("openapi.seoul.go.kr:8088")
for s in range(1, 17002, 1000):
    hc.request("GET", "/4f6a6547456b6368333355736a714f/json/TbHospitalInfo/%d/%d/" % (s, s+999))
    resBody = hc.getresponse().read()
# print(resBody.decode())

    sHospital = loads(resBody)
    sHospitals = sHospital["TbHospitalInfo"]["row"]

    for h in sHospitals:
        f.write(h["DUTYADDR"] + "\t")
        f.write(h["DUTYDIVNAM"] + "\t")
        f.write(h["DUTYNAME"] + "\t")
        
        f.write(h["WGS84LON"] + "\t")
        f.write(h["WGS84LAT"] + "\t")
        f.write(h["DUTYERYN"] + "\t") 
        if h["DUTYTIME1S"] == "":
            f.write("0\t")
        else:
            f.write(h["DUTYTIME1S"] + "\t")
        if h["DUTYTIME1C"] == "":
            f.write("0\t")
        else:
            f.write(h["DUTYTIME1C"] + "\t")
        if h["DUTYTIME2S"] == "":
            f.write("0\t")
        else:
            f.write(h["DUTYTIME2S"] + "\t")
        if h["DUTYTIME2C"] == "":
            f.write("0\t")
        else:
            f.write(h["DUTYTIME2C"] + "\t")
        if h["DUTYTIME3S"] == "":
            f.write("0\t")
        else:
            f.write(h["DUTYTIME3S"] + "\t")
        if h["DUTYTIME3C"] == "":
            f.write("0\t")
        else:
            f.write(h["DUTYTIME3C"] + "\t")
        if h["DUTYTIME4S"] == "":
            f.write("0\t")
        else:
            f.write(h["DUTYTIME4S"] + "\t")
        if h["DUTYTIME4C"] == "":
            f.write("0\t")
        else:
            f.write(h["DUTYTIME4C"] + "\t")
        if h["DUTYTIME5S"] == "":
            f.write("0\t")
        else:
            f.write(h["DUTYTIME5S"] + "\t")
        if h["DUTYTIME5C"] == "":
            f.write("0\t")
        else:
            f.write(h["DUTYTIME5C"] + "\t")
        if h["DUTYTIME6S"] == "":
            f.write("0\t")
        else:
            f.write(h["DUTYTIME6S"] + "\t")
        if h["DUTYTIME6C"] == "":
            f.write("0\t")
        else:
            f.write(h["DUTYTIME6C"] + "\t")
        if h["DUTYTIME7S"] == "":
            f.write("0\t")
        else:
            f.write(h["DUTYTIME7S"] + "\t")
        if h["DUTYTIME7C"] == "":
            f.write("0\t")
        else:
            f.write(h["DUTYTIME7C"] + "\t")
        if h["DUTYTIME8S"] == "":
            f.write("0\t")
        else:
            f.write(h["DUTYTIME8S"] + "\t")
        if h["DUTYTIME8C"] == "":
            f.write("0\t")
        else:
            f.write(h["DUTYTIME8C"] + "\t")
        f.write(h["DUTYTEL1"] + "\n")
f.close()

    