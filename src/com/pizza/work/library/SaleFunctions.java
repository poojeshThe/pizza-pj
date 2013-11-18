package com.pizza.work.library;

import android.util.Log;
import java.util.ArrayList;
import java.util.Vector;
import org.json.JSONArray;
import org.json.JSONObject;

public class SaleFunctions
{
  static int typecount = 0;
  static boolean typestatus1 = false;
  static boolean typestatus2 = false;
  static boolean typestatus3 = false;
  Product p = new Product();
  String[] ttype = new String[3];
  ArrayList<String> type1;
  ArrayList<String> type2;
  ArrayList<String> type3;
  UserFunctions userFunction = new UserFunctions();
  
  public static boolean getTypeStatus1()
  {
    Log.d("****getfunction1***", String.valueOf(typestatus1));
    return typestatus1;
  }
  
  public static boolean getTypeStatus2()
  {
    Log.d("****getfunction2***", String.valueOf(typestatus2));
    return typestatus2;
  }
  
  public static boolean getTypeStatus3()
  {
    Log.d("****getfunction3***", String.valueOf(typestatus3));
    return typestatus3;
  }
  
  public Vector<String> fillParty()
  {
    localVector = new Vector();
    JSONArray localJSONArray = this.userFunction.viewParty(UserFunctions.usercode);
    int i = 0;
    try
    {
      while (i < localJSONArray.length())
      {
        localVector.add(localJSONArray.getJSONObject(i).getString("name"));
        i++;
      }
      return localVector;
    }
    catch (Exception localException) {}
  }
  
  public Product getType(String paramString1, String paramString2)
  {
    this.type1 = new ArrayList();
    this.type2 = new ArrayList();
    this.type3 = new ArrayList();
    try
    {
      typestatus1 = false;
      typestatus2 = false;
      typestatus3 = false;
      this.type1.clear();
      this.type2.clear();
      this.type3.clear();
      JSONObject localJSONObject1 = this.userFunction.getSaleType(paramString1, paramString2);
      typecount = Integer.parseInt(localJSONObject1.getString("typeCount"));
      if (typecount > 0) {}
      label139:
      label270:
      label342:
      label482:
      label492:
      label502:
      label509:
      for (int i = 1;; i++)
      {
        if (i > typecount)
        {
          this.p = new Product(paramString2, paramString1, this.type1, this.type2, this.type3, typestatus1, typestatus2, typestatus3);
          return this.p;
        }
        JSONObject localJSONObject2 = localJSONObject1.getJSONObject("type" + i);
        String str = localJSONObject2.getString("name");
        Log.d("****tname", str);
        int j = Integer.parseInt(localJSONObject2.getString("serial_count"));
        int m;
        if (str.equals("1"))
        {
          typestatus1 = true;
          Log.d("****status***", String.valueOf(typestatus1));
          if (j <= 0) {
            break label342;
          }
          m = 1;
          break label482;
        }
        int k;
        for (;;)
        {
          if (str.equals("2"))
          {
            typestatus2 = true;
            Log.d("****status2***", String.valueOf(typestatus2));
            if (j <= 0) {
              break;
            }
            m = 1;
            break label492;
          }
          if (!str.equals("3")) {
            break label509;
          }
          typestatus3 = true;
          Log.d("****status3***", String.valueOf(j));
          if (j <= 0) {
            break label469;
          }
          k = 1;
          break label502;
          this.type1.add(localJSONObject2.getString("serial" + m));
          m++;
          break label482;
          this.type1.add("-1");
        }
        this.type2.add(localJSONObject2.getString("serial" + m));
        m++;
        break label492;
        this.type2.add("-1");
        while (k <= j)
        {
          do
          {
            do
            {
              this.type3.add(localJSONObject2.getString("serial" + k));
              this.ttype[k] = localJSONObject2.getString("serial" + k);
              k++;
              break;
              this.type3.add("-1");
              break label509;
            } while (m <= j);
            break;
          } while (m <= j);
          break label270;
        }
      }
    }
    catch (Exception localException)
    {
      label469:
      break label139;
    }
  }
  
  public ArrayList<String> getType1()
  {
    for (;;)
    {
      try
      {
        Log.d("vector1size", String.valueOf(this.type1.size()));
        i = 0;
        int j = this.type1.size();
        if (i < j) {
          continue;
        }
      }
      catch (Exception localException)
      {
        int i;
        Log.d("error vetor2", localException.getMessage());
        continue;
      }
      return this.type1;
      Log.d("vector1", this.type1.toString());
      i++;
    }
  }
  
  public ArrayList<String> getType2()
  {
    for (;;)
    {
      try
      {
        Log.d("vector2size", String.valueOf(this.type2.size()));
        j = 0;
        int i = this.type2.size();
        if (j < i) {
          continue;
        }
      }
      catch (Exception localException)
      {
        int j;
        Log.d("error vetor2", localException.getMessage());
        continue;
      }
      return this.type2;
      Log.d("vector2", this.type2.toString());
      j++;
    }
  }
  
  public ArrayList<String> getType3()
  {
    for (;;)
    {
      try
      {
        Log.d("vector3size", String.valueOf(this.type3.size()));
        i = 0;
        int j = this.type3.size();
        if (i < j) {
          continue;
        }
      }
      catch (Exception localException)
      {
        int i;
        Log.d("error vetor3", localException.getMessage());
        continue;
      }
      return this.type3;
      Log.d("vector3", this.type3.toString());
      i++;
    }
  }
  
  public int validParty(String paramString)
  {
    int i = 1;
    try
    {
      if (!paramString.matches("[a-zA-Z]*"))
      {
        i = -1;
      }
      else
      {
        boolean bool = paramString.equals("");
        if (bool) {
          i = 0;
        }
      }
    }
    catch (Exception localException) {}
    return i;
  }
}


/* Location:           C:\Users\PJ\Desktop\get-apk-source_win\classes_dex2jar.jar
 * Qualified Name:     com.pizza.work.library.SaleFunctions
 * JD-Core Version:    0.7.0.1
 */