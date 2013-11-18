.class Lcom/pizza/work/PersonalLedgerActivity$2;
.super Ljava/lang/Object;
.source "PersonalLedgerActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pizza/work/PersonalLedgerActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pizza/work/PersonalLedgerActivity;


# direct methods
.method constructor <init>(Lcom/pizza/work/PersonalLedgerActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/pizza/work/PersonalLedgerActivity$2;->this$0:Lcom/pizza/work/PersonalLedgerActivity;

    .line 148
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/pizza/work/PersonalLedgerActivity$2;)Lcom/pizza/work/PersonalLedgerActivity;
    .locals 1
    .parameter

    .prologue
    .line 148
    iget-object v0, p0, Lcom/pizza/work/PersonalLedgerActivity$2;->this$0:Lcom/pizza/work/PersonalLedgerActivity;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .parameter "v"

    .prologue
    .line 151
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v6

    .line 152
    .local v6, c:Ljava/util/Calendar;
    const/4 v1, 0x1

    invoke-virtual {v6, v1}, Ljava/util/Calendar;->get(I)I

    move-result v3

    .line 153
    .local v3, y:I
    const/4 v1, 0x2

    invoke-virtual {v6, v1}, Ljava/util/Calendar;->get(I)I

    move-result v4

    .line 154
    .local v4, m:I
    const/4 v1, 0x5

    invoke-virtual {v6, v1}, Ljava/util/Calendar;->get(I)I

    move-result v5

    .line 155
    .local v5, d:I
    new-instance v0, Landroid/app/DatePickerDialog;

    iget-object v1, p0, Lcom/pizza/work/PersonalLedgerActivity$2;->this$0:Lcom/pizza/work/PersonalLedgerActivity;

    new-instance v2, Lcom/pizza/work/PersonalLedgerActivity$2$1;

    invoke-direct {v2, p0}, Lcom/pizza/work/PersonalLedgerActivity$2$1;-><init>(Lcom/pizza/work/PersonalLedgerActivity$2;)V

    invoke-direct/range {v0 .. v5}, Landroid/app/DatePickerDialog;-><init>(Landroid/content/Context;Landroid/app/DatePickerDialog$OnDateSetListener;III)V

    .line 173
    .local v0, dp:Landroid/app/DatePickerDialog;
    const-string v1, "Sandwitch"

    invoke-virtual {v0, v1}, Landroid/app/DatePickerDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 174
    invoke-virtual {v0}, Landroid/app/DatePickerDialog;->show()V

    .line 177
    return-void
.end method
