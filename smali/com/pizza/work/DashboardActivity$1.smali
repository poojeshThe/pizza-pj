.class Lcom/pizza/work/DashboardActivity$1;
.super Ljava/lang/Object;
.source "DashboardActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pizza/work/DashboardActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pizza/work/DashboardActivity;


# direct methods
.method constructor <init>(Lcom/pizza/work/DashboardActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/pizza/work/DashboardActivity$1;->this$0:Lcom/pizza/work/DashboardActivity;

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "arg0"

    .prologue
    .line 36
    iget-object v1, p0, Lcom/pizza/work/DashboardActivity$1;->this$0:Lcom/pizza/work/DashboardActivity;

    iget-object v1, v1, Lcom/pizza/work/DashboardActivity;->userFunctions:Lcom/pizza/work/library/UserFunctions;

    iget-object v2, p0, Lcom/pizza/work/DashboardActivity$1;->this$0:Lcom/pizza/work/DashboardActivity;

    invoke-virtual {v2}, Lcom/pizza/work/DashboardActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/pizza/work/library/UserFunctions;->logoutUser(Landroid/content/Context;)Z

    .line 37
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/pizza/work/DashboardActivity$1;->this$0:Lcom/pizza/work/DashboardActivity;

    invoke-virtual {v1}, Lcom/pizza/work/DashboardActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/pizza/work/LoginActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 38
    .local v0, login:Landroid/content/Intent;
    const/high16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 39
    iget-object v1, p0, Lcom/pizza/work/DashboardActivity$1;->this$0:Lcom/pizza/work/DashboardActivity;

    invoke-virtual {v1, v0}, Lcom/pizza/work/DashboardActivity;->startActivity(Landroid/content/Intent;)V

    .line 41
    iget-object v1, p0, Lcom/pizza/work/DashboardActivity$1;->this$0:Lcom/pizza/work/DashboardActivity;

    invoke-virtual {v1}, Lcom/pizza/work/DashboardActivity;->finish()V

    .line 42
    return-void
.end method
