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
import android.widget.TextView;
import com.pizza.work.library.UserFunctions;
import java.util.Calendar;
import java.util.Vector;
import org.json.JSONArray;
import org.json.JSONObject;

public class saleamountwiseActivity
  extends Activity
{
  Button b1;
  TextView balance;
  TextView calview1;
  TextView calview2;
  Vector<String> catagoryVector = new Vector();
  TextView dcamount;
  String enddate;
  Vector<String> idVector = new Vector();
  int location = 0;
  Spinner spin_catagory;
  String startdate;
  TextView stock;
  TextView tamount;
  TextView tamountpay;
  String today;
  TextView total;
  TextView tsale;
  UserFunctions userFunction = new UserFunctions();
  TextView winning;
  TextView winningamt;
  
  public void display()
  {
    JSONObject localJSONObject = this.userFunction.viewAmountwisesale(this.startdate, this.enddate, ((String)this.idVector.elementAt(this.location)).toString());
    try
    {
      this.tsale.setText(localJSONObject.getString("total_sale"));
      this.tsale.setGravity(5);
      this.tamount.setText(localJSONObject.getString("sale_amount"));
      this.tamount.setGravity(5);
      this.tamountpay.setText(localJSONObject.getString("amount_to_pay"));
      this.tamountpay.setGravity(5);
      this.winning.setText(localJSONObject.getString("no_of_winning"));
      this.winning.setGravity(5);
      this.winningamt.setText(localJSONObject.getString("winning_amount"));
      this.winningamt.setGravity(5);
      this.dcamount.setText(localJSONObject.getString("dc_amount"));
      this.dcamount.setGravity(5);
      this.stock.setText(localJSONObject.getString("stock_amount"));
      this.stock.setGravity(5);
      this.total.setText(localJSONObject.getString("grand_total"));
      this.total.setGravity(5);
      this.balance.setText(localJSONObject.getString("balance"));
      this.balance.setGravity(5);
      return;
    }
    catch (Exception localException)
    {
      for (;;)
      {
        Log.e("error", localException.getMessage());
      }
    }
  }
  
  public void fillCatagory()
  {
    this.catagoryVector.removeAllElements();
    this.idVector.removeAllElements();
    this.catagoryVector.add("All");
    this.idVector.add("All");
    Object localObject = this.userFunction.getCatagory(this.today);
    for (int i = 0;; i++)
    {
      try
      {
        int j = ((JSONArray)localObject).length();
        if (i < j) {
          break label82;
        }
      }
      catch (Exception localException)
      {
        label58:
        label82:
        JSONObject localJSONObject;
        break label58;
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
    this.calview2.setText(localObject[0]);
    this.today = localObject[1];
    this.startdate = this.today;
    this.enddate = this.today;
  }
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(2130903058);
    this.b1 = ((Button)findViewById(2131230729));
    this.spin_catagory = ((Spinner)findViewById(2131230738));
    this.tsale = ((TextView)findViewById(2131230798));
    this.tamount = ((TextView)findViewById(2131230799));
    this.tamountpay = ((TextView)findViewById(2131230800));
    this.winning = ((TextView)findViewById(2131230802));
    this.winningamt = ((TextView)findViewById(2131230804));
    this.dcamount = ((TextView)findViewById(2131230806));
    this.stock = ((TextView)findViewById(2131230808));
    this.total = ((TextView)findViewById(2131230810));
    this.balance = ((TextView)findViewById(2131230812));
    this.calview1 = ((TextView)findViewById(2131230794));
    this.calview2 = ((TextView)findViewById(2131230795));
    this.tsale.setGravity(5);
    this.tamount.setGravity(5);
    this.tamountpay.setGravity(5);
    this.winning.setGravity(5);
    this.winningamt.setGravity(5);
    this.dcamount.setGravity(5);
    this.stock.setGravity(5);
    this.total.setGravity(5);
    this.balance.setGravity(5);
    fillDate();
    fillCatagory();
    display();
    this.b1.setOnClickListener(new View.OnClickListener()
    {
      public void onClick(View paramAnonymousView)
      {
        saleamountwiseActivity.this.display();
      }
    });
    this.spin_catagory.setOnItemSelectedListener(new AdapterView.OnItemSelectedListener()
    {
      public void onItemSelected(AdapterView<?> paramAnonymousAdapterView, View paramAnonymousView, int paramAnonymousInt, long paramAnonymousLong)
      {
        saleamountwiseActivity.this.location = paramAnonymousInt;
      }
      
      public void onNothingSelected(AdapterView<?> paramAnonymousAdapterView) {}
    });
    this.calview1.setOnClickListener(new View.OnClickListener()
    {
      public void onClick(View paramAnonymousView)
      {
        Calendar localCalendar = Calendar.getInstance();
        int i = localCalendar.get(1);
        int j = localCalendar.get(2);
        int k = localCalendar.get(5);
        DatePickerDialog localDatePickerDialog = new DatePickerDialog(saleamountwiseActivity.this, new DatePickerDialog.OnDateSetListener()
        {
          public void onDateSet(DatePicker paramAnonymous2DatePicker, int paramAnonymous2Int1, int paramAnonymous2Int2, int paramAnonymous2Int3)
          {
            saleamountwiseActivity.this.startdate = (paramAnonymous2Int1 + "-" + String.valueOf(paramAnonymous2Int2 + 1) + "-" + String.valueOf(paramAnonymous2Int3));
            String str = new StringBuilder(String.valueOf(String.valueOf(paramAnonymous2Int3))).append("-").append(String.valueOf(paramAnonymous2Int2 + 1)).toString() + "-" + paramAnonymous2Int1;
            saleamountwiseActivity.this.calview1.setText(str);
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
        int j = localCalendar.get(1);
        int i = localCalendar.get(2);
        int k = localCalendar.get(5);
        DatePickerDialog localDatePickerDialog = new DatePickerDialog(saleamountwiseActivity.this, new DatePickerDialog.OnDateSetListener()
        {
          public void onDateSet(DatePicker paramAnonymous2DatePicker, int paramAnonymous2Int1, int paramAnonymous2Int2, int paramAnonymous2Int3)
          {
            saleamountwiseActivity.this.enddate = (paramAnonymous2Int1 + "-" + String.valueOf(paramAnonymous2Int2 + 1) + "-" + String.valueOf(paramAnonymous2Int3));
            String str = new StringBuilder(String.valueOf(String.valueOf(paramAnonymous2Int3))).append("-").append(String.valueOf(paramAnonymous2Int2 + 1)).toString() + "-" + paramAnonymous2Int1;
            saleamountwiseActivity.this.calview2.setText(str);
          }
        }, j, i, k);
        localDatePickerDialog.setTitle("Sandwitch");
        localDatePickerDialog.show();
      }
    });
  }
}


/* Location:           C:\Users\PJ\Desktop\get-apk-source_win\classes_dex2jar.jar
 * Qualified Name:     com.pizza.work.saleamountwiseActivity
 * JD-Core Version:    0.7.0.1
 */