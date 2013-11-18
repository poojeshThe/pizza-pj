package com.pizza.work;

import android.app.Activity;
import android.app.AlertDialog.Builder;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.Intent;
import android.os.Bundle;
import android.text.Editable;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.Button;
import android.widget.EditText;
import android.widget.TextView;
import com.pizza.work.library.UserFunctions;
import java.util.HashMap;
import org.json.JSONObject;

public class LoginActivity
  extends Activity
{
  private static String KEY_CREATED_AT = "created_at";
  private static String KEY_EMAIL;
  private static String KEY_ERROR;
  private static String KEY_ERROR_MSG;
  private static String KEY_NAME;
  private static String KEY_SUCCESS = "success";
  private static String KEY_UID;
  HashMap<String, String> adminpricemap = new HashMap();
  Button btnLinkToRegister;
  Button btnLogin;
  EditText inputEmail;
  EditText inputPassword;
  EditText inputuid;
  JSONObject json = null;
  Button ledger;
  TextView loginErrorMsg;
  Button report;
  Button sale;
  UserFunctions userFunction = new UserFunctions();
  Button winners;
  
  static
  {
    KEY_ERROR = "error";
    KEY_ERROR_MSG = "error_msg";
    KEY_UID = "uid";
    KEY_NAME = "name";
    KEY_EMAIL = "email";
  }
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(2130903041);
    this.inputuid = ((EditText)findViewById(2131230722));
    this.inputPassword = ((EditText)findViewById(2131230724));
    this.btnLogin = ((Button)findViewById(2131230725));
    this.btnLogin.setOnClickListener(new View.OnClickListener()
    {
      public void onClick(View paramAnonymousView)
      {
        try
        {
          Object localObject2 = LoginActivity.this.inputuid.getText().toString().trim();
          localObject1 = LoginActivity.this.inputPassword.getText().toString().trim();
          if ((localObject2 != "") && (localObject1 != ""))
          {
            LoginActivity.this.json = LoginActivity.this.userFunction.imeUser((String)localObject2, (String)localObject1);
            UserFunctions.adminpriceList = LoginActivity.this.json;
            if (LoginActivity.this.json.getString("success") != null)
            {
              localObject1 = LoginActivity.this.json.getString(LoginActivity.KEY_SUCCESS);
              if (Integer.parseInt((String)localObject1) == 1)
              {
                UserFunctions.usercode = LoginActivity.this.json.getString("uname");
                LoginActivity.this.finish();
                localObject1 = new Intent(LoginActivity.this.getApplicationContext(), MenuActivity.class);
                LoginActivity.this.startActivity((Intent)localObject1);
              }
              else
              {
                if (Integer.parseInt((String)localObject1) == 2)
                {
                  localObject2 = new AlertDialog.Builder(LoginActivity.this);
                  ((AlertDialog.Builder)localObject2).setMessage("Password InCorrect");
                  ((AlertDialog.Builder)localObject2).setNeutralButton("Ok", new DialogInterface.OnClickListener()
                  {
                    public void onClick(DialogInterface paramAnonymous2DialogInterface, int paramAnonymous2Int)
                    {
                      LoginActivity.this.inputPassword.requestFocus();
                    }
                  });
                  ((AlertDialog.Builder)localObject2).show();
                }
                if (Integer.parseInt((String)localObject1) == 3)
                {
                  localObject2 = new AlertDialog.Builder(LoginActivity.this);
                  ((AlertDialog.Builder)localObject2).setMessage("Sorry You r Blocked!!!!! Contact Administrator");
                  ((AlertDialog.Builder)localObject2).setNeutralButton("Ok", new DialogInterface.OnClickListener()
                  {
                    public void onClick(DialogInterface paramAnonymous2DialogInterface, int paramAnonymous2Int)
                    {
                      LoginActivity.this.finish();
                    }
                  });
                  ((AlertDialog.Builder)localObject2).show();
                }
                if (Integer.parseInt((String)localObject1) == 0)
                {
                  localObject1 = new AlertDialog.Builder(LoginActivity.this);
                  ((AlertDialog.Builder)localObject1).setMessage("Invalid User!!!!!!!!");
                  ((AlertDialog.Builder)localObject1).setNeutralButton("Ok", new DialogInterface.OnClickListener()
                  {
                    public void onClick(DialogInterface paramAnonymous2DialogInterface, int paramAnonymous2Int)
                    {
                      LoginActivity.this.inputuid.setText("");
                      LoginActivity.this.inputuid.requestFocus();
                    }
                  });
                  ((AlertDialog.Builder)localObject1).show();
                }
              }
            }
          }
        }
        catch (Exception localException)
        {
          Object localObject1 = new AlertDialog.Builder(LoginActivity.this);
          ((AlertDialog.Builder)localObject1).setMessage(LoginActivity.this.json.toString() + localException.getMessage());
          ((AlertDialog.Builder)localObject1).setNeutralButton("Ok", new DialogInterface.OnClickListener()
          {
            public void onClick(DialogInterface paramAnonymous2DialogInterface, int paramAnonymous2Int)
            {
              LoginActivity.this.finish();
            }
          });
          ((AlertDialog.Builder)localObject1).show();
        }
      }
    });
  }
}


/* Location:           C:\Users\PJ\Desktop\get-apk-source_win\classes_dex2jar.jar
 * Qualified Name:     com.pizza.work.LoginActivity
 * JD-Core Version:    0.7.0.1
 */