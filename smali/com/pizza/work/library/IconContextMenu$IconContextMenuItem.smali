.class public Lcom/pizza/work/library/IconContextMenu$IconContextMenuItem;
.super Ljava/lang/Object;
.source "IconContextMenu.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pizza/work/library/IconContextMenu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "IconContextMenuItem"
.end annotation


# instance fields
.field public final actionTag:I

.field public final image:Landroid/graphics/drawable/Drawable;

.field public final text:Ljava/lang/CharSequence;

.field final synthetic this$0:Lcom/pizza/work/library/IconContextMenu;


# direct methods
.method public constructor <init>(Lcom/pizza/work/library/IconContextMenu;Landroid/content/res/Resources;III)V
    .locals 1
    .parameter
    .parameter "res"
    .parameter "textResourceId"
    .parameter "imageResourceId"
    .parameter "actionTag"

    .prologue
    .line 209
    iput-object p1, p0, Lcom/pizza/work/library/IconContextMenu$IconContextMenuItem;->this$0:Lcom/pizza/work/library/IconContextMenu;

    .line 208
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 210
    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/pizza/work/library/IconContextMenu$IconContextMenuItem;->text:Ljava/lang/CharSequence;

    .line 211
    const/4 v0, -0x1

    if-eq p4, v0, :cond_0

    .line 212
    invoke-virtual {p2, p4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/pizza/work/library/IconContextMenu$IconContextMenuItem;->image:Landroid/graphics/drawable/Drawable;

    .line 216
    :goto_0
    iput p5, p0, Lcom/pizza/work/library/IconContextMenu$IconContextMenuItem;->actionTag:I

    .line 217
    return-void

    .line 214
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pizza/work/library/IconContextMenu$IconContextMenuItem;->image:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method

.method public constructor <init>(Lcom/pizza/work/library/IconContextMenu;Landroid/content/res/Resources;Ljava/lang/CharSequence;II)V
    .locals 1
    .parameter
    .parameter "res"
    .parameter "title"
    .parameter "imageResourceId"
    .parameter "actionTag"

    .prologue
    .line 231
    iput-object p1, p0, Lcom/pizza/work/library/IconContextMenu$IconContextMenuItem;->this$0:Lcom/pizza/work/library/IconContextMenu;

    .line 230
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 232
    iput-object p3, p0, Lcom/pizza/work/library/IconContextMenu$IconContextMenuItem;->text:Ljava/lang/CharSequence;

    .line 233
    const/4 v0, -0x1

    if-eq p4, v0, :cond_0

    .line 234
    invoke-virtual {p2, p4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/pizza/work/library/IconContextMenu$IconContextMenuItem;->image:Landroid/graphics/drawable/Drawable;

    .line 238
    :goto_0
    iput p5, p0, Lcom/pizza/work/library/IconContextMenu$IconContextMenuItem;->actionTag:I

    .line 239
    return-void

    .line 236
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pizza/work/library/IconContextMenu$IconContextMenuItem;->image:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method
