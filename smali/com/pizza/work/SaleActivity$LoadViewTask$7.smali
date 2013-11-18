.class Lcom/pizza/work/SaleActivity$LoadViewTask$7;
.super Ljava/lang/Object;
.source "SaleActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


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
    iput-object p1, p0, Lcom/pizza/work/SaleActivity$LoadViewTask$7;->this$1:Lcom/pizza/work/SaleActivity$LoadViewTask;

    .line 1105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 8
    .parameter "s"

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1107
    iget-object v2, p0, Lcom/pizza/work/SaleActivity$LoadViewTask$7;->this$1:Lcom/pizza/work/SaleActivity$LoadViewTask;

    invoke-static {v2}, Lcom/pizza/work/SaleActivity$LoadViewTask;->access$4(Lcom/pizza/work/SaleActivity$LoadViewTask;)Lcom/pizza/work/SaleActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/pizza/work/SaleActivity;->access$7(Lcom/pizza/work/SaleActivity;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 1110
    iget-object v2, p0, Lcom/pizza/work/SaleActivity$LoadViewTask$7;->this$1:Lcom/pizza/work/SaleActivity$LoadViewTask;

    invoke-static {v2}, Lcom/pizza/work/SaleActivity$LoadViewTask;->access$4(Lcom/pizza/work/SaleActivity$LoadViewTask;)Lcom/pizza/work/SaleActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/pizza/work/SaleActivity;->access$18(Lcom/pizza/work/SaleActivity;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    .line 1111
    .local v0, no:I
    iget-object v2, p0, Lcom/pizza/work/SaleActivity$LoadViewTask$7;->this$1:Lcom/pizza/work/SaleActivity$LoadViewTask;

    invoke-static {v2}, Lcom/pizza/work/SaleActivity$LoadViewTask;->access$4(Lcom/pizza/work/SaleActivity$LoadViewTask;)Lcom/pizza/work/SaleActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/pizza/work/SaleActivity;->access$18(Lcom/pizza/work/SaleActivity;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1115
    .local v1, pstring:Ljava/lang/String;
    iget-object v2, p0, Lcom/pizza/work/SaleActivity$LoadViewTask$7;->this$1:Lcom/pizza/work/SaleActivity$LoadViewTask;

    invoke-static {v2}, Lcom/pizza/work/SaleActivity$LoadViewTask;->access$4(Lcom/pizza/work/SaleActivity$LoadViewTask;)Lcom/pizza/work/SaleActivity;

    move-result-object v2

    iget-object v2, v2, Lcom/pizza/work/SaleActivity;->rb1:Landroid/widget/RadioButton;

    invoke-virtual {v2}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1118
    if-lt v0, v5, :cond_0

    .line 1120
    iget-object v2, p0, Lcom/pizza/work/SaleActivity$LoadViewTask$7;->this$1:Lcom/pizza/work/SaleActivity$LoadViewTask;

    invoke-static {v2}, Lcom/pizza/work/SaleActivity$LoadViewTask;->access$4(Lcom/pizza/work/SaleActivity$LoadViewTask;)Lcom/pizza/work/SaleActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/pizza/work/SaleActivity;->access$19(Lcom/pizza/work/SaleActivity;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->requestFocus()Z

    .line 1122
    if-le v0, v5, :cond_0

    .line 1123
    iget-object v2, p0, Lcom/pizza/work/SaleActivity$LoadViewTask$7;->this$1:Lcom/pizza/work/SaleActivity$LoadViewTask;

    invoke-static {v2}, Lcom/pizza/work/SaleActivity$LoadViewTask;->access$4(Lcom/pizza/work/SaleActivity$LoadViewTask;)Lcom/pizza/work/SaleActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/pizza/work/SaleActivity;->access$18(Lcom/pizza/work/SaleActivity;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v1, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1129
    :cond_0
    iget-object v2, p0, Lcom/pizza/work/SaleActivity$LoadViewTask$7;->this$1:Lcom/pizza/work/SaleActivity$LoadViewTask;

    invoke-static {v2}, Lcom/pizza/work/SaleActivity$LoadViewTask;->access$4(Lcom/pizza/work/SaleActivity$LoadViewTask;)Lcom/pizza/work/SaleActivity;

    move-result-object v2

    iget-object v2, v2, Lcom/pizza/work/SaleActivity;->rb2:Landroid/widget/RadioButton;

    invoke-virtual {v2}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1131
    if-lt v0, v6, :cond_1

    .line 1133
    iget-object v2, p0, Lcom/pizza/work/SaleActivity$LoadViewTask$7;->this$1:Lcom/pizza/work/SaleActivity$LoadViewTask;

    invoke-static {v2}, Lcom/pizza/work/SaleActivity$LoadViewTask;->access$4(Lcom/pizza/work/SaleActivity$LoadViewTask;)Lcom/pizza/work/SaleActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/pizza/work/SaleActivity;->access$19(Lcom/pizza/work/SaleActivity;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->requestFocus()Z

    .line 1134
    if-le v0, v6, :cond_1

    .line 1135
    iget-object v2, p0, Lcom/pizza/work/SaleActivity$LoadViewTask$7;->this$1:Lcom/pizza/work/SaleActivity$LoadViewTask;

    invoke-static {v2}, Lcom/pizza/work/SaleActivity$LoadViewTask;->access$4(Lcom/pizza/work/SaleActivity$LoadViewTask;)Lcom/pizza/work/SaleActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/pizza/work/SaleActivity;->access$18(Lcom/pizza/work/SaleActivity;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v1, v4, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1141
    :cond_1
    iget-object v2, p0, Lcom/pizza/work/SaleActivity$LoadViewTask$7;->this$1:Lcom/pizza/work/SaleActivity$LoadViewTask;

    invoke-static {v2}, Lcom/pizza/work/SaleActivity$LoadViewTask;->access$4(Lcom/pizza/work/SaleActivity$LoadViewTask;)Lcom/pizza/work/SaleActivity;

    move-result-object v2

    iget-object v2, v2, Lcom/pizza/work/SaleActivity;->rb3:Landroid/widget/RadioButton;

    invoke-virtual {v2}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1143
    if-lt v0, v7, :cond_2

    .line 1145
    iget-object v2, p0, Lcom/pizza/work/SaleActivity$LoadViewTask$7;->this$1:Lcom/pizza/work/SaleActivity$LoadViewTask;

    invoke-static {v2}, Lcom/pizza/work/SaleActivity$LoadViewTask;->access$4(Lcom/pizza/work/SaleActivity$LoadViewTask;)Lcom/pizza/work/SaleActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/pizza/work/SaleActivity;->access$19(Lcom/pizza/work/SaleActivity;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->requestFocus()Z

    .line 1146
    if-le v0, v7, :cond_2

    .line 1147
    iget-object v2, p0, Lcom/pizza/work/SaleActivity$LoadViewTask$7;->this$1:Lcom/pizza/work/SaleActivity$LoadViewTask;

    invoke-static {v2}, Lcom/pizza/work/SaleActivity$LoadViewTask;->access$4(Lcom/pizza/work/SaleActivity$LoadViewTask;)Lcom/pizza/work/SaleActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/pizza/work/SaleActivity;->access$18(Lcom/pizza/work/SaleActivity;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v1, v4, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1157
    .end local v0           #no:I
    .end local v1           #pstring:Ljava/lang/String;
    :cond_2
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 1160
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 1163
    return-void
.end method
