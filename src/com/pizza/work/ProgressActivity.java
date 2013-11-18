package com.pizza.work;

import android.app.Activity;
import android.app.ProgressDialog;
import android.content.Intent;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;

public class ProgressActivity
  extends Activity
{
  BackgroundThread backgroundThread;
  Handler handler = new Handler()
  {
    public void handleMessage(Message paramAnonymousMessage)
    {
      ProgressActivity.this.setProgressBarIndeterminateVisibility(false);
      ProgressActivity.this.progressDialog.dismiss();
      int i = 1;
      for (;;)
      {
        if (i == 0)
        {
          Intent localIntent = new Intent(ProgressActivity.this.getApplicationContext(), SaleActivity.class);
          ProgressActivity.this.startActivity(localIntent);
          return;
        }
        try
        {
          ProgressActivity.this.backgroundThread.join();
          int j = 0;
        }
        catch (InterruptedException localInterruptedException)
        {
          localInterruptedException.printStackTrace();
        }
      }
    }
  };
  ProgressDialog progressDialog;
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    requestWindowFeature(5);
    setProgressBarIndeterminateVisibility(true);
    this.progressDialog = ProgressDialog.show(this, "ProgressDialog", "Wait!");
    this.backgroundThread = new BackgroundThread();
    this.backgroundThread.setRunning(true);
    this.backgroundThread.start();
  }
  
  public class BackgroundThread
    extends Thread
  {
    int cnt;
    volatile boolean running = false;
    
    public BackgroundThread() {}
    
    public void run()
    {
      for (;;)
      {
        if (!this.running)
        {
          ProgressActivity.this.handler.sendMessage(ProgressActivity.this.handler.obtainMessage());
          return;
        }
        try
        {
          sleep(100L);
          int i = this.cnt;
          this.cnt = (i - 1);
          if (i == 0) {
            this.running = false;
          }
        }
        catch (InterruptedException localInterruptedException)
        {
          localInterruptedException.printStackTrace();
        }
      }
    }
    
    void setRunning(boolean paramBoolean)
    {
      this.running = paramBoolean;
      this.cnt = 10;
    }
  }
}


/* Location:           C:\Users\PJ\Desktop\get-apk-source_win\classes_dex2jar.jar
 * Qualified Name:     com.pizza.work.ProgressActivity
 * JD-Core Version:    0.7.0.1
 */