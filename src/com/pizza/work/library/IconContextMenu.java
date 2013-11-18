package com.pizza.work.library;

import android.app.Activity;
import android.app.AlertDialog;
import android.app.AlertDialog.Builder;
import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.DialogInterface.OnCancelListener;
import android.content.DialogInterface.OnClickListener;
import android.content.DialogInterface.OnDismissListener;
import android.content.res.Resources;
import android.content.res.Resources.Theme;
import android.graphics.drawable.Drawable;
import android.util.TypedValue;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AbsListView.LayoutParams;
import android.widget.BaseAdapter;
import android.widget.TextView;
import java.util.ArrayList;

public class IconContextMenu
  implements DialogInterface.OnCancelListener, DialogInterface.OnDismissListener
{
  private static final int LIST_PREFERED_HEIGHT = 65;
  private IconContextMenuOnClickListener clickHandler = null;
  private int dialogId = 0;
  private IconMenuAdapter menuAdapter = null;
  private Activity parentActivity = null;
  
  public IconContextMenu(Activity paramActivity, int paramInt)
  {
    this.parentActivity = paramActivity;
    this.dialogId = paramInt;
    this.menuAdapter = new IconMenuAdapter(this.parentActivity);
  }
  
  private void cleanup()
  {
    this.parentActivity.dismissDialog(this.dialogId);
  }
  
  public void addItem(Resources paramResources, int paramInt1, int paramInt2, int paramInt3)
  {
    this.menuAdapter.addItem(new IconContextMenuItem(paramResources, paramInt1, paramInt2, paramInt3));
  }
  
  public void addItem(Resources paramResources, CharSequence paramCharSequence, int paramInt1, int paramInt2)
  {
    this.menuAdapter.addItem(new IconContextMenuItem(paramResources, paramCharSequence, paramInt1, paramInt2));
  }
  
  public Dialog createMenu(String paramString)
  {
    Object localObject = new AlertDialog.Builder(this.parentActivity);
    ((AlertDialog.Builder)localObject).setTitle(paramString);
    ((AlertDialog.Builder)localObject).setAdapter(this.menuAdapter, new DialogInterface.OnClickListener()
    {
      public void onClick(DialogInterface paramAnonymousDialogInterface, int paramAnonymousInt)
      {
        IconContextMenu.IconContextMenuItem localIconContextMenuItem = (IconContextMenu.IconContextMenuItem)IconContextMenu.this.menuAdapter.getItem(paramAnonymousInt);
        if (IconContextMenu.this.clickHandler != null) {
          IconContextMenu.this.clickHandler.onClick(localIconContextMenuItem.actionTag);
        }
      }
    });
    ((AlertDialog.Builder)localObject).setInverseBackgroundForced(true);
    localObject = ((AlertDialog.Builder)localObject).create();
    ((AlertDialog)localObject).setOnCancelListener(this);
    ((AlertDialog)localObject).setOnDismissListener(this);
    return localObject;
  }
  
  public void onCancel(DialogInterface paramDialogInterface)
  {
    cleanup();
  }
  
  public void onDismiss(DialogInterface paramDialogInterface) {}
  
  public void setOnClickListener(IconContextMenuOnClickListener paramIconContextMenuOnClickListener)
  {
    this.clickHandler = paramIconContextMenuOnClickListener;
  }
  
  protected class IconContextMenuItem
  {
    public final int actionTag;
    public final Drawable image;
    public final CharSequence text;
    
    public IconContextMenuItem(Resources paramResources, int paramInt1, int paramInt2, int paramInt3)
    {
      this.text = paramResources.getString(paramInt1);
      if (paramInt2 == -1) {
        this.image = null;
      } else {
        this.image = paramResources.getDrawable(paramInt2);
      }
      this.actionTag = paramInt3;
    }
    
    public IconContextMenuItem(Resources paramResources, CharSequence paramCharSequence, int paramInt1, int paramInt2)
    {
      this.text = paramCharSequence;
      if (paramInt1 == -1) {
        this.image = null;
      } else {
        this.image = paramResources.getDrawable(paramInt1);
      }
      this.actionTag = paramInt2;
    }
  }
  
  public static abstract interface IconContextMenuOnClickListener
  {
    public abstract void onClick(int paramInt);
  }
  
  protected class IconMenuAdapter
    extends BaseAdapter
  {
    private Context context = null;
    private ArrayList<IconContextMenu.IconContextMenuItem> mItems = new ArrayList();
    
    public IconMenuAdapter(Context paramContext)
    {
      this.context = paramContext;
    }
    
    private float toPixel(Resources paramResources, int paramInt)
    {
      return TypedValue.applyDimension(1, paramInt, paramResources.getDisplayMetrics());
    }
    
    public void addItem(IconContextMenu.IconContextMenuItem paramIconContextMenuItem)
    {
      this.mItems.add(paramIconContextMenuItem);
    }
    
    public int getCount()
    {
      return this.mItems.size();
    }
    
    public Object getItem(int paramInt)
    {
      return this.mItems.get(paramInt);
    }
    
    public long getItemId(int paramInt)
    {
      return ((IconContextMenu.IconContextMenuItem)getItem(paramInt)).actionTag;
    }
    
    public View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
    {
      IconContextMenu.IconContextMenuItem localIconContextMenuItem = (IconContextMenu.IconContextMenuItem)getItem(paramInt);
      Object localObject = IconContextMenu.this.parentActivity.getResources();
      if (paramView == null)
      {
        TextView localTextView = new TextView(this.context);
        localTextView.setLayoutParams(new AbsListView.LayoutParams(-1, -2));
        localTextView.setPadding((int)toPixel((Resources)localObject, 15), 0, (int)toPixel((Resources)localObject, 15), 0);
        localTextView.setGravity(16);
        Resources.Theme localTheme = this.context.getTheme();
        TypedValue localTypedValue = new TypedValue();
        if (localTheme.resolveAttribute(16842819, localTypedValue, true)) {
          localTextView.setTextAppearance(this.context, localTypedValue.resourceId);
        }
        localTextView.setMinHeight(65);
        localTextView.setCompoundDrawablePadding((int)toPixel((Resources)localObject, 14));
        paramView = localTextView;
      }
      localObject = (TextView)paramView;
      ((TextView)localObject).setTag(localIconContextMenuItem);
      ((TextView)localObject).setText(localIconContextMenuItem.text);
      ((TextView)localObject).setCompoundDrawablesWithIntrinsicBounds(localIconContextMenuItem.image, null, null, null);
      return localObject;
    }
  }
}


/* Location:           C:\Users\PJ\Desktop\get-apk-source_win\classes_dex2jar.jar
 * Qualified Name:     com.pizza.work.library.IconContextMenu
 * JD-Core Version:    0.7.0.1
 */