.class public Lcom/pizza/work/library/IconContextMenu$IconMenuAdapter;
.super Landroid/widget/BaseAdapter;
.source "IconContextMenu.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pizza/work/library/IconContextMenu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "IconMenuAdapter"
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private mItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/pizza/work/library/IconContextMenu$IconContextMenuItem;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/pizza/work/library/IconContextMenu;


# direct methods
.method public constructor <init>(Lcom/pizza/work/library/IconContextMenu;Landroid/content/Context;)V
    .locals 1
    .parameter
    .parameter "context"

    .prologue
    .line 120
    iput-object p1, p0, Lcom/pizza/work/library/IconContextMenu$IconMenuAdapter;->this$0:Lcom/pizza/work/library/IconContextMenu;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 116
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pizza/work/library/IconContextMenu$IconMenuAdapter;->context:Landroid/content/Context;

    .line 118
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/pizza/work/library/IconContextMenu$IconMenuAdapter;->mItems:Ljava/util/ArrayList;

    .line 121
    iput-object p2, p0, Lcom/pizza/work/library/IconContextMenu$IconMenuAdapter;->context:Landroid/content/Context;

    .line 122
    return-void
.end method

.method private toPixel(Landroid/content/res/Resources;I)F
    .locals 4
    .parameter "res"
    .parameter "dip"

    .prologue
    .line 183
    const/4 v1, 0x1

    int-to-float v2, p2

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    invoke-static {v1, v2, v3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    .line 184
    .local v0, px:F
    return v0
.end method


# virtual methods
.method public addItem(Lcom/pizza/work/library/IconContextMenu$IconContextMenuItem;)V
    .locals 1
    .parameter "menuItem"

    .prologue
    .line 129
    iget-object v0, p0, Lcom/pizza/work/library/IconContextMenu$IconMenuAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 130
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lcom/pizza/work/library/IconContextMenu$IconMenuAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 139
    iget-object v0, p0, Lcom/pizza/work/library/IconContextMenu$IconMenuAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 3
    .parameter "position"

    .prologue
    .line 144
    invoke-virtual {p0, p1}, Lcom/pizza/work/library/IconContextMenu$IconMenuAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pizza/work/library/IconContextMenu$IconContextMenuItem;

    .line 145
    .local v0, item:Lcom/pizza/work/library/IconContextMenu$IconContextMenuItem;
    iget v1, v0, Lcom/pizza/work/library/IconContextMenu$IconContextMenuItem;->actionTag:I

    int-to-long v1, v1

    return-wide v1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 12
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/16 v11, 0xf

    const/4 v10, 0x0

    const/4 v9, 0x0

    .line 150
    invoke-virtual {p0, p1}, Lcom/pizza/work/library/IconContextMenu$IconMenuAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pizza/work/library/IconContextMenu$IconContextMenuItem;

    .line 152
    .local v0, item:Lcom/pizza/work/library/IconContextMenu$IconContextMenuItem;
    iget-object v7, p0, Lcom/pizza/work/library/IconContextMenu$IconMenuAdapter;->this$0:Lcom/pizza/work/library/IconContextMenu;

    invoke-static {v7}, Lcom/pizza/work/library/IconContextMenu;->access$0(Lcom/pizza/work/library/IconContextMenu;)Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 154
    .local v2, res:Landroid/content/res/Resources;
    if-nez p2, :cond_1

    .line 155
    new-instance v3, Landroid/widget/TextView;

    iget-object v7, p0, Lcom/pizza/work/library/IconContextMenu$IconMenuAdapter;->context:Landroid/content/Context;

    invoke-direct {v3, v7}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 156
    .local v3, temp:Landroid/widget/TextView;
    new-instance v1, Landroid/widget/AbsListView$LayoutParams;

    const/4 v7, -0x1

    .line 157
    const/4 v8, -0x2

    .line 156
    invoke-direct {v1, v7, v8}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    .line 158
    .local v1, param:Landroid/widget/AbsListView$LayoutParams;
    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 159
    invoke-direct {p0, v2, v11}, Lcom/pizza/work/library/IconContextMenu$IconMenuAdapter;->toPixel(Landroid/content/res/Resources;I)F

    move-result v7

    float-to-int v7, v7

    invoke-direct {p0, v2, v11}, Lcom/pizza/work/library/IconContextMenu$IconMenuAdapter;->toPixel(Landroid/content/res/Resources;I)F

    move-result v8

    float-to-int v8, v8

    invoke-virtual {v3, v7, v10, v8, v10}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 160
    const/16 v7, 0x10

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setGravity(I)V

    .line 162
    iget-object v7, p0, Lcom/pizza/work/library/IconContextMenu$IconMenuAdapter;->context:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v5

    .line 163
    .local v5, th:Landroid/content/res/Resources$Theme;
    new-instance v6, Landroid/util/TypedValue;

    invoke-direct {v6}, Landroid/util/TypedValue;-><init>()V

    .line 165
    .local v6, tv:Landroid/util/TypedValue;
    const v7, 0x1010043

    const/4 v8, 0x1

    invoke-virtual {v5, v7, v6, v8}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 166
    iget-object v7, p0, Lcom/pizza/work/library/IconContextMenu$IconMenuAdapter;->context:Landroid/content/Context;

    iget v8, v6, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v3, v7, v8}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 169
    :cond_0
    const/16 v7, 0x41

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setMinHeight(I)V

    .line 170
    const/16 v7, 0xe

    invoke-direct {p0, v2, v7}, Lcom/pizza/work/library/IconContextMenu$IconMenuAdapter;->toPixel(Landroid/content/res/Resources;I)F

    move-result v7

    float-to-int v7, v7

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    .line 171
    move-object p2, v3

    .end local v1           #param:Landroid/widget/AbsListView$LayoutParams;
    .end local v3           #temp:Landroid/widget/TextView;
    .end local v5           #th:Landroid/content/res/Resources$Theme;
    .end local v6           #tv:Landroid/util/TypedValue;
    :cond_1
    move-object v4, p2

    .line 174
    check-cast v4, Landroid/widget/TextView;

    .line 175
    .local v4, textView:Landroid/widget/TextView;
    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 176
    iget-object v7, v0, Lcom/pizza/work/library/IconContextMenu$IconContextMenuItem;->text:Ljava/lang/CharSequence;

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 177
    iget-object v7, v0, Lcom/pizza/work/library/IconContextMenu$IconContextMenuItem;->image:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, v7, v9, v9, v9}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 179
    return-object v4
.end method
