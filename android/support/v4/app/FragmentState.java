package android.support.v4.app;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import android.util.Log;

final class FragmentState
  implements Parcelable
{
  public static final Parcelable.Creator<FragmentState> CREATOR = new Parcelable.Creator()
  {
    public FragmentState createFromParcel(Parcel paramAnonymousParcel)
    {
      return new FragmentState(paramAnonymousParcel);
    }
    
    public FragmentState[] newArray(int paramAnonymousInt)
    {
      return new FragmentState[paramAnonymousInt];
    }
  };
  final Bundle mArguments;
  final String mClassName;
  final int mContainerId;
  final boolean mDetached;
  final int mFragmentId;
  final boolean mFromLayout;
  final int mIndex;
  Fragment mInstance;
  final boolean mRetainInstance;
  Bundle mSavedFragmentState;
  final String mTag;
  
  public FragmentState(Parcel paramParcel)
  {
    this.mClassName = paramParcel.readString();
    this.mIndex = paramParcel.readInt();
    boolean bool2;
    if (paramParcel.readInt() == 0) {
      bool2 = false;
    } else {
      bool2 = bool1;
    }
    this.mFromLayout = bool2;
    this.mFragmentId = paramParcel.readInt();
    this.mContainerId = paramParcel.readInt();
    this.mTag = paramParcel.readString();
    if (paramParcel.readInt() == 0) {
      bool2 = false;
    } else {
      bool2 = bool1;
    }
    this.mRetainInstance = bool2;
    if (paramParcel.readInt() == 0) {
      bool1 = false;
    }
    this.mDetached = bool1;
    this.mArguments = paramParcel.readBundle();
    this.mSavedFragmentState = paramParcel.readBundle();
  }
  
  public FragmentState(Fragment paramFragment)
  {
    this.mClassName = paramFragment.getClass().getName();
    this.mIndex = paramFragment.mIndex;
    this.mFromLayout = paramFragment.mFromLayout;
    this.mFragmentId = paramFragment.mFragmentId;
    this.mContainerId = paramFragment.mContainerId;
    this.mTag = paramFragment.mTag;
    this.mRetainInstance = paramFragment.mRetainInstance;
    this.mDetached = paramFragment.mDetached;
    this.mArguments = paramFragment.mArguments;
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public Fragment instantiate(FragmentActivity paramFragmentActivity)
  {
    Fragment localFragment;
    if (this.mInstance == null)
    {
      if (this.mArguments != null) {
        this.mArguments.setClassLoader(paramFragmentActivity.getClassLoader());
      }
      this.mInstance = Fragment.instantiate(paramFragmentActivity, this.mClassName, this.mArguments);
      if (this.mSavedFragmentState != null)
      {
        this.mSavedFragmentState.setClassLoader(paramFragmentActivity.getClassLoader());
        this.mInstance.mSavedFragmentState = this.mSavedFragmentState;
      }
      this.mInstance.setIndex(this.mIndex);
      this.mInstance.mFromLayout = this.mFromLayout;
      this.mInstance.mRestored = true;
      this.mInstance.mFragmentId = this.mFragmentId;
      this.mInstance.mContainerId = this.mContainerId;
      this.mInstance.mTag = this.mTag;
      this.mInstance.mRetainInstance = this.mRetainInstance;
      this.mInstance.mDetached = this.mDetached;
      this.mInstance.mFragmentManager = paramFragmentActivity.mFragments;
      if (FragmentManagerImpl.DEBUG) {
        Log.v("FragmentManager", "Instantiated fragment " + this.mInstance);
      }
      localFragment = this.mInstance;
    }
    else
    {
      localFragment = this.mInstance;
    }
    return localFragment;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    int i = 1;
    paramParcel.writeString(this.mClassName);
    paramParcel.writeInt(this.mIndex);
    int j;
    if (!this.mFromLayout) {
      j = 0;
    } else {
      j = i;
    }
    paramParcel.writeInt(j);
    paramParcel.writeInt(this.mFragmentId);
    paramParcel.writeInt(this.mContainerId);
    paramParcel.writeString(this.mTag);
    if (!this.mRetainInstance) {
      j = 0;
    } else {
      j = i;
    }
    paramParcel.writeInt(j);
    if (!this.mDetached) {
      i = 0;
    }
    paramParcel.writeInt(i);
    paramParcel.writeBundle(this.mArguments);
    paramParcel.writeBundle(this.mSavedFragmentState);
  }
}


/* Location:           C:\Users\PJ\Desktop\get-apk-source_win\classes_dex2jar.jar
 * Qualified Name:     android.support.v4.app.FragmentState
 * JD-Core Version:    0.7.0.1
 */