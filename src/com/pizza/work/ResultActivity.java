package com.pizza.work;

import android.app.Activity;
import android.app.DatePickerDialog;
import android.app.DatePickerDialog.OnDateSetListener;
import android.os.Bundle;
import android.util.Log;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup.LayoutParams;
import android.widget.ArrayAdapter;
import android.widget.DatePicker;
import android.widget.Spinner;
import android.widget.TableLayout;
import android.widget.TableRow;
import android.widget.TextView;
import com.pizza.work.library.UserFunctions;
import java.util.Calendar;
import java.util.Vector;
import org.json.JSONObject;

public class ResultActivity
  extends Activity
{
  Vector<String>[] Nos = new Vector[500];
  String[] a1;
  Vector<String> amounts = new Vector();
  TextView calview1;
  Vector<String> pricenames = new Vector();
  Vector<String> productVector = new Vector();
  private Spinner spprod;
  String startdate;
  TableLayout tl;
  String today;
  TableRow tr;
  TextView tv1;
  TextView tv2;
  UserFunctions userFunction = new UserFunctions();
  Vector[] v = new Vector[50];
  
  public void createView(TableRow paramTableRow, TextView paramTextView, String paramString)
  {
    Log.d("viewdate", paramString);
    paramTextView.setText(paramString);
    paramTextView.setLayoutParams(new ViewGroup.LayoutParams(-2, -2));
    paramTextView.setTextColor(-12303292);
    paramTextView.setBackgroundColor(-16711681);
    paramTextView.setPadding(20, 0, 0, 0);
    paramTableRow.setPadding(0, 1, 0, 1);
    paramTableRow.setBackgroundColor(-16777216);
    paramTableRow.addView(paramTextView);
  }
  
  public void display()
  {
    Log.d("JSON from ", "test");
    JSONObject localJSONObject1 = this.userFunction.viewResult("today", "product");
    Log.d("JSON from ", localJSONObject1.toString());
    int i = 1;
    for (int j = 0;; j++)
    {
      if (j >= 8) {}
      try
      {
        Log.d("size", String.valueOf(this.pricenames.size()));
        Log.d("size", String.valueOf(this.amounts.size()));
      }
      catch (Exception localException)
      {
        String str1;
        JSONObject localJSONObject2;
        Log.e("Error   trtet", localException.getMessage());
      }
      this.v[j] = new Vector();
      str1 = String.valueOf(i);
      Log.d("sq", str1);
      localJSONObject2 = localJSONObject1.getJSONObject(str1);
      this.v[j].addElement(localJSONObject2.getString("name"));
      Log.e("COUNT", localJSONObject2.getString("name"));
      this.pricenames.addElement(localJSONObject2.getString("name"));
      this.v[j].addElement(localJSONObject2.getString("Amount"));
      Log.e("COUNT", localJSONObject2.getString("Amount"));
      this.amounts.addElement(localJSONObject2.getString("Amount"));
      int k = Integer.parseInt(localJSONObject2.getString("count"));
      Log.e("COUNT", localJSONObject2.getString("count"));
      int m = 1;
      while (m <= k)
      {
        String str2 = "no" + m;
        Log.e("COUNT", localJSONObject2.getString(str2));
        this.v[j].addElement(localJSONObject2.getString(str2));
        m++;
        continue;
        return;
      }
      localException++;
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
    this.productVector.removeAllElements();
    try
    {
      this.productVector.add(null.getString("product"));
      ArrayAdapter localArrayAdapter = new ArrayAdapter(this, 17367049, this.productVector);
      this.spprod.setAdapter(localArrayAdapter);
      label44:
      return;
    }
    catch (Exception localException)
    {
      break label44;
    }
  }
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(2130903059);
    this.tl = ((TableLayout)findViewById(2131230793));
    this.spprod = ((Spinner)findViewById(2131230738));
    this.calview1 = ((TextView)findViewById(2131230721));
    fillDate();
    this.startdate = this.today;
    fillProduct();
    display();
    tabledisplay();
    this.calview1.setOnClickListener(new View.OnClickListener()
    {
      public void onClick(View paramAnonymousView)
      {
        Calendar localCalendar = Calendar.getInstance();
        int j = localCalendar.get(1);
        int i = localCalendar.get(2);
        int k = localCalendar.get(5);
        DatePickerDialog localDatePickerDialog = new DatePickerDialog(ResultActivity.this, new DatePickerDialog.OnDateSetListener()
        {
          public void onDateSet(DatePicker paramAnonymous2DatePicker, int paramAnonymous2Int1, int paramAnonymous2Int2, int paramAnonymous2Int3)
          {
            ResultActivity.this.startdate = (paramAnonymous2Int1 + "-" + String.valueOf(paramAnonymous2Int2 + 1) + "-" + String.valueOf(paramAnonymous2Int3));
            String str = new StringBuilder(String.valueOf(String.valueOf(paramAnonymous2Int3))).append(".").append(String.valueOf(paramAnonymous2Int2 + 1)).toString() + "." + paramAnonymous2Int1;
            ResultActivity.this.calview1.setText(str);
            ResultActivity.this.fillProduct();
            ResultActivity.this.display();
            ResultActivity.this.tabledisplay();
          }
        }, j, i, k);
        localDatePickerDialog.setTitle("Sandwitch");
        localDatePickerDialog.show();
      }
    });
  }
  
  public void tabledisplay()
  {
    Log.d("pricename", String.valueOf(this.pricenames.size()));
    for (int i = 0; i < this.pricenames.size(); i++)
    {
      this.tr = new TableRow(this);
      this.tv1 = new TextView(this);
      this.tv2 = new TextView(this);
      Log.d("pricename", ((String)this.pricenames.get(i)).toString());
      Log.d("pricename", ((String)this.amounts.get(i)).toString());
      createView(this.tr, this.tv1, ((String)this.pricenames.get(i)).toString());
      createView(this.tr, this.tv2, ((String)this.amounts.get(i)).toString());
      this.tl.addView(this.tr);
    }
  }
}


/* Location:           C:\Users\PJ\Desktop\get-apk-source_win\classes_dex2jar.jar
 * Qualified Name:     com.pizza.work.ResultActivity
 * JD-Core Version:    0.7.0.1
 */