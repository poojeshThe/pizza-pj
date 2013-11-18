.class Lcom/pizza/work/SaleReportActivity$task;
.super Landroid/os/AsyncTask;
.source "SaleReportActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pizza/work/SaleReportActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "task"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private progressDialog:Landroid/app/ProgressDialog;

.field final synthetic this$0:Lcom/pizza/work/SaleReportActivity;


# direct methods
.method constructor <init>(Lcom/pizza/work/SaleReportActivity;)V
    .locals 1
    .parameter

    .prologue
    .line 354
    iput-object p1, p0, Lcom/pizza/work/SaleReportActivity$task;->this$0:Lcom/pizza/work/SaleReportActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 356
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/pizza/work/SaleReportActivity$task;->progressDialog:Landroid/app/ProgressDialog;

    return-void
.end method


# virtual methods
.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/pizza/work/SaleReportActivity$task;->doInBackground([Ljava/lang/String;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/Void;
    .locals 1
    .parameter "params"

    .prologue
    .line 370
    iget-object v0, p0, Lcom/pizza/work/SaleReportActivity$task;->this$0:Lcom/pizza/work/SaleReportActivity;

    invoke-virtual {v0}, Lcom/pizza/work/SaleReportActivity;->display()V

    .line 371
    const/4 v0, 0x0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/pizza/work/SaleReportActivity$task;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 386
    iget-object v0, p0, Lcom/pizza/work/SaleReportActivity$task;->this$0:Lcom/pizza/work/SaleReportActivity;

    invoke-virtual {v0}, Lcom/pizza/work/SaleReportActivity;->display()V

    .line 387
    iget-object v0, p0, Lcom/pizza/work/SaleReportActivity$task;->this$0:Lcom/pizza/work/SaleReportActivity;

    invoke-virtual {v0}, Lcom/pizza/work/SaleReportActivity;->tabledisplay()V

    .line 388
    iget-object v0, p0, Lcom/pizza/work/SaleReportActivity$task;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 389
    return-void
.end method

.method protected onPreExecute()V
    .locals 2

    .prologue
    .line 359
    iget-object v0, p0, Lcom/pizza/work/SaleReportActivity$task;->progressDialog:Landroid/app/ProgressDialog;

    const-string v1, "Download data..."

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 360
    iget-object v0, p0, Lcom/pizza/work/SaleReportActivity$task;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 361
    iget-object v0, p0, Lcom/pizza/work/SaleReportActivity$task;->progressDialog:Landroid/app/ProgressDialog;

    new-instance v1, Lcom/pizza/work/SaleReportActivity$task$1;

    invoke-direct {v1, p0}, Lcom/pizza/work/SaleReportActivity$task$1;-><init>(Lcom/pizza/work/SaleReportActivity$task;)V

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 367
    return-void
.end method
