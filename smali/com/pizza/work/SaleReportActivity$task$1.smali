.class Lcom/pizza/work/SaleReportActivity$task$1;
.super Ljava/lang/Object;
.source "SaleReportActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pizza/work/SaleReportActivity$task;->onPreExecute()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/pizza/work/SaleReportActivity$task;


# direct methods
.method constructor <init>(Lcom/pizza/work/SaleReportActivity$task;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/pizza/work/SaleReportActivity$task$1;->this$1:Lcom/pizza/work/SaleReportActivity$task;

    .line 361
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter "arg0"

    .prologue
    .line 364
    iget-object v0, p0, Lcom/pizza/work/SaleReportActivity$task$1;->this$1:Lcom/pizza/work/SaleReportActivity$task;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/pizza/work/SaleReportActivity$task;->cancel(Z)Z

    .line 365
    return-void
.end method