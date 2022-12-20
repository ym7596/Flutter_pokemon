import 'dart:ffi';

import 'package:flutter/material.dart';

class RealValue{
  //종족값
  int? hp;
  int? a;
  int? b;
  int? c;
  int? d;
  int? speed;

  //노력치
  int? hpn;
  int? an;
  int? bn;
  int? cn;
  int? dn;
  int? sn;

  //개체값
  int? hpg;
  int? ag;
  int? bg;
  int? cg;
  int? dg;
  int? sg;

  double? cha;
  RealValue(this.hp,this.a,this.b,this.c,this.d,this.speed
            ,this.hpn,this.an,this.bn,this.cn,this.dn,this.sn,
      this.hpg,this.ag,this.bg,this.cg,this.dg,this.sg
      );

  double deterMination(String select,double cha, int skillpower,double item,double spec
      ,double weather){
    double result = 0;

    result = aRealValue(select, cha) * skillpower *item*spec*weather;
    return result;
  }

  double aRealValue(String select,double cha){
    double result = 0;

    switch(select){
      case "hp":
        result = calCulValueH(hp!,hpg!,hpn!,cha!);
        break;
      case "a":
        result = calCulValue(a!, ag!, an!, cha!);
        break;
      case "b":
        result = calCulValue(b!, bg!, bn!, cha!);
        break;
      case "c":
        result = calCulValue(c!, cg!, cn!, cha!);
        break;
      case "d":
        result = calCulValue(d!, dg!, dn!, cha!);
        break;
      case "speed":
        result = calCulValue(speed!, sg!, sn!, cha!);
        break;
    }

    return result;
  }

  double calCulValue(int jonjok, int gacha, int effort, double cha){
    double result = (jonjok + gacha/2 + effort/8 + 5) * cha;

    return result;
  }

  double calCulValueH(int jonjok, int gacha, int effort, double cha){
    double result = (jonjok + gacha/2 + effort/8 + 10) +50;

    return result;
  }
}