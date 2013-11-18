.class Lcom/pizza/work/SaleActivity$LoadViewTask$2;
.super Ljava/lang/Object;
.source "SaleActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pizza/work/SaleActivity$LoadViewTask;->onPostExecute(Ljava/lang/Void;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/pizza/work/SaleActivity$LoadViewTask;


# direct methods
.method constructor <init>(Lcom/pizza/work/SaleActivity$LoadViewTask;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/pizza/work/SaleActivity$LoadViewTask$2;->this$1:Lcom/pizza/work/SaleActivity$LoadViewTask;

    .line 709
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 713
    iget-object v0, p0, Lcom/pizza/work/SaleActivity$LoadViewTask$2;->this$1:Lcom/pizza/work/SaleActivity$LoadViewTask;

    invoke-static {v0}, Lcom/pizza/work/SaleActivity$LoadViewTask;->access$4(Lcom/pizza/work/SaleActivity$LoadViewTask;)Lcom/pizza/work/SaleActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/pizza/work/SaleActivity;->access$22(Lcom/pizza/work/SaleActivity;)Landroid/widget/Button;

    move-result-object v0

    const-string v1, "Add"

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 715
    iget-object v0, p0, Lcom/pizza/work/SaleActivity$LoadViewTask$2;->this$1:Lcom/pizza/work/SaleActivity$LoadViewTask;

    invoke-static {v0}, Lcom/pizza/work/SaleActivity$LoadViewTask;->access$4(Lcom/pizza/work/SaleActivity$LoadViewTask;)Lcom/pizza/work/SaleActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/pizza/work/SaleActivity;->access$21(Lcom/pizza/work/SaleActivity;)Landroid/widget/ToggleButton;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 717
    iget-object v0, p0, Lcom/pizza/work/SaleActivity$LoadViewTask$2;->this$1:Lcom/pizza/work/SaleActivity$LoadViewTask;

    invoke-static {v0}, Lcom/pizza/work/SaleActivity$LoadViewTask;->access$4(Lcom/pizza/work/SaleActivity$LoadViewTask;)Lcom/pizza/work/SaleActivity;

    move-result-object v0

    iput-boolean v2, v0, Lcom/pizza/work/SaleActivity;->togflag:Z

    .line 718
    iget-object v0, p0, Lcom/pizza/work/SaleActivity$LoadViewTask$2;->this$1:Lcom/pizza/work/SaleActivity$LoadViewTask;

    invoke-static {v0}, Lcom/pizza/work/SaleActivity$LoadViewTask;->access$4(Lcom/pizza/work/SaleActivity$LoadViewTask;)Lcom/pizza/work/SaleActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/pizza/work/SaleActivity;->access$18(Lcom/pizza/work/SaleActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setVisibility(I)V

    .line 719
    iget-object v0, p0, Lcom/pizza/work/SaleActivity$LoadViewTask$2;->this$1:Lcom/pizza/work/SaleActivity$LoadViewTask;

    invoke-static {v0}, Lcom/pizza/work/SaleActivity$LoadViewTask;->access$4(Lcom/pizza/work/SaleActivity$LoadViewTask;)Lcom/pizza/work/SaleActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/pizza/work/SaleActivity;->access$7(Lcom/pizza/work/SaleActivity;)Landroid/widget/EditText;

    move-result-object v0

    const-string v1, "Start"

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 720
    iget-object v0, p0, Lcom/pizza/work/SaleActivity$LoadViewTask$2;->this$1:Lcom/pizza/work/SaleActivity$LoadViewTask;

    invoke-static {v0}, Lcom/pizza/work/SaleActivity$LoadViewTask;->access$4(Lcom/pizza/work/SaleActivity$LoadViewTask;)Lcom/pizza/work/SaleActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/pizza/work/SaleActivity;->access$18(Lcom/pizza/work/SaleActivity;)Landroid/widget/EditText;

    move-result-object v0

    const-string v1, "End"

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 721
    iget-object v0, p0, Lcom/pizza/work/SaleActivity$LoadViewTask$2;->this$1:Lcom/pizza/work/SaleActivity$LoadViewTask;

    invoke-static {v0}, Lcom/pizza/work/SaleActivity$LoadViewTask;->access$4(Lcom/pizza/work/SaleActivity$LoadViewTask;)Lcom/pizza/work/SaleActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/pizza/work/SaleActivity;->access$7(Lcom/pizza/work/SaleActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 722
    iget-object v0, p0, Lcom/pizza/work/SaleActivity$LoadViewTask$2;->this$1:Lcom/pizza/work/SaleActivity$LoadViewTask;

    invoke-static {v0}, Lcom/pizza/work/SaleActivity$LoadViewTask;->access$4(Lcom/pizza/work/SaleActivity$LoadViewTask;)Lcom/pizza/work/SaleActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/pizza/work/SaleActivity;->access$18(Lcom/pizza/work/SaleActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 736
    :goto_0
    iget-object v0, p0, Lcom/pizza/work/SaleActivity$LoadViewTask$2;->this$1:Lcom/pizza/work/SaleActivity$LoadViewTask;

    invoke-static {v0}, Lcom/pizza/work/SaleActivity$LoadViewTask;->access$4(Lcom/pizza/work/SaleActivity$LoadViewTask;)Lcom/pizza/work/SaleActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/pizza/work/SaleActivity;->access$19(Lcom/pizza/work/SaleActivity;)Landroid/widget/EditText;

    move-result-object v0

    const-string v1, "Qty"

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 738
    return-void

    .line 728
    :cond_0
    iget-object v0, p0, Lcom/pizza/work/SaleActivity$LoadViewTask$2;->this$1:Lcom/pizza/work/SaleActivity$LoadViewTask;

    invoke-static {v0}, Lcom/pizza/work/SaleActivity$LoadViewTask;->access$4(Lcom/pizza/work/SaleActivity$LoadViewTask;)Lcom/pizza/work/SaleActivity;

    move-result-object v0

    iput-boolean v3, v0, Lcom/pizza/work/SaleActivity;->togflag:Z

    .line 729
    iget-object v0, p0, Lcom/pizza/work/SaleActivity$LoadViewTask$2;->this$1:Lcom/pizza/work/SaleActivity$LoadViewTask;

    invoke-static {v0}, Lcom/pizza/work/SaleActivity$LoadViewTask;->access$4(Lcom/pizza/work/SaleActivity$LoadViewTask;)Lcom/pizza/work/SaleActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/pizza/work/SaleActivity;->access$18(Lcom/pizza/work/SaleActivity;)Landroid/widget/EditText;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setVisibility(I)V

    .line 730
    iget-object v0, p0, Lcom/pizza/work/SaleActivity$LoadViewTask$2;->this$1:Lcom/pizza/work/SaleActivity$LoadViewTask;

    invoke-static {v0}, Lcom/pizza/work/SaleActivity$LoadViewTask;->access$4(Lcom/pizza/work/SaleActivity$LoadViewTask;)Lcom/pizza/work/SaleActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/pizza/work/SaleActivity;->access$7(Lcom/pizza/work/SaleActivity;)Landroid/widget/EditText;

    move-result-object v0

    const-string v1, "No"

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 731
    iget-object v0, p0, Lcom/pizza/work/SaleActivity$LoadViewTask$2;->this$1:Lcom/pizza/work/SaleActivity$LoadViewTask;

    invoke-static {v0}, Lcom/pizza/work/SaleActivity$LoadViewTask;->access$4(Lcom/pizza/work/SaleActivity$LoadViewTask;)Lcom/pizza/work/SaleActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/pizza/work/SaleActivity;->access$7(Lcom/pizza/work/SaleActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setEnabled(Z)V

    goto :goto_0
.end method
