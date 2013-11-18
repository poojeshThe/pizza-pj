.class Lcom/pizza/work/comboActivity$task;
.super Landroid/os/AsyncTask;
.source "comboActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pizza/work/comboActivity;
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
.field is:Ljava/io/InputStream;

.field private progressDialog:Landroid/app/ProgressDialog;

.field result:Ljava/lang/String;

.field final synthetic this$0:Lcom/pizza/work/comboActivity;


# direct methods
.method constructor <init>(Lcom/pizza/work/comboActivity;)V
    .locals 1
    .parameter

    .prologue
    .line 299
    iput-object p1, p0, Lcom/pizza/work/comboActivity$task;->this$0:Lcom/pizza/work/comboActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 301
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/pizza/work/comboActivity$task;->progressDialog:Landroid/app/ProgressDialog;

    .line 302
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pizza/work/comboActivity$task;->is:Ljava/io/InputStream;

    .line 303
    const-string v0, ""

    iput-object v0, p0, Lcom/pizza/work/comboActivity$task;->result:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/pizza/work/comboActivity$task;->doInBackground([Ljava/lang/String;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/Void;
    .locals 1
    .parameter "params"

    .prologue
    .line 316
    iget-object v0, p0, Lcom/pizza/work/comboActivity$task;->this$0:Lcom/pizza/work/comboActivity;

    invoke-virtual {v0}, Lcom/pizza/work/comboActivity;->fillDate()V

    .line 317
    iget-object v0, p0, Lcom/pizza/work/comboActivity$task;->this$0:Lcom/pizza/work/comboActivity;

    invoke-virtual {v0}, Lcom/pizza/work/comboActivity;->fillCustomer()V

    .line 318
    iget-object v0, p0, Lcom/pizza/work/comboActivity$task;->this$0:Lcom/pizza/work/comboActivity;

    invoke-virtual {v0}, Lcom/pizza/work/comboActivity;->display()V

    .line 319
    const/4 v0, 0x0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/pizza/work/comboActivity$task;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 334
    iget-object v0, p0, Lcom/pizza/work/comboActivity$task;->this$0:Lcom/pizza/work/comboActivity;

    invoke-virtual {v0}, Lcom/pizza/work/comboActivity;->tabledisplay()V

    .line 335
    iget-object v0, p0, Lcom/pizza/work/comboActivity$task;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 336
    iget-object v0, p0, Lcom/pizza/work/comboActivity$task;->this$0:Lcom/pizza/work/comboActivity;

    invoke-virtual {v0}, Lcom/pizza/work/comboActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "msg msg"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method protected onPreExecute()V
    .locals 2

    .prologue
    .line 305
    iget-object v0, p0, Lcom/pizza/work/comboActivity$task;->progressDialog:Landroid/app/ProgressDialog;

    const-string v1, "Download data..."

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 306
    iget-object v0, p0, Lcom/pizza/work/comboActivity$task;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 307
    iget-object v0, p0, Lcom/pizza/work/comboActivity$task;->progressDialog:Landroid/app/ProgressDialog;

    new-instance v1, Lcom/pizza/work/comboActivity$task$1;

    invoke-direct {v1, p0}, Lcom/pizza/work/comboActivity$task$1;-><init>(Lcom/pizza/work/comboActivity$task;)V

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 313
    return-void
.end method
