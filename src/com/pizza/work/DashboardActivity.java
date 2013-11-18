package com.pizza.work;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.Button;
import com.pizza.work.library.UserFunctions;

public class DashboardActivity
  extends Activity
{
  Button btnLogout;
  UserFunctions userFunctions;
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    this.userFunctions = new UserFunctions();
    if (!this.userFunctions.isUserLoggedIn(getApplicationContext()))
    {
      Intent localIntent = new Intent(getApplicationContext(), LoginActivity.class);
      localIntent.addFlags(67108864);
      startActivity(localIntent);
      finish();
    }
    else
    {
      setContentView(2130903049);
      this.btnLogout.setOnClickListener(new View.OnClickListener()
      {
        public void onClick(View paramAnonymousView)
        {
          DashboardActivity.this.userFunctions.logoutUser(DashboardActivity.this.getApplicationContext());
          Intent localIntent = new Intent(DashboardActivity.this.getApplicationContext(), LoginActivity.class);
          localIntent.addFlags(67108864);
          DashboardActivity.this.startActivity(localIntent);
          DashboardActivity.this.finish();
        }
      });
    }
  }
}


/* Location:           C:\Users\PJ\Desktop\get-apk-source_win\classes_dex2jar.jar
 * Qualified Name:     com.pizza.work.DashboardActivity
 * JD-Core Version:    0.7.0.1
 */