.class Lcom/pizza/work/ChangePassActivity$1$3;
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
    iput-object p1, p0, Lcom/pizza/work/ChangePassActivity$1$3;->this$1:Lcom/pizza/work/ChangePassActivity$1;

    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 126
    iget-object v0, p0, Lcom/pizza/work/ChangePassActivity$1$3;->this$1:Lcom/pizza/work/ChangePassActivity$1;

    invoke-static {v0}, Lcom/pizza/work/ChangePassActivity$1;->access$0(Lcom/pizza/work/ChangePassActivity$1;)Lcom/pizza/work/ChangePassActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/pizza/work/ChangePassActivity;->access$0(Lcom/pizza/work/ChangePassActivity;)Landroid/widget/EditText;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 127
    iget-object v0, p0, Lcom/pizza/work/ChangePassActivity$1$3;->this$1:Lcom/pizza/work/ChangePassActivity$1;

    invoke-static {v0}, Lcom/pizza/work/ChangePassActivity$1;->access$0(Lcom/pizza/work/ChangePassActivity$1;)Lcom/pizza/work/ChangePassActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/pizza/work/ChangePassActivity;->access$1(Lcom/pizza/work/ChangePassActivity;)Landroid/widget/EditText;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 128
    iget-object v0, p0, Lcom/pizza/work/ChangePassActivity$1$3;->this$1:Lcom/pizza/work/ChangePassActivity$1;

    invoke-static {v0}, Lcom/pizza/work/ChangePassActivity$1;->access$0(Lcom/pizza/work/ChangePassActivity$1;)Lcom/pizza/work/ChangePassActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/pizza/work/ChangePassActivity;->access$0(Lcom/pizza/work/ChangePassActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 130
    return-void
.end method
