.class public Lcom/pizza/work/ProgressActivity$BackgroundThread;
.super Ljava/lang/Thread;
.source "ProgressActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pizza/work/ProgressActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "BackgroundThread"
.end annotation


# instance fields
.field cnt:I

.field volatile running:Z

.field final synthetic this$0:Lcom/pizza/work/ProgressActivity;


# direct methods
.method public constructor <init>(Lcom/pizza/work/ProgressActivity;)V
    .locals 1
    .parameter

    .prologue
    .line 47
    iput-object p1, p0, Lcom/pizza/work/ProgressActivity$BackgroundThread;->this$0:Lcom/pizza/work/ProgressActivity;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 48
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/pizza/work/ProgressActivity$BackgroundThread;->running:Z

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 59
    :cond_0
    :goto_0
    iget-boolean v1, p0, Lcom/pizza/work/ProgressActivity$BackgroundThread;->running:Z

    if-nez v1, :cond_1

    .line 70
    iget-object v1, p0, Lcom/pizza/work/ProgressActivity$BackgroundThread;->this$0:Lcom/pizza/work/ProgressActivity;

    iget-object v1, v1, Lcom/pizza/work/ProgressActivity;->handler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/pizza/work/ProgressActivity$BackgroundThread;->this$0:Lcom/pizza/work/ProgressActivity;

    iget-object v2, v2, Lcom/pizza/work/ProgressActivity;->handler:Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 71
    return-void

    .line 61
    :cond_1
    const-wide/16 v1, 0x64

    :try_start_0
    invoke-static {v1, v2}, Lcom/pizza/work/ProgressActivity$BackgroundThread;->sleep(J)V

    .line 62
    iget v1, p0, Lcom/pizza/work/ProgressActivity$BackgroundThread;->cnt:I

    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Lcom/pizza/work/ProgressActivity$BackgroundThread;->cnt:I

    if-nez v1, :cond_0

    .line 63
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/pizza/work/ProgressActivity$BackgroundThread;->running:Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 65
    :catch_0
    move-exception v0

    .line 67
    .local v0, e:Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method

.method setRunning(Z)V
    .locals 1
    .parameter "b"

    .prologue
    .line 52
    iput-boolean p1, p0, Lcom/pizza/work/ProgressActivity$BackgroundThread;->running:Z

    .line 53
    const/16 v0, 0xa

    iput v0, p0, Lcom/pizza/work/ProgressActivity$BackgroundThread;->cnt:I

    .line 54
    return-void
.end method
