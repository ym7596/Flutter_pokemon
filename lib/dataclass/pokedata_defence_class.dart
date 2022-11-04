class DefenceInfo{
  int? H; //종족값
  int? B;
  int? D;

  int H_b = 0;
  int B_b = 0;
  int D_b = 0; //노력치


  DefenceInfo(int h,int b,int d){
    H = h;
    B = b;
    D = d;

  }
  int? RealValueH(){ //개체값 V 상정 체력
    int? result = 0;
    result = ((H! + 31*0.5 + H_b*0.125 + 10 + 50)) as int?;

    return result;

  }
  int? RealValueB(double Ch){ //개체값은 V로 상정한다.
    int? result =0;
    result = ((B! + 31*0.5 + B_b*0.125 + 5) * Ch) as int?;
    return result;
  }

  int? RealValueD(double Ch){ //개체값은 V로 상정한다.
    int? result =0;
    result = ((D! + 31*0.5 + D_b*0.125 + 5) * Ch) as int?;
    return result;
  }

  int? ResultB(double ch){
    return (RealValueH()! * RealValueB(ch)!) / 0.411 as int?;
  }

  int? ResultD(double ch){
    return (RealValueH()! * RealValueD(ch)!) / 0.411 as int?;
  }
}