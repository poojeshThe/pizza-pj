.class Lcom/pizza/work/MenuActivity$2;
.super Ljava/lang/Object;
.source "MenuActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pizza/work/MenuActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pizza/work/MenuActivity;


# direct methods
.method constructor <init>(Lcom/pizza/work/MenuActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/pizza/work/MenuActivity$2;->this$0:Lcom/pizza/work/MenuActivity;

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "view"

    .prologue
    .line 78
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/pizza/work/MenuActivity$2;->this$0:Lcom/pizza/work/MenuActivity;

    invoke-virtual {v1}, Lcom/pizza/work/MenuActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/pizza/work/saleamountwiseActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 79
    .local v0, i:Landroid/content/Intent;
    iget-object v1, p0, Lcom/pizza/work/MenuActivity$2;->this$0:Lcom/pizza/work/MenuActivity;

    invoke-virtual {v1, v0}, Lcom/pizza/work/MenuActivity;->startActivity(Landroid/content/Intent;)V

    .line 83
    return-void
.end method