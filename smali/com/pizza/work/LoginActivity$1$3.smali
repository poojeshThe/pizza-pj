.class Lcom/pizza/work/LoginActivity$1$3;
.super Ljava/lang/Object;
.source "LoginActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pizza/work/LoginActivity$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/pizza/work/LoginActivity$1;


# direct methods
.method constructor <init>(Lcom/pizza/work/LoginActivity$1;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/pizza/work/LoginActivity$1$3;->this$1:Lcom/pizza/work/LoginActivity$1;

    .line 154
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 160
    iget-object v0, p0, Lcom/pizza/work/LoginActivity$1$3;->this$1:Lcom/pizza/work/LoginActivity$1;

    invoke-static {v0}, Lcom/pizza/work/LoginActivity$1;->access$0(Lcom/pizza/work/LoginActivity$1;)Lcom/pizza/work/LoginActivity;

    move-result-object v0

    iget-object v0, v0, Lcom/pizza/work/LoginActivity;->inputuid:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 161
    iget-object v0, p0, Lcom/pizza/work/LoginActivity$1$3;->this$1:Lcom/pizza/work/LoginActivity$1;

    invoke-static {v0}, Lcom/pizza/work/LoginActivity$1;->access$0(Lcom/pizza/work/LoginActivity$1;)Lcom/pizza/work/LoginActivity;

    move-result-object v0

    iget-object v0, v0, Lcom/pizza/work/LoginActivity;->inputuid:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 163
    return-void
.end method