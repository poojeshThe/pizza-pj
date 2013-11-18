package com.pizza.work.library;

import android.content.Context;
import java.io.PrintStream;
import java.util.ArrayList;
import java.util.List;
import java.util.Vector;
import org.apache.http.message.BasicNameValuePair;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public class UserFunctions
{
  public static JSONObject adminpriceList = new JSONObject();
  private static String amountUrl;
  private static String catagoryUrl;
  private static String changepassUrl;
  private static String conditionUrl;
  public static double credit;
  private static String customerUrl;
  private static String dateUrl;
  private static String deleteTempUrl;
  private static String dummy = "";
  private static String imeUrl;
  private static String login_tag = "login";
  private static String partyURL;
  private static String personalledgerUrl;
  private static String productURL;
  private static String productdetaillUrl;
  private static String register_tag;
  private static String resultUrl;
  private static String resultproductUrl;
  private static String salepartyURL;
  private static String salereportDetailUrl;
  private static String salesaveUrl;
  private static String salesaveUrltest;
  private static String saletypeURL;
  private static String subagentURL;
  public static String usercode;
  private static String winUrl;
  private JSONParser jsonParser = new JSONParser();
  
  static
  {
    dateUrl = "get_date.php";
    imeUrl = "getimecode.php";
    subagentURL = "agent_sub.php";
    partyURL = "agent_party.php";
    salepartyURL = "saleparty.php";
    productURL = "agent_product_test.php";
    saletypeURL = "getSaleType_andr.php";
    salesaveUrl = "sale_save.php";
    salesaveUrltest = "set_file.php";
    deleteTempUrl = "sale_del.php";
    conditionUrl = "sale.php";
    personalledgerUrl = "ledgercust_andr.php";
    amountUrl = "salereportamountwise_andr.php";
    salereportDetailUrl = "saleDetailCust_anrd.php";
    productdetaillUrl = "get_product_detail.php";
    resultUrl = "viewresult_andr.php";
    resultproductUrl = "resultproduct_andr.php";
    winUrl = "viewresultdetail_andr.php";
    catagoryUrl = "getProductCategory_andr.php";
    changepassUrl = "changepass_andr.php";
    customerUrl = "soldCust_andr.php";
    register_tag = "register";
  }
  
  public JSONObject changePass(String paramString)
  {
    ArrayList localArrayList = new ArrayList();
    localArrayList.add(new BasicNameValuePair("username", usercode));
    localArrayList.add(new BasicNameValuePair("password", paramString));
    return this.jsonParser.getJSONFromUrl(dummy + changepassUrl, localArrayList);
  }
  
  public JSONObject deleteTemp(String paramString1, String paramString2, String paramString3)
  {
    new JSONObject();
    ArrayList localArrayList = new ArrayList();
    localArrayList.add(new BasicNameValuePair("agent", usercode));
    localArrayList.add(new BasicNameValuePair("pname", paramString1));
    localArrayList.add(new BasicNameValuePair("qnty", paramString2));
    localArrayList.add(new BasicNameValuePair("typeno", paramString3));
    return this.jsonParser.getJSONFromUrl(dummy + deleteTempUrl, localArrayList);
  }
  
  public JSONArray getCatagory(String paramString)
  {
    ArrayList localArrayList = new ArrayList();
    localArrayList.add(new BasicNameValuePair("date", paramString));
    return this.jsonParser.getJSONArrayFromUrl(dummy + catagoryUrl, localArrayList);
  }
  
  public JSONObject getCustomer(String paramString)
  {
    ArrayList localArrayList = new ArrayList();
    localArrayList.add(new BasicNameValuePair("agent", usercode));
    localArrayList.add(new BasicNameValuePair("date", paramString));
    return this.jsonParser.getJSONFromUrl(dummy + customerUrl, localArrayList);
  }
  
  public String getDate()
  {
    ArrayList localArrayList = new ArrayList();
    return this.jsonParser.getStringFromUrl(dummy + dateUrl, localArrayList);
  }
  
  public void getDummy()
  {
    dummy = "";
    Object localObject = new ArrayList();
    ((List)localObject).add(new BasicNameValuePair("tag", "welcome"));
    localObject = this.jsonParser.getJSONFromUrl("http://113.30.141.95/", (List)localObject);
    try
    {
      if ((((JSONObject)localObject).getString("success") != null) && (Integer.parseInt(((JSONObject)localObject).getString("success")) == 1))
      {
        dummy = "http://";
        dummy = dummy + ((JSONObject)localObject).getString("service") + "/";
      }
      label102:
      return;
    }
    catch (Exception localException)
    {
      break label102;
    }
  }
  
  public JSONArray getProductDetail(String paramString)
  {
    ArrayList localArrayList = new ArrayList();
    localArrayList.add(new BasicNameValuePair("date", paramString));
    return this.jsonParser.getJSONArrayFromUrl(dummy + productdetaillUrl, localArrayList);
  }
  
  public JSONObject getSaleType(String paramString1, String paramString2)
  {
    ArrayList localArrayList = new ArrayList();
    localArrayList.add(new BasicNameValuePair("date", paramString1));
    localArrayList.add(new BasicNameValuePair("product", paramString2));
    return this.jsonParser.getJSONFromUrl(dummy + saletypeURL, localArrayList);
  }
  
  public Product getType(String paramString1, String paramString2)
  {
    localProduct = new Product();
    localObject = new ArrayList();
    ArrayList localArrayList2 = new ArrayList();
    ArrayList localArrayList1 = new ArrayList();
    boolean bool1 = false;
    boolean bool2 = false;
    boolean bool3 = false;
    for (;;)
    {
      try
      {
        ((ArrayList)localObject).add("-1");
        localArrayList2.add("-1");
        localArrayList1.add("-1");
        JSONObject localJSONObject2 = getSaleType(paramString1, paramString2);
        int j = Integer.parseInt(localJSONObject2.getString("typeCount"));
        if (j > 0)
        {
          k = 1;
        }
        else
        {
          localObject = new Product(paramString2, paramString1, (ArrayList)localObject, localArrayList2, localArrayList1, bool1, bool2, bool3);
          continue;
          JSONObject localJSONObject1 = localJSONObject2.getJSONObject("type" + k);
          String str = localJSONObject1.getString("name");
          i = Integer.parseInt(localJSONObject1.getString("serial_count"));
          if (str.equals("1"))
          {
            bool1 = true;
            if (i > 0)
            {
              ((ArrayList)localObject).clear();
              n = 1;
              continue;
            }
          }
          else
          {
            if (str.equals("2"))
            {
              bool2 = true;
              if (i <= 0) {
                continue;
              }
              localArrayList2.clear();
              n = 1;
              continue;
            }
            if (!str.equals("3")) {
              continue;
            }
            bool3 = true;
            if (i <= 0) {
              continue;
            }
            localArrayList1.clear();
            m = 1;
            continue;
            ((ArrayList)localObject).add(localJSONObject1.getString("serial" + n));
            n++;
            continue;
          }
          ((ArrayList)localObject).add("-1");
          continue;
          localArrayList2.add(localJSONObject1.getString("serial" + n));
          n++;
          continue;
          localArrayList2.add("-1");
          continue;
          localArrayList1.add(localJSONObject1.getString("serial" + m));
          m++;
          continue;
          localArrayList1.add("-1");
          continue;
        }
        if (k <= j) {
          continue;
        }
        continue;
      }
      catch (Exception localException)
      {
        int k;
        int i;
        int n;
        int m;
        localObject = localProduct;
        continue;
      }
      return localObject;
      if (n > i)
      {
        continue;
        if (n > i)
        {
          continue;
          if (m > i) {
            k++;
          }
        }
      }
    }
  }
  
  public JSONArray getresultProductDetail(String paramString)
  {
    ArrayList localArrayList = new ArrayList();
    localArrayList.add(new BasicNameValuePair("date", paramString));
    return this.jsonParser.getJSONArrayFromUrl(dummy + resultproductUrl, localArrayList);
  }
  
  public JSONObject imeUser(String paramString1, String paramString2)
  {
    getDummy();
    ArrayList localArrayList = new ArrayList();
    localArrayList.add(new BasicNameValuePair("uname", paramString1));
    localArrayList.add(new BasicNameValuePair("password", paramString2));
    return this.jsonParser.getJSONFromUrl(dummy + imeUrl, localArrayList);
  }
  
  public boolean isUserLoggedIn(Context paramContext)
  {
    boolean bool;
    if (new DatabaseHandler(paramContext).getRowCount() <= 0) {
      bool = false;
    } else {
      bool = true;
    }
    return bool;
  }
  
  public JSONObject loginUser(String paramString1, String paramString2)
  {
    ArrayList localArrayList = new ArrayList();
    localArrayList.add(new BasicNameValuePair("tag", login_tag));
    localArrayList.add(new BasicNameValuePair("email", paramString1));
    localArrayList.add(new BasicNameValuePair("password", paramString2));
    return this.jsonParser.getJSONFromUrl(dummy, localArrayList);
  }
  
  public boolean logoutUser(Context paramContext)
  {
    new DatabaseHandler(paramContext).resetTables();
    return true;
  }
  
  public int productDateSale(String paramString1, String paramString2, String paramString3, String paramString4, int paramInt, String paramString5, String paramString6)
  {
    int i = 0;
    Object localObject = new ArrayList();
    ((List)localObject).add(new BasicNameValuePair("agent", usercode));
    ((List)localObject).add(new BasicNameValuePair("product", paramString1));
    ((List)localObject).add(new BasicNameValuePair("serial", paramString2));
    ((List)localObject).add(new BasicNameValuePair("from", paramString3));
    ((List)localObject).add(new BasicNameValuePair("to", paramString4));
    ((List)localObject).add(new BasicNameValuePair("type", String.valueOf(paramInt)));
    ((List)localObject).add(new BasicNameValuePair("quantity", paramString5));
    ((List)localObject).add(new BasicNameValuePair("price", paramString6));
    localObject = this.jsonParser.getJSONFromUrl(dummy + conditionUrl, (List)localObject);
    try
    {
      i = Integer.parseInt(((JSONObject)localObject).getString("condition"));
      i = i;
    }
    catch (Exception localException)
    {
      label221:
      break label221;
    }
    return i;
  }
  
  public JSONObject registerUser(String paramString1, String paramString2, String paramString3)
  {
    ArrayList localArrayList = new ArrayList();
    localArrayList.add(new BasicNameValuePair("tag", register_tag));
    localArrayList.add(new BasicNameValuePair("name", paramString1));
    localArrayList.add(new BasicNameValuePair("email", paramString2));
    localArrayList.add(new BasicNameValuePair("password", paramString3));
    return this.jsonParser.getJSONFromUrl(dummy, localArrayList);
  }
  
  public String[] resultsplit1(String paramString)
  {
    Vector localVector = new Vector();
    for (int i = paramString.indexOf("<br>"); i >= 0; i = paramString.indexOf("<br>"))
    {
      localVector.addElement(paramString.substring(0, i));
      paramString = paramString.substring(i + "<br>".length());
    }
    localVector.addElement(paramString);
    String[] arrayOfString = new String[localVector.size()];
    if (localVector.size() > 0) {
      for (int j = 0; j < localVector.size(); j++)
      {
        arrayOfString[j] = ((String)localVector.elementAt(j));
        System.out.println(arrayOfString[j]);
      }
    }
    return arrayOfString;
  }
  
  public JSONObject saleProduct(String paramString)
  {
    ArrayList localArrayList = new ArrayList();
    localArrayList.add(new BasicNameValuePair("date", paramString));
    localArrayList.add(new BasicNameValuePair("agent", usercode));
    return this.jsonParser.getJSONFromUrl(dummy + productURL, localArrayList);
  }
  
  public JSONObject saveSale(String paramString)
  {
    new JSONObject();
    ArrayList localArrayList = new ArrayList();
    localArrayList.add(new BasicNameValuePair("customer", paramString));
    localArrayList.add(new BasicNameValuePair("agent", usercode));
    return this.jsonParser.InsertSaleUrl(dummy + salesaveUrl, localArrayList);
  }
  
  public JSONObject tempSale(int paramInt1, String paramString1, int paramInt2, String paramString2, int paramInt3, float paramFloat1, float paramFloat2)
  {
    JSONObject localJSONObject = new JSONObject();
    try
    {
      localJSONObject.put("id", new Integer(paramInt1));
      localJSONObject.put("productname", paramString1);
      localJSONObject.put("ptype", new Integer(paramInt2));
      localJSONObject.put("abctype", paramString2);
      localJSONObject.put("qty", new Integer(paramInt3));
      localJSONObject.put("price", new Double(paramFloat1));
      localJSONObject.put("total", new Double(paramFloat1));
      return localJSONObject;
    }
    catch (JSONException localJSONException)
    {
      for (;;)
      {
        localJSONException.printStackTrace();
      }
    }
  }
  
  public JSONObject viewAmountwisesale(String paramString1, String paramString2, String paramString3)
  {
    Object localObject2 = new JSONObject();
    try
    {
      Object localObject1 = new ArrayList();
      ((List)localObject1).add(new BasicNameValuePair("startdate", paramString1));
      ((List)localObject1).add(new BasicNameValuePair("enddate", paramString2));
      ((List)localObject1).add(new BasicNameValuePair("agent", usercode));
      ((List)localObject1).add(new BasicNameValuePair("catid", paramString3));
      localObject1 = this.jsonParser.getJSONFromUrl(dummy + amountUrl, (List)localObject1);
      localObject2 = localObject1;
    }
    catch (Exception localException)
    {
      label132:
      break label132;
    }
    return localObject2;
  }
  
  public JSONArray viewParty(String paramString)
  {
    ArrayList localArrayList = new ArrayList();
    localArrayList.add(new BasicNameValuePair("agent", paramString));
    return this.jsonParser.getJSONArrayFromUrl(dummy + salepartyURL, localArrayList);
  }
  
  public JSONObject viewPersonalLedger(String paramString1, String paramString2, String paramString3)
  {
    ArrayList localArrayList = new ArrayList();
    localArrayList.add(new BasicNameValuePair("from", paramString1));
    localArrayList.add(new BasicNameValuePair("to", paramString2));
    localArrayList.add(new BasicNameValuePair("cust", paramString3));
    localArrayList.add(new BasicNameValuePair("agent", usercode));
    return this.jsonParser.getJSONFromUrl1(dummy + personalledgerUrl, localArrayList);
  }
  
  public JSONObject viewResult(String paramString1, String paramString2)
  {
    ArrayList localArrayList = new ArrayList();
    localArrayList.add(new BasicNameValuePair("date", paramString1));
    localArrayList.add(new BasicNameValuePair("catid", paramString2));
    return this.jsonParser.getJSONFromUrl(dummy + resultUrl, localArrayList);
  }
  
  public JSONObject viewSaleDetail(String paramString1, String paramString2)
  {
    ArrayList localArrayList = new ArrayList();
    localArrayList.add(new BasicNameValuePair("date", paramString1));
    localArrayList.add(new BasicNameValuePair("agent", usercode));
    localArrayList.add(new BasicNameValuePair("cust", paramString2));
    return this.jsonParser.getJSONFromUrl(dummy + salereportDetailUrl, localArrayList);
  }
  
  public JSONArray viewSubagent(String paramString)
  {
    ArrayList localArrayList = new ArrayList();
    localArrayList.add(new BasicNameValuePair("agent", paramString));
    return this.jsonParser.getJSONArrayFromUrl(dummy + subagentURL, localArrayList);
  }
  
  public JSONObject viewWinReport(String paramString1, String paramString2)
  {
    Object localObject2 = new JSONObject();
    try
    {
      Object localObject1 = new ArrayList();
      ((List)localObject1).add(new BasicNameValuePair("date", paramString1));
      ((List)localObject1).add(new BasicNameValuePair("agent", usercode));
      ((List)localObject1).add(new BasicNameValuePair("catid", paramString2));
      localObject1 = this.jsonParser.getJSONFromUrl(dummy + winUrl, (List)localObject1);
      localObject2 = localObject1;
    }
    catch (Exception localException)
    {
      label105:
      break label105;
    }
    return localObject2;
  }
  
  public void writeJSON()
  {
    JSONObject localJSONObject = new JSONObject();
    try
    {
      localJSONObject.put("name", "Jack Hack");
      localJSONObject.put("score", new Integer(200));
      localJSONObject.put("current", new Double(152.31999999999999D));
      localJSONObject.put("nickname", "Hacker");
      System.out.println(localJSONObject);
      return;
    }
    catch (JSONException localJSONException)
    {
      for (;;)
      {
        localJSONException.printStackTrace();
      }
    }
  }
}


/* Location:           C:\Users\PJ\Desktop\get-apk-source_win\classes_dex2jar.jar
 * Qualified Name:     com.pizza.work.library.UserFunctions
 * JD-Core Version:    0.7.0.1
 */