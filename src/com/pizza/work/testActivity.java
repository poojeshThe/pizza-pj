package com.pizza.work;

import android.app.Activity;
import android.app.DatePickerDialog;
import android.app.DatePickerDialog.OnDateSetListener;
import android.os.Bundle;
import android.util.Log;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemSelectedListener;
import android.widget.ArrayAdapter;
import android.widget.DatePicker;
import android.widget.Spinner;
import android.widget.SpinnerAdapter;
import android.widget.TableLayout;
import android.widget.TableRow;
import android.widget.TextView;
import com.pizza.work.library.UserFunctions;
import java.lang.reflect.Array;
import java.util.Calendar;
import java.util.Vector;
import org.json.JSONArray;
import org.json.JSONObject;

public class testActivity
  extends Activity
{
  Vector[] Nos;
  String[] a1;
  Vector[] amounts;
  TextView calview1;
  Vector<String> catagoryVector;
  Vector<String> idVector;
  int location;
  String[][] nos;
  Vector<String> pricecounter;
  Vector[] pricenames;
  boolean prodcount;
  Vector productVector;
  private Spinner spin_catagory;
  String startdate;
  TableLayout tl;
  String today;
  TableRow tr;
  TableRow trsecond;
  TableRow trthird;
  TextView tv1;
  TextView tv2;
  TextView tv3;
  TextView tvempty;
  TextView tvr1;
  TextView tvr2;
  TextView tvr3;
  TextView tvr4;
  TextView tvr5;
  UserFunctions userFunction;
  Vector[][] v;
  
  public testActivity()
  {
    int[] arrayOfInt = new int[2];
    arrayOfInt[0] = 1000;
    arrayOfInt[1] = 1000;
    this.v = ((Vector[][])Array.newInstance(Vector.class, arrayOfInt));
    this.prodcount = false;
    this.location = 0;
    this.userFunction = new UserFunctions();
    this.catagoryVector = new Vector();
    this.idVector = new Vector();
    this.productVector = new Vector();
    this.pricenames = new Vector[500];
    this.amounts = new Vector[500];
    this.pricecounter = new Vector();
  }
  
  public void createView(TableRow paramTableRow, TextView paramTextView, String paramString, int paramInt)
  {
    paramTextView.setText(paramString);
    paramTextView.setWidth(500);
    paramTextView.setTextColor(-12303292);
    paramTextView.setTextColor(-16777216);
    paramTextView.setTextColor(paramInt);
    paramTextView.setBackgroundColor(-16711681);
    paramTextView.setPadding(10, 0, 0, 0);
    paramTableRow.setPadding(0, 1, 0, 1);
    paramTableRow.setBackgroundColor(-16777216);
    paramTableRow.addView(paramTextView);
  }
  
  public void display()
  {
    JSONObject localJSONObject2 = new UserFunctions().viewResult(this.startdate, ((String)this.idVector.elementAt(this.location)).toString());
    int n;
    int j;
    try
    {
      this.productVector.removeAllElements();
      this.v.length;
      n = Integer.parseInt(localJSONObject2.getString("productCount"));
      this.productVector.removeAllElements();
      if (n == -1) {
        break label417;
      }
      j = 1;
    }
    catch (Exception localException1)
    {
      JSONObject localJSONObject1;
      int i;
      Log.e("Error   trtet", localException1.getMessage());
      break label417;
    }
    localJSONObject1 = localJSONObject2.getJSONObject("product" + j);
    Log.e("TTT", "****" + localJSONObject1.toString());
    this.productVector.addElement(localJSONObject1.getString("name"));
    Exception localException2 = Integer.parseInt(localJSONObject1.getString("priceCount"));
    this.pricecounter.addElement(String.valueOf(localException2));
    this.pricenames[(j - 1)] = new Vector();
    this.amounts[(j - 1)] = new Vector();
    i = 1;
    label312:
    label440:
    for (;;)
    {
      this.pricenames[(j - 1)].addElement(localJSONObject1.getString("priceName" + i));
      this.amounts[(j - 1)].addElement(localJSONObject1.getString("amt" + i));
      int k = Integer.parseInt(localJSONObject1.getString("pirceNoCount" + i));
      this.v[(j - 1)][(i - 1)] = new Vector();
      int m = 1;
      break label429;
      String str = "priceNo" + i + m;
      Log.e("TTT", "****NO" + localJSONObject1.getString(str).toString());
      this.v[(j - 1)][(i - 1)].addElement(localJSONObject1.getString(str).toString());
      m++;
      break label429;
      if (j > n) {
        return;
      }
      for (;;)
      {
        if (localException1 <= localException2) {
          break label440;
        }
        j++;
        break label411;
        break;
        if (m <= k) {
          break label312;
        }
        localException1++;
      }
    }
  }
  
  public void fillCatagory()
  {
    this.catagoryVector.removeAllElements();
    this.idVector.removeAllElements();
    Object localObject = this.userFunction.getCatagory(this.today);
    for (int i = 0;; i++)
    {
      try
      {
        int j = ((JSONArray)localObject).length();
        if (i < j) {
          break label62;
        }
      }
      catch (Exception localException)
      {
        label38:
        label62:
        JSONObject localJSONObject;
        break label38;
      }
      localObject = new ArrayAdapter(this, 17367049, this.catagoryVector);
      this.spin_catagory.setAdapter((SpinnerAdapter)localObject);
      return;
      localJSONObject = ((JSONArray)localObject).getJSONObject(i);
      this.catagoryVector.add(localJSONObject.getString("category"));
      this.idVector.add(localJSONObject.getString("id"));
    }
  }
  
  public void fillDate()
  {
    Object localObject = this.userFunction.getDate();
    localObject = this.userFunction.resultsplit1((String)localObject);
    this.calview1.setText(localObject[0]);
    this.today = localObject[1];
  }
  
  public void fillProduct()
  {
    this.prodcount = false;
    this.productVector.removeAllElements();
    Object localObject = this.userFunction.getresultProductDetail(this.startdate);
    int i = 0;
    try
    {
      for (;;)
      {
        if (i >= ((JSONArray)localObject).length())
        {
          localObject = new ArrayAdapter(this, 17367049, this.productVector);
          this.spin_catagory.setAdapter((SpinnerAdapter)localObject);
          break;
        }
        this.prodcount = true;
        JSONObject localJSONObject = ((JSONArray)localObject).getJSONObject(i);
        this.productVector.add(localJSONObject.getString("product"));
        i++;
      }
      return;
    }
    catch (Exception localException) {}
  }
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(2130903059);
    setContentView(2130903059);
    this.spin_catagory = ((Spinner)findViewById(2131230738));
    this.calview1 = ((TextView)findViewById(2131230721));
    fillDate();
    this.startdate = this.today;
    fillCatagory();
    display();
    tabledisplay();
    this.calview1.setOnClickListener(new View.OnClickListener()
    {
      public void onClick(View paramAnonymousView)
      {
        Calendar localCalendar = Calendar.getInstance();
        int i = localCalendar.get(1);
        int j = localCalendar.get(2);
        int k = localCalendar.get(5);
        DatePickerDialog localDatePickerDialog = new DatePickerDialog(testActivity.this, new DatePickerDialog.OnDateSetListener()
        {
          public void onDateSet(DatePicker paramAnonymous2DatePicker, int paramAnonymous2Int1, int paramAnonymous2Int2, int paramAnonymous2Int3)
          {
            testActivity.this.startdate = (paramAnonymous2Int1 + "-" + String.valueOf(paramAnonymous2Int2 + 1) + "-" + String.valueOf(paramAnonymous2Int3));
            String str = new StringBuilder(String.valueOf(String.valueOf(paramAnonymous2Int3))).append("-").append(String.valueOf(paramAnonymous2Int2 + 1)).toString() + "-" + paramAnonymous2Int1;
            testActivity.this.calview1.setText(str);
            testActivity.this.display();
            testActivity.this.tabledisplay();
          }
        }, i, j, k);
        localDatePickerDialog.setTitle("Pizza");
        localDatePickerDialog.show();
      }
    });
    this.spin_catagory.setOnItemSelectedListener(new AdapterView.OnItemSelectedListener()
    {
      public void onItemSelected(AdapterView<?> paramAnonymousAdapterView, View paramAnonymousView, int paramAnonymousInt, long paramAnonymousLong)
      {
        testActivity.this.location = paramAnonymousInt;
        testActivity.this.display();
        testActivity.this.tabledisplay();
      }
      
      public void onNothingSelected(AdapterView<?> paramAnonymousAdapterView) {}
    });
  }
  
  public void tabledisplay()
  {
    this.tl = ((TableLayout)findViewById(2131230793));
    this.tl.removeAllViews();
    for (int k = 0; k < this.productVector.size(); k++)
    {
      this.tr = new TableRow(this);
      this.tv1 = new TextView(this);
      createView(this.tr, this.tv1, this.productVector.get(k).toString(), -65536);
      this.tl.addView(this.tr);
      for (int i = 0; i < this.pricenames[k].size(); i++)
      {
        this.trsecond = new TableRow(this);
        this.tvr1 = new TextView(this);
        for (int j = 0; j < this.v[k][i].size(); j++)
        {
          Log.e("TEST", "UUU" + j);
          this.trthird = new TableRow(this);
          this.tvr2 = new TextView(this);
          this.pricenames[k].get(i).toString();
          String str = this.amounts[k].get(i).toString();
          for (int m = str.length(); m <= 10; m++) {
            str = str + " ";
          }
          createView(this.trthird, this.tvr2, str + " :  " + this.v[k][i].get(j).toString(), -16777216);
          this.tl.addView(this.trthird);
        }
      }
    }
  }
}


/* Location:           C:\Users\PJ\Desktop\get-apk-source_win\classes_dex2jar.jar
 * Qualified Name:     com.pizza.work.testActivity
 * JD-Core Version:    0.7.0.1
 */