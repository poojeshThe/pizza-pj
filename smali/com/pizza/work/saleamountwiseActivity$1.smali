.class Lcom/pizza/work/saleamountwiseActivity$1;
.super Ljava/lang/Object;
.source "saleamountwiseActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pizza/work/saleamountwiseActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pizza/work/saleamountwiseActivity;


# direct methods
.method constructor <init>(Lcom/pizza/work/saleamountwiseActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/pizza/work/saleamountwiseActivity$1;->this$0:Lcom/pizza/work/saleamountwiseActivity;

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 105
    iget-object v0, p0, Lcom/pizza/work/saleamountwiseActivity$1;->this$0:Lcom/pizza/work/saleamountwiseActivity;

    invoke-virtual {v0}, Lcom/pizza/work/saleamountwiseActivity;->display()V

    .line 106
    return-void
.end method
