package com.pizza.work.library;

import android.os.CountDownTimer;

public class SaleTimer
  extends CountDownTimer
{
  public static long timeElapsed;
  public static long timeremain;
  public static boolean timeup = false;
  long startTime;
  
  public SaleTimer(long paramLong1, long paramLong2)
  {
    super(paramLong1, paramLong2);
    this.startTime = paramLong1;
  }
  
  public void onFinish()
  {
    timeup = true;
  }
  
  public void onTick(long paramLong)
  {
    timeremain = paramLong;
    timeElapsed = this.startTime - paramLong;
  }
}


/* Location:           C:\Users\PJ\Desktop\get-apk-source_win\classes_dex2jar.jar
 * Qualified Name:     com.pizza.work.library.SaleTimer
 * JD-Core Version:    0.7.0.1
 */