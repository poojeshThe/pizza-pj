package com.pizza.work;

import android.app.Activity;
import android.app.Dialog;
import android.app.ProgressDialog;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.Button;
import android.widget.TextView;
import com.pizza.work.library.UserFunctions;

public class MenuActivity
  extends Activity
{
  public static final int progress_bar_type;
  Button changepass;
  Button custledger;
  Button ledger;
  private ProgressDialog pDialog;
  Button report;
  Button result;
  Button sale;
  TextView t1;
  Button winners;
  
  public void onBackPressed()
  {
    super.onBackPressed();
    finish();
  }
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(2130903042);
    this.t1 = ((TextView)findViewById(2131230727));
    this.t1.setText("Agent Code   " + UserFunctions.usercode);
    this.t1.setGravity(17);
    this.sale = ((Button)findViewById(2131230729));
    this.ledger = ((Button)findViewById(2131230733));
    this.report = ((Button)findViewById(2131230730));
    this.result = ((Button)findViewById(2131230731));
    this.winners = ((Button)findViewById(2131230732));
    this.changepass = ((Button)findViewById(2131230734));
    this.sale.setOnClickListener(new View.OnClickListener()
    {
      public void onClick(View paramAnonymousView)
      {
        Intent localIntent = new Intent(MenuActivity.this.getApplicationContext(), SaleActivity.class);
        MenuActivity.this.startActivity(localIntent);
        MenuActivity.this.finish();
      }
    });
    this.ledger.setOnClickListener(new View.OnClickListener()
    {
      public void onClick(View paramAnonymousView)
      {
        Intent localIntent = new Intent(MenuActivity.this.getApplicationContext(), saleamountwiseActivity.class);
        MenuActivity.this.startActivity(localIntent);
      }
    });
    this.report.setOnClickListener(new View.OnClickListener()
    {
      public void onClick(View paramAnonymousView)
      {
        Intent localIntent = new Intent(MenuActivity.this.getApplicationContext(), SaleReportActivity.class);
        MenuActivity.this.startActivity(localIntent);
      }
    });
    this.result.setOnClickListener(new View.OnClickListener()
    {
      public void onClick(View paramAnonymousView)
      {
        Intent localIntent = new Intent(MenuActivity.this.getApplicationContext(), testActivity.class);
        MenuActivity.this.startActivity(localIntent);
      }
    });
    this.winners.setOnClickListener(new View.OnClickListener()
    {
      public void onClick(View paramAnonymousView)
      {
        Intent localIntent = new Intent(MenuActivity.this.getApplicationContext(), WinnersReportActivity.class);
        MenuActivity.this.startActivity(localIntent);
      }
    });
    this.changepass.setOnClickListener(new View.OnClickListener()
    {
      public void onClick(View paramAnonymousView)
      {
        Intent localIntent = new Intent(MenuActivity.this.getApplicationContext(), ChangePassActivity.class);
        MenuActivity.this.startActivity(localIntent);
      }
    });
  }
  
  protected Dialog onCreateDialog(int paramInt)
  {
    ProgressDialog localProgressDialog;
    switch (paramInt)
    {
    default: 
      localProgressDialog = null;
      break;
    case 0: 
      this.pDialog = new ProgressDialog(this);
      this.pDialog.setMessage("Downloading file. Please wait...");
      this.pDialog.setIndeterminate(false);
      this.pDialog.setMax(100);
      this.pDialog.setProgressStyle(1);
      this.pDialog.setCancelable(true);
      this.pDialog.show();
      localProgressDialog = this.pDialog;
    }
    return localProgressDialog;
  }
}


/* Location:           C:\Users\PJ\Desktop\get-apk-source_win\classes_dex2jar.jar
 * Qualified Name:     com.pizza.work.MenuActivity
 * JD-Core Version:    0.7.0.1
 */