.class Lcom/pizza/work/SaleActivity$1;
.super Ljava/lang/Object;
.source "SaleActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pizza/work/SaleActivity;->save()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pizza/work/SaleActivity;


# direct methods
.method constructor <init>(Lcom/pizza/work/SaleActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/pizza/work/SaleActivity$1;->this$0:Lcom/pizza/work/SaleActivity;

    .line 391
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 395
    iget-object v0, p0, Lcom/pizza/work/SaleActivity$1;->this$0:Lcom/pizza/work/SaleActivity;

    invoke-static {v0}, Lcom/pizza/work/SaleActivity;->access$17(Lcom/pizza/work/SaleActivity;)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 397
    return-void
.end method
