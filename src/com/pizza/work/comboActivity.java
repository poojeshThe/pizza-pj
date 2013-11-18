package com.pizza.work;

import android.app.Activity;
import android.app.ProgressDialog;
import android.content.DialogInterface;
import android.content.DialogInterface.OnCancelListener;
import android.os.AsyncTask;
import android.os.Bundle;
import android.util.Log;
import android.widget.ArrayAdapter;
import android.widget.Spinner;
import android.widget.SpinnerAdapter;
import android.widget.TableLayout;
import android.widget.TableRow;
import android.widget.TextView;
import android.widget.Toast;
import com.pizza.work.library.UserFunctions;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Vector;
import org.json.JSONArray;
import org.json.JSONObject;

public class comboActivity
  extends Activity
{
  Vector[] Nos;
  String[] a1;
  Vector<String> amounts = new Vector();
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
    localUserFunctions.viewSaleDetail(this.startdate, this.spin_cust.getSelectedItem().toString());
    JSONObject localJSONObject1 = localUserFunctions.viewSaleDetail(" ", " ");
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
      if (i != -1)
      {
        Log.d("JSON fromsalereport  ", localJSONObject1.toString());
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
      this.spin_cust.setAdapter((SpinnerAdapter)localObject);
      return;
      localJSONObject = ((JSONArray)localObject).getJSONObject(i);
      this.catagoryVector.add(localJSONObject.getString("category"));
      this.idVector.add(localJSONObject.getString("id"));
    }
  }
  
  public void fillCustomer()
  {
    this.customerVector.removeAllElements();
    JSONObject localJSONObject = this.userFunction.getCustomer(this.today);
    try
    {
      int i = Integer.parseInt(localJSONObject.getString("count"));
      if (i != -1) {
        for (int j = 1;; j++)
        {
          if (j > i)
          {
            this.customerVector.add("All");
            break;
          }
          this.customerVector.add(localJSONObject.getString("cust" + j));
        }
      }
      return;
    }
    catch (Exception localException) {}
  }
  
  public void fillDate()
  {
    String str = this.userFunction.getDate();
    this.today = this.userFunction.resultsplit1(str)[1];
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(2130903057);
    this.spin_cust = ((Spinner)findViewById(2131230738));
    this.calview1 = ((TextView)findViewById(2131230721));
    new task().execute(new String[0]);
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
  }
  
  class task
    extends AsyncTask<String, String, Void>
  {
    InputStream is = null;
    private ProgressDialog progressDialog = new ProgressDialog(comboActivity.this);
    String result = "";
    
    task() {}
    
    protected Void doInBackground(String... paramVarArgs)
    {
      comboActivity.this.fillDate();
      comboActivity.this.fillCustomer();
      comboActivity.this.display();
      return null;
    }
    
    protected void onPostExecute(Void paramVoid)
    {
      comboActivity.this.tabledisplay();
      this.progressDialog.dismiss();
      Toast.makeText(comboActivity.this.getApplicationContext(), "msg msg", 1).show();
    }
    
    protected void onPreExecute()
    {
      this.progressDialog.setMessage("Download data...");
      this.progressDialog.show();
      this.progressDialog.setOnCancelListener(new DialogInterface.OnCancelListener()
      {
        public void onCancel(DialogInterface paramAnonymousDialogInterface)
        {
          comboActivity.task.this.cancel(true);
        }
      });
    }
  }
}


/* Location:           C:\Users\PJ\Desktop\get-apk-source_win\classes_dex2jar.jar
 * Qualified Name:     com.pizza.work.comboActivity
 * JD-Core Version:    0.7.0.1
 */