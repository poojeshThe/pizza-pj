.class public Lcom/pizza/work/MenuActivity;
.super Landroid/app/Activity;
.source "MenuActivity.java"


# static fields
.field public static final progress_bar_type:I


# instance fields
.field changepass:Landroid/widget/Button;

.field custledger:Landroid/widget/Button;

.field ledger:Landroid/widget/Button;

.field private pDialog:Landroid/app/ProgressDialog;

.field report:Landroid/widget/Button;

.field result:Landroid/widget/Button;

.field sale:Landroid/widget/Button;

.field t1:Landroid/widget/TextView;

.field winners:Landroid/widget/Button;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 0

    .prologue
    .line 147
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    .line 148
    invoke-virtual {p0}, Lcom/pizza/work/MenuActivity;->finish()V

    .line 182
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 44
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 45
    const v0, 0x7f030002

    invoke-virtual {p0, v0}, Lcom/pizza/work/MenuActivity;->setContentView(I)V

    .line 50
    const v0, 0x7f080007

    invoke-virtual {p0, v0}, Lcom/pizza/work/MenuActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/pizza/work/MenuActivity;->t1:Landroid/widget/TextView;

    .line 51
    iget-object v0, p0, Lcom/pizza/work/MenuActivity;->t1:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Agent Code   "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/pizza/work/library/UserFunctions;->usercode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 52
    iget-object v0, p0, Lcom/pizza/work/MenuActivity;->t1:Landroid/widget/TextView;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 53
    const v0, 0x7f080009

    invoke-virtual {p0, v0}, Lcom/pizza/work/MenuActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/pizza/work/MenuActivity;->sale:Landroid/widget/Button;

    .line 54
    const v0, 0x7f08000d

    invoke-virtual {p0, v0}, Lcom/pizza/work/MenuActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/pizza/work/MenuActivity;->ledger:Landroid/widget/Button;

    .line 55
    const v0, 0x7f08000a

    invoke-virtual {p0, v0}, Lcom/pizza/work/MenuActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/pizza/work/MenuActivity;->report:Landroid/widget/Button;

    .line 56
    const v0, 0x7f08000b

    invoke-virtual {p0, v0}, Lcom/pizza/work/MenuActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/pizza/work/MenuActivity;->result:Landroid/widget/Button;

    .line 57
    const v0, 0x7f08000c

    invoke-virtual {p0, v0}, Lcom/pizza/work/MenuActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/pizza/work/MenuActivity;->winners:Landroid/widget/Button;

    .line 60
    const v0, 0x7f08000e

    invoke-virtual {p0, v0}, Lcom/pizza/work/MenuActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/pizza/work/MenuActivity;->changepass:Landroid/widget/Button;

    .line 64
    iget-object v0, p0, Lcom/pizza/work/MenuActivity;->sale:Landroid/widget/Button;

    new-instance v1, Lcom/pizza/work/MenuActivity$1;

    invoke-direct {v1, p0}, Lcom/pizza/work/MenuActivity$1;-><init>(Lcom/pizza/work/MenuActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 76
    iget-object v0, p0, Lcom/pizza/work/MenuActivity;->ledger:Landroid/widget/Button;

    new-instance v1, Lcom/pizza/work/MenuActivity$2;

    invoke-direct {v1, p0}, Lcom/pizza/work/MenuActivity$2;-><init>(Lcom/pizza/work/MenuActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 85
    iget-object v0, p0, Lcom/pizza/work/MenuActivity;->report:Landroid/widget/Button;

    new-instance v1, Lcom/pizza/work/MenuActivity$3;

    invoke-direct {v1, p0}, Lcom/pizza/work/MenuActivity$3;-><init>(Lcom/pizza/work/MenuActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 95
    iget-object v0, p0, Lcom/pizza/work/MenuActivity;->result:Landroid/widget/Button;

    new-instance v1, Lcom/pizza/work/MenuActivity$4;

    invoke-direct {v1, p0}, Lcom/pizza/work/MenuActivity$4;-><init>(Lcom/pizza/work/MenuActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 107
    iget-object v0, p0, Lcom/pizza/work/MenuActivity;->winners:Landroid/widget/Button;

    new-instance v1, Lcom/pizza/work/MenuActivity$5;

    invoke-direct {v1, p0}, Lcom/pizza/work/MenuActivity$5;-><init>(Lcom/pizza/work/MenuActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 130
    iget-object v0, p0, Lcom/pizza/work/MenuActivity;->changepass:Landroid/widget/Button;

    new-instance v1, Lcom/pizza/work/MenuActivity$6;

    invoke-direct {v1, p0}, Lcom/pizza/work/MenuActivity$6;-><init>(Lcom/pizza/work/MenuActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 142
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 3
    .parameter "id"

    .prologue
    const/4 v2, 0x1

    .line 224
    packed-switch p1, :pswitch_data_0

    .line 235
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 226
    :pswitch_0
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/pizza/work/MenuActivity;->pDialog:Landroid/app/ProgressDialog;

    .line 227
    iget-object v0, p0, Lcom/pizza/work/MenuActivity;->pDialog:Landroid/app/ProgressDialog;

    const-string v1, "Downloading file. Please wait..."

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 228
    iget-object v0, p0, Lcom/pizza/work/MenuActivity;->pDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 229
    iget-object v0, p0, Lcom/pizza/work/MenuActivity;->pDialog:Landroid/app/ProgressDialog;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMax(I)V

    .line 230
    iget-object v0, p0, Lcom/pizza/work/MenuActivity;->pDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 231
    iget-object v0, p0, Lcom/pizza/work/MenuActivity;->pDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 232
    iget-object v0, p0, Lcom/pizza/work/MenuActivity;->pDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 233
    iget-object v0, p0, Lcom/pizza/work/MenuActivity;->pDialog:Landroid/app/ProgressDialog;

    goto :goto_0

    .line 224
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
