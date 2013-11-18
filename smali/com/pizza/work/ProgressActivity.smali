.class public Lcom/pizza/work/ProgressActivity;
.super Landroid/app/Activity;
.source "ProgressActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pizza/work/ProgressActivity$BackgroundThread;
    }
.end annotation


# instance fields
.field backgroundThread:Lcom/pizza/work/ProgressActivity$BackgroundThread;

.field handler:Landroid/os/Handler;

.field progressDialog:Landroid/app/ProgressDialog;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 74
    new-instance v0, Lcom/pizza/work/ProgressActivity$1;

    invoke-direct {v0, p0}, Lcom/pizza/work/ProgressActivity$1;-><init>(Lcom/pizza/work/ProgressActivity;)V

    iput-object v0, p0, Lcom/pizza/work/ProgressActivity;->handler:Landroid/os/Handler;

    .line 16
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    const/4 v2, 0x1

    .line 21
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 29
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/pizza/work/ProgressActivity;->requestWindowFeature(I)Z

    .line 32
    invoke-virtual {p0, v2}, Lcom/pizza/work/ProgressActivity;->setProgressBarIndeterminateVisibility(Z)V

    .line 34
    const-string v0, "ProgressDialog"

    const-string v1, "Wait!"

    .line 33
    invoke-static {p0, v0, v1}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/pizza/work/ProgressActivity;->progressDialog:Landroid/app/ProgressDialog;

    .line 36
    new-instance v0, Lcom/pizza/work/ProgressActivity$BackgroundThread;

    invoke-direct {v0, p0}, Lcom/pizza/work/ProgressActivity$BackgroundThread;-><init>(Lcom/pizza/work/ProgressActivity;)V

    iput-object v0, p0, Lcom/pizza/work/ProgressActivity;->backgroundThread:Lcom/pizza/work/ProgressActivity$BackgroundThread;

    .line 37
    iget-object v0, p0, Lcom/pizza/work/ProgressActivity;->backgroundThread:Lcom/pizza/work/ProgressActivity$BackgroundThread;

    invoke-virtual {v0, v2}, Lcom/pizza/work/ProgressActivity$BackgroundThread;->setRunning(Z)V

    .line 38
    iget-object v0, p0, Lcom/pizza/work/ProgressActivity;->backgroundThread:Lcom/pizza/work/ProgressActivity$BackgroundThread;

    invoke-virtual {v0}, Lcom/pizza/work/ProgressActivity$BackgroundThread;->start()V

    .line 40
    return-void
.end method
