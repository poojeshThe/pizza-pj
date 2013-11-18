.class Lcom/pizza/work/ChangePassActivity$1$1;
.super Ljava/lang/Object;
.source "ChangePassActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pizza/work/ChangePassActivity$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/pizza/work/ChangePassActivity$1;


# direct methods
.method constructor <init>(Lcom/pizza/work/ChangePassActivity$1;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/pizza/work/ChangePassActivity$1$1;->this$1:Lcom/pizza/work/ChangePassActivity$1;

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 66
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/pizza/work/ChangePassActivity$1$1;->this$1:Lcom/pizza/work/ChangePassActivity$1;

    invoke-static {v1}, Lcom/pizza/work/ChangePassActivity$1;->access$0(Lcom/pizza/work/ChangePassActivity$1;)Lcom/pizza/work/ChangePassActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/pizza/work/ChangePassActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/pizza/work/MenuActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 67
    .local v0, i:Landroid/content/Intent;
    iget-object v1, p0, Lcom/pizza/work/ChangePassActivity$1$1;->this$1:Lcom/pizza/work/ChangePassActivity$1;

    invoke-static {v1}, Lcom/pizza/work/ChangePassActivity$1;->access$0(Lcom/pizza/work/ChangePassActivity$1;)Lcom/pizza/work/ChangePassActivity;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/pizza/work/ChangePassActivity;->startActivity(Landroid/content/Intent;)V

    .line 70
    return-void
.end method
