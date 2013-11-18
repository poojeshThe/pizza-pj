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
import android.widget.Button;
import android.widget.DatePicker;
import android.widget.Spinner;
import android.widget.SpinnerAdapter;
import android.widget.TableLayout;
import android.widget.TableRow;
import android.widget.TextView;
import com.pizza.work.library.UserFunctions;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.HashMap;
import java.util.List;
import java.util.Vector;
import org.json.JSONArray;
import org.json.JSONObject;

public class PersonalLedgerActivity
  extends Activity
{
  Vector[] Nos;
  String[] a1;
  Vector amounts = new Vector();
  Button b1;
  Vector balance = new Vector();
  TextView calview1;
  TextView calview2;
  Vector custnames = new Vector();
  String cutomername;
  Vector dates = new Vector();
  String enddate;
  String[][] nos;
  List<HashMap<String, String>> saleProductList = new ArrayList();
  Vector sales = new Vector();
  Spinner spcust;
  String startdate;
  TableLayout tl;
  String today;
  Vector total = new Vector();
  TableRow tr;
  TableRow trsecond;
  TextView tv1;
  TextView tv2;
  TextView tv3;
  TextView tv4;
  TextView tv5;
  TextView tvr1;
  TextView tvr2;
  TextView tvr3;
  TextView tvr4;
  TextView tvr5;
  UserFunctions userFunction = new UserFunctions();
  Vector[] v = new Vector['ú'];
  Vector winning = new Vector();
  
  public void createView(TableRow paramTableRow, TextView paramTextView, String paramString)
  {
    paramTextView.setText(paramString);
    paramTextView.setTextColor(-12303292);
    paramTextView.setBackgroundColor(-16711681);
    paramTextView.setPadding(10, 0, 0, 0);
    paramTableRow.setPadding(0, 1, 0, 1);
    paramTableRow.setBackgroundColor(-16777216);
    paramTableRow.addView(paramTextView);
  }
  
  public void display()
  {
    UserFunctions localUserFunctions = new UserFunctions();
    Log.d("JSONFrom  ", "test");
    JSONObject localJSONObject1 = localUserFunctions.viewPersonalLedger(this.startdate, this.enddate, this.spcust.getSelectedItem().toString());
    int j = 1;
    double d3 = 0.0D;
    double d2 = 0.0D;
    double d1 = 0.0D;
    try
    {
      this.dates = new Vector();
      this.sales = new Vector();
      this.winning = new Vector();
      this.balance = new Vector();
      this.total = new Vector();
      this.dates.removeAllElements();
      this.sales.removeAllElements();
      this.winning.removeAllElements();
      this.balance.removeAllElements();
      int k = Integer.parseInt(localJSONObject1.getString("count"));
      if (k != -1)
      {
        Log.d("JSON fromsalereport  ", localJSONObject1.toString());
        int i = 1;
        if (i > k)
        {
          Log.d("COMES HERE", this.dates.toString());
          Log.d("COMES HERE", this.sales.toString());
          Log.d("COMES HERE", this.winning.toString());
          Log.d("COMES HERE", this.balance.toString());
          this.dates.addElement(" ");
          this.sales.addElement(" ");
          this.winning.addElement(" ");
          this.balance.addElement(" ");
          this.dates.addElement("G. Total");
          this.sales.addElement(String.valueOf(d3));
          this.winning.addElement(String.valueOf(d2));
          this.balance.addElement(String.valueOf(d1));
        }
        else
        {
          String str = String.valueOf(j);
          Log.d("sq", str);
          JSONObject localJSONObject2 = localJSONObject1.getJSONObject("cust" + str);
          Log.e("COUNT", localJSONObject2.getString("name"));
          this.dates.addElement(localJSONObject2.getString("name"));
          this.sales.addElement(" ");
          this.winning.addElement(" ");
          this.balance.addElement(" ");
          int n = Integer.parseInt(localJSONObject2.getString("pcount"));
          double d7 = 0.0D;
          double d6 = 0.0D;
          double d5 = 0.0D;
          for (int m = 1;; m++)
          {
            if (m > n)
            {
              this.dates.addElement(" Total ");
              this.sales.addElement(Double.valueOf(d7));
              this.winning.addElement(Double.valueOf(d6));
              this.balance.addElement(Double.valueOf(d5));
              d3 += d7;
              d2 += d6;
              d1 += d5;
              j++;
              i++;
              break;
            }
            new StringBuilder("no").append(m).toString();
            this.dates.addElement(localJSONObject2.getString("date" + m).trim());
            this.sales.addElement(localJSONObject2.getString("sale" + m));
            this.winning.addElement(localJSONObject2.getString("winning" + m));
            this.balance.addElement(localJSONObject2.getString("balance" + m));
            d7 += Double.parseDouble(localJSONObject2.getString("sale" + m));
            d6 += Double.parseDouble(localJSONObject2.getString("winning" + m));
            double d4 = Double.parseDouble(localJSONObject2.getString("balance" + m));
            d5 += d4;
          }
        }
      }
      return;
    }
    catch (Exception localException)
    {
      Log.e("Error   trtet", localException.getMessage());
    }
  }
  
  public void fillDate()
  {
    Object localObject = this.userFunction.getDate();
    localObject = this.userFunction.resultsplit1((String)localObject);
    this.calview1.setText(localObject[0]);
    this.calview2.setText(localObject[0]);
    this.today = localObject[1];
  }
  
  public void fillParty()
  {
    Object localObject = new Vector();
    new String[1000];
    JSONArray localJSONArray = this.userFunction.viewParty(UserFunctions.usercode);
    try
    {
      ((Vector)localObject).add("All");
      for (int i = 0;; i++)
      {
        if (i >= localJSONArray.length())
        {
          localObject = new ArrayAdapter(this, 17367049, (List)localObject);
          this.spcust.setAdapter((SpinnerAdapter)localObject);
          break;
        }
        ((Vector)localObject).add(localJSONArray.getJSONObject(i).getString("name"));
      }
      return;
    }
    catch (Exception localException) {}
  }
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(2130903053);
    this.calview1 = ((TextView)findViewById(2131230754));
    this.calview2 = ((TextView)findViewById(2131230755));
    this.b1 = ((Button)findViewById(2131230729));
    fillDate();
    this.startdate = this.today;
    this.enddate = this.today;
    this.spcust = ((Spinner)findViewById(2131230757));
    fillParty();
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
        DatePickerDialog localDatePickerDialog = new DatePickerDialog(PersonalLedgerActivity.this, new DatePickerDialog.OnDateSetListener()
        {
          public void onDateSet(DatePicker paramAnonymous2DatePicker, int paramAnonymous2Int1, int paramAnonymous2Int2, int paramAnonymous2Int3)
          {
            PersonalLedgerActivity.this.startdate = (paramAnonymous2Int1 + "-" + String.valueOf(paramAnonymous2Int2 + 1) + "-" + String.valueOf(paramAnonymous2Int3));
            String str = new StringBuilder(String.valueOf(String.valueOf(paramAnonymous2Int3))).append(".0").append(String.valueOf(paramAnonymous2Int2 + 1)).toString() + "." + paramAnonymous2Int1;
            PersonalLedgerActivity.this.calview1.setText(str);
          }
        }, i, j, k);
        localDatePickerDialog.setTitle("Sandwitch");
        localDatePickerDialog.show();
      }
    });
    this.calview2.setOnClickListener(new View.OnClickListener()
    {
      public void onClick(View paramAnonymousView)
      {
        Calendar localCalendar = Calendar.getInstance();
        int i = localCalendar.get(1);
        int j = localCalendar.get(2);
        int k = localCalendar.get(5);
        DatePickerDialog localDatePickerDialog = new DatePickerDialog(PersonalLedgerActivity.this, new DatePickerDialog.OnDateSetListener()
        {
          public void onDateSet(DatePicker paramAnonymous2DatePicker, int paramAnonymous2Int1, int paramAnonymous2Int2, int paramAnonymous2Int3)
          {
            PersonalLedgerActivity.this.enddate = (paramAnonymous2Int1 + "-" + String.valueOf(paramAnonymous2Int2 + 1) + "-" + String.valueOf(paramAnonymous2Int3));
            String str = new StringBuilder(String.valueOf(String.valueOf(paramAnonymous2Int3))).append(".0").append(String.valueOf(paramAnonymous2Int2 + 1)).toString() + "." + paramAnonymous2Int1;
            PersonalLedgerActivity.this.calview2.setText(str);
          }
        }, i, j, k);
        localDatePickerDialog.setTitle("Sandwitch");
        localDatePickerDialog.show();
      }
    });
    this.spcust.setOnItemSelectedListener(new AdapterView.OnItemSelectedListener()
    {
      public void onItemSelected(AdapterView paramAnonymousAdapterView, View paramAnonymousView, int paramAnonymousInt, long paramAnonymousLong) {}
      
      public void onNothingSelected(AdapterView paramAnonymousAdapterView) {}
    });
    this.b1.setOnClickListener(new View.OnClickListener()
    {
      public void onClick(View paramAnonymousView)
      {
        PersonalLedgerActivity.this.display();
        PersonalLedgerActivity.this.tabledisplay();
      }
    });
  }
  
  public void tabledisplay()
  {
    this.tl = ((TableLayout)findViewById(2131230759));
    this.tl.removeAllViews();
    Log.e("sixe", String.valueOf(this.dates.size()));
    for (int i = 0; i < this.dates.size(); i++)
    {
      this.tr = new TableRow(this);
      this.tv1 = new TextView(this);
      this.tv2 = new TextView(this);
      this.tv3 = new TextView(this);
      this.tv4 = new TextView(this);
      createView(this.tr, this.tv1, this.dates.get(i).toString());
      createView(this.tr, this.tv2, this.sales.get(i).toString());
      createView(this.tr, this.tv3, this.winning.get(i).toString());
      createView(this.tr, this.tv4, this.balance.get(i).toString());
      this.tl.addView(this.tr);
    }
  }
}


/* Location:           C:\Users\PJ\Desktop\get-apk-source_win\classes_dex2jar.jar
 * Qualified Name:     com.pizza.work.PersonalLedgerActivity
 * JD-Core Version:    0.7.0.1
 */