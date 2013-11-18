package android.support.v4.view;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.database.DataSetObserver;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import android.os.SystemClock;
import android.support.v4.os.ParcelableCompat;
import android.support.v4.os.ParcelableCompatCreatorCallbacks;
import android.support.v4.view.accessibility.AccessibilityNodeInfoCompat;
import android.support.v4.widget.EdgeEffectCompat;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.util.Log;
import android.view.FocusFinder;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.SoundEffectConstants;
import android.view.VelocityTracker;
import android.view.View;
import android.view.View.BaseSavedState;
import android.view.View.MeasureSpec;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.view.accessibility.AccessibilityEvent;
import android.view.animation.Interpolator;
import android.widget.Scroller;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;

public class ViewPager
  extends ViewGroup
{
  private static final int CLOSE_ENOUGH = 2;
  private static final Comparator<ItemInfo> COMPARATOR = new Comparator()
  {
    public int compare(ViewPager.ItemInfo paramAnonymousItemInfo1, ViewPager.ItemInfo paramAnonymousItemInfo2)
    {
      return paramAnonymousItemInfo1.position - paramAnonymousItemInfo2.position;
    }
  };
  private static final boolean DEBUG = false;
  private static final int DEFAULT_GUTTER_SIZE = 16;
  private static final int DEFAULT_OFFSCREEN_PAGES = 1;
  private static final int INVALID_POINTER = -1;
  private static final int[] LAYOUT_ATTRS;
  private static final int MAX_SETTLE_DURATION = 600;
  private static final int MIN_DISTANCE_FOR_FLING = 25;
  public static final int SCROLL_STATE_DRAGGING = 1;
  public static final int SCROLL_STATE_IDLE = 0;
  public static final int SCROLL_STATE_SETTLING = 2;
  private static final String TAG = "ViewPager";
  private static final boolean USE_CACHE;
  private static final Interpolator sInterpolator = new Interpolator()
  {
    public float getInterpolation(float paramAnonymousFloat)
    {
      float f = paramAnonymousFloat - 1.0F;
      return 1.0F + f * (f * (f * (f * f)));
    }
  };
  private int mActivePointerId = -1;
  private PagerAdapter mAdapter;
  private OnAdapterChangeListener mAdapterChangeListener;
  private int mBottomPageBounds;
  private boolean mCalledSuper;
  private int mChildHeightMeasureSpec;
  private int mChildWidthMeasureSpec;
  private int mCloseEnough;
  private int mCurItem;
  private int mDecorChildCount;
  private int mDefaultGutterSize;
  private long mFakeDragBeginTime;
  private boolean mFakeDragging;
  private boolean mFirstLayout = true;
  private float mFirstOffset = -3.402824E+038F;
  private int mFlingDistance;
  private int mGutterSize;
  private boolean mIgnoreGutter;
  private boolean mInLayout;
  private float mInitialMotionX;
  private OnPageChangeListener mInternalPageChangeListener;
  private boolean mIsBeingDragged;
  private boolean mIsUnableToDrag;
  private final ArrayList<ItemInfo> mItems = new ArrayList();
  private float mLastMotionX;
  private float mLastMotionY;
  private float mLastOffset = 3.4028235E+38F;
  private EdgeEffectCompat mLeftEdge;
  private Drawable mMarginDrawable;
  private int mMaximumVelocity;
  private int mMinimumVelocity;
  private boolean mNeedCalculatePageOffsets = false;
  private PagerObserver mObserver;
  private int mOffscreenPageLimit = 1;
  private OnPageChangeListener mOnPageChangeListener;
  private int mPageMargin;
  private boolean mPopulatePending;
  private Parcelable mRestoredAdapterState = null;
  private ClassLoader mRestoredClassLoader = null;
  private int mRestoredCurItem = -1;
  private EdgeEffectCompat mRightEdge;
  private int mScrollState = 0;
  private Scroller mScroller;
  private boolean mScrollingCacheEnabled;
  private final ItemInfo mTempItem = new ItemInfo();
  private final Rect mTempRect = new Rect();
  private int mTopPageBounds;
  private int mTouchSlop;
  private VelocityTracker mVelocityTracker;
  
  static
  {
    int[] arrayOfInt = new int[1];
    arrayOfInt[0] = 16842931;
    LAYOUT_ATTRS = arrayOfInt;
  }
  
  public ViewPager(Context paramContext)
  {
    super(paramContext);
    initViewPager();
  }
  
  public ViewPager(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    initViewPager();
  }
  
  private void calculatePageOffsets(ItemInfo paramItemInfo1, int paramInt, ItemInfo paramItemInfo2)
  {
    int i = this.mAdapter.getCount();
    int j = getWidth();
    float f1;
    if (j <= 0) {
      f1 = 0.0F;
    } else {
      f1 = this.mPageMargin / f1;
    }
    if (paramItemInfo2 != null)
    {
      int m = paramItemInfo2.position;
      float f4;
      int i2;
      ItemInfo localItemInfo1;
      if (m >= paramItemInfo1.position)
      {
        if (m > paramItemInfo1.position)
        {
          k = -1 + this.mItems.size();
          f4 = paramItemInfo2.offset;
          i2 = m - 1;
          if ((i2 >= paramItemInfo1.position) && (k >= 0)) {
            for (localItemInfo1 = (ItemInfo)this.mItems.get(k);; localItemInfo1 = (ItemInfo)this.mItems.get(k))
            {
              if ((i2 >= localItemInfo1.position) || (k <= 0)) {
                for (;;)
                {
                  if (i2 <= localItemInfo1.position)
                  {
                    f4 -= f1 + localItemInfo1.widthFactor;
                    localItemInfo1.offset = f4;
                    i2--;
                    break;
                  }
                  f4 -= f1 + this.mAdapter.getPageWidth(i2);
                  i2--;
                }
              }
              k--;
            }
          }
        }
      }
      else
      {
        k = 0;
        f4 = f1 + (paramItemInfo2.offset + paramItemInfo2.widthFactor);
        i2 = localItemInfo1 + 1;
        if ((i2 <= paramItemInfo1.position) && (k < this.mItems.size())) {
          break label609;
        }
      }
    }
    int k = this.mItems.size();
    float f2 = paramItemInfo1.offset;
    int i1 = -1 + paramItemInfo1.position;
    float f6;
    if (paramItemInfo1.position != 0) {
      f6 = -3.402824E+038F;
    } else {
      f6 = paramItemInfo1.offset;
    }
    this.mFirstOffset = f6;
    if (paramItemInfo1.position != i - 1) {
      f6 = 3.4028235E+38F;
    } else {
      f6 = paramItemInfo1.offset + paramItemInfo1.widthFactor - 1.0F;
    }
    this.mLastOffset = f6;
    int i5 = paramInt - 1;
    float f5;
    PagerAdapter localPagerAdapter2;
    int n;
    if (i5 < 0)
    {
      f5 = f1 + (paramItemInfo1.offset + paramItemInfo1.widthFactor);
      int i4 = 1 + paramItemInfo1.position;
      int i3 = paramInt + 1;
      if (i3 >= k)
      {
        this.mNeedCalculatePageOffsets = false;
        return;
      }
      ItemInfo localItemInfo3 = (ItemInfo)this.mItems.get(i3);
      for (;;)
      {
        if (i4 >= localItemInfo3.position)
        {
          if (localItemInfo3.position == i - 1) {
            this.mLastOffset = (f5 + localItemInfo3.widthFactor - 1.0F);
          }
          localItemInfo3.offset = f5;
          f5 += f1 + localItemInfo3.widthFactor;
          i3++;
          i4++;
          break;
        }
        localPagerAdapter2 = this.mAdapter;
        n = i4 + 1;
        f5 += f1 + localPagerAdapter2.getPageWidth(i4);
        i4 = n;
      }
    }
    ItemInfo localItemInfo4 = (ItemInfo)this.mItems.get(localPagerAdapter2);
    PagerAdapter localPagerAdapter1;
    for (;;)
    {
      float f3;
      if (f5 <= localItemInfo4.position)
      {
        n -= f1 + localItemInfo4.widthFactor;
        localItemInfo4.offset = f3;
        if (localItemInfo4.position == 0) {
          this.mFirstOffset = f3;
        }
        localPagerAdapter2--;
        f5--;
        break;
      }
      localPagerAdapter1 = this.mAdapter;
      float f7 = f5 - 1;
      f3 -= f1 + localPagerAdapter1.getPageWidth(f5);
      f5 = f7;
    }
    label609:
    for (ItemInfo localItemInfo2 = (ItemInfo)this.mItems.get(k);; localItemInfo2 = (ItemInfo)this.mItems.get(k))
    {
      if ((localPagerAdapter1 <= localItemInfo2.position) || (k >= -1 + this.mItems.size())) {
        for (;;)
        {
          if (localPagerAdapter1 >= localItemInfo2.position)
          {
            localItemInfo2.offset = f5;
            f5 += f1 + localItemInfo2.widthFactor;
            localPagerAdapter1++;
            break;
          }
          f5 += f1 + this.mAdapter.getPageWidth(localPagerAdapter1);
          localPagerAdapter1++;
        }
      }
      k++;
    }
  }
  
  private void completeScroll()
  {
    int i;
    if (this.mScrollState != 2) {
      i = 0;
    } else {
      i = 1;
    }
    if (i != 0)
    {
      setScrollingCacheEnabled(false);
      this.mScroller.abortAnimation();
      int k = getScrollX();
      int n = getScrollY();
      j = this.mScroller.getCurrX();
      int m = this.mScroller.getCurrY();
      if ((k != j) || (n != m)) {
        scrollTo(j, m);
      }
      setScrollState(0);
    }
    this.mPopulatePending = false;
    for (int j = 0;; j++)
    {
      if (j >= this.mItems.size())
      {
        if (i != 0) {
          populate();
        }
        return;
      }
      ItemInfo localItemInfo = (ItemInfo)this.mItems.get(j);
      if (localItemInfo.scrolling)
      {
        i = 1;
        localItemInfo.scrolling = false;
      }
    }
  }
  
  private int determineTargetPage(int paramInt1, float paramFloat, int paramInt2, int paramInt3)
  {
    int i;
    if ((Math.abs(paramInt3) <= this.mFlingDistance) || (Math.abs(paramInt2) <= this.mMinimumVelocity)) {
      i = (int)(0.5F + (paramFloat + paramInt1));
    } else if (paramInt2 <= 0) {
      i = paramInt1 + 1;
    } else {
      i = paramInt1;
    }
    if (this.mItems.size() > 0)
    {
      ItemInfo localItemInfo1 = (ItemInfo)this.mItems.get(0);
      ItemInfo localItemInfo2 = (ItemInfo)this.mItems.get(-1 + this.mItems.size());
      i = Math.max(localItemInfo1.position, Math.min(i, localItemInfo2.position));
    }
    return i;
  }
  
  private void endDrag()
  {
    this.mIsBeingDragged = false;
    this.mIsUnableToDrag = false;
    if (this.mVelocityTracker != null)
    {
      this.mVelocityTracker.recycle();
      this.mVelocityTracker = null;
    }
  }
  
  private Rect getChildRectInPagerCoordinates(Rect paramRect, View paramView)
  {
    if (paramRect == null) {
      paramRect = new Rect();
    }
    if (paramView != null)
    {
      paramRect.left = paramView.getLeft();
      paramRect.right = paramView.getRight();
      paramRect.top = paramView.getTop();
      paramRect.bottom = paramView.getBottom();
      for (Object localObject = paramView.getParent(); ((localObject instanceof ViewGroup)) && (localObject != this); localObject = ((ViewGroup)localObject).getParent())
      {
        localObject = (ViewGroup)localObject;
        paramRect.left += ((ViewGroup)localObject).getLeft();
        paramRect.right += ((ViewGroup)localObject).getRight();
        paramRect.top += ((ViewGroup)localObject).getTop();
        paramRect.bottom += ((ViewGroup)localObject).getBottom();
      }
    }
    paramRect.set(0, 0, 0, 0);
    return paramRect;
  }
  
  private ItemInfo infoForCurrentScrollPosition()
  {
    float f1 = 0.0F;
    int i = getWidth();
    float f2;
    if (i <= 0) {
      f2 = 0.0F;
    } else {
      f2 = getScrollX() / i;
    }
    if (i > 0) {
      f1 = this.mPageMargin / i;
    }
    int k = -1;
    float f4 = 0.0F;
    float f5 = 0.0F;
    int j = 1;
    Object localObject = null;
    i = 0;
    while (i < this.mItems.size())
    {
      ItemInfo localItemInfo = (ItemInfo)this.mItems.get(i);
      if ((j == 0) && (localItemInfo.position != k + 1))
      {
        localItemInfo = this.mTempItem;
        localItemInfo.offset = (f1 + (f4 + f5));
        localItemInfo.position = (k + 1);
        localItemInfo.widthFactor = this.mAdapter.getPageWidth(localItemInfo.position);
        i--;
      }
      f4 = localItemInfo.offset;
      float f3 = f1 + (f4 + localItemInfo.widthFactor);
      if ((j != 0) || (f2 >= f4)) {
        if ((f2 >= f3) && (i != -1 + this.mItems.size()))
        {
          j = 0;
          int m = localItemInfo.position;
          f4 = f4;
          f5 = localItemInfo.widthFactor;
          localObject = localItemInfo;
          i++;
        }
        else
        {
          localObject = localItemInfo;
        }
      }
    }
    return localObject;
  }
  
  private boolean isGutterDrag(float paramFloat1, float paramFloat2)
  {
    boolean bool;
    if (((paramFloat1 >= this.mGutterSize) || (paramFloat2 <= 0.0F)) && ((paramFloat1 <= getWidth() - this.mGutterSize) || (paramFloat2 >= 0.0F))) {
      bool = false;
    } else {
      bool = true;
    }
    return bool;
  }
  
  private void onSecondaryPointerUp(MotionEvent paramMotionEvent)
  {
    int i = MotionEventCompat.getActionIndex(paramMotionEvent);
    if (MotionEventCompat.getPointerId(paramMotionEvent, i) == this.mActivePointerId)
    {
      if (i != 0) {
        i = 0;
      } else {
        i = 1;
      }
      this.mLastMotionX = MotionEventCompat.getX(paramMotionEvent, i);
      this.mActivePointerId = MotionEventCompat.getPointerId(paramMotionEvent, i);
      if (this.mVelocityTracker != null) {
        this.mVelocityTracker.clear();
      }
    }
  }
  
  private boolean pageScrolled(int paramInt)
  {
    int i = 0;
    if (this.mItems.size() != 0)
    {
      ItemInfo localItemInfo = infoForCurrentScrollPosition();
      int k = getWidth();
      int j = k + this.mPageMargin;
      float f = this.mPageMargin / k;
      i = localItemInfo.position;
      f = (paramInt / k - localItemInfo.offset) / (f + localItemInfo.widthFactor);
      j = (int)(f * j);
      this.mCalledSuper = false;
      onPageScrolled(i, f, j);
      if (this.mCalledSuper) {
        i = 1;
      } else {
        throw new IllegalStateException("onPageScrolled did not call superclass implementation");
      }
    }
    else
    {
      this.mCalledSuper = false;
      onPageScrolled(0, 0.0F, 0);
      if (!this.mCalledSuper) {
        break label137;
      }
    }
    return i;
    label137:
    throw new IllegalStateException("onPageScrolled did not call superclass implementation");
  }
  
  private boolean performDrag(float paramFloat)
  {
    int j = 0;
    float f1 = this.mLastMotionX - paramFloat;
    this.mLastMotionX = paramFloat;
    float f5 = f1 + getScrollX();
    int i = getWidth();
    float f4 = i * this.mFirstOffset;
    float f2 = i * this.mLastOffset;
    int k = 1;
    int m = 1;
    ItemInfo localItemInfo2 = (ItemInfo)this.mItems.get(0);
    ItemInfo localItemInfo1 = (ItemInfo)this.mItems.get(-1 + this.mItems.size());
    if (localItemInfo2.position != 0)
    {
      k = 0;
      f4 = localItemInfo2.offset * i;
    }
    if (localItemInfo1.position != -1 + this.mAdapter.getCount())
    {
      m = 0;
      f2 = localItemInfo1.offset * i;
    }
    boolean bool;
    if (f5 >= f4)
    {
      if (f5 > f2)
      {
        if (m != 0)
        {
          float f3 = f5 - f2;
          bool = this.mRightEdge.onPull(Math.abs(f3) / i);
        }
        f5 = f2;
      }
    }
    else
    {
      if (k != 0)
      {
        f2 = f4 - f5;
        bool = this.mLeftEdge.onPull(Math.abs(f2) / i);
      }
      f5 = f4;
    }
    this.mLastMotionX += f5 - (int)f5;
    scrollTo((int)f5, getScrollY());
    pageScrolled((int)f5);
    return bool;
  }
  
  private void recomputeScrollPosition(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    int i;
    if ((paramInt2 <= 0) || (this.mItems.isEmpty()))
    {
      ItemInfo localItemInfo1 = infoForPosition(this.mCurItem);
      float f;
      if (localItemInfo1 == null) {
        f = 0.0F;
      } else {
        f = Math.min(f.offset, this.mLastOffset);
      }
      i = (int)(f * paramInt1);
      if (i != getScrollX())
      {
        completeScroll();
        scrollTo(i, getScrollY());
      }
    }
    else
    {
      int j = paramInt1 + paramInt3;
      i = paramInt2 + paramInt4;
      i = (int)(getScrollX() / i * j);
      scrollTo(i, getScrollY());
      if (!this.mScroller.isFinished())
      {
        int k = this.mScroller.getDuration() - this.mScroller.timePassed();
        ItemInfo localItemInfo2 = infoForPosition(this.mCurItem);
        this.mScroller.startScroll(i, 0, (int)(localItemInfo2.offset * paramInt1), 0, k);
      }
    }
  }
  
  private void removeNonDecorViews()
  {
    for (int i = 0;; i++)
    {
      if (i >= getChildCount()) {
        return;
      }
      if (!((LayoutParams)getChildAt(i).getLayoutParams()).isDecor)
      {
        removeViewAt(i);
        i--;
      }
    }
  }
  
  private void setScrollState(int paramInt)
  {
    if (this.mScrollState != paramInt)
    {
      this.mScrollState = paramInt;
      if (this.mOnPageChangeListener != null) {
        this.mOnPageChangeListener.onPageScrollStateChanged(paramInt);
      }
    }
  }
  
  private void setScrollingCacheEnabled(boolean paramBoolean)
  {
    if (this.mScrollingCacheEnabled != paramBoolean) {
      this.mScrollingCacheEnabled = paramBoolean;
    }
  }
  
  public void addFocusables(ArrayList<View> paramArrayList, int paramInt1, int paramInt2)
  {
    int k = paramArrayList.size();
    int i = getDescendantFocusability();
    if (i != 393216) {}
    for (int j = 0;; j++)
    {
      if (j >= getChildCount())
      {
        if (((i != 262144) || (k == paramArrayList.size())) && (isFocusable()) && (((paramInt2 & 0x1) != 1) || (!isInTouchMode()) || (isFocusableInTouchMode())) && (paramArrayList != null)) {
          paramArrayList.add(this);
        }
        return;
      }
      View localView = getChildAt(j);
      if (localView.getVisibility() == 0)
      {
        ItemInfo localItemInfo = infoForChild(localView);
        if ((localItemInfo != null) && (localItemInfo.position == this.mCurItem)) {
          localView.addFocusables(paramArrayList, paramInt1, paramInt2);
        }
      }
    }
  }
  
  ItemInfo addNewItem(int paramInt1, int paramInt2)
  {
    ItemInfo localItemInfo = new ItemInfo();
    localItemInfo.position = paramInt1;
    localItemInfo.object = this.mAdapter.instantiateItem(this, paramInt1);
    localItemInfo.widthFactor = this.mAdapter.getPageWidth(paramInt1);
    if ((paramInt2 >= 0) && (paramInt2 < this.mItems.size())) {
      this.mItems.add(paramInt2, localItemInfo);
    } else {
      this.mItems.add(localItemInfo);
    }
    return localItemInfo;
  }
  
  public void addTouchables(ArrayList<View> paramArrayList)
  {
    for (int i = 0;; i++)
    {
      if (i >= getChildCount()) {
        return;
      }
      View localView = getChildAt(i);
      if (localView.getVisibility() == 0)
      {
        ItemInfo localItemInfo = infoForChild(localView);
        if ((localItemInfo != null) && (localItemInfo.position == this.mCurItem)) {
          localView.addTouchables(paramArrayList);
        }
      }
    }
  }
  
  public void addView(View paramView, int paramInt, ViewGroup.LayoutParams paramLayoutParams)
  {
    if (!checkLayoutParams(paramLayoutParams)) {
      paramLayoutParams = generateLayoutParams(paramLayoutParams);
    }
    LayoutParams localLayoutParams = (LayoutParams)paramLayoutParams;
    localLayoutParams.isDecor |= paramView instanceof Decor;
    if (!this.mInLayout)
    {
      super.addView(paramView, paramInt, paramLayoutParams);
    }
    else
    {
      if ((localLayoutParams != null) && (localLayoutParams.isDecor)) {
        break label80;
      }
      localLayoutParams.needsMeasure = true;
      addViewInLayout(paramView, paramInt, paramLayoutParams);
    }
    return;
    label80:
    throw new IllegalStateException("Cannot add pager decor view during layout");
  }
  
  public boolean arrowScroll(int paramInt)
  {
    View localView2 = findFocus();
    if (localView2 == this) {
      localView2 = null;
    }
    boolean bool1 = false;
    View localView1 = FocusFinder.getInstance().findNextFocus(this, localView2, paramInt);
    boolean bool3;
    if ((localView1 == null) || (localView1 == localView2))
    {
      if ((paramInt != 17) && (paramInt != 1))
      {
        if ((paramInt == 66) || (paramInt == 2)) {
          bool1 = pageRight();
        }
      }
      else {
        bool1 = pageLeft();
      }
    }
    else
    {
      int k;
      if (paramInt != 17)
      {
        if (paramInt == 66)
        {
          int i = getChildRectInPagerCoordinates(this.mTempRect, localView1).left;
          k = getChildRectInPagerCoordinates(this.mTempRect, localView2).left;
          boolean bool2;
          if ((localView2 == null) || (i > k)) {
            bool2 = localView1.requestFocus();
          } else {
            bool2 = pageRight();
          }
        }
      }
      else
      {
        int j = getChildRectInPagerCoordinates(this.mTempRect, localView1).left;
        k = getChildRectInPagerCoordinates(this.mTempRect, localView2).left;
        if ((localView2 == null) || (j < k)) {
          bool3 = localView1.requestFocus();
        } else {
          bool3 = pageLeft();
        }
      }
    }
    if (bool3) {
      playSoundEffect(SoundEffectConstants.getContantForFocusDirection(paramInt));
    }
    return bool3;
  }
  
  public boolean beginFakeDrag()
  {
    int i = 0;
    boolean bool;
    if (!this.mIsBeingDragged)
    {
      this.mFakeDragging = true;
      setScrollState(1);
      this.mLastMotionX = 0.0F;
      this.mInitialMotionX = 0.0F;
      if (this.mVelocityTracker != null) {
        this.mVelocityTracker.clear();
      } else {
        this.mVelocityTracker = VelocityTracker.obtain();
      }
      long l = SystemClock.uptimeMillis();
      MotionEvent localMotionEvent = MotionEvent.obtain(l, l, 0, 0.0F, 0.0F, 0);
      this.mVelocityTracker.addMovement(localMotionEvent);
      localMotionEvent.recycle();
      this.mFakeDragBeginTime = l;
      bool = true;
    }
    return bool;
  }
  
  protected boolean canScroll(View paramView, boolean paramBoolean, int paramInt1, int paramInt2, int paramInt3)
  {
    ViewGroup localViewGroup;
    int k;
    if ((paramView instanceof ViewGroup))
    {
      localViewGroup = (ViewGroup)paramView;
      i = paramView.getScrollX();
      k = paramView.getScrollY();
    }
    for (int j = -1 + localViewGroup.getChildCount();; j--)
    {
      if (j < 0)
      {
        if ((!paramBoolean) || (!ViewCompat.canScrollHorizontally(paramView, -paramInt1)))
        {
          i = 0;
          break label168;
        }
        i = 1;
        break label168;
      }
      View localView = localViewGroup.getChildAt(j);
      if ((paramInt2 + i >= localView.getLeft()) && (paramInt2 + i < localView.getRight()) && (paramInt3 + k >= localView.getTop()) && (paramInt3 + k < localView.getBottom()) && (canScroll(localView, true, paramInt1, paramInt2 + i - localView.getLeft(), paramInt3 + k - localView.getTop()))) {
        break;
      }
    }
    int i = 1;
    label168:
    return i;
  }
  
  protected boolean checkLayoutParams(ViewGroup.LayoutParams paramLayoutParams)
  {
    boolean bool;
    if ((!(paramLayoutParams instanceof LayoutParams)) || (!super.checkLayoutParams(paramLayoutParams))) {
      bool = false;
    } else {
      bool = true;
    }
    return bool;
  }
  
  public void computeScroll()
  {
    if ((this.mScroller.isFinished()) || (!this.mScroller.computeScrollOffset()))
    {
      completeScroll();
    }
    else
    {
      int k = getScrollX();
      int m = getScrollY();
      int j = this.mScroller.getCurrX();
      int i = this.mScroller.getCurrY();
      if ((k != j) || (m != i))
      {
        scrollTo(j, i);
        if (!pageScrolled(j))
        {
          this.mScroller.abortAnimation();
          scrollTo(0, i);
        }
      }
      ViewCompat.postInvalidateOnAnimation(this);
    }
  }
  
  void dataSetChanged()
  {
    int k;
    if ((this.mItems.size() >= 1 + 2 * this.mOffscreenPageLimit) || (this.mItems.size() >= this.mAdapter.getCount())) {
      k = 0;
    } else {
      k = 1;
    }
    int i = this.mCurItem;
    int m = 0;
    for (int n = 0;; n++)
    {
      if (n >= this.mItems.size())
      {
        if (m != 0) {
          this.mAdapter.finishUpdate(this);
        }
        Collections.sort(this.mItems, COMPARATOR);
        if (k != 0) {
          k = getChildCount();
        }
        for (j = 0;; j++)
        {
          if (j >= k)
          {
            setCurrentItemInternal(i, false, true);
            requestLayout();
            return;
          }
          localObject = (LayoutParams)getChildAt(j).getLayoutParams();
          if (!((LayoutParams)localObject).isDecor) {
            ((LayoutParams)localObject).widthFactor = 0.0F;
          }
        }
      }
      Object localObject = (ItemInfo)this.mItems.get(n);
      int j = this.mAdapter.getItemPosition(((ItemInfo)localObject).object);
      if (j != -1) {
        if (j != -2)
        {
          if (((ItemInfo)localObject).position != j)
          {
            if (((ItemInfo)localObject).position == this.mCurItem) {
              i = j;
            }
            ((ItemInfo)localObject).position = j;
            k = 1;
          }
        }
        else
        {
          this.mItems.remove(n);
          n--;
          if (m == 0)
          {
            this.mAdapter.startUpdate(this);
            m = 1;
          }
          this.mAdapter.destroyItem(this, ((ItemInfo)localObject).position, ((ItemInfo)localObject).object);
          k = 1;
          if (this.mCurItem == ((ItemInfo)localObject).position)
          {
            i = Math.max(0, Math.min(this.mCurItem, -1 + this.mAdapter.getCount()));
            k = 1;
          }
        }
      }
    }
  }
  
  public boolean dispatchKeyEvent(KeyEvent paramKeyEvent)
  {
    boolean bool;
    if ((!super.dispatchKeyEvent(paramKeyEvent)) && (!executeKeyEvent(paramKeyEvent))) {
      bool = false;
    } else {
      bool = true;
    }
    return bool;
  }
  
  public boolean dispatchPopulateAccessibilityEvent(AccessibilityEvent paramAccessibilityEvent)
  {
    int k = getChildCount();
    for (int j = 0;; j++)
    {
      if (j >= k)
      {
        int i = 0;
        return ???;
      }
      View localView = getChildAt(j);
      if (localView.getVisibility() == 0)
      {
        ItemInfo localItemInfo = infoForChild(localView);
        if ((localItemInfo != null) && (localItemInfo.position == this.mCurItem) && (localView.dispatchPopulateAccessibilityEvent(paramAccessibilityEvent))) {
          break;
        }
      }
    }
    boolean bool = true;
    return bool;
  }
  
  float distanceInfluenceForSnapDuration(float paramFloat)
  {
    return (float)Math.sin((float)(0.47123891676382D * (paramFloat - 0.5F)));
  }
  
  public void draw(Canvas paramCanvas)
  {
    super.draw(paramCanvas);
    int i = 0;
    int j = ViewCompat.getOverScrollMode(this);
    boolean bool;
    if ((j != 0) && ((j != 1) || (this.mAdapter == null) || (this.mAdapter.getCount() <= 1)))
    {
      this.mLeftEdge.finish();
      this.mRightEdge.finish();
    }
    else
    {
      int k;
      if (!this.mLeftEdge.isFinished())
      {
        j = paramCanvas.save();
        k = getHeight() - getPaddingTop() - getPaddingBottom();
        i = getWidth();
        paramCanvas.rotate(270.0F);
        paramCanvas.translate(-k + getPaddingTop(), this.mFirstOffset * i);
        this.mLeftEdge.setSize(k, i);
        bool = false | this.mLeftEdge.draw(paramCanvas);
        paramCanvas.restoreToCount(j);
      }
      if (!this.mRightEdge.isFinished())
      {
        k = paramCanvas.save();
        int m = getWidth();
        j = getHeight() - getPaddingTop() - getPaddingBottom();
        paramCanvas.rotate(90.0F);
        paramCanvas.translate(-getPaddingTop(), -(1.0F + this.mLastOffset) * m);
        this.mRightEdge.setSize(j, m);
        bool |= this.mRightEdge.draw(paramCanvas);
        paramCanvas.restoreToCount(k);
      }
    }
    if (bool) {
      ViewCompat.postInvalidateOnAnimation(this);
    }
  }
  
  protected void drawableStateChanged()
  {
    super.drawableStateChanged();
    Drawable localDrawable = this.mMarginDrawable;
    if ((localDrawable != null) && (localDrawable.isStateful())) {
      localDrawable.setState(getDrawableState());
    }
  }
  
  public void endFakeDrag()
  {
    if (this.mFakeDragging)
    {
      VelocityTracker localVelocityTracker = this.mVelocityTracker;
      localVelocityTracker.computeCurrentVelocity(1000, this.mMaximumVelocity);
      int k = (int)VelocityTrackerCompat.getXVelocity(localVelocityTracker, this.mActivePointerId);
      this.mPopulatePending = true;
      int j = getWidth();
      int i = getScrollX();
      ItemInfo localItemInfo = infoForCurrentScrollPosition();
      setCurrentItemInternal(determineTargetPage(localItemInfo.position, (i / j - localItemInfo.offset) / localItemInfo.widthFactor, k, (int)(this.mLastMotionX - this.mInitialMotionX)), true, true, k);
      endDrag();
      this.mFakeDragging = false;
      return;
    }
    throw new IllegalStateException("No fake drag in progress. Call beginFakeDrag first.");
  }
  
  public boolean executeKeyEvent(KeyEvent paramKeyEvent)
  {
    boolean bool = false;
    if (paramKeyEvent.getAction() == 0) {
      switch (paramKeyEvent.getKeyCode())
      {
      case 21: 
        bool = arrowScroll(17);
        break;
      case 22: 
        bool = arrowScroll(66);
        break;
      case 61: 
        if (Build.VERSION.SDK_INT >= 11) {
          if (!KeyEventCompat.hasNoModifiers(paramKeyEvent))
          {
            if (KeyEventCompat.hasModifiers(paramKeyEvent, 1)) {
              bool = arrowScroll(1);
            }
          }
          else {
            bool = arrowScroll(2);
          }
        }
        break;
      }
    }
    return bool;
  }
  
  public void fakeDragBy(float paramFloat)
  {
    if (this.mFakeDragging)
    {
      this.mLastMotionX = (paramFloat + this.mLastMotionX);
      float f2 = getScrollX() - paramFloat;
      int i = getWidth();
      float f1 = i * this.mFirstOffset;
      float f3 = i * this.mLastOffset;
      ItemInfo localItemInfo1 = (ItemInfo)this.mItems.get(0);
      ItemInfo localItemInfo2 = (ItemInfo)this.mItems.get(-1 + this.mItems.size());
      if (localItemInfo1.position != 0) {
        f1 = localItemInfo1.offset * i;
      }
      if (localItemInfo2.position != -1 + this.mAdapter.getCount()) {
        f3 = localItemInfo2.offset * i;
      }
      if (f2 >= f1)
      {
        if (f2 > f3) {
          f2 = f3;
        }
      }
      else {
        f2 = f1;
      }
      this.mLastMotionX += f2 - (int)f2;
      scrollTo((int)f2, getScrollY());
      pageScrolled((int)f2);
      long l = SystemClock.uptimeMillis();
      MotionEvent localMotionEvent = MotionEvent.obtain(this.mFakeDragBeginTime, l, 2, this.mLastMotionX, 0.0F, 0);
      this.mVelocityTracker.addMovement(localMotionEvent);
      localMotionEvent.recycle();
      return;
    }
    throw new IllegalStateException("No fake drag in progress. Call beginFakeDrag first.");
  }
  
  protected ViewGroup.LayoutParams generateDefaultLayoutParams()
  {
    return new LayoutParams();
  }
  
  public ViewGroup.LayoutParams generateLayoutParams(AttributeSet paramAttributeSet)
  {
    return new LayoutParams(getContext(), paramAttributeSet);
  }
  
  protected ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams paramLayoutParams)
  {
    return generateDefaultLayoutParams();
  }
  
  public PagerAdapter getAdapter()
  {
    return this.mAdapter;
  }
  
  public int getCurrentItem()
  {
    return this.mCurItem;
  }
  
  public int getOffscreenPageLimit()
  {
    return this.mOffscreenPageLimit;
  }
  
  public int getPageMargin()
  {
    return this.mPageMargin;
  }
  
  ItemInfo infoForAnyChild(View paramView)
  {
    for (;;)
    {
      localObject = paramView.getParent();
      if (localObject == this) {
        return infoForChild(paramView);
      }
      if ((localObject == null) || (!(localObject instanceof View))) {
        break;
      }
      paramView = (View)localObject;
    }
    Object localObject = null;
    return localObject;
  }
  
  ItemInfo infoForChild(View paramView)
  {
    ItemInfo localItemInfo;
    for (int i = 0;; i++)
    {
      if (i >= this.mItems.size())
      {
        localItemInfo = null;
        break;
      }
      localItemInfo = (ItemInfo)this.mItems.get(i);
      if (this.mAdapter.isViewFromObject(paramView, localItemInfo.object)) {
        break;
      }
    }
    return localItemInfo;
  }
  
  ItemInfo infoForPosition(int paramInt)
  {
    ItemInfo localItemInfo;
    for (int i = 0;; i++)
    {
      if (i >= this.mItems.size())
      {
        localItemInfo = null;
        break;
      }
      localItemInfo = (ItemInfo)this.mItems.get(i);
      if (localItemInfo.position == paramInt) {
        break;
      }
    }
    return localItemInfo;
  }
  
  void initViewPager()
  {
    setWillNotDraw(false);
    setDescendantFocusability(262144);
    setFocusable(true);
    Context localContext = getContext();
    this.mScroller = new Scroller(localContext, sInterpolator);
    ViewConfiguration localViewConfiguration = ViewConfiguration.get(localContext);
    this.mTouchSlop = ViewConfigurationCompat.getScaledPagingTouchSlop(localViewConfiguration);
    this.mMinimumVelocity = localViewConfiguration.getScaledMinimumFlingVelocity();
    this.mMaximumVelocity = localViewConfiguration.getScaledMaximumFlingVelocity();
    this.mLeftEdge = new EdgeEffectCompat(localContext);
    this.mRightEdge = new EdgeEffectCompat(localContext);
    float f = localContext.getResources().getDisplayMetrics().density;
    this.mFlingDistance = ((int)(25.0F * f));
    this.mCloseEnough = ((int)(2.0F * f));
    this.mDefaultGutterSize = ((int)(16.0F * f));
    ViewCompat.setAccessibilityDelegate(this, new MyAccessibilityDelegate());
    if (ViewCompat.getImportantForAccessibility(this) == 0) {
      ViewCompat.setImportantForAccessibility(this, 1);
    }
  }
  
  public boolean isFakeDragging()
  {
    return this.mFakeDragging;
  }
  
  protected void onAttachedToWindow()
  {
    super.onAttachedToWindow();
    this.mFirstLayout = true;
  }
  
  protected void onDraw(Canvas paramCanvas)
  {
    super.onDraw(paramCanvas);
    int n;
    int k;
    float f1;
    int m;
    Object localObject;
    float f2;
    int i;
    int i1;
    if ((this.mPageMargin > 0) && (this.mMarginDrawable != null) && (this.mItems.size() > 0) && (this.mAdapter != null))
    {
      n = getScrollX();
      k = getWidth();
      f1 = this.mPageMargin / k;
      m = 0;
      localObject = (ItemInfo)this.mItems.get(0);
      f2 = ((ItemInfo)localObject).offset;
      i = this.mItems.size();
      i1 = ((ItemInfo)localObject).position;
      int j = ((ItemInfo)this.mItems.get(i - 1)).position;
      i1 = i1;
      if (i1 >= j) {}
    }
    for (;;)
    {
      if ((i1 <= ((ItemInfo)localObject).position) || (m >= i))
      {
        float f4;
        if (i1 != ((ItemInfo)localObject).position)
        {
          float f3 = this.mAdapter.getPageWidth(i1);
          f4 = (f2 + f3) * k;
          f2 += f3 + f1;
        }
        else
        {
          f4 = (((ItemInfo)localObject).offset + ((ItemInfo)localObject).widthFactor) * k;
          f2 = f1 + (((ItemInfo)localObject).offset + ((ItemInfo)localObject).widthFactor);
        }
        if (f4 + this.mPageMargin > n)
        {
          this.mMarginDrawable.setBounds((int)f4, this.mTopPageBounds, (int)(0.5F + (f4 + this.mPageMargin)), this.mBottomPageBounds);
          this.mMarginDrawable.draw(paramCanvas);
        }
        if (f4 <= n + k)
        {
          i1++;
          break;
        }
        return;
      }
      localObject = this.mItems;
      m++;
      localObject = (ItemInfo)((ArrayList)localObject).get(m);
    }
  }
  
  public boolean onInterceptTouchEvent(MotionEvent paramMotionEvent)
  {
    int i = 0xFF & paramMotionEvent.getAction();
    boolean bool;
    if ((i != 3) && (i != 1))
    {
      if (i != 0)
      {
        if (this.mIsBeingDragged) {
          break label465;
        }
        if (this.mIsUnableToDrag) {}
      }
      else
      {
        switch (i)
        {
        case 0: 
          float f1 = paramMotionEvent.getX();
          this.mInitialMotionX = f1;
          this.mLastMotionX = f1;
          this.mLastMotionY = paramMotionEvent.getY();
          this.mActivePointerId = MotionEventCompat.getPointerId(paramMotionEvent, 0);
          this.mIsUnableToDrag = false;
          this.mScroller.computeScrollOffset();
          if ((this.mScrollState != 2) || (Math.abs(this.mScroller.getFinalX() - this.mScroller.getCurrX()) <= this.mCloseEnough))
          {
            completeScroll();
            this.mIsBeingDragged = false;
          }
          else
          {
            this.mScroller.abortAnimation();
            this.mPopulatePending = false;
            populate();
            this.mIsBeingDragged = true;
            setScrollState(1);
          }
          break;
        case 2: 
          int j = this.mActivePointerId;
          if (j != -1)
          {
            int k = MotionEventCompat.findPointerIndex(paramMotionEvent, j);
            float f2 = MotionEventCompat.getX(paramMotionEvent, k);
            float f4 = f2 - this.mLastMotionX;
            float f3 = Math.abs(f4);
            float f5 = MotionEventCompat.getY(paramMotionEvent, k);
            float f6 = Math.abs(f5 - this.mLastMotionY);
            if ((f4 == 0.0F) || (isGutterDrag(this.mLastMotionX, f4)) || (!canScroll(this, false, (int)f4, (int)f2, (int)f5)))
            {
              if ((f3 <= this.mTouchSlop) || (f3 <= f6))
              {
                if (f6 > this.mTouchSlop) {
                  this.mIsUnableToDrag = true;
                }
              }
              else
              {
                this.mIsBeingDragged = true;
                setScrollState(1);
                if (f4 <= 0.0F) {
                  f3 = this.mInitialMotionX - this.mTouchSlop;
                } else {
                  f3 = this.mInitialMotionX + this.mTouchSlop;
                }
                this.mLastMotionX = f3;
                setScrollingCacheEnabled(true);
              }
              if ((this.mIsBeingDragged) && (performDrag(f2))) {
                ViewCompat.postInvalidateOnAnimation(this);
              }
            }
            else
            {
              this.mLastMotionX = f2;
              this.mInitialMotionX = f2;
              this.mLastMotionY = f5;
              this.mIsUnableToDrag = true;
              bool = false;
            }
          }
          break;
        case 6: 
          onSecondaryPointerUp(paramMotionEvent);
        }
        if (this.mVelocityTracker == null) {
          this.mVelocityTracker = VelocityTracker.obtain();
        }
        this.mVelocityTracker.addMovement(paramMotionEvent);
        return this.mIsBeingDragged;
      }
      return false;
      label465:
      bool = true;
    }
    else
    {
      this.mIsBeingDragged = false;
      this.mIsUnableToDrag = false;
      this.mActivePointerId = -1;
      if (this.mVelocityTracker != null)
      {
        this.mVelocityTracker.recycle();
        this.mVelocityTracker = null;
      }
      bool = false;
    }
    return bool;
  }
  
  protected void onLayout(boolean paramBoolean, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    this.mInLayout = true;
    populate();
    this.mInLayout = false;
    int n = getChildCount();
    int m = paramInt3 - paramInt1;
    int i1 = paramInt4 - paramInt2;
    View localView1 = getPaddingLeft();
    View localView2 = getPaddingTop();
    int j = getPaddingRight();
    int k = getPaddingBottom();
    int i2 = getScrollX();
    int i = 0;
    for (int i3 = 0;; i3++)
    {
      View localView3;
      View localView4;
      if (i3 >= n) {
        for (i3 = 0;; i3++)
        {
          if (i3 >= n)
          {
            this.mTopPageBounds = localView2;
            this.mBottomPageBounds = (i1 - k);
            this.mDecorChildCount = i;
            this.mFirstLayout = false;
            return;
          }
          localView3 = getChildAt(i3);
          if (localView3.getVisibility() != 8)
          {
            localObject = (LayoutParams)localView3.getLayoutParams();
            if (!((LayoutParams)localObject).isDecor)
            {
              ItemInfo localItemInfo = infoForChild(localView3);
              if (localItemInfo != null)
              {
                int i4 = localView1 + (int)(m * localItemInfo.offset);
                localView4 = localView2;
                if (((LayoutParams)localObject).needsMeasure)
                {
                  ((LayoutParams)localObject).needsMeasure = false;
                  localView3.measure(View.MeasureSpec.makeMeasureSpec((int)((m - localView1 - j) * ((LayoutParams)localObject).widthFactor), 1073741824), View.MeasureSpec.makeMeasureSpec(i1 - localView2 - k, 1073741824));
                }
                localView3.layout(i4, localView4, i4 + localView3.getMeasuredWidth(), localView4 + localView3.getMeasuredHeight());
              }
            }
          }
        }
      }
      Object localObject = getChildAt(i3);
      if (((View)localObject).getVisibility() != 8)
      {
        LayoutParams localLayoutParams = (LayoutParams)((View)localObject).getLayoutParams();
        if (localLayoutParams.isDecor)
        {
          localView4 = 0x7 & localLayoutParams.gravity;
          int i5 = 0x70 & localLayoutParams.gravity;
          switch (localView4)
          {
          case 2: 
          case 4: 
          default: 
            localView4 = localView1;
            break;
          case 1: 
            localView4 = Math.max((m - ((View)localObject).getMeasuredWidth()) / 2, localView1);
            break;
          case 3: 
            localView4 = localView1;
            localView1 += ((View)localObject).getMeasuredWidth();
            break;
          case 5: 
            localView4 = m - j - ((View)localObject).getMeasuredWidth();
            j += ((View)localObject).getMeasuredWidth();
          }
          switch (i5)
          {
          default: 
            i5 = localView2;
            break;
          case 16: 
            i5 = Math.max((i1 - ((View)localObject).getMeasuredHeight()) / 2, localView2);
            break;
          case 48: 
            i5 = localView2;
            localView2 += ((View)localObject).getMeasuredHeight();
            break;
          case 80: 
            i5 = i1 - k - ((View)localObject).getMeasuredHeight();
            k += ((View)localObject).getMeasuredHeight();
          }
          int i6;
          localView4 += localView3;
          ((View)localObject).layout(i6, i5, i6 + ((View)localObject).getMeasuredWidth(), i5 + ((View)localObject).getMeasuredHeight());
          i++;
        }
      }
    }
  }
  
  protected void onMeasure(int paramInt1, int paramInt2)
  {
    setMeasuredDimension(getDefaultSize(0, paramInt1), getDefaultSize(0, paramInt2));
    int i = getMeasuredWidth();
    this.mGutterSize = Math.min(i / 10, this.mDefaultGutterSize);
    i = i - getPaddingLeft() - getPaddingRight();
    int i1 = getMeasuredHeight() - getPaddingTop() - getPaddingBottom();
    int j = getChildCount();
    LayoutParams localLayoutParams1;
    for (int k = 0;; localLayoutParams1++)
    {
      if (k >= j)
      {
        this.mChildWidthMeasureSpec = View.MeasureSpec.makeMeasureSpec(i, 1073741824);
        this.mChildHeightMeasureSpec = View.MeasureSpec.makeMeasureSpec(i1, 1073741824);
        this.mInLayout = true;
        populate();
        this.mInLayout = false;
        j = getChildCount();
        for (int m = 0;; m++)
        {
          if (m >= j) {
            return;
          }
          View localView1 = getChildAt(m);
          if (localView1.getVisibility() != 8)
          {
            localLayoutParams1 = (LayoutParams)localView1.getLayoutParams();
            if ((localLayoutParams1 == null) || (!localLayoutParams1.isDecor)) {
              localView1.measure(View.MeasureSpec.makeMeasureSpec((int)(i * localLayoutParams1.widthFactor), 1073741824), this.mChildHeightMeasureSpec);
            }
          }
        }
      }
      View localView2 = getChildAt(localLayoutParams1);
      if (localView2.getVisibility() != 8)
      {
        LayoutParams localLayoutParams2 = (LayoutParams)localView2.getLayoutParams();
        if ((localLayoutParams2 != null) && (localLayoutParams2.isDecor))
        {
          int i4 = 0x7 & localLayoutParams2.gravity;
          int i3 = 0x70 & localLayoutParams2.gravity;
          int i2 = -2147483648;
          int n = -2147483648;
          if ((i3 != 48) && (i3 != 80)) {
            i3 = 0;
          } else {
            i3 = 1;
          }
          int i6;
          if ((i4 != 3) && (i4 != 5)) {
            i6 = 0;
          } else {
            i6 = 1;
          }
          if (i3 == 0)
          {
            if (i6 != 0) {
              n = 1073741824;
            }
          }
          else {
            i2 = 1073741824;
          }
          int i5 = i;
          i4 = i1;
          if (localLayoutParams2.width != -2)
          {
            i2 = 1073741824;
            if (localLayoutParams2.width != -1) {
              i5 = localLayoutParams2.width;
            }
          }
          if (localLayoutParams2.height != -2)
          {
            n = 1073741824;
            if (localLayoutParams2.height != -1) {
              i4 = localLayoutParams2.height;
            }
          }
          localView2.measure(View.MeasureSpec.makeMeasureSpec(i5, i2), View.MeasureSpec.makeMeasureSpec(i4, n));
          if (i3 == 0)
          {
            if (i6 != 0) {
              i -= localView2.getMeasuredWidth();
            }
          }
          else {
            i1 -= localView2.getMeasuredHeight();
          }
        }
      }
    }
  }
  
  protected void onPageScrolled(int paramInt1, float paramFloat, int paramInt2)
  {
    int n;
    LayoutParams localLayoutParams1;
    int j;
    int k;
    int m;
    if (this.mDecorChildCount > 0)
    {
      n = getScrollX();
      localLayoutParams1 = getPaddingLeft();
      j = getPaddingRight();
      k = getWidth();
      m = getChildCount();
    }
    for (int i = 0;; i++)
    {
      if (i >= m)
      {
        if (this.mOnPageChangeListener != null) {
          this.mOnPageChangeListener.onPageScrolled(paramInt1, paramFloat, paramInt2);
        }
        if (this.mInternalPageChangeListener != null) {
          this.mInternalPageChangeListener.onPageScrolled(paramInt1, paramFloat, paramInt2);
        }
        this.mCalledSuper = true;
        return;
      }
      View localView = getChildAt(i);
      LayoutParams localLayoutParams2 = (LayoutParams)localView.getLayoutParams();
      if (localLayoutParams2.isDecor)
      {
        switch (0x7 & localLayoutParams2.gravity)
        {
        case 2: 
        case 4: 
        default: 
          localLayoutParams2 = localLayoutParams1;
          break;
        case 1: 
          i1 = Math.max((k - localView.getMeasuredWidth()) / 2, localLayoutParams1);
          break;
        case 3: 
          i1 = localLayoutParams1;
          localLayoutParams1 += localView.getWidth();
          break;
        case 5: 
          i1 = k - j - localView.getMeasuredWidth();
          j += localView.getMeasuredWidth();
        }
        int i1 = i1 + n - localView.getLeft();
        if (i1 != 0) {
          localView.offsetLeftAndRight(i1);
        }
      }
    }
  }
  
  protected boolean onRequestFocusInDescendants(int paramInt, Rect paramRect)
  {
    int j = getChildCount();
    int k;
    if ((paramInt & 0x2) == 0)
    {
      k = j - 1;
      i = -1;
      j = -1;
    }
    else
    {
      k = 0;
      i = 1;
      j = j;
    }
    int m = k;
    for (;;)
    {
      if (m == j) {
        return 0;
      }
      View localView = getChildAt(m);
      if (localView.getVisibility() == 0)
      {
        ItemInfo localItemInfo = infoForChild(localView);
        if ((localItemInfo != null) && (localItemInfo.position == this.mCurItem) && (localView.requestFocus(paramInt, paramRect))) {
          break;
        }
      }
      int n;
      m += i;
    }
    int i = 1;
    return i;
  }
  
  public void onRestoreInstanceState(Parcelable paramParcelable)
  {
    if ((paramParcelable instanceof SavedState))
    {
      SavedState localSavedState = (SavedState)paramParcelable;
      super.onRestoreInstanceState(localSavedState.getSuperState());
      if (this.mAdapter == null)
      {
        this.mRestoredCurItem = localSavedState.position;
        this.mRestoredAdapterState = localSavedState.adapterState;
        this.mRestoredClassLoader = localSavedState.loader;
      }
      else
      {
        this.mAdapter.restoreState(localSavedState.adapterState, localSavedState.loader);
        setCurrentItemInternal(localSavedState.position, false, true);
      }
    }
    else
    {
      super.onRestoreInstanceState(paramParcelable);
    }
  }
  
  public Parcelable onSaveInstanceState()
  {
    SavedState localSavedState = new SavedState(super.onSaveInstanceState());
    localSavedState.position = this.mCurItem;
    if (this.mAdapter != null) {
      localSavedState.adapterState = this.mAdapter.saveState();
    }
    return localSavedState;
  }
  
  protected void onSizeChanged(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    super.onSizeChanged(paramInt1, paramInt2, paramInt3, paramInt4);
    if (paramInt1 != paramInt3) {
      recomputeScrollPosition(paramInt1, paramInt3, this.mPageMargin, this.mPageMargin);
    }
  }
  
  public boolean onTouchEvent(MotionEvent paramMotionEvent)
  {
    boolean bool;
    if (!this.mFakeDragging)
    {
      if ((paramMotionEvent.getAction() != 0) || (paramMotionEvent.getEdgeFlags() == 0))
      {
        if ((this.mAdapter != null) && (this.mAdapter.getCount() != 0))
        {
          if (this.mVelocityTracker == null) {
            this.mVelocityTracker = VelocityTracker.obtain();
          }
          this.mVelocityTracker.addMovement(paramMotionEvent);
          int k = paramMotionEvent.getAction();
          int i = 0;
          int i1;
          switch (k & 0xFF)
          {
          case 0: 
            this.mScroller.abortAnimation();
            this.mPopulatePending = false;
            populate();
            this.mIsBeingDragged = true;
            setScrollState(1);
            float f1 = paramMotionEvent.getX();
            this.mInitialMotionX = f1;
            this.mLastMotionX = f1;
            this.mActivePointerId = MotionEventCompat.getPointerId(paramMotionEvent, 0);
            break;
          case 1: 
            if (this.mIsBeingDragged)
            {
              VelocityTracker localVelocityTracker = this.mVelocityTracker;
              localVelocityTracker.computeCurrentVelocity(1000, this.mMaximumVelocity);
              int j = (int)VelocityTrackerCompat.getXVelocity(localVelocityTracker, this.mActivePointerId);
              this.mPopulatePending = true;
              int n = getWidth();
              i1 = getScrollX();
              ItemInfo localItemInfo = infoForCurrentScrollPosition();
              setCurrentItemInternal(determineTargetPage(localItemInfo.position, (i1 / n - localItemInfo.offset) / localItemInfo.widthFactor, j, (int)(MotionEventCompat.getX(paramMotionEvent, MotionEventCompat.findPointerIndex(paramMotionEvent, this.mActivePointerId)) - this.mInitialMotionX)), true, true, j);
              this.mActivePointerId = -1;
              endDrag();
              bool = this.mLeftEdge.onRelease() | this.mRightEdge.onRelease();
            }
            break;
          case 2: 
            if (!this.mIsBeingDragged)
            {
              i1 = MotionEventCompat.findPointerIndex(paramMotionEvent, this.mActivePointerId);
              float f2 = MotionEventCompat.getX(paramMotionEvent, i1);
              float f3 = Math.abs(f2 - this.mLastMotionX);
              float f4 = Math.abs(MotionEventCompat.getY(paramMotionEvent, i1) - this.mLastMotionY);
              if ((f3 > this.mTouchSlop) && (f3 > f4))
              {
                this.mIsBeingDragged = true;
                if (f2 - this.mInitialMotionX <= 0.0F) {
                  f2 = this.mInitialMotionX - this.mTouchSlop;
                } else {
                  f2 = this.mInitialMotionX + this.mTouchSlop;
                }
                this.mLastMotionX = f2;
                setScrollState(1);
                setScrollingCacheEnabled(true);
              }
            }
            if (this.mIsBeingDragged) {
              bool = false | performDrag(MotionEventCompat.getX(paramMotionEvent, MotionEventCompat.findPointerIndex(paramMotionEvent, this.mActivePointerId)));
            }
            break;
          case 3: 
            if (this.mIsBeingDragged)
            {
              setCurrentItemInternal(this.mCurItem, true, true);
              this.mActivePointerId = -1;
              endDrag();
              bool = this.mLeftEdge.onRelease() | this.mRightEdge.onRelease();
            }
            break;
          case 5: 
            int m = MotionEventCompat.getActionIndex(paramMotionEvent);
            this.mLastMotionX = MotionEventCompat.getX(paramMotionEvent, m);
            this.mActivePointerId = MotionEventCompat.getPointerId(paramMotionEvent, m);
            break;
          case 6: 
            onSecondaryPointerUp(paramMotionEvent);
            this.mLastMotionX = MotionEventCompat.getX(paramMotionEvent, MotionEventCompat.findPointerIndex(paramMotionEvent, this.mActivePointerId));
          }
          if (bool) {
            ViewCompat.postInvalidateOnAnimation(this);
          }
          bool = true;
        }
        else
        {
          bool = false;
        }
      }
      else {
        bool = false;
      }
    }
    else {
      bool = true;
    }
    return bool;
  }
  
  boolean pageLeft()
  {
    boolean bool = true;
    if (this.mCurItem <= 0) {
      bool = false;
    } else {
      setCurrentItem(-1 + this.mCurItem, bool);
    }
    return bool;
  }
  
  boolean pageRight()
  {
    boolean bool = true;
    if ((this.mAdapter == null) || (this.mCurItem >= -1 + this.mAdapter.getCount())) {
      bool = false;
    } else {
      setCurrentItem(1 + this.mCurItem, bool);
    }
    return bool;
  }
  
  void populate()
  {
    populate(this.mCurItem);
  }
  
  void populate(int paramInt)
  {
    Object localObject3 = null;
    if (this.mCurItem != paramInt)
    {
      localObject3 = infoForPosition(this.mCurItem);
      this.mCurItem = paramInt;
    }
    int m;
    if ((this.mAdapter != null) && (!this.mPopulatePending) && (getWindowToken() != null))
    {
      this.mAdapter.startUpdate(this);
      int i = this.mOffscreenPageLimit;
      int i3 = Math.max(0, this.mCurItem - i);
      int n = this.mAdapter.getCount();
      int i2 = Math.min(n - 1, i + this.mCurItem);
      Object localObject1 = null;
      int i1 = 0;
      while (i1 < this.mItems.size())
      {
        ItemInfo localItemInfo1 = (ItemInfo)this.mItems.get(i1);
        if (localItemInfo1.position < this.mCurItem) {
          i1++;
        } else if (localItemInfo1.position == this.mCurItem) {
          localObject1 = localItemInfo1;
        }
      }
      if ((localObject1 == null) && (n > 0)) {
        localObject1 = addNewItem(this.mCurItem, i1);
      }
      if (localObject1 != null)
      {
        float f1 = 0.0F;
        int i4 = i1 - 1;
        ItemInfo localItemInfo2;
        if (i4 < 0) {
          localItemInfo2 = null;
        } else {
          localItemInfo2 = (ItemInfo)this.mItems.get(i4);
        }
        float f2 = 2.0F - ((ItemInfo)localObject1).widthFactor;
        for (int i5 = -1 + this.mCurItem; i5 >= 0; i5--)
        {
          int i7;
          Object localObject7;
          if ((f1 < f2) || (i5 >= i3))
          {
            if (localItemInfo2 != null)
            {
              i7 = localItemInfo2.position;
              if (i5 == i7) {}
            }
            else
            {
              int i6 = i4 + 1;
              f1 += addNewItem(i5, i6).widthFactor;
              i1++;
              if (i4 < 0) {
                localObject7 = null;
              } else {
                localObject7 = (ItemInfo)this.mItems.get(i4);
              }
              continue;
            }
            f1 += ((ItemInfo)localObject7).widthFactor;
            i4--;
            if (i4 < 0) {
              localObject7 = null;
            } else {
              localObject7 = (ItemInfo)this.mItems.get(i4);
            }
          }
          else
          {
            if (localObject7 == null) {
              break;
            }
            i7 = ((ItemInfo)localObject7).position;
            if ((i5 == i7) && (!((ItemInfo)localObject7).scrolling))
            {
              this.mItems.remove(i4);
              PagerAdapter localPagerAdapter2 = this.mAdapter;
              localObject7 = ((ItemInfo)localObject7).object;
              localPagerAdapter2.destroyItem(this, i5, localObject7);
              i4--;
              i1--;
              if (i4 < 0) {
                localObject7 = null;
              } else {
                localObject7 = (ItemInfo)this.mItems.get(i4);
              }
            }
          }
        }
        f1 = ((ItemInfo)localObject1).widthFactor;
        i4 = i1 + 1;
        if (f1 < 2.0F)
        {
          Object localObject6;
          if (i4 >= this.mItems.size()) {
            localObject6 = null;
          } else {
            localObject6 = (ItemInfo)this.mItems.get(i4);
          }
          for (i3 = 1 + this.mCurItem; i3 < n; i3++) {
            if ((f1 < 2.0F) || (i3 <= i2))
            {
              if (localObject6 != null)
              {
                i5 = ((ItemInfo)localObject6).position;
                if (i3 == i5) {}
              }
              else
              {
                localObject6 = addNewItem(i3, i4);
                i4++;
                f1 += ((ItemInfo)localObject6).widthFactor;
                if (i4 >= this.mItems.size()) {
                  localObject6 = null;
                } else {
                  localObject6 = (ItemInfo)this.mItems.get(i4);
                }
                continue;
              }
              f1 += ((ItemInfo)localObject6).widthFactor;
              i4++;
              if (i4 >= this.mItems.size()) {
                localObject6 = null;
              } else {
                localObject6 = (ItemInfo)this.mItems.get(i4);
              }
            }
            else
            {
              if (localObject6 == null) {
                break;
              }
              i5 = ((ItemInfo)localObject6).position;
              if ((i3 == i5) && (!((ItemInfo)localObject6).scrolling))
              {
                this.mItems.remove(i4);
                PagerAdapter localPagerAdapter1 = this.mAdapter;
                localObject6 = ((ItemInfo)localObject6).object;
                localPagerAdapter1.destroyItem(this, i3, localObject6);
                if (i4 >= this.mItems.size()) {
                  localObject6 = null;
                } else {
                  localObject6 = (ItemInfo)this.mItems.get(i4);
                }
              }
            }
          }
        }
        calculatePageOffsets((ItemInfo)localObject1, i1, (ItemInfo)localObject3);
      }
      localObject3 = this.mAdapter;
      n = this.mCurItem;
      if (localObject1 == null) {
        localObject1 = null;
      } else {
        localObject1 = ((ItemInfo)localObject1).object;
      }
      ((PagerAdapter)localObject3).setPrimaryItem(this, n, localObject1);
      this.mAdapter.finishUpdate(this);
      m = getChildCount();
    }
    int k;
    for (int j = 0;; k++)
    {
      if (j >= m)
      {
        if (hasFocus())
        {
          Object localObject2 = findFocus();
          if (localObject2 == null) {
            localObject2 = null;
          } else {
            localObject2 = infoForAnyChild((View)localObject2);
          }
          if ((localObject2 != null) && (((ItemInfo)localObject2).position == this.mCurItem)) {}
        }
        for (k = 0;; k++) {
          if (k < getChildCount())
          {
            View localView = getChildAt(k);
            localObject4 = infoForChild(localView);
            if ((localObject4 == null) || (((ItemInfo)localObject4).position != this.mCurItem) || (!localView.requestFocus(2))) {}
          }
          else
          {
            return;
          }
        }
      }
      Object localObject5 = getChildAt(k);
      Object localObject4 = (LayoutParams)((View)localObject5).getLayoutParams();
      if ((!((LayoutParams)localObject4).isDecor) && (((LayoutParams)localObject4).widthFactor == 0.0F))
      {
        localObject5 = infoForChild((View)localObject5);
        if (localObject5 != null) {
          ((LayoutParams)localObject4).widthFactor = ((ItemInfo)localObject5).widthFactor;
        }
      }
    }
  }
  
  public void setAdapter(PagerAdapter paramPagerAdapter)
  {
    if (this.mAdapter != null)
    {
      this.mAdapter.unregisterDataSetObserver(this.mObserver);
      this.mAdapter.startUpdate(this);
    }
    for (int i = 0;; i++)
    {
      if (i >= this.mItems.size())
      {
        this.mAdapter.finishUpdate(this);
        this.mItems.clear();
        removeNonDecorViews();
        this.mCurItem = 0;
        scrollTo(0, 0);
        localObject = this.mAdapter;
        this.mAdapter = paramPagerAdapter;
        if (this.mAdapter != null)
        {
          if (this.mObserver == null) {
            this.mObserver = new PagerObserver(null);
          }
          this.mAdapter.registerDataSetObserver(this.mObserver);
          this.mPopulatePending = false;
          this.mFirstLayout = true;
          if (this.mRestoredCurItem < 0)
          {
            populate();
          }
          else
          {
            this.mAdapter.restoreState(this.mRestoredAdapterState, this.mRestoredClassLoader);
            setCurrentItemInternal(this.mRestoredCurItem, false, true);
            this.mRestoredCurItem = -1;
            this.mRestoredAdapterState = null;
            this.mRestoredClassLoader = null;
          }
        }
        if ((this.mAdapterChangeListener != null) && (localObject != paramPagerAdapter)) {
          this.mAdapterChangeListener.onAdapterChanged((PagerAdapter)localObject, paramPagerAdapter);
        }
        return;
      }
      Object localObject = (ItemInfo)this.mItems.get(i);
      this.mAdapter.destroyItem(this, ((ItemInfo)localObject).position, ((ItemInfo)localObject).object);
    }
  }
  
  public void setCurrentItem(int paramInt)
  {
    this.mPopulatePending = false;
    boolean bool;
    if (this.mFirstLayout) {
      bool = false;
    } else {
      bool = true;
    }
    setCurrentItemInternal(paramInt, bool, false);
  }
  
  public void setCurrentItem(int paramInt, boolean paramBoolean)
  {
    this.mPopulatePending = false;
    setCurrentItemInternal(paramInt, paramBoolean, false);
  }
  
  void setCurrentItemInternal(int paramInt, boolean paramBoolean1, boolean paramBoolean2)
  {
    setCurrentItemInternal(paramInt, paramBoolean1, paramBoolean2, 0);
  }
  
  void setCurrentItemInternal(int paramInt1, boolean paramBoolean1, boolean paramBoolean2, int paramInt2)
  {
    boolean bool = true;
    if ((this.mAdapter != null) && (this.mAdapter.getCount() > 0))
    {
      if ((paramBoolean2) || (this.mCurItem != paramInt1) || (this.mItems.size() == 0))
      {
        if (paramInt1 >= 0)
        {
          if (paramInt1 >= this.mAdapter.getCount()) {
            paramInt1 = -1 + this.mAdapter.getCount();
          }
        }
        else {
          paramInt1 = 0;
        }
        int i = this.mOffscreenPageLimit;
        if ((paramInt1 > i + this.mCurItem) || (paramInt1 < this.mCurItem - i)) {}
        ItemInfo localItemInfo;
        for (i = 0;; localItemInfo++)
        {
          if (i >= this.mItems.size())
          {
            if (this.mCurItem == paramInt1) {
              bool = false;
            }
            populate(paramInt1);
            localItemInfo = infoForPosition(paramInt1);
            int j = 0;
            if (localItemInfo != null) {
              j = (int)(getWidth() * Math.max(this.mFirstOffset, Math.min(localItemInfo.offset, this.mLastOffset)));
            }
            if (!paramBoolean1)
            {
              if ((bool) && (this.mOnPageChangeListener != null)) {
                this.mOnPageChangeListener.onPageSelected(paramInt1);
              }
              if ((bool) && (this.mInternalPageChangeListener != null)) {
                this.mInternalPageChangeListener.onPageSelected(paramInt1);
              }
              completeScroll();
              scrollTo(j, 0);
              break;
            }
            smoothScrollTo(j, 0, paramInt2);
            if ((bool) && (this.mOnPageChangeListener != null)) {
              this.mOnPageChangeListener.onPageSelected(paramInt1);
            }
            if ((!bool) || (this.mInternalPageChangeListener == null)) {
              break;
            }
            this.mInternalPageChangeListener.onPageSelected(paramInt1);
            break;
          }
          ((ItemInfo)this.mItems.get(localItemInfo)).scrolling = bool;
        }
      }
      setScrollingCacheEnabled(false);
    }
    else
    {
      setScrollingCacheEnabled(false);
    }
  }
  
  OnPageChangeListener setInternalPageChangeListener(OnPageChangeListener paramOnPageChangeListener)
  {
    OnPageChangeListener localOnPageChangeListener = this.mInternalPageChangeListener;
    this.mInternalPageChangeListener = paramOnPageChangeListener;
    return localOnPageChangeListener;
  }
  
  public void setOffscreenPageLimit(int paramInt)
  {
    if (paramInt < 1)
    {
      Log.w("ViewPager", "Requested offscreen page limit " + paramInt + " too small; defaulting to " + 1);
      paramInt = 1;
    }
    if (paramInt != this.mOffscreenPageLimit)
    {
      this.mOffscreenPageLimit = paramInt;
      populate();
    }
  }
  
  void setOnAdapterChangeListener(OnAdapterChangeListener paramOnAdapterChangeListener)
  {
    this.mAdapterChangeListener = paramOnAdapterChangeListener;
  }
  
  public void setOnPageChangeListener(OnPageChangeListener paramOnPageChangeListener)
  {
    this.mOnPageChangeListener = paramOnPageChangeListener;
  }
  
  public void setPageMargin(int paramInt)
  {
    int i = this.mPageMargin;
    this.mPageMargin = paramInt;
    int j = getWidth();
    recomputeScrollPosition(j, j, paramInt, i);
    requestLayout();
  }
  
  public void setPageMarginDrawable(int paramInt)
  {
    setPageMarginDrawable(getContext().getResources().getDrawable(paramInt));
  }
  
  public void setPageMarginDrawable(Drawable paramDrawable)
  {
    this.mMarginDrawable = paramDrawable;
    if (paramDrawable != null) {
      refreshDrawableState();
    }
    boolean bool;
    if (paramDrawable != null) {
      bool = false;
    } else {
      bool = true;
    }
    setWillNotDraw(bool);
    invalidate();
  }
  
  void smoothScrollTo(int paramInt1, int paramInt2)
  {
    smoothScrollTo(paramInt1, paramInt2, 0);
  }
  
  void smoothScrollTo(int paramInt1, int paramInt2, int paramInt3)
  {
    if (getChildCount() != 0)
    {
      int m = getScrollX();
      int i = getScrollY();
      int j = paramInt1 - m;
      int k = paramInt2 - i;
      if ((j != 0) || (k != 0))
      {
        setScrollingCacheEnabled(true);
        setScrollState(2);
        int n = getWidth();
        int i3 = n / 2;
        float f2 = Math.min(1.0F, 1.0F * Math.abs(j) / n);
        float f3 = i3 + i3 * distanceInfluenceForSnapDuration(f2);
        int i2 = Math.abs(paramInt3);
        if (i2 <= 0)
        {
          float f1 = n * this.mAdapter.getPageWidth(this.mCurItem);
          i1 = (int)(100.0F * (1.0F + Math.abs(j) / (f1 + this.mPageMargin)));
        }
        else
        {
          i1 = 4 * Math.round(1000.0F * Math.abs(f3 / i2));
        }
        int i1 = Math.min(i1, 600);
        this.mScroller.startScroll(m, i, j, k, i1);
        ViewCompat.postInvalidateOnAnimation(this);
      }
      else
      {
        completeScroll();
        populate();
        setScrollState(0);
      }
    }
    else
    {
      setScrollingCacheEnabled(false);
    }
  }
  
  protected boolean verifyDrawable(Drawable paramDrawable)
  {
    boolean bool;
    if ((!super.verifyDrawable(paramDrawable)) && (paramDrawable != this.mMarginDrawable)) {
      bool = false;
    } else {
      bool = true;
    }
    return bool;
  }
  
  public static class LayoutParams
    extends ViewGroup.LayoutParams
  {
    public int gravity;
    public boolean isDecor;
    public boolean needsMeasure;
    public float widthFactor = 0.0F;
    
    public LayoutParams()
    {
      super(-1);
    }
    
    public LayoutParams(Context paramContext, AttributeSet paramAttributeSet)
    {
      super(paramAttributeSet);
      TypedArray localTypedArray = paramContext.obtainStyledAttributes(paramAttributeSet, ViewPager.LAYOUT_ATTRS);
      this.gravity = localTypedArray.getInteger(0, 48);
      localTypedArray.recycle();
    }
  }
  
  private class PagerObserver
    extends DataSetObserver
  {
    private PagerObserver() {}
    
    public void onChanged()
    {
      ViewPager.this.dataSetChanged();
    }
    
    public void onInvalidated()
    {
      ViewPager.this.dataSetChanged();
    }
  }
  
  class MyAccessibilityDelegate
    extends AccessibilityDelegateCompat
  {
    MyAccessibilityDelegate() {}
    
    public void onInitializeAccessibilityEvent(View paramView, AccessibilityEvent paramAccessibilityEvent)
    {
      super.onInitializeAccessibilityEvent(paramView, paramAccessibilityEvent);
      paramAccessibilityEvent.setClassName(ViewPager.class.getName());
    }
    
    public void onInitializeAccessibilityNodeInfo(View paramView, AccessibilityNodeInfoCompat paramAccessibilityNodeInfoCompat)
    {
      int i = 1;
      super.onInitializeAccessibilityNodeInfo(paramView, paramAccessibilityNodeInfoCompat);
      paramAccessibilityNodeInfoCompat.setClassName(ViewPager.class.getName());
      if ((ViewPager.this.mAdapter == null) || (ViewPager.this.mAdapter.getCount() <= i)) {
        i = 0;
      }
      paramAccessibilityNodeInfoCompat.setScrollable(i);
      if ((ViewPager.this.mAdapter != null) && (ViewPager.this.mCurItem >= 0) && (ViewPager.this.mCurItem < -1 + ViewPager.this.mAdapter.getCount())) {
        paramAccessibilityNodeInfoCompat.addAction(4096);
      }
      if ((ViewPager.this.mAdapter != null) && (ViewPager.this.mCurItem > 0) && (ViewPager.this.mCurItem < ViewPager.this.mAdapter.getCount())) {
        paramAccessibilityNodeInfoCompat.addAction(8192);
      }
    }
    
    public boolean performAccessibilityAction(View paramView, int paramInt, Bundle paramBundle)
    {
      boolean bool = true;
      if (!super.performAccessibilityAction(paramView, paramInt, paramBundle)) {
        switch (paramInt)
        {
        default: 
          bool = false;
          break;
        case 4096: 
          if ((ViewPager.this.mAdapter == null) || (ViewPager.this.mCurItem < 0) || (ViewPager.this.mCurItem >= -1 + ViewPager.this.mAdapter.getCount())) {
            bool = false;
          } else {
            ViewPager.this.setCurrentItem(1 + ViewPager.this.mCurItem);
          }
          break;
        case 8192: 
          if ((ViewPager.this.mAdapter == null) || (ViewPager.this.mCurItem <= 0) || (ViewPager.this.mCurItem >= ViewPager.this.mAdapter.getCount())) {
            bool = false;
          } else {
            ViewPager.this.setCurrentItem(-1 + ViewPager.this.mCurItem);
          }
          break;
        }
      }
      return bool;
    }
  }
  
  public static class SavedState
    extends View.BaseSavedState
  {
    public static final Parcelable.Creator<SavedState> CREATOR = ParcelableCompat.newCreator(new ParcelableCompatCreatorCallbacks()
    {
      public ViewPager.SavedState createFromParcel(Parcel paramAnonymousParcel, ClassLoader paramAnonymousClassLoader)
      {
        return new ViewPager.SavedState(paramAnonymousParcel, paramAnonymousClassLoader);
      }
      
      public ViewPager.SavedState[] newArray(int paramAnonymousInt)
      {
        return new ViewPager.SavedState[paramAnonymousInt];
      }
    });
    Parcelable adapterState;
    ClassLoader loader;
    int position;
    
    SavedState(Parcel paramParcel, ClassLoader paramClassLoader)
    {
      super();
      if (paramClassLoader == null) {
        paramClassLoader = getClass().getClassLoader();
      }
      this.position = paramParcel.readInt();
      this.adapterState = paramParcel.readParcelable(paramClassLoader);
      this.loader = paramClassLoader;
    }
    
    public SavedState(Parcelable paramParcelable)
    {
      super();
    }
    
    public String toString()
    {
      return "FragmentPager.SavedState{" + Integer.toHexString(System.identityHashCode(this)) + " position=" + this.position + "}";
    }
    
    public void writeToParcel(Parcel paramParcel, int paramInt)
    {
      super.writeToParcel(paramParcel, paramInt);
      paramParcel.writeInt(this.position);
      paramParcel.writeParcelable(this.adapterState, paramInt);
    }
  }
  
  static abstract interface Decor {}
  
  static abstract interface OnAdapterChangeListener
  {
    public abstract void onAdapterChanged(PagerAdapter paramPagerAdapter1, PagerAdapter paramPagerAdapter2);
  }
  
  public static class SimpleOnPageChangeListener
    implements ViewPager.OnPageChangeListener
  {
    public void onPageScrollStateChanged(int paramInt) {}
    
    public void onPageScrolled(int paramInt1, float paramFloat, int paramInt2) {}
    
    public void onPageSelected(int paramInt) {}
  }
  
  public static abstract interface OnPageChangeListener
  {
    public abstract void onPageScrollStateChanged(int paramInt);
    
    public abstract void onPageScrolled(int paramInt1, float paramFloat, int paramInt2);
    
    public abstract void onPageSelected(int paramInt);
  }
  
  static class ItemInfo
  {
    Object object;
    float offset;
    int position;
    boolean scrolling;
    float widthFactor;
  }
}


/* Location:           C:\Users\PJ\Desktop\get-apk-source_win\classes_dex2jar.jar
 * Qualified Name:     android.support.v4.view.ViewPager
 * JD-Core Version:    0.7.0.1
 */