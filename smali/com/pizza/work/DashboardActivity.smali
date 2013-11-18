.class public Lcom/pizza/work/DashboardActivity;
.super Landroid/app/Activity;
.source "DashboardActivity.java"


# instance fields
.field btnLogout:Landroid/widget/Button;

.field userFunctions:Lcom/pizza/work/library/UserFunctions;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 21
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 27
    new-instance v1, Lcom/pizza/work/library/UserFunctions;

    invoke-direct {v1}, Lcom/pizza/work/library/UserFunctions;-><init>()V

    iput-object v1, p0, Lcom/pizza/work/DashboardActivity;->userFunctions:Lcom/pizza/work/library/UserFunctions;

    .line 28
    iget-object v1, p0, Lcom/pizza/work/DashboardActivity;->userFunctions:Lcom/pizza/work/library/UserFunctions;

    invoke-virtual {p0}, Lcom/pizza/work/DashboardActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/pizza/work/library/UserFunctions;->isUserLoggedIn(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 29
    const v1, 0x7f030009

    invoke-virtual {p0, v1}, Lcom/pizza/work/DashboardActivity;->setContentView(I)V

    .line 32
    iget-object v1, p0, Lcom/pizza/work/DashboardActivity;->btnLogout:Landroid/widget/Button;

    new-instance v2, Lcom/pizza/work/DashboardActivity$1;

    invoke-direct {v2, p0}, Lcom/pizza/work/DashboardActivity$1;-><init>(Lcom/pizza/work/DashboardActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 57
    :goto_0
    return-void

    .line 47
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/pizza/work/DashboardActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/pizza/work/LoginActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 48
    .local v0, login:Landroid/content/Intent;
    const/high16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 49
    invoke-virtual {p0, v0}, Lcom/pizza/work/DashboardActivity;->startActivity(Landroid/content/Intent;)V

    .line 51
    invoke-virtual {p0}, Lcom/pizza/work/DashboardActivity;->finish()V

    goto :goto_0
.end method
