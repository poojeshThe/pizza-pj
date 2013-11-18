package com.pizza.work;

import android.app.Activity;
import android.app.AlertDialog.Builder;
import android.app.ProgressDialog;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.Intent;
import android.os.AsyncTask;
import android.os.Bundle;
import android.text.Editable;
import android.text.TextWatcher;
import android.util.Log;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemLongClickListener;
import android.widget.AdapterView.OnItemSelectedListener;
import android.widget.ArrayAdapter;
import android.widget.AutoCompleteTextView;
import android.widget.Button;
import android.widget.EditText;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.RadioButton;
import android.widget.RadioGroup;
import android.widget.RadioGroup.OnCheckedChangeListener;
import android.widget.SimpleAdapter;
import android.widget.Spinner;
import android.widget.SpinnerAdapter;
import android.widget.TableLayout;
import android.widget.TableRow;
import android.widget.TextView;
import android.widget.ToggleButton;
import com.pizza.work.library.DatabaseHandler;
import com.pizza.work.library.Product;
import com.pizza.work.library.SaleFunctions;
import com.pizza.work.library.UserFunctions;
import java.lang.reflect.Array;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map.Entry;
import java.util.Set;
import java.util.Vector;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public class SaleActivity
  extends Activity
  implements RadioGroup.OnCheckedChangeListener, View.OnClickListener
{
  private static int i = 0;
  public static final int progress_bar_type;
  private Spinner abc;
  int abclength;
  ArrayAdapter<String> adapter1;
  ArrayAdapter<String> adapter2;
  ArrayAdapter<String> adapter3;
  private Button add;
  String currentdate;
  String currentdateisplay;
  Vector<String> dateVector;
  DatabaseHandler db;
  List<HashMap<String, String>> detailProductList;
  private EditText end;
  List<HashMap<String, String>> fillMaps;
  String[] from;
  float grandtotal;
  int gridid = 0;
  ListView lv;
  HashMap<String, String> map;
  View.OnClickListener myOptionOnClickListener;
  private AutoCompleteTextView partytext;
  private EditText pno;
  private EditText price;
  Vector<String> priceVector;
  Product productObject;
  Product productTemp;
  Vector<String> productVector;
  int productcount;
  String[][] products;
  private ProgressDialog progressDialog;
  private EditText qty;
  RadioButton rb1;
  RadioButton rb2;
  RadioButton rb3;
  private RadioGroup rg;
  SaleFunctions saleFunction;
  private Button save;
  List<HashMap<String, String>> saveList;
  String selectdate;
  private Spinner spprod;
  double subtotal;
  TableLayout t1;
  int[] to;
  String today;
  private ToggleButton togbut;
  boolean togflag;
  private TextView tprice;
  TableRow tr;
  TextView tv1;
  TextView tv2;
  JSONObject typejson;
  ArrayList<String> typevector;
  ArrayList<String> typevector1;
  ArrayList<String> typevector2;
  ArrayList<String> typevector3;
  UserFunctions userFunction;
  int val;
  
  public SaleActivity()
  {
    Object localObject = new int[2];
    localObject[0] = 100;
    localObject[1] = 100;
    this.products = ((String[][])Array.newInstance(String.class, (int[])localObject));
    this.typejson = new JSONObject();
    this.abclength = 0;
    this.productObject = new Product();
    this.productTemp = new Product();
    this.productVector = new Vector();
    this.priceVector = new Vector();
    this.dateVector = new Vector();
    this.productcount = 0;
    this.togflag = false;
    this.today = "";
    this.grandtotal = 0.0F;
    this.val = 0;
    localObject = new String[4];
    localObject[0] = "pname";
    localObject[1] = "abc";
    localObject[2] = "qty";
    localObject[3] = "total";
    this.from = ((String[])localObject);
    localObject = new int[4];
    localObject[0] = 2131230740;
    localObject[1] = 2131230741;
    localObject[2] = 2131230742;
    localObject[3] = 2131230743;
    this.to = ((int[])localObject);
    this.fillMaps = new ArrayList();
    this.map = new HashMap();
    this.saveList = new ArrayList();
    this.detailProductList = new ArrayList();
    this.typevector = new ArrayList();
    this.userFunction = new UserFunctions();
    this.saleFunction = new SaleFunctions();
    this.subtotal = 0.0D;
  }
  
  public void abcSpinnerFill(int paramInt)
  {
    this.rb1.setEnabled(false);
    this.rb2.setEnabled(false);
    this.rb3.setEnabled(false);
    this.productcount = paramInt;
    this.productObject = this.userFunction.getType(((String)this.dateVector.elementAt(paramInt)).toString(), ((String)this.productVector.elementAt(paramInt)).toString());
    this.typevector = new ArrayList();
    if (!this.productObject.getTypeStatus3())
    {
      if (!this.productObject.getTypeStatus2())
      {
        if (this.productObject.getTypeStatus1())
        {
          this.rb1.setEnabled(true);
          this.rb1.setChecked(true);
          if (!((String)this.productObject.getType1().get(0)).equals("-1"))
          {
            this.typevector = this.productObject.getType1();
            this.abc.setEnabled(true);
          }
          else
          {
            this.abc.setEnabled(false);
          }
        }
      }
      else
      {
        this.rb2.setEnabled(true);
        this.rb2.setChecked(true);
        if (!((String)this.productObject.getType2().get(0)).equals("-1"))
        {
          this.typevector = this.productObject.getType2();
          this.abc.setEnabled(true);
        }
        else
        {
          this.abc.setEnabled(false);
        }
      }
    }
    else
    {
      this.rb3.setEnabled(true);
      this.rb3.setChecked(true);
      if (!((String)this.productObject.getType3().get(0)).equals("-1"))
      {
        this.abc.setEnabled(true);
        this.typevector = this.productObject.getType3();
        this.abc.setEnabled(true);
      }
      else
      {
        this.abc.setEnabled(false);
      }
    }
    if (this.productObject.getTypeStatus2())
    {
      this.rb2.setEnabled(true);
      if (!((String)this.productObject.getType2().get(0)).equals("-1"))
      {
        this.typevector2 = this.productObject.getType2();
        this.abc.setEnabled(true);
      }
      else
      {
        this.abc.setEnabled(false);
      }
    }
    if (this.productObject.getTypeStatus1())
    {
      this.rb1.setEnabled(true);
      if (!((String)this.productObject.getType1().get(0)).equals("-1"))
      {
        this.typevector1 = this.productObject.getType1();
        this.abc.setEnabled(true);
      }
      else
      {
        this.abc.setEnabled(false);
      }
    }
    ArrayAdapter localArrayAdapter = new ArrayAdapter(this, 17367049, this.typevector);
    this.abc.setAdapter(localArrayAdapter);
  }
  
  public int canSale(String paramString1, String paramString2, String paramString3, String paramString4, int paramInt, String paramString5, String paramString6)
  {
    Log.e("ABCT", "***" + paramString2);
    return this.userFunction.productDateSale(paramString1, paramString2, paramString3, paramString4, paramInt, paramString5, paramString6);
  }
  
  public void celldelete(int paramInt)
  {
    new HashMap();
    Object localObject4 = "";
    Object localObject1 = "";
    Object localObject3 = "";
    Iterator localIterator = ((HashMap)this.fillMaps.get(paramInt)).entrySet().iterator();
    int k;
    if (!localIterator.hasNext())
    {
      new JSONObject();
      k = 0;
      localObject1 = this.userFunction.deleteTemp((String)localObject4, (String)localObject3, (String)localObject1);
    }
    try
    {
      int j = Integer.parseInt(((JSONObject)localObject1).getString("success"));
      k = j;
    }
    catch (Exception localException3)
    {
      label88:
      Object localObject2;
      label289:
      break label88;
    }
    if (k == 1) {
      localObject2 = ((HashMap)this.fillMaps.get(paramInt)).entrySet().iterator();
    }
    for (;;)
    {
      for (;;)
      {
        if (((Iterator)localObject2).hasNext()) {
          break label289;
        }
        this.fillMaps.remove(paramInt);
        if (this.fillMaps.size() == 0) {
          this.save.setVisibility(4);
        }
        localObject2 = new SimpleAdapter(this, this.fillMaps, 2130903046, this.from, this.to);
        this.lv.setAdapter((ListAdapter)localObject2);
        return;
        try
        {
          Object localObject5 = (Map.Entry)k.next();
          String str = (String)((Map.Entry)localObject5).getKey();
          localObject5 = (String)((Map.Entry)localObject5).getValue();
          if (str.equals("pname")) {
            localObject4 = localObject5;
          }
          if (str.equals("abc")) {
            localObject2 = localObject5;
          }
          boolean bool = str.equals("qty");
          if (!bool) {
            break;
          }
          localObject3 = localObject5;
        }
        catch (Exception localException2)
        {
          Log.e("Errordelte", localException2.getMessage());
        }
      }
      break;
      try
      {
        localObject4 = (Map.Entry)((Iterator)localObject2).next();
        localObject3 = (String)((Map.Entry)localObject4).getKey();
        localObject4 = (String)((Map.Entry)localObject4).getValue();
        if (((String)localObject3).equals("total"))
        {
          this.subtotal -= Float.parseFloat((String)localObject4);
          this.tprice.setText(String.valueOf(this.subtotal));
        }
      }
      catch (Exception localException1)
      {
        Log.e("Errordelte", localException1.getMessage());
      }
    }
  }
  
  public void fillDate()
  {
    Object localObject = this.userFunction.getDate();
    localObject = this.userFunction.resultsplit1((String)localObject);
    this.currentdateisplay = localObject[0];
    this.today = localObject[1];
    this.currentdate = this.today;
  }
  
  public void fillGrid()
  {
    String[] arrayOfString = new String[10000];
    JSONObject localJSONObject = this.userFunction.saleProduct(this.today);
    int j = 0;
    try
    {
      for (;;)
      {
        if (j >= localJSONObject.length())
        {
          new ArrayAdapter(this, 17367050, arrayOfString);
          break;
        }
        arrayOfString[j] = null.getString("name");
        j++;
      }
      return;
    }
    catch (Exception localException) {}
  }
  
  public void fillProduct()
  {
    this.productVector.removeAllElements();
    this.dateVector.removeAllElements();
    JSONObject localJSONObject = this.userFunction.saleProduct(this.today);
    try
    {
      int k = Integer.parseInt(localJSONObject.getString("count"));
      for (int j = 1;; j++)
      {
        if (j > k)
        {
          localObject = new ArrayAdapter(this, 17367049, this.productVector);
          this.spprod.setAdapter((SpinnerAdapter)localObject);
          break;
        }
        Object localObject = localJSONObject.getJSONObject("product" + j);
        this.productVector.add(((JSONObject)localObject).getString("name"));
        this.dateVector.add(((JSONObject)localObject).getString("date"));
      }
      return;
    }
    catch (Exception localException) {}
  }
  
  public void onBackPressed()
  {
    super.onBackPressed();
    finish();
    startActivity(new Intent(getApplicationContext(), MenuActivity.class));
  }
  
  public void onCheckedChanged(RadioGroup paramRadioGroup, int paramInt) {}
  
  public void onClick(View paramView) {}
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    new LoadViewTask(null).execute(new Void[0]);
  }
  
  public void saleViewFill(String paramString1, String paramString2, String paramString3, String paramString4, String paramString5, String paramString6)
  {
    HashMap localHashMap = new HashMap();
    new HashMap();
    Object localObject = new String[4];
    localObject[0] = "pname";
    localObject[1] = "abc";
    localObject[2] = "qty";
    localObject[3] = "total";
    localHashMap.put("pname", paramString1);
    localHashMap.put("abc", paramString2 + " " + paramString3);
    localHashMap.put("qty", paramString4);
    localHashMap.put("total", paramString6);
    this.fillMaps.add(localHashMap);
    localObject = new SimpleAdapter(this, this.fillMaps, 2130903046, (String[])localObject, this.to);
    this.lv.setAdapter((ListAdapter)localObject);
  }
  
  public void save()
  {
    String str1 = UserFunctions.usercode;
    Object localObject2 = this.partytext.getText().toString();
    if (str1 != null)
    {
      this.subtotal = 0.0D;
      new JSONObject();
      new JSONArray();
      new HashMap();
    }
    for (;;)
    {
      String str2;
      Object localObject1;
      try
      {
        localObject2 = this.userFunction.saveSale((String)localObject2);
        int j = Integer.parseInt(((JSONObject)localObject2).getString("success"));
        float f = Float.parseFloat(((JSONObject)localObject2).getString("total_amount"));
        str2 = "";
        if (j != 0) {
          break label255;
        }
        str2 = "All products are time out";
        break label255;
        localObject1 = str2 + f;
        this.tprice.setText("");
        this.fillMaps.clear();
        this.saveList.clear();
        AlertDialog.Builder localBuilder = new AlertDialog.Builder(this);
        localBuilder.setMessage((CharSequence)localObject1);
        localBuilder.setNeutralButton("Ok", new DialogInterface.OnClickListener()
        {
          public void onClick(DialogInterface paramAnonymousDialogInterface, int paramAnonymousInt)
          {
            SaleActivity.this.save.setVisibility(4);
          }
        });
        localBuilder.show();
        return;
      }
      catch (Exception localException)
      {
        localObject1 = new AlertDialog.Builder(this);
        ((AlertDialog.Builder)localObject1).setMessage("Sorry!!! Can't Sale...Server Error");
        this.save.setVisibility(0);
        ((AlertDialog.Builder)localObject1).setNeutralButton("Ok", new DialogInterface.OnClickListener()
        {
          public void onClick(DialogInterface paramAnonymousDialogInterface, int paramAnonymousInt) {}
        });
        ((AlertDialog.Builder)localObject1).show();
        continue;
      }
      finish();
      startActivity(new Intent(getApplicationContext(), LoginActivity.class));
      continue;
      label255:
      if (localObject1 == 1) {
        str2 = "Total Amount : ";
      }
      if (localObject1 == 2) {
        str2 = "Some product are time out!!!!  Sale Amount: ";
      }
    }
  }
  
  private class LoadViewTask
    extends AsyncTask<Void, Integer, Void>
  {
    private LoadViewTask() {}
    
    /* Error */
    protected Void doInBackground(Void... paramVarArgs)
    {
      // Byte code:
      //   0: aload_0
      //   1: monitorenter
      //   2: iconst_0
      //   3: istore_2
      //   4: iload_2
      //   5: iconst_4
      //   6: if_icmple +8 -> 14
      //   9: aload_0
      //   10: monitorexit
      //   11: goto +46 -> 57
      //   14: aload_0
      //   15: ldc2_w 52
      //   18: invokevirtual 59	java/lang/Object:wait	(J)V
      //   21: iinc 2 1
      //   24: iconst_1
      //   25: anewarray 61	java/lang/Integer
      //   28: astore_3
      //   29: aload_3
      //   30: iconst_0
      //   31: iload_2
      //   32: bipush 25
      //   34: imul
      //   35: invokestatic 65	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
      //   38: aastore
      //   39: aload_0
      //   40: aload_3
      //   41: invokevirtual 69	com/pizza/work/SaleActivity$LoadViewTask:publishProgress	([Ljava/lang/Object;)V
      //   44: goto -40 -> 4
      //   47: astore_2
      //   48: aload_0
      //   49: monitorexit
      //   50: aload_2
      //   51: athrow
      //   52: astore_2
      //   53: aload_2
      //   54: invokevirtual 72	java/lang/InterruptedException:printStackTrace	()V
      //   57: aconst_null
      //   58: areturn
      // Local variable table:
      //   start	length	slot	name	signature
      //   0	59	0	this	LoadViewTask
      //   0	59	1	paramVarArgs	Void[]
      //   3	32	2	i	int
      //   47	4	2	localObject	Object
      //   52	2	2	localInterruptedException	java.lang.InterruptedException
      //   28	13	3	arrayOfInteger	Integer[]
      // Exception table:
      //   from	to	target	type
      //   9	50	47	finally
      //   0	2	52	java/lang/InterruptedException
      //   50	52	52	java/lang/InterruptedException
    }
    
    protected void onPostExecute(Void paramVoid)
    {
      try
      {
        SaleActivity.this.setContentView(2130903056);
        SaleActivity.this.partytext = ((AutoCompleteTextView)SaleActivity.this.findViewById(2131230768));
        SaleActivity.this.spprod = ((Spinner)SaleActivity.this.findViewById(2131230770));
        SaleActivity.this.rg = ((RadioGroup)SaleActivity.this.findViewById(2131230776));
        SaleActivity.this.abc = ((Spinner)SaleActivity.this.findViewById(2131230780));
        SaleActivity.this.setTitle("Estimate     Agent Code  " + UserFunctions.usercode);
        SaleActivity.this.rb1 = ((RadioButton)SaleActivity.this.findViewById(2131230777));
        SaleActivity.this.rb2 = ((RadioButton)SaleActivity.this.findViewById(2131230778));
        SaleActivity.this.rb3 = ((RadioButton)SaleActivity.this.findViewById(2131230779));
        SaleActivity.this.fillDate();
        SaleActivity.this.selectdate = SaleActivity.this.today;
        SaleActivity.this.spprod.setOnItemSelectedListener(new AdapterView.OnItemSelectedListener()
        {
          public void onItemSelected(AdapterView paramAnonymousAdapterView, View paramAnonymousView, int paramAnonymousInt, long paramAnonymousLong)
          {
            SaleActivity.this.abcSpinnerFill(paramAnonymousInt);
            SaleActivity.this.pno.requestFocus();
          }
          
          public void onNothingSelected(AdapterView paramAnonymousAdapterView) {}
        });
        SaleActivity.this.pno = ((EditText)SaleActivity.this.findViewById(2131230783));
        SaleActivity.this.qty = ((EditText)SaleActivity.this.findViewById(2131230785));
        SaleActivity.this.end = ((EditText)SaleActivity.this.findViewById(2131230784));
        SaleActivity.this.price = ((EditText)SaleActivity.this.findViewById(2131230786));
        SaleActivity.this.price.setText("10");
        SaleActivity.this.tprice = ((TextView)SaleActivity.this.findViewById(2131230788));
        SaleActivity.this.tprice.setFocusable(false);
        SaleActivity.this.add = ((Button)SaleActivity.this.findViewById(2131230787));
        SaleActivity.this.save = ((Button)SaleActivity.this.findViewById(2131230792));
        SaleActivity.this.save.setVisibility(4);
        SaleActivity.this.end.setVisibility(8);
        SaleActivity.this.pno.setHint("No");
        SaleActivity.this.qty.setHint("Qty");
        SaleActivity.this.pno.setGravity(16);
        SaleActivity.this.qty.setGravity(16);
        SaleActivity.this.togbut = ((ToggleButton)SaleActivity.this.findViewById(2131230771));
        SaleActivity.this.togbut.setOnClickListener(new View.OnClickListener()
        {
          public void onClick(View paramAnonymousView)
          {
            SaleActivity.this.add.setText("Add");
            if (!SaleActivity.this.togbut.isChecked())
            {
              SaleActivity.this.togflag = false;
              SaleActivity.this.end.setVisibility(8);
              SaleActivity.this.pno.setHint("No");
              SaleActivity.this.pno.setEnabled(true);
            }
            else
            {
              SaleActivity.this.togflag = true;
              SaleActivity.this.end.setVisibility(0);
              SaleActivity.this.pno.setHint("Start");
              SaleActivity.this.end.setHint("End");
              SaleActivity.this.pno.setEnabled(true);
              SaleActivity.this.end.setEnabled(true);
            }
            SaleActivity.this.qty.setHint("Qty");
          }
        });
        SaleActivity.this.lv = ((ListView)SaleActivity.this.findViewById(2131230790));
        Object localObject = new ArrayAdapter(SaleActivity.this, 17367049, SaleActivity.this.typevector);
        SaleActivity.this.abc.setAdapter((SpinnerAdapter)localObject);
        SaleActivity.this.productObject = SaleActivity.this.productTemp;
        SaleActivity.this.rg.setOnCheckedChangeListener(new RadioGroup.OnCheckedChangeListener()
        {
          public void onCheckedChanged(RadioGroup paramAnonymousRadioGroup, int paramAnonymousInt)
          {
            str = ((RadioButton)SaleActivity.this.findViewById(paramAnonymousInt)).getText().toString().trim();
            localObject = (String)SaleActivity.this.spprod.getSelectedItem();
            try
            {
              SaleActivity.this.val = Integer.parseInt(str);
              int i = SaleActivity.this.val;
              switch (i)
              {
              }
            }
            catch (Exception localException1)
            {
              try
              {
                for (;;)
                {
                  JSONObject localJSONObject;
                  localJSONObject.put("productname", localObject);
                  localJSONObject.put("type", str.trim());
                  localObject = new ArrayAdapter(SaleActivity.this, 17367049, SaleActivity.this.typevector);
                  SaleActivity.this.abc.setAdapter((SpinnerAdapter)localObject);
                  return;
                  try
                  {
                    if (((String)SaleActivity.this.productObject.getType1().get(0)).equals("-1")) {
                      SaleActivity.this.abc.setEnabled(false);
                    }
                    for (;;)
                    {
                      SaleActivity.this.abclength = 1;
                      SaleActivity.this.pno.setText("");
                      SaleActivity.this.qty.setText("");
                      if (SaleActivity.this.end.getVisibility() == 0) {
                        SaleActivity.this.end.setText("");
                      }
                      SaleActivity.this.pno.requestFocus();
                      break;
                      localException1 = localException1;
                      Log.e("error vector", localException1.getMessage());
                      break;
                      SaleActivity.this.typevector = SaleActivity.this.productObject.getType1();
                    }
                  }
                  catch (Exception localException2)
                  {
                    for (;;)
                    {
                      Log.e("case 1", localException2.getMessage());
                    }
                  }
                  try
                  {
                    if (((String)SaleActivity.this.productObject.getType2().get(0)).equals("-1")) {
                      SaleActivity.this.abc.setEnabled(false);
                    }
                    for (;;)
                    {
                      SaleActivity.this.abclength = 2;
                      SaleActivity.this.pno.setText("");
                      SaleActivity.this.qty.setText("");
                      if (SaleActivity.this.end.getVisibility() == 0) {
                        SaleActivity.this.end.setText("");
                      }
                      SaleActivity.this.pno.requestFocus();
                      break;
                      SaleActivity.this.typevector = SaleActivity.this.productObject.getType2();
                    }
                  }
                  catch (Exception localException3)
                  {
                    for (;;)
                    {
                      Log.e("case 2", localException3.getMessage());
                    }
                  }
                  try
                  {
                    Log.d("333", SaleActivity.this.productObject.getType3().toString());
                    if (!((String)SaleActivity.this.productObject.getType3().get(0)).equals("-1")) {
                      break label688;
                    }
                    SaleActivity.this.abc.setEnabled(false);
                    for (;;)
                    {
                      SaleActivity.this.abclength = 3;
                      SaleActivity.this.pno.setText("");
                      SaleActivity.this.qty.setText("");
                      if (SaleActivity.this.end.getVisibility() == 0) {
                        SaleActivity.this.end.setText("");
                      }
                      SaleActivity.this.pno.requestFocus();
                      break;
                      SaleActivity.this.typevector = SaleActivity.this.productObject.getType3();
                    }
                  }
                  catch (Exception localException4)
                  {
                    for (;;)
                    {
                      Log.e("case 3", localException4.getMessage());
                    }
                  }
                }
              }
              catch (JSONException localJSONException)
              {
                for (;;)
                {
                  localJSONException.printStackTrace();
                }
              }
            }
            localJSONObject = new JSONObject();
          }
        });
        localObject = SaleActivity.this.saleFunction.fillParty();
        localObject = new ArrayAdapter(SaleActivity.this, 17367043, (List)localObject);
        SaleActivity.this.partytext.setAdapter((ListAdapter)localObject);
        SaleActivity.this.partytext.setThreshold(1);
        SaleActivity.this.fillProduct();
        SaleActivity.this.qty.addTextChangedListener(new TextWatcher()
        {
          public void afterTextChanged(Editable paramAnonymousEditable)
          {
            try
            {
              String str = SaleActivity.this.qty.getText().toString();
              if (!SaleActivity.this.qty.getText().toString().equals(""))
              {
                int i = Integer.parseInt(SaleActivity.this.qty.getText().toString());
                if ((SaleActivity.this.rb1.isChecked()) && (i >= 1000))
                {
                  SaleActivity.this.add.requestFocus();
                  if (i > 1000) {
                    SaleActivity.this.qty.setText(str.substring(0, 3));
                  }
                }
                if ((SaleActivity.this.rb2.isChecked()) && (i >= 500))
                {
                  SaleActivity.this.add.requestFocus();
                  if (i > 500) {
                    SaleActivity.this.qty.setText(str.substring(0, 2));
                  }
                }
                if ((SaleActivity.this.rb3.isChecked()) && (i >= 100))
                {
                  SaleActivity.this.add.requestFocus();
                  if (i > 100) {
                    SaleActivity.this.qty.setText(str.substring(0, 2));
                  }
                }
                double d1 = 0.0D;
                if (!SaleActivity.this.price.getText().toString().equals(""))
                {
                  int j;
                  if (SaleActivity.this.end.getVisibility() == 0) {
                    if ((!SaleActivity.this.end.getText().toString().equals("")) && (!SaleActivity.this.pno.getText().toString().equals("")))
                    {
                      j = 1 + (Integer.parseInt(SaleActivity.this.end.getText().toString()) - Integer.parseInt(SaleActivity.this.pno.getText().toString()));
                      if (j < 0) {}
                    }
                  }
                  double d2;
                  for (d1 = Integer.parseInt(SaleActivity.this.qty.getText().toString()) * Double.parseDouble(SaleActivity.this.price.getText().toString()) * j;; d1 = d2 * d1)
                  {
                    d1 = Math.round(d1 * 100.0D) / 100.0D;
                    SaleActivity.this.tprice.setText(String.valueOf(d1));
                    break;
                    d2 = Integer.parseInt(SaleActivity.this.qty.getText().toString());
                    d1 = Double.parseDouble(SaleActivity.this.price.getText().toString());
                  }
                }
              }
              return;
            }
            catch (Exception localException)
            {
              Log.d("ERRRRR", localException.getMessage());
            }
          }
          
          public void beforeTextChanged(CharSequence paramAnonymousCharSequence, int paramAnonymousInt1, int paramAnonymousInt2, int paramAnonymousInt3) {}
          
          public void onTextChanged(CharSequence paramAnonymousCharSequence, int paramAnonymousInt1, int paramAnonymousInt2, int paramAnonymousInt3) {}
        });
        SaleActivity.this.price.addTextChangedListener(new TextWatcher()
        {
          public void afterTextChanged(Editable paramAnonymousEditable)
          {
            if (!SaleActivity.this.price.getText().toString().equals("")) {
              if (Float.parseFloat(SaleActivity.this.price.getText().toString()) <= 12.0F)
              {
                if ((!SaleActivity.this.qty.getText().toString().equals("")) && (!SaleActivity.this.price.getText().toString().equals("")))
                {
                  double d = 0.0D;
                  if (SaleActivity.this.end.getVisibility() != 0)
                  {
                    d = Integer.parseInt(SaleActivity.this.qty.getText().toString()) * Double.parseDouble(SaleActivity.this.price.getText().toString());
                  }
                  else if ((!SaleActivity.this.end.getText().toString().equals("")) && (!SaleActivity.this.pno.getText().toString().equals("")))
                  {
                    int i = 1 + (Integer.parseInt(SaleActivity.this.end.getText().toString()) - Integer.parseInt(SaleActivity.this.pno.getText().toString()));
                    if (i >= 0) {
                      d = Integer.parseInt(SaleActivity.this.qty.getText().toString()) * Double.parseDouble(SaleActivity.this.price.getText().toString()) * i;
                    }
                  }
                  d = Math.round(d * 100.0D) / 100.0D;
                  SaleActivity.this.tprice.setText(String.valueOf(d));
                }
              }
              else
              {
                SaleActivity.this.price.setText("");
                SaleActivity.this.price.requestFocus();
              }
            }
          }
          
          public void beforeTextChanged(CharSequence paramAnonymousCharSequence, int paramAnonymousInt1, int paramAnonymousInt2, int paramAnonymousInt3) {}
          
          public void onTextChanged(CharSequence paramAnonymousCharSequence, int paramAnonymousInt1, int paramAnonymousInt2, int paramAnonymousInt3) {}
        });
        SaleActivity.this.pno.addTextChangedListener(new TextWatcher()
        {
          public void afterTextChanged(Editable paramAnonymousEditable)
          {
            if (!SaleActivity.this.pno.getText().toString().equals(""))
            {
              int i = SaleActivity.this.pno.getText().toString().length();
              String str = SaleActivity.this.pno.getText().toString();
              if ((SaleActivity.this.rb1.isChecked()) && (i >= 1))
              {
                if (SaleActivity.this.end.getVisibility() != 0) {
                  SaleActivity.this.qty.requestFocus();
                } else {
                  SaleActivity.this.end.requestFocus();
                }
                if (i > 1) {
                  SaleActivity.this.pno.setText(str.substring(0, 1));
                }
              }
              if ((SaleActivity.this.rb2.isChecked()) && (i >= 2))
              {
                if (SaleActivity.this.end.getVisibility() != 0) {
                  SaleActivity.this.qty.requestFocus();
                } else {
                  SaleActivity.this.end.requestFocus();
                }
                if (i > 2) {
                  SaleActivity.this.pno.setText(str.substring(0, 2));
                }
              }
              if ((SaleActivity.this.rb3.isChecked()) && (i >= 3))
              {
                if (SaleActivity.this.end.getVisibility() != 0) {
                  SaleActivity.this.qty.requestFocus();
                } else {
                  SaleActivity.this.end.requestFocus();
                }
                if (i > 3) {
                  SaleActivity.this.pno.setText(str.substring(0, 3));
                }
              }
            }
          }
          
          public void beforeTextChanged(CharSequence paramAnonymousCharSequence, int paramAnonymousInt1, int paramAnonymousInt2, int paramAnonymousInt3) {}
          
          public void onTextChanged(CharSequence paramAnonymousCharSequence, int paramAnonymousInt1, int paramAnonymousInt2, int paramAnonymousInt3) {}
        });
        SaleActivity.this.end.addTextChangedListener(new TextWatcher()
        {
          public void afterTextChanged(Editable paramAnonymousEditable)
          {
            if (!SaleActivity.this.pno.getText().toString().equals(""))
            {
              int i = SaleActivity.this.end.getText().toString().length();
              String str = SaleActivity.this.end.getText().toString();
              if ((SaleActivity.this.rb1.isChecked()) && (i >= 1))
              {
                SaleActivity.this.qty.requestFocus();
                if (i > 1) {
                  SaleActivity.this.end.setText(str.substring(0, 1));
                }
              }
              if ((SaleActivity.this.rb2.isChecked()) && (i >= 2))
              {
                SaleActivity.this.qty.requestFocus();
                if (i > 2) {
                  SaleActivity.this.end.setText(str.substring(0, 2));
                }
              }
              if ((SaleActivity.this.rb3.isChecked()) && (i >= 3))
              {
                SaleActivity.this.qty.requestFocus();
                if (i > 3) {
                  SaleActivity.this.end.setText(str.substring(0, 3));
                }
              }
            }
          }
          
          public void beforeTextChanged(CharSequence paramAnonymousCharSequence, int paramAnonymousInt1, int paramAnonymousInt2, int paramAnonymousInt3) {}
          
          public void onTextChanged(CharSequence paramAnonymousCharSequence, int paramAnonymousInt1, int paramAnonymousInt2, int paramAnonymousInt3) {}
        });
        SaleActivity.this.add.setOnClickListener(new View.OnClickListener()
        {
          public void onClick(View paramAnonymousView)
          {
            SaleActivity.this.add.setVisibility(0);
            int j = 1;
            SaleActivity localSaleActivity2 = -1;
            int k = -1;
            int i = -1;
            Object localObject = "";
            String str3 = (String)SaleActivity.this.spprod.getSelectedItem();
            String str5 = SaleActivity.this.pno.getText().toString();
            String str2 = SaleActivity.this.qty.getText().toString();
            String str1 = SaleActivity.this.price.getText().toString();
            if ((!str5.equals("")) && (!str2.equals("")) && (!str1.equals("")))
            {
              int n = str5.length();
              int m = 1;
              if (SaleActivity.this.rb2.isChecked())
              {
                j = 2;
                if (n < 2) {
                  m = 0;
                }
              }
              if (SaleActivity.this.rb3.isChecked())
              {
                j = 3;
                if (n < 3) {
                  m = 0;
                }
              }
              if (m != 0)
              {
                if ((!SaleActivity.this.togflag) || (SaleActivity.this.end.getText().toString().equals("")))
                {
                  if (SaleActivity.this.abc.isEnabled()) {
                    localObject = (String)SaleActivity.this.abc.getSelectedItem();
                  }
                  i = SaleActivity.this.canSale(str3, (String)localObject, SaleActivity.this.pno.getText().toString(), "-1", j, str2, str1);
                }
                else
                {
                  localSaleActivity2 = Integer.parseInt(SaleActivity.this.pno.getText().toString());
                  k = Integer.parseInt(SaleActivity.this.end.getText().toString());
                  if (k < localSaleActivity2)
                  {
                    SaleActivity.this.end.setText("");
                    SaleActivity.this.end.requestFocus();
                  }
                  if (SaleActivity.this.abc.isEnabled()) {
                    localObject = (String)SaleActivity.this.abc.getSelectedItem();
                  }
                  SaleActivity.this.end.setEnabled(true);
                  i = SaleActivity.this.canSale(str3, (String)localObject, SaleActivity.this.pno.getText().toString(), SaleActivity.this.end.getText().toString(), j, str2, str1);
                }
                if (i == 1)
                {
                  String str4;
                  SaleActivity localSaleActivity4;
                  SaleActivity localSaleActivity1;
                  if ((localSaleActivity2 <= -1) || (k <= -1))
                  {
                    SaleActivity.i = 1 + SaleActivity.i;
                    SaleActivity.this.save.setVisibility(1);
                    if (SaleActivity.this.abc.isEnabled()) {
                      localObject = (String)SaleActivity.this.abc.getSelectedItem();
                    }
                    double d1 = Integer.parseInt(str2) * Double.parseDouble(str1);
                    str4 = String.valueOf(d1);
                    localSaleActivity4 = SaleActivity.this;
                    localSaleActivity4.subtotal = (d1 + localSaleActivity4.subtotal);
                    SaleActivity.this.tprice.setText(String.valueOf(SaleActivity.this.subtotal));
                    SaleActivity.this.pno.setText("");
                    SaleActivity.this.qty.setText("");
                    SaleActivity.this.pno.requestFocus();
                    localSaleActivity1 = SaleActivity.this;
                    localSaleActivity1.gridid = (1 + localSaleActivity1.gridid);
                    SaleActivity.this.saleViewFill(str3, (String)localObject, str5, str2, str1, str4);
                    SaleActivity.this.add.setVisibility(1);
                  }
                  else
                  {
                    for (SaleActivity localSaleActivity3 = localSaleActivity2; localSaleActivity3 <= localSaleActivity1; localSaleActivity3++)
                    {
                      localSaleActivity4 = SaleActivity.this;
                      localSaleActivity4.gridid = (1 + localSaleActivity4.gridid);
                      (1 + (localSaleActivity1 - localSaleActivity2));
                      double d2 = Integer.parseInt(str2) * Double.parseDouble(str1);
                      SaleActivity localSaleActivity5 = SaleActivity.this;
                      localSaleActivity5.subtotal = (d2 + localSaleActivity5.subtotal);
                      String str6 = String.valueOf(d2);
                      SaleActivity.this.tprice.setText(String.valueOf(SaleActivity.this.subtotal));
                      SaleActivity.this.pno.setText("");
                      SaleActivity.this.qty.setText("");
                      SaleActivity.this.end.setText("");
                      SaleActivity.this.pno.requestFocus();
                      String str7 = String.valueOf(localSaleActivity3);
                      switch (str4)
                      {
                      case 2: 
                        if (str7.length() < 2) {
                          str7 = "0" + localSaleActivity3;
                        }
                        break;
                      case 3: 
                        if (str7.length() < 2) {
                          str7 = "00" + localSaleActivity3;
                        }
                        if (str7.length() < 3) {
                          str7 = "0" + localSaleActivity3;
                        }
                        break;
                      }
                      SaleActivity.this.save.setVisibility(1);
                      SaleActivity.this.saleViewFill(str3, (String)localObject, str7, str2, str1, str6);
                      SaleActivity.this.add.setVisibility(1);
                    }
                  }
                }
              }
              else
              {
                SaleActivity.this.pno.requestFocus();
              }
              if ((i == 0) || (i == 2))
              {
                localObject = new AlertDialog.Builder(SaleActivity.this);
                ((AlertDialog.Builder)localObject).setMessage("Sorry!!! Time Out Product");
                ((AlertDialog.Builder)localObject).setNeutralButton("Ok", new DialogInterface.OnClickListener()
                {
                  public void onClick(DialogInterface paramAnonymous2DialogInterface, int paramAnonymous2Int) {}
                });
                ((AlertDialog.Builder)localObject).show();
                SaleActivity.this.pno.setText("");
                SaleActivity.this.end.setText("");
                SaleActivity.this.qty.setText("");
                SaleActivity.this.tprice.setText("");
              }
              SaleActivity.this.add.setVisibility(1);
            }
          }
        });
        SaleActivity.this.save.setOnClickListener(new View.OnClickListener()
        {
          public void onClick(View paramAnonymousView)
          {
            SaleActivity.this.gridid = 0;
            Object localObject = SaleActivity.this.partytext.getText().toString();
            if (SaleActivity.this.saleFunction.validParty((String)localObject) == 1)
            {
              SaleActivity.this.save.setVisibility(4);
              SaleActivity.this.save();
              localObject = new SimpleAdapter(SaleActivity.this, SaleActivity.this.fillMaps, 2130903046, SaleActivity.this.from, SaleActivity.this.to);
              SaleActivity.this.lv.setAdapter((ListAdapter)localObject);
              SaleActivity.this.fillProduct();
              SaleActivity.this.price.setText("10");
            }
            else
            {
              localObject = new AlertDialog.Builder(SaleActivity.this);
              ((AlertDialog.Builder)localObject).setMessage("Enter a valid  customer");
              ((AlertDialog.Builder)localObject).setNeutralButton("Ok", new DialogInterface.OnClickListener()
              {
                public void onClick(DialogInterface paramAnonymous2DialogInterface, int paramAnonymous2Int) {}
              });
              ((AlertDialog.Builder)localObject).show();
              SaleActivity.this.partytext.requestFocus();
            }
          }
        });
        SaleActivity.this.lv.setOnItemLongClickListener(new AdapterView.OnItemLongClickListener()
        {
          public boolean onItemLongClick(AdapterView<?> paramAnonymousAdapterView, View paramAnonymousView, int paramAnonymousInt, long paramAnonymousLong)
          {
            SaleActivity.this.celldelete(paramAnonymousInt);
            return true;
          }
        });
        SaleActivity.this.progressDialog.dismiss();
        return;
      }
      catch (Exception localException)
      {
        for (;;)
        {
          Log.e("Error from ", localException.getMessage());
        }
      }
    }
    
    protected void onPreExecute()
    {
      SaleActivity.this.progressDialog = new ProgressDialog(SaleActivity.this);
      SaleActivity.this.progressDialog.setTitle("Loading...");
      SaleActivity.this.progressDialog.setMessage("Loading application, please wait...");
      SaleActivity.this.progressDialog.setCancelable(false);
      SaleActivity.this.progressDialog.setIndeterminate(false);
      SaleActivity.this.progressDialog.setMax(100);
      SaleActivity.this.progressDialog.setProgress(0);
      SaleActivity.this.progressDialog.show();
    }
    
    protected void onProgressUpdate(Integer... paramVarArgs)
    {
      SaleActivity.this.progressDialog.setProgress(paramVarArgs[0].intValue());
    }
  }
}


/* Location:           C:\Users\PJ\Desktop\get-apk-source_win\classes_dex2jar.jar
 * Qualified Name:     com.pizza.work.SaleActivity
 * JD-Core Version:    0.7.0.1
 */