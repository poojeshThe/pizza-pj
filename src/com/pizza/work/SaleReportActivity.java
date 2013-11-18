package com.pizza.work;

import android.app.Activity;
import android.app.DatePickerDialog;
import android.app.DatePickerDialog.OnDateSetListener;
import android.app.ProgressDialog;
import android.content.DialogInterface;
import android.content.DialogInterface.OnCancelListener;
import android.os.AsyncTask;
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

public class SaleReportActivity
  extends Activity
{
  Vector[] Nos;
  String[] a1;
  Vector<String> amounts = new Vector();
  Button b1;
  TextView calview1;
  Vector<String> catagoryVector = new Vector();
  Vector<String> custnames = new Vector();
  Vector<String> customerVector = new Vector();
  Vector<String> idVector = new Vector();
  int location = 0;
  String[][] nos;
  Vector<String> pnames = new Vector();
  Vector<String> price = new Vector();
  Vector<String> quant = new Vector();
  List<HashMap<String, String>> saleProductList = new ArrayList();
  Spinner spin_cust;
  String startdate;
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
    paramTextView.setTextColor(-16777216);
    paramTextView.setBackgroundColor(-16711681);
    paramTextView.setPadding(10, 0, 0, 0);
    paramTableRow.setPadding(0, 1, 0, 1);
    paramTableRow.setBackgroundColor(-16777216);
    paramTableRow.addView(paramTextView);
  }
  
  public void display()
  {
    JSONObject localJSONObject1 = new UserFunctions().viewSaleDetail(this.startdate, this.spin_cust.getSelectedItem().toString());
    try
    {
      this.pnames = new Vector();
      this.typeno = new Vector();
      this.quant = new Vector();
      this.price = new Vector();
      this.total = new Vector();
      this.pnames.removeAllElements();
      this.typeno.removeAllElements();
      this.quant.removeAllElements();
      this.price.removeAllElements();
      float f1 = 0.0F;
      int i = Integer.parseInt(localJSONObject1.getString("count"));
      if (i != -1) {
        for (int j = 1;; j++)
        {
          if (j > i)
          {
            this.pnames.addElement(" ");
            this.typeno.addElement(" ");
            this.quant.addElement("Total");
            this.price.addElement(String.valueOf(f1));
            (0.0F + f1);
            break;
          }
          JSONObject localJSONObject2 = localJSONObject1.getJSONObject("sale" + j);
          this.pnames.addElement(localJSONObject2.getString("product"));
          this.typeno.addElement(localJSONObject2.getString("ticket_no"));
          this.quant.addElement(localJSONObject2.getString("qunatity"));
          this.price.addElement(localJSONObject2.getString("price"));
          float f2 = Float.parseFloat(localJSONObject2.getString("price"));
          f1 += f2;
        }
      }
      return;
    }
    catch (Exception localException)
    {
      Log.e("Error   trtet", localException.getMessage());
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
      this.spin_cust.setAdapter(localArrayAdapter);
      return;
      localJSONObject = localJSONArray.getJSONObject(localArrayAdapter);
      this.catagoryVector.add(localJSONObject.getString("category"));
      this.idVector.add(localJSONObject.getString("id"));
    }
  }
  
  public void fillCustomer()
  {
    this.customerVector.removeAllElements();
    JSONObject localJSONObject = this.userFunction.getCustomer(this.startdate);
    for (;;)
    {
      try
      {
        int i = Integer.parseInt(localJSONObject.getString("count"));
        if (i != -1)
        {
          j = 1;
          if (j <= i) {
            continue;
          }
        }
      }
      catch (Exception localException)
      {
        int j;
        ArrayAdapter localArrayAdapter;
        continue;
      }
      localArrayAdapter = new ArrayAdapter(this, 17367049, this.customerVector);
      this.spin_cust.setAdapter(localArrayAdapter);
      return;
      this.customerVector.add(localJSONObject.getString("cust" + j));
      j++;
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
    setContentView(2130903057);
    this.b1 = ((Button)findViewById(2131230729));
    this.spin_cust = ((Spinner)findViewById(2131230738));
    this.calview1 = ((TextView)findViewById(2131230721));
    fillDate();
    this.startdate = this.today;
    fillCustomer();
    this.spin_cust.setOnItemSelectedListener(new AdapterView.OnItemSelectedListener()
    {
      public void onItemSelected(AdapterView<?> paramAnonymousAdapterView, View paramAnonymousView, int paramAnonymousInt, long paramAnonymousLong) {}
      
      public void onNothingSelected(AdapterView<?> paramAnonymousAdapterView) {}
    });
    this.b1.setOnClickListener(new View.OnClickListener()
    {
      public void onClick(View paramAnonymousView)
      {
        new SaleReportActivity.task(SaleReportActivity.this).execute(new String[0]);
      }
    });
    this.calview1.setOnClickListener(new View.OnClickListener()
    {
      public void onClick(View paramAnonymousView)
      {
        Calendar localCalendar = Calendar.getInstance();
        int j = localCalendar.get(1);
        int i = localCalendar.get(2);
        int k = localCalendar.get(5);
        DatePickerDialog localDatePickerDialog = new DatePickerDialog(SaleReportActivity.this, new DatePickerDialog.OnDateSetListener()
        {
          public void onDateSet(DatePicker paramAnonymous2DatePicker, int paramAnonymous2Int1, int paramAnonymous2Int2, int paramAnonymous2Int3)
          {
            SaleReportActivity.this.startdate = (paramAnonymous2Int1 + "-" + String.valueOf(paramAnonymous2Int2 + 1) + "-" + String.valueOf(paramAnonymous2Int3));
            String str = new StringBuilder(String.valueOf(String.valueOf(paramAnonymous2Int3))).append(".").append(String.valueOf(paramAnonymous2Int2 + 1)).toString() + "." + paramAnonymous2Int1;
            SaleReportActivity.this.calview1.setText(str);
            SaleReportActivity.this.fillCustomer();
          }
        }, j, i, k);
        localDatePickerDialog.setTitle("Sandwitch");
        localDatePickerDialog.show();
      }
    });
  }
  
  public void tabledisplay()
  {
    this.tl = ((TableLayout)findViewById(2131230793));
    this.tl.removeAllViews();
    for (int i = 0; i < this.pnames.size(); i++)
    {
      this.tr = new TableRow(this);
      this.tv1 = new TextView(this);
      this.tv2 = new TextView(this);
      this.tv3 = new TextView(this);
      this.tv4 = new TextView(this);
      this.tv5 = new TextView(this);
      createView(this.tr, this.tv1, ((String)this.pnames.get(i)).toString());
      createView(this.tr, this.tv2, ((String)this.typeno.get(i)).toString());
      createView(this.tr, this.tv3, ((String)this.quant.get(i)).toString());
      createView(this.tr, this.tv4, ((String)this.price.get(i)).toString());
      this.tl.addView(this.tr);
    }
    this.pnames.removeAllElements();
    this.typeno.removeAllElements();
    this.quant.removeAllElements();
    this.price.removeAllElements();
  }
  
  class task
    extends AsyncTask<String, String, Void>
  {
    private ProgressDialog progressDialog = new ProgressDialog(SaleReportActivity.this);
    
    task() {}
    
    protected Void doInBackground(String... paramVarArgs)
    {
      SaleReportActivity.this.display();
      return null;
    }
    
    protected void onPostExecute(Void paramVoid)
    {
      SaleReportActivity.this.display();
      SaleReportActivity.this.tabledisplay();
      this.progressDialog.dismiss();
    }
    
    protected void onPreExecute()
    {
      this.progressDialog.setMessage("Download data...");
      this.progressDialog.show();
      this.progressDialog.setOnCancelListener(new DialogInterface.OnCancelListener()
      {
        public void onCancel(DialogInterface paramAnonymousDialogInterface)
        {
          SaleReportActivity.task.this.cancel(true);
        }
      });
    }
  }
}


/* Location:           C:\Users\PJ\Desktop\get-apk-source_win\classes_dex2jar.jar
 * Qualified Name:     com.pizza.work.SaleReportActivity
 * JD-Core Version:    0.7.0.1
 */