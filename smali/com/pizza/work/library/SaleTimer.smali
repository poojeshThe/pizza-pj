.class public Lcom/pizza/work/library/SaleTimer;
.super Landroid/os/CountDownTimer;
.source "SaleTimer.java"


# static fields
.field public static timeElapsed:J

.field public static timeremain:J

.field public static timeup:Z


# instance fields
.field startTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9
    const/4 v0, 0x0

    sput-boolean v0, Lcom/pizza/work/library/SaleTimer;->timeup:Z

    .line 6
    return-void
.end method

.method public constructor <init>(JJ)V
    .locals 0
    .parameter "startTime"
    .parameter "interval"

    .prologue
    .line 17
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/os/CountDownTimer;-><init>(JJ)V

    .line 18
    iput-wide p1, p0, Lcom/pizza/work/library/SaleTimer;->startTime:J

    .line 19
    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 1

    .prologue
    .line 28
    const/4 v0, 0x1

    sput-boolean v0, Lcom/pizza/work/library/SaleTimer;->timeup:Z

    .line 29
    return-void
.end method

.method public onTick(J)V
    .locals 2
    .parameter "millisUntilFinished"

    .prologue
    .line 38
    sput-wide p1, Lcom/pizza/work/library/SaleTimer;->timeremain:J

    .line 40
    iget-wide v0, p0, Lcom/pizza/work/library/SaleTimer;->startTime:J

    sub-long/2addr v0, p1

    sput-wide v0, Lcom/pizza/work/library/SaleTimer;->timeElapsed:J

    .line 43
    return-void
.end method
