package android.support.v4.app;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import android.text.TextUtils;
import android.util.Log;
import java.util.ArrayList;

final class BackStackState
  implements Parcelable
{
  public static final Parcelable.Creator<BackStackState> CREATOR = new Parcelable.Creator()
  {
    public BackStackState createFromParcel(Parcel paramAnonymousParcel)
    {
      return new BackStackState(paramAnonymousParcel);
    }
    
    public BackStackState[] newArray(int paramAnonymousInt)
    {
      return new BackStackState[paramAnonymousInt];
    }
  };
  final int mBreadCrumbShortTitleRes;
  final CharSequence mBreadCrumbShortTitleText;
  final int mBreadCrumbTitleRes;
  final CharSequence mBreadCrumbTitleText;
  final int mIndex;
  final String mName;
  final int[] mOps;
  final int mTransition;
  final int mTransitionStyle;
  
  public BackStackState(Parcel paramParcel)
  {
    this.mOps = paramParcel.createIntArray();
    this.mTransition = paramParcel.readInt();
    this.mTransitionStyle = paramParcel.readInt();
    this.mName = paramParcel.readString();
    this.mIndex = paramParcel.readInt();
    this.mBreadCrumbTitleRes = paramParcel.readInt();
    this.mBreadCrumbTitleText = ((CharSequence)TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(paramParcel));
    this.mBreadCrumbShortTitleRes = paramParcel.readInt();
    this.mBreadCrumbShortTitleText = ((CharSequence)TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(paramParcel));
  }
  
  public BackStackState(FragmentManagerImpl paramFragmentManagerImpl, BackStackRecord paramBackStackRecord)
  {
    int i = 0;
    for (BackStackRecord.Op localOp = paramBackStackRecord.mHead;; localOp = localOp.next)
    {
      int j;
      if (localOp == null)
      {
        this.mOps = new int[i + 7 * paramBackStackRecord.mNumOp];
        if (paramBackStackRecord.mAddToBackStack)
        {
          localOp = paramBackStackRecord.mHead;
          i = 0;
          if (localOp == null)
          {
            this.mTransition = paramBackStackRecord.mTransition;
            this.mTransitionStyle = paramBackStackRecord.mTransitionStyle;
            this.mName = paramBackStackRecord.mName;
            this.mIndex = paramBackStackRecord.mIndex;
            this.mBreadCrumbTitleRes = paramBackStackRecord.mBreadCrumbTitleRes;
            this.mBreadCrumbTitleText = paramBackStackRecord.mBreadCrumbTitleText;
            this.mBreadCrumbShortTitleRes = paramBackStackRecord.mBreadCrumbShortTitleRes;
            this.mBreadCrumbShortTitleText = paramBackStackRecord.mBreadCrumbShortTitleText;
            return;
          }
          int[] arrayOfInt3 = this.mOps;
          int k = i + 1;
          arrayOfInt3[i] = localOp.cmd;
          int[] arrayOfInt7 = this.mOps;
          i = k + 1;
          int n;
          if (localOp.fragment == null) {
            n = -1;
          } else {
            n = localOp.fragment.mIndex;
          }
          arrayOfInt7[k] = n;
          int[] arrayOfInt4 = this.mOps;
          k = i + 1;
          arrayOfInt4[i] = localOp.enterAnim;
          arrayOfInt4 = this.mOps;
          i = k + 1;
          arrayOfInt4[k] = localOp.exitAnim;
          int[] arrayOfInt2 = this.mOps;
          int[] arrayOfInt5 = i + 1;
          arrayOfInt2[i] = localOp.popEnterAnim;
          int[] arrayOfInt1 = this.mOps;
          int m = arrayOfInt5 + 1;
          arrayOfInt1[arrayOfInt5] = localOp.popExitAnim;
          if (localOp.removed == null)
          {
            arrayOfInt1 = this.mOps;
            arrayOfInt5 = m + 1;
            arrayOfInt1[m] = 0;
          }
          else
          {
            j = localOp.removed.size();
            arrayOfInt7 = this.mOps;
            arrayOfInt5 = m + 1;
            arrayOfInt7[m] = j;
            m = 0;
          }
          int[] arrayOfInt8;
          for (arrayOfInt7 = arrayOfInt5;; arrayOfInt7 = arrayOfInt8)
          {
            if (m >= j)
            {
              arrayOfInt5 = arrayOfInt7;
              localOp = localOp.next;
              j = arrayOfInt5;
              break;
            }
            int[] arrayOfInt6 = this.mOps;
            arrayOfInt8 = arrayOfInt7 + 1;
            arrayOfInt6[arrayOfInt7] = ((Fragment)localOp.removed.get(m)).mIndex;
            m++;
          }
        }
        throw new IllegalStateException("Not on back stack");
      }
      if (localOp.removed != null) {
        j += localOp.removed.size();
      }
    }
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public BackStackRecord instantiate(FragmentManagerImpl paramFragmentManagerImpl)
  {
    BackStackRecord localBackStackRecord = new BackStackRecord(paramFragmentManagerImpl);
    int n = 0;
    if (n >= this.mOps.length)
    {
      localBackStackRecord.mTransition = this.mTransition;
      localBackStackRecord.mTransitionStyle = this.mTransitionStyle;
      localBackStackRecord.mName = this.mName;
      localBackStackRecord.mIndex = this.mIndex;
      localBackStackRecord.mAddToBackStack = true;
      localBackStackRecord.mBreadCrumbTitleRes = this.mBreadCrumbTitleRes;
      localBackStackRecord.mBreadCrumbTitleText = this.mBreadCrumbTitleText;
      localBackStackRecord.mBreadCrumbShortTitleRes = this.mBreadCrumbShortTitleRes;
      localBackStackRecord.mBreadCrumbShortTitleText = this.mBreadCrumbShortTitleText;
      localBackStackRecord.bumpBackStackNesting(1);
      return localBackStackRecord;
    }
    BackStackRecord.Op localOp = new BackStackRecord.Op();
    int[] arrayOfInt1 = this.mOps;
    int k = n + 1;
    localOp.cmd = arrayOfInt1[n];
    if (FragmentManagerImpl.DEBUG) {
      Log.v("FragmentManager", "BSE " + localBackStackRecord + " set base fragment #" + this.mOps[k]);
    }
    int[] arrayOfInt4 = this.mOps;
    int i = k + 1;
    k = arrayOfInt4[k];
    if (k < 0) {
      localOp.fragment = null;
    } else {
      localOp.fragment = ((Fragment)paramFragmentManagerImpl.mActive.get(k));
    }
    arrayOfInt4 = this.mOps;
    k = i + 1;
    localOp.enterAnim = arrayOfInt4[i];
    int[] arrayOfInt2 = this.mOps;
    int i1 = k + 1;
    localOp.exitAnim = arrayOfInt2[k];
    int[] arrayOfInt3 = this.mOps;
    int j = i1 + 1;
    localOp.popEnterAnim = arrayOfInt3[i1];
    int[] arrayOfInt5 = this.mOps;
    int m = j + 1;
    localOp.popExitAnim = arrayOfInt5[j];
    arrayOfInt5 = this.mOps;
    j = m + 1;
    int i2 = arrayOfInt5[m];
    if (i2 > 0)
    {
      localOp.removed = new ArrayList(i2);
      m = 0;
    }
    for (;;)
    {
      if (m >= i2)
      {
        i2 = j;
        localBackStackRecord.addOp(localOp);
        break;
      }
      if (FragmentManagerImpl.DEBUG) {
        Log.v("FragmentManager", "BSE " + localBackStackRecord + " set remove fragment #" + this.mOps[j]);
      }
      ArrayList localArrayList = paramFragmentManagerImpl.mActive;
      int[] arrayOfInt6 = this.mOps;
      Fragment localFragment2 = j + 1;
      Fragment localFragment1 = (Fragment)localArrayList.get(arrayOfInt6[j]);
      localOp.removed.add(localFragment1);
      m++;
      localFragment1 = localFragment2;
    }
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeIntArray(this.mOps);
    paramParcel.writeInt(this.mTransition);
    paramParcel.writeInt(this.mTransitionStyle);
    paramParcel.writeString(this.mName);
    paramParcel.writeInt(this.mIndex);
    paramParcel.writeInt(this.mBreadCrumbTitleRes);
    TextUtils.writeToParcel(this.mBreadCrumbTitleText, paramParcel, 0);
    paramParcel.writeInt(this.mBreadCrumbShortTitleRes);
    TextUtils.writeToParcel(this.mBreadCrumbShortTitleText, paramParcel, 0);
  }
}


/* Location:           C:\Users\PJ\Desktop\get-apk-source_win\classes_dex2jar.jar
 * Qualified Name:     android.support.v4.app.BackStackState
 * JD-Core Version:    0.7.0.1
 */