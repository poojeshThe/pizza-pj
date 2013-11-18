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
import com.pizza.work.library.UserFunctions;
import org.json.JSONObject;

public class ChangePassActivity
  extends Activity
{
  private EditText change;
  private Button chbutton;
  private EditText confirm;
  UserFunctions userFunction = new UserFunctions();
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(2130903044);
    try
    {
      this.change = ((EditText)findViewById(2131230736));
      this.confirm = ((EditText)findViewById(2131230737));
      this.chbutton = ((Button)findViewById(2131230729));
      this.chbutton.setOnClickListener(new View.OnClickListener()
      {
        public void onClick(View paramAnonymousView)
        {
          Object localObject;
          if (ChangePassActivity.this.change.getText().toString().equals(ChangePassActivity.this.confirm.getText().toString()))
          {
            try
            {
              localObject = ChangePassActivity.this.userFunction.changePass(ChangePassActivity.this.change.getText().toString());
              if (((JSONObject)localObject).getString("success") == null) {
                return;
              }
              if (Integer.parseInt(((JSONObject)localObject).getString("success")) == 1)
              {
                localObject = new AlertDialog.Builder(ChangePassActivity.this);
                ((AlertDialog.Builder)localObject).setMessage("Update Password Successfully");
                ((AlertDialog.Builder)localObject).setNeutralButton("Ok", new DialogInterface.OnClickListener()
                {
                  public void onClick(DialogInterface paramAnonymous2DialogInterface, int paramAnonymous2Int)
                  {
                    Intent localIntent = new Intent(ChangePassActivity.this.getApplicationContext(), MenuActivity.class);
                    ChangePassActivity.this.startActivity(localIntent);
                  }
                });
                ((AlertDialog.Builder)localObject).show();
              }
              else
              {
                localObject = new AlertDialog.Builder(ChangePassActivity.this);
                ((AlertDialog.Builder)localObject).setMessage("Sorry!!! Error Occured");
                ((AlertDialog.Builder)localObject).setNeutralButton("Ok", new DialogInterface.OnClickListener()
                {
                  public void onClick(DialogInterface paramAnonymous2DialogInterface, int paramAnonymous2Int)
                  {
                    Intent localIntent = new Intent(ChangePassActivity.this.getApplicationContext(), MenuActivity.class);
                    ChangePassActivity.this.startActivity(localIntent);
                  }
                });
                ((AlertDialog.Builder)localObject).show();
              }
            }
            catch (Exception localException) {}
          }
          else
          {
            localObject = new AlertDialog.Builder(ChangePassActivity.this);
            ((AlertDialog.Builder)localObject).setMessage("Change password and confirm password are  Not equal");
            ((AlertDialog.Builder)localObject).setNeutralButton("Ok", new DialogInterface.OnClickListener()
            {
              public void onClick(DialogInterface paramAnonymous2DialogInterface, int paramAnonymous2Int)
              {
                ChangePassActivity.this.change.setText("");
                ChangePassActivity.this.confirm.setText("");
                ChangePassActivity.this.change.requestFocus();
              }
            });
            ((AlertDialog.Builder)localObject).show();
          }
        }
      });
      label65:
      return;
    }
    catch (Exception localException)
    {
      break label65;
    }
  }
}


/* Location:           C:\Users\PJ\Desktop\get-apk-source_win\classes_dex2jar.jar
 * Qualified Name:     com.pizza.work.ChangePassActivity
 * JD-Core Version:    0.7.0.1
 */