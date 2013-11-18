package com.pizza.work.library;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
import java.util.HashMap;

public class DatabaseHandler
  extends SQLiteOpenHelper
{
  private static final String DATABASE_NAME = "vut";
  private static final int DATABASE_VERSION = 1;
  private static final String KEY_CREATED_AT = "created_at";
  private static final String KEY_EMAIL = "email";
  private static final String KEY_ID = "id";
  private static final String KEY_NAME = "name";
  private static final String KEY_UID = "uid";
  private static final String TABLE_TEMP = "tempsale";
  
  public DatabaseHandler(Context paramContext)
  {
    super(paramContext, "vut", null, 1);
  }
  
  public void addTempSale(int paramInt1, String paramString1, int paramInt2, String paramString2, int paramInt3, double paramDouble1, double paramDouble2)
  {
    SQLiteDatabase localSQLiteDatabase = getWritableDatabase();
    ContentValues localContentValues = new ContentValues();
    localContentValues.put("pname", paramString1);
    localContentValues.put("type1", Integer.valueOf(paramInt2));
    localContentValues.put("abctype", paramString2);
    localContentValues.put("qty", Integer.valueOf(paramInt3));
    localContentValues.put("price", Double.valueOf(paramDouble1));
    localContentValues.put("total", Double.valueOf(paramDouble2));
    localSQLiteDatabase.insert("tempsale", null, localContentValues);
    localSQLiteDatabase.close();
  }
  
  public void addUser(String paramString1, String paramString2, String paramString3, String paramString4)
  {
    SQLiteDatabase localSQLiteDatabase = getWritableDatabase();
    ContentValues localContentValues = new ContentValues();
    localContentValues.put("name", paramString1);
    localContentValues.put("email", paramString2);
    localContentValues.put("uid", paramString3);
    localContentValues.put("created_at", paramString4);
    localSQLiteDatabase.insert("tempsale", null, localContentValues);
    localSQLiteDatabase.close();
  }
  
  public int getRowCount()
  {
    SQLiteDatabase localSQLiteDatabase = getReadableDatabase();
    Cursor localCursor = localSQLiteDatabase.rawQuery("SELECT  * FROM tempsale", null);
    int i = localCursor.getCount();
    localSQLiteDatabase.close();
    localCursor.close();
    return i;
  }
  
  public HashMap<String, String> getUserDetails()
  {
    HashMap localHashMap = new HashMap();
    SQLiteDatabase localSQLiteDatabase = getReadableDatabase();
    Cursor localCursor = localSQLiteDatabase.rawQuery("SELECT  * FROM tempsale", null);
    localCursor.moveToFirst();
    if (localCursor.getCount() > 0) {
      localHashMap.put("name", localCursor.getString(1));
    }
    localCursor.close();
    localSQLiteDatabase.close();
    return localHashMap;
  }
  
  public void onCreate(SQLiteDatabase paramSQLiteDatabase)
  {
    paramSQLiteDatabase.execSQL("CREATE TABLE tempsale(id INTEGER PRIMARY KEY,pname TEXT,type1 TEXT UNIQUE,abctype TEXT,quantity TEXT,priceDOUBLE,totalDOUBLE)");
  }
  
  public void onUpgrade(SQLiteDatabase paramSQLiteDatabase, int paramInt1, int paramInt2)
  {
    paramSQLiteDatabase.execSQL("DROP TABLE IF EXISTS tempsale");
    onCreate(paramSQLiteDatabase);
  }
  
  public void resetTables()
  {
    SQLiteDatabase localSQLiteDatabase = getWritableDatabase();
    localSQLiteDatabase.delete("tempsale", null, null);
    localSQLiteDatabase.close();
  }
}


/* Location:           C:\Users\PJ\Desktop\get-apk-source_win\classes_dex2jar.jar
 * Qualified Name:     com.pizza.work.library.DatabaseHandler
 * JD-Core Version:    0.7.0.1
 */