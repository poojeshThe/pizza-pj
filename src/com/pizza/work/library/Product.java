package com.pizza.work.library;

import android.util.Log;
import java.util.ArrayList;

public class Product
{
  String date;
  String productname;
  ArrayList<String> type1;
  ArrayList<String> type2;
  ArrayList<String> type3;
  boolean typestatus1 = false;
  boolean typestatus2 = false;
  boolean typestatus3 = false;
  
  public Product()
  {
    this.productname = new String("");
    this.date = new String("");
    this.type1 = new ArrayList();
    this.type2 = new ArrayList();
    this.type3 = new ArrayList();
  }
  
  public Product(String paramString1, String paramString2, ArrayList<String> paramArrayList1, ArrayList<String> paramArrayList2, ArrayList<String> paramArrayList3, boolean paramBoolean1, boolean paramBoolean2, boolean paramBoolean3)
  {
    this.productname = paramString1;
    this.date = paramString2;
    this.type1 = paramArrayList1;
    this.type2 = paramArrayList2;
    this.type3 = paramArrayList3;
    this.typestatus1 = paramBoolean1;
    this.typestatus2 = paramBoolean2;
    this.typestatus3 = paramBoolean3;
  }
  
  public String getDate()
  {
    return this.date;
  }
  
  public String getProductname()
  {
    return this.productname;
  }
  
  public ArrayList<String> getType1()
  {
    return this.type1;
  }
  
  public ArrayList<String> getType2()
  {
    return this.type2;
  }
  
  public ArrayList<String> getType3()
  {
    return this.type3;
  }
  
  public boolean getTypeStatus1()
  {
    Log.d("****getfunction1***", String.valueOf(this.typestatus1));
    return this.typestatus1;
  }
  
  public boolean getTypeStatus2()
  {
    Log.d("****getfunction2***", String.valueOf(this.typestatus2));
    return this.typestatus2;
  }
  
  public boolean getTypeStatus3()
  {
    Log.d("****getfunction3***", String.valueOf(this.typestatus3));
    return this.typestatus3;
  }
}


/* Location:           C:\Users\PJ\Desktop\get-apk-source_win\classes_dex2jar.jar
 * Qualified Name:     com.pizza.work.library.Product
 * JD-Core Version:    0.7.0.1
 */