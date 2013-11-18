.class Lcom/pizza/work/ProgressActivity$1;
.super Landroid/os/Handler;
.source "ProgressActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pizza/work/ProgressActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pizza/work/ProgressActivity;


# direct methods
.method constructor <init>(Lcom/pizza/work/ProgressActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/pizza/work/ProgressActivity$1;->this$0:Lcom/pizza/work/ProgressActivity;

    .line 74
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .parameter "msg"

    .prologue
    .line 80
    iget-object v3, p0, Lcom/pizza/work/ProgressActivity$1;->this$0:Lcom/pizza/work/ProgressActivity;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/pizza/work/ProgressActivity;->setProgressBarIndeterminateVisibility(Z)V

    .line 81
    iget-object v3, p0, Lcom/pizza/work/ProgressActivity$1;->this$0:Lcom/pizza/work/ProgressActivity;

    iget-object v3, v3, Lcom/pizza/work/ProgressActivity;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v3}, Landroid/app/ProgressDialog;->dismiss()V

    .line 83
    const/4 v2, 0x1

    .line 84
    .local v2, retry:Z
    :goto_0
    if-nez v2, :cond_0

    .line 94
    new-instance v1, Landroid/content/Intent;

    iget-object v3, p0, Lcom/pizza/work/ProgressActivity$1;->this$0:Lcom/pizza/work/ProgressActivity;

    invoke-virtual {v3}, Lcom/pizza/work/ProgressActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-class v4, Lcom/pizza/work/SaleActivity;

    invoke-direct {v1, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 95
    .local v1, i:Landroid/content/Intent;
    iget-object v3, p0, Lcom/pizza/work/ProgressActivity$1;->this$0:Lcom/pizza/work/ProgressActivity;

    invoke-virtual {v3, v1}, Lcom/pizza/work/ProgressActivity;->startActivity(Landroid/content/Intent;)V

    .line 97
    return-void

    .line 86
    .end local v1           #i:Landroid/content/Intent;
    :cond_0
    :try_start_0
    iget-object v3, p0, Lcom/pizza/work/ProgressActivity$1;->this$0:Lcom/pizza/work/ProgressActivity;

    iget-object v3, v3, Lcom/pizza/work/ProgressActivity;->backgroundThread:Lcom/pizza/work/ProgressActivity$BackgroundThread;

    invoke-virtual {v3}, Lcom/pizza/work/ProgressActivity$BackgroundThread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 87
    const/4 v2, 0x0

    goto :goto_0

    .line 88
    :catch_0
    move-exception v0

    .line 90
    .local v0, e:Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method
