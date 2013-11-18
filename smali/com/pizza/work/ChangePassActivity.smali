.class public Lcom/pizza/work/ChangePassActivity;
.super Landroid/app/Activity;
.source "ChangePassActivity.java"


# instance fields
.field private change:Landroid/widget/EditText;

.field private chbutton:Landroid/widget/Button;

.field private confirm:Landroid/widget/EditText;

.field userFunction:Lcom/pizza/work/library/UserFunctions;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 25
    new-instance v0, Lcom/pizza/work/library/UserFunctions;

    invoke-direct {v0}, Lcom/pizza/work/library/UserFunctions;-><init>()V

    iput-object v0, p0, Lcom/pizza/work/ChangePassActivity;->userFunction:Lcom/pizza/work/library/UserFunctions;

    .line 19
    return-void
.end method

.method static synthetic access$0(Lcom/pizza/work/ChangePassActivity;)Landroid/widget/EditText;
    .locals 1
    .parameter

    .prologue
    .line 23
    iget-object v0, p0, Lcom/pizza/work/ChangePassActivity;->change:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$1(Lcom/pizza/work/ChangePassActivity;)Landroid/widget/EditText;
    .locals 1
    .parameter

    .prologue
    .line 23
    iget-object v0, p0, Lcom/pizza/work/ChangePassActivity;->confirm:Landroid/widget/EditText;

    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 29
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 30
    const v0, 0x7f030004

    invoke-virtual {p0, v0}, Lcom/pizza/work/ChangePassActivity;->setContentView(I)V

    .line 33
    const v0, 0x7f080010

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/pizza/work/ChangePassActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/pizza/work/ChangePassActivity;->change:Landroid/widget/EditText;

    .line 34
    const v0, 0x7f080011

    invoke-virtual {p0, v0}, Lcom/pizza/work/ChangePassActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/pizza/work/ChangePassActivity;->confirm:Landroid/widget/EditText;

    .line 35
    const v0, 0x7f080009

    invoke-virtual {p0, v0}, Lcom/pizza/work/ChangePassActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/pizza/work/ChangePassActivity;->chbutton:Landroid/widget/Button;

    .line 38
    iget-object v0, p0, Lcom/pizza/work/ChangePassActivity;->chbutton:Landroid/widget/Button;

    new-instance v1, Lcom/pizza/work/ChangePassActivity$1;

    invoke-direct {v1, p0}, Lcom/pizza/work/ChangePassActivity$1;-><init>(Lcom/pizza/work/ChangePassActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 154
    :goto_0
    return-void

    .line 148
    :catch_0
    move-exception v0

    goto :goto_0
.end method
