package com.pizza.work.library;

public class Catagory
{
  String catName;
  String catid;
  
  public Catagory()
  {
    this.catid = new String("");
    this.catName = new String("");
  }
  
  public Catagory(String paramString1, String paramString2)
  {
    this.catid = paramString1;
    this.catName = paramString2;
  }
  
  public String getCatid()
  {
    return this.catid;
  }
  
  public String getcatName()
  {
    return this.catName;
  }
}


/* Location:           C:\Users\PJ\Desktop\get-apk-source_win\classes_dex2jar.jar
 * Qualified Name:     com.pizza.work.library.Catagory
 * JD-Core Version:    0.7.0.1
 */