.class Lcom/pizza/work/SaleReportActivity$2;
.super Ljava/lang/Object;
.source "SaleReportActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pizza/work/SaleReportActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pizza/work/SaleReportActivity;


# direct methods
.method constructor <init>(Lcom/pizza/work/SaleReportActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/pizza/work/SaleReportActivity$2;->this$0:Lcom/pizza/work/SaleReportActivity;

    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "view"

    .prologue
    .line 113
    new-instance v0, Lcom/pizza/work/SaleReportActivity$task;

    iget-object v1, p0, Lcom/pizza/work/SaleReportActivity$2;->this$0:Lcom/pizza/work/SaleReportActivity;

    invoke-direct {v0, v1}, Lcom/pizza/work/SaleReportActivity$task;-><init>(Lcom/pizza/work/SaleReportActivity;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/pizza/work/SaleReportActivity$task;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 115
    return-void
.end method
