.class Lcom/pizza/work/saleamountwiseActivity$3;
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
    iput-object p1, p0, Lcom/pizza/work/saleamountwiseActivity$3;->this$0:Lcom/pizza/work/saleamountwiseActivity;

    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/pizza/work/saleamountwiseActivity$3;)Lcom/pizza/work/saleamountwiseActivity;
    .locals 1
    .parameter

    .prologue
    .line 125
    iget-object v0, p0, Lcom/pizza/work/saleamountwiseActivity$3;->this$0:Lcom/pizza/work/saleamountwiseActivity;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .parameter "v"

    .prologue
    .line 128
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v6

    .line 129
    .local v6, c:Ljava/util/Calendar;
    const/4 v1, 0x1

    invoke-virtual {v6, v1}, Ljava/util/Calendar;->get(I)I

    move-result v3

    .line 130
    .local v3, y:I
    const/4 v1, 0x2

    invoke-virtual {v6, v1}, Ljava/util/Calendar;->get(I)I

    move-result v4

    .line 131
    .local v4, m:I
    const/4 v1, 0x5

    invoke-virtual {v6, v1}, Ljava/util/Calendar;->get(I)I

    move-result v5

    .line 132
    .local v5, d:I
    new-instance v0, Landroid/app/DatePickerDialog;

    iget-object v1, p0, Lcom/pizza/work/saleamountwiseActivity$3;->this$0:Lcom/pizza/work/saleamountwiseActivity;

    new-instance v2, Lcom/pizza/work/saleamountwiseActivity$3$1;

    invoke-direct {v2, p0}, Lcom/pizza/work/saleamountwiseActivity$3$1;-><init>(Lcom/pizza/work/saleamountwiseActivity$3;)V

    invoke-direct/range {v0 .. v5}, Landroid/app/DatePickerDialog;-><init>(Landroid/content/Context;Landroid/app/DatePickerDialog$OnDateSetListener;III)V

    .line 148
    .local v0, dp:Landroid/app/DatePickerDialog;
    const-string v1, "Sandwitch"

    invoke-virtual {v0, v1}, Landroid/app/DatePickerDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 149
    invoke-virtual {v0}, Landroid/app/DatePickerDialog;->show()V

    .line 151
    return-void
.end method
