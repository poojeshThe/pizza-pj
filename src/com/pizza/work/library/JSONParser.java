package com.pizza.work.library;

import android.util.Log;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.UnsupportedEncodingException;
import java.util.List;
import org.apache.http.HttpEntity;
import org.apache.http.HttpResponse;
import org.apache.http.NameValuePair;
import org.apache.http.client.ClientProtocolException;
import org.apache.http.client.entity.UrlEncodedFormEntity;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.client.methods.HttpUriRequest;
import org.apache.http.impl.client.DefaultHttpClient;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public class JSONParser
{
  static InputStream is = null;
  static JSONObject jObj = null;
  static String json = "";
  
  public JSONObject InsertSaleUrl(String paramString, List<NameValuePair> paramList)
  {
    JSONObject localJSONObject = null;
    StringBuilder localStringBuilder = new StringBuilder();
    Log.e("JSONhhhhhhhhhhh", "ttttt");
    try
    {
      Object localObject1 = new DefaultHttpClient();
      localObject2 = new HttpPost(paramString);
      ((HttpPost)localObject2).setEntity(new UrlEncodedFormEntity(paramList));
      is = ((DefaultHttpClient)localObject1).execute((HttpUriRequest)localObject2).getEntity().getContent();
      for (;;)
      {
        try
        {
          localObject1 = new BufferedReader(new InputStreamReader(is, "iso-8859-1"), 8);
          Log.e("JSONhhhhhhhhhhh", "ttttt");
        }
        catch (Exception localException1)
        {
          Log.e("Buffer Error", "Error converting result " + localException1.toString());
          continue;
        }
        try
        {
          localObject2 = ((BufferedReader)localObject1).readLine();
          if (localObject2 != null) {
            continue;
          }
        }
        catch (Exception localException2)
        {
          Log.d("HERRE", localException2.getMessage());
        }
      }
      is.close();
      json = localStringBuilder.toString();
      Log.e("JSONhhhhhhhhhhh", json);
      try
      {
        jObj = new JSONObject(json);
        localJSONObject = jObj;
      }
      catch (JSONException localJSONException)
      {
        for (;;)
        {
          Log.e("JSON Parser", "Error parsing data " + localJSONException.toString());
        }
      }
      return localJSONObject;
    }
    catch (UnsupportedEncodingException localUnsupportedEncodingException)
    {
      for (;;)
      {
        localUnsupportedEncodingException.printStackTrace();
      }
    }
    catch (ClientProtocolException localClientProtocolException)
    {
      for (;;)
      {
        localClientProtocolException.printStackTrace();
      }
    }
    catch (IOException localIOException)
    {
      for (;;)
      {
        Object localObject2;
        localIOException.printStackTrace();
        continue;
        localStringBuilder.append(localObject2 + "\n");
        Log.e("JSONhhhhhhhhhhh", "****" + (String)localObject2 + "******");
      }
    }
  }
  
  public JSONArray getJSONArrayFromUrl(String paramString, List<NameValuePair> paramList)
  {
    JSONArray localJSONArray = null;
    try
    {
      Object localObject1 = new DefaultHttpClient();
      localObject2 = new HttpPost(paramString);
      ((HttpPost)localObject2).setEntity(new UrlEncodedFormEntity(paramList));
      is = ((DefaultHttpClient)localObject1).execute((HttpUriRequest)localObject2).getEntity().getContent();
      try
      {
        BufferedReader localBufferedReader = new BufferedReader(new InputStreamReader(is, "iso-8859-1"), 8);
        localObject1 = new StringBuilder();
        localObject2 = localBufferedReader.readLine();
        if (localObject2 != null) {
          break label163;
        }
        is.close();
        localObject1 = ((StringBuilder)localObject1).toString();
        Log.e("JSONFrom arry", (String)localObject1);
        localJSONArray = new JSONArray((String)localObject1);
        localJSONArray = localJSONArray;
      }
      catch (Exception localException)
      {
        for (;;)
        {
          Log.e("Buffer Error", "Error converting result " + localException.toString());
        }
      }
      return localJSONArray;
    }
    catch (UnsupportedEncodingException localUnsupportedEncodingException)
    {
      for (;;)
      {
        localUnsupportedEncodingException.printStackTrace();
      }
    }
    catch (ClientProtocolException localClientProtocolException)
    {
      for (;;)
      {
        localClientProtocolException.printStackTrace();
      }
    }
    catch (IOException localIOException)
    {
      for (;;)
      {
        Object localObject2;
        localIOException.printStackTrace();
        continue;
        label163:
        localIOException.append(localObject2 + "\n");
      }
    }
  }
  
  public JSONObject getJSONFromUrl(String paramString, List<NameValuePair> paramList)
  {
    JSONObject localJSONObject = null;
    try
    {
      localObject2 = new DefaultHttpClient();
      localObject1 = new HttpPost(paramString);
      ((HttpPost)localObject1).setEntity(new UrlEncodedFormEntity(paramList));
      is = ((DefaultHttpClient)localObject2).execute((HttpUriRequest)localObject1).getEntity().getContent();
    }
    catch (UnsupportedEncodingException localUnsupportedEncodingException)
    {
      for (;;)
      {
        Object localObject1;
        localUnsupportedEncodingException.printStackTrace();
      }
    }
    catch (ClientProtocolException localClientProtocolException)
    {
      for (;;)
      {
        localClientProtocolException.printStackTrace();
      }
    }
    catch (IOException localIOException)
    {
      for (;;)
      {
        Object localObject2;
        StringBuilder localStringBuilder;
        label129:
        localIOException.printStackTrace();
        continue;
        localStringBuilder.append(localObject2 + "\n");
      }
    }
    try
    {
      localObject1 = new BufferedReader(new InputStreamReader(is, "iso-8859-1"), 8);
      localStringBuilder = new StringBuilder();
      localObject2 = ((BufferedReader)localObject1).readLine();
      if (localObject2 == null)
      {
        is.close();
        json = localStringBuilder.toString();
      }
    }
    catch (Exception localException)
    {
      Log.e("Buffer Error", "Error converting result " + localException.toString());
      break label129;
    }
    try
    {
      jObj = new JSONObject(json);
      localJSONObject = jObj;
    }
    catch (JSONException localJSONException)
    {
      Log.e("JSON Parser", "Error parsing data " + localJSONException.toString());
      break label129;
    }
    return localJSONObject;
  }
  
  public JSONObject getJSONFromUrl1(String paramString, List<NameValuePair> paramList)
  {
    JSONObject localJSONObject = null;
    try
    {
      localObject2 = new DefaultHttpClient();
      localObject1 = new HttpPost(paramString);
      ((HttpPost)localObject1).setEntity(new UrlEncodedFormEntity(paramList));
      is = ((DefaultHttpClient)localObject2).execute((HttpUriRequest)localObject1).getEntity().getContent();
    }
    catch (UnsupportedEncodingException localUnsupportedEncodingException)
    {
      for (;;)
      {
        Object localObject1;
        localUnsupportedEncodingException.printStackTrace();
      }
    }
    catch (ClientProtocolException localClientProtocolException)
    {
      for (;;)
      {
        localClientProtocolException.printStackTrace();
      }
    }
    catch (IOException localIOException)
    {
      for (;;)
      {
        Object localObject2;
        String str;
        label129:
        localIOException.printStackTrace();
        continue;
        ((StringBuilder)localObject2).append(str);
      }
    }
    try
    {
      localObject1 = new BufferedReader(new InputStreamReader(is, "iso-8859-1"), 8);
      localObject2 = new StringBuilder();
      str = ((BufferedReader)localObject1).readLine();
      if (str == null)
      {
        is.close();
        json = ((StringBuilder)localObject2).toString();
      }
    }
    catch (Exception localException)
    {
      Log.e("Buffer Error", "Error converting result " + localException.toString());
      break label129;
    }
    try
    {
      jObj = new JSONObject(json);
      localJSONObject = jObj;
    }
    catch (JSONException localJSONException)
    {
      Log.e("JSON Parser", "Error parsing data " + localJSONException.toString());
      break label129;
    }
    return localJSONObject;
  }
  
  /* Error */
  public String getStringFromUrl(String paramString, List<NameValuePair> paramList)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore_3
    //   2: new 50	org/apache/http/impl/client/DefaultHttpClient
    //   5: dup
    //   6: invokespecial 51	org/apache/http/impl/client/DefaultHttpClient:<init>	()V
    //   9: astore 4
    //   11: new 53	org/apache/http/client/methods/HttpPost
    //   14: dup
    //   15: aload_1
    //   16: invokespecial 56	org/apache/http/client/methods/HttpPost:<init>	(Ljava/lang/String;)V
    //   19: astore 5
    //   21: aload 5
    //   23: new 58	org/apache/http/client/entity/UrlEncodedFormEntity
    //   26: dup
    //   27: aload_2
    //   28: invokespecial 61	org/apache/http/client/entity/UrlEncodedFormEntity:<init>	(Ljava/util/List;)V
    //   31: invokevirtual 65	org/apache/http/client/methods/HttpPost:setEntity	(Lorg/apache/http/HttpEntity;)V
    //   34: aload 4
    //   36: aload 5
    //   38: invokevirtual 69	org/apache/http/impl/client/DefaultHttpClient:execute	(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;
    //   41: invokeinterface 75 1 0
    //   46: invokeinterface 81 1 0
    //   51: putstatic 14	com/pizza/work/library/JSONParser:is	Ljava/io/InputStream;
    //   54: new 83	java/io/BufferedReader
    //   57: dup
    //   58: new 85	java/io/InputStreamReader
    //   61: dup
    //   62: getstatic 14	com/pizza/work/library/JSONParser:is	Ljava/io/InputStream;
    //   65: ldc 87
    //   67: invokespecial 90	java/io/InputStreamReader:<init>	(Ljava/io/InputStream;Ljava/lang/String;)V
    //   70: bipush 8
    //   72: invokespecial 93	java/io/BufferedReader:<init>	(Ljava/io/Reader;I)V
    //   75: astore 4
    //   77: new 37	java/lang/StringBuilder
    //   80: dup
    //   81: invokespecial 38	java/lang/StringBuilder:<init>	()V
    //   84: astore_3
    //   85: aload 4
    //   87: invokevirtual 97	java/io/BufferedReader:readLine	()Ljava/lang/String;
    //   90: astore 5
    //   92: aload 5
    //   94: ifnonnull +46 -> 140
    //   97: getstatic 14	com/pizza/work/library/JSONParser:is	Ljava/io/InputStream;
    //   100: invokevirtual 102	java/io/InputStream:close	()V
    //   103: aload_3
    //   104: astore_3
    //   105: aload_3
    //   106: invokevirtual 105	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   109: areturn
    //   110: astore 4
    //   112: aload 4
    //   114: invokevirtual 111	java/io/UnsupportedEncodingException:printStackTrace	()V
    //   117: goto -63 -> 54
    //   120: astore 4
    //   122: aload 4
    //   124: invokevirtual 112	org/apache/http/client/ClientProtocolException:printStackTrace	()V
    //   127: goto -73 -> 54
    //   130: astore 4
    //   132: aload 4
    //   134: invokevirtual 113	java/io/IOException:printStackTrace	()V
    //   137: goto -83 -> 54
    //   140: aload_3
    //   141: new 37	java/lang/StringBuilder
    //   144: dup
    //   145: aload 5
    //   147: invokestatic 119	java/lang/String:valueOf	(Ljava/lang/Object;)Ljava/lang/String;
    //   150: invokespecial 120	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   153: ldc 122
    //   155: invokevirtual 126	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   158: invokevirtual 105	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   161: invokevirtual 126	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   164: pop
    //   165: goto -80 -> 85
    //   168: astore 4
    //   170: aload_3
    //   171: astore_3
    //   172: ldc 140
    //   174: new 37	java/lang/StringBuilder
    //   177: dup
    //   178: ldc 142
    //   180: invokespecial 120	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   183: aload 4
    //   185: invokevirtual 143	java/lang/Exception:toString	()Ljava/lang/String;
    //   188: invokevirtual 126	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   191: invokevirtual 105	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   194: invokestatic 48	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;)I
    //   197: pop
    //   198: goto -93 -> 105
    //   201: astore 4
    //   203: goto -31 -> 172
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	206	0	this	JSONParser
    //   0	206	1	paramString	String
    //   0	206	2	paramList	List<NameValuePair>
    //   1	171	3	localStringBuilder	StringBuilder
    //   9	77	4	localObject1	Object
    //   110	3	4	localUnsupportedEncodingException	UnsupportedEncodingException
    //   120	3	4	localClientProtocolException	ClientProtocolException
    //   130	3	4	localIOException	IOException
    //   168	16	4	localException1	Exception
    //   201	1	4	localException2	Exception
    //   19	127	5	localObject2	Object
    // Exception table:
    //   from	to	target	type
    //   2	54	110	java/io/UnsupportedEncodingException
    //   2	54	120	org/apache/http/client/ClientProtocolException
    //   2	54	130	java/io/IOException
    //   85	103	168	java/lang/Exception
    //   140	165	168	java/lang/Exception
    //   54	85	201	java/lang/Exception
  }
}


/* Location:           C:\Users\PJ\Desktop\get-apk-source_win\classes_dex2jar.jar
 * Qualified Name:     com.pizza.work.library.JSONParser
 * JD-Core Version:    0.7.0.1
 */