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
import android.widget.TableLayout;
import android.widget.TableRow;
import android.widget.TableRow.LayoutParams;
import android.widget.TextView;
import com.pizza.work.library.UserFunctions;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.HashMap;
import java.util.List;
import java.util.Vector;
import org.json.JSONArray;
import org.json.JSONObject;

public class WinnersReportActivity
  extends Activity
{
  String[] a1;
  Vector<String> amounts = new Vector();
  TextView calview1;
  Vector<String> catagoryVector = new Vector();
  Vector<String> custnames = new Vector();
  Vector<String> idVector = new Vector();
  int location = 0;
  Vector<String> pnames = new Vector();
  Vector<String> price = new Vector();
  Vector<String> quant = new Vector();
  List<HashMap<String, String>> saleProductList = new ArrayList();
  String seldate;
  private Spinner spin_catagory;
  TableLayout tl;
  String today;
  Vector<String> total = new Vector();
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
  Vector<String> typeno = new Vector();
  UserFunctions userFunction = new UserFunctions();
  
  public void createView(TableRow paramTableRow, TextView paramTextView, String paramString)
  {
    paramTextView.setText(paramString);
    paramTextView.setLayoutParams(new TableRow.LayoutParams(-2, -2));
    paramTextView.setTextColor(-12303292);
    paramTextView.setBackgroundColor(-16711681);
    paramTextView.setPadding(10, 0, 0, 0);
    paramTableRow.setPadding(0, 1, 0, 1);
    paramTableRow.addView(paramTextView);
  }
  
  public void display()
  {
    Object localObject1 = new UserFunctions();
    Log.d("JSONFrom  ", this.seldate);
    localObject1 = ((UserFunctions)localObject1).viewWinReport(this.seldate, ((String)this.idVector.elementAt(this.location)).toString());
    this.pnames = new Vector();
    this.typeno = new Vector();
    this.quant = new Vector();
    this.price = new Vector();
    this.total = new Vector();
    this.pnames.removeAllElements();
    this.typeno.removeAllElements();
    this.quant.removeAllElements();
    this.price.removeAllElements();
    this.total.removeAllElements();
    int k = 1;
    label489:
    label490:
    label504:
    for (;;)
    {
      int i;
      int j;
      try
      {
        i = Integer.parseInt(((JSONObject)localObject1).getString("count"));
        if (i == -1) {
          break label489;
        }
        Log.d("CCCCCCC", String.valueOf(i));
        j = 1;
      }
      catch (Exception localException)
      {
        Object localObject2;
        Log.e("Error   trtet", localException.getMessage());
        break label489;
      }
      localObject2 = String.valueOf(k);
      Log.d("sq", (String)localObject2);
      localObject2 = ((JSONObject)localObject1).getJSONObject("gift" + (String)localObject2);
      Log.e("COUNT", ((JSONObject)localObject2).getString("product" + k));
      this.pnames.addElement(((JSONObject)localObject2).getString("product" + k));
      this.typeno.addElement(((JSONObject)localObject2).getString("price_name" + k));
      this.quant.addElement(((JSONObject)localObject2).getString("price_amount" + k));
      this.price.addElement(" ");
      int m = Integer.parseInt(((JSONObject)localObject2).getString("pcount"));
      int n = 1;
      break label490;
      this.pnames.addElement(((JSONObject)localObject2).getString("customer" + n));
      this.typeno.addElement(((JSONObject)localObject2).getString("ticket" + n));
      this.quant.addElement(((JSONObject)localObject2).getString("quantity" + n));
      this.price.addElement(((JSONObject)localObject2).getString("toatl_gift_price" + n));
      n++;
      for (;;)
      {
        if (j <= i) {
          break label504;
        }
        return;
        if (n <= m) {
          break;
        }
        k++;
        j++;
      }
    }
  }
  
  public void fillCatagory()
  {
    this.catagoryVector.removeAllElements();
    this.idVector.removeAllElements();
    this.catagoryVector.add("All");
    this.idVector.add("All");
    JSONArray localJSONArray = this.userFunction.getCatagory(this.today);
    for (int i = 0;; localArrayAdapter++)
    {
      try
      {
        int j = localJSONArray.length();
        if (i < j) {
          break label82;
        }
      }
      catch (Exception localException)
      {
        label58:
        ArrayAdapter localArrayAdapter;
        label82:
        JSONObject localJSONObject;
        break label58;
      }
      localArrayAdapter = new ArrayAdapter(this, 17367049, this.catagoryVector);
      this.spin_catagory.setAdapter(localArrayAdapter);
      return;
      localJSONObject = localJSONArray.getJSONObject(localArrayAdapter);
      Log.e("catttttt", localJSONArray.toString());
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
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(2130903062);
    this.spin_catagory = ((Spinner)findViewById(2131230738));
    this.calview1 = ((TextView)findViewById(2131230721));
    fillDate();
    fillCatagory();
    this.seldate = this.today;
    display();
    tabledisplay();
    this.spin_catagory.setOnItemSelectedListener(new AdapterView.OnItemSelectedListener()
    {
      public void onItemSelected(AdapterView<?> paramAnonymousAdapterView, View paramAnonymousView, int paramAnonymousInt, long paramAnonymousLong)
      {
        WinnersReportActivity.this.location = paramAnonymousInt;
        WinnersReportActivity.this.display();
        WinnersReportActivity.this.tabledisplay();
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
        DatePickerDialog localDatePickerDialog = new DatePickerDialog(WinnersReportActivity.this, new DatePickerDialog.OnDateSetListener()
        {
          public void onDateSet(DatePicker paramAnonymous2DatePicker, int paramAnonymous2Int1, int paramAnonymous2Int2, int paramAnonymous2Int3)
          {
            WinnersReportActivity.this.seldate = (paramAnonymous2Int1 + "-" + String.valueOf(paramAnonymous2Int2 + 1) + "-" + String.valueOf(paramAnonymous2Int3));
            String str = new StringBuilder(String.valueOf(String.valueOf(paramAnonymous2Int3))).append("-").append(String.valueOf(paramAnonymous2Int2 + 1)).toString() + "-" + paramAnonymous2Int1;
            WinnersReportActivity.this.calview1.setText(str);
            WinnersReportActivity.this.display();
            WinnersReportActivity.this.tabledisplay();
          }
        }, i, j, k);
        localDatePickerDialog.setTitle("Sandwitch");
        localDatePickerDialog.show();
      }
    });
  }
  
  public void tabledisplay()
  {
    this.tl = ((TableLayout)findViewById(2131230793));
    this.tl.removeAllViews();
    Log.d("pname", String.valueOf(this.pnames.size()));
    for (int i = 0; i < this.pnames.size(); i++)
    {
      this.tr = new TableRow(this);
      this.tv1 = new TextView(this);
      this.tv2 = new TextView(this);
      this.tv3 = new TextView(this);
      this.tv4 = new TextView(this);
      createView(this.tr, this.tv1, ((String)this.pnames.get(i)).toString());
      createView(this.tr, this.tv2, ((String)this.typeno.get(i)).toString());
      createView(this.tr, this.tv3, ((String)this.quant.get(i)).toString());
      createView(this.tr, this.tv4, ((String)this.price.get(i)).toString());
      this.tl.addView(this.tr);
    }
  }
}


/* Location:           C:\Users\PJ\Desktop\get-apk-source_win\classes_dex2jar.jar
 * Qualified Name:     com.pizza.work.WinnersReportActivity
 * JD-Core Version:    0.7.0.1
 */