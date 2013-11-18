.class Lcom/pizza/work/SaleActivity$LoadViewTask$4;
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
    iput-object p1, p0, Lcom/pizza/work/SaleActivity$LoadViewTask$4;->this$1:Lcom/pizza/work/SaleActivity$LoadViewTask;

    .line 868
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 13
    .parameter "s"

    .prologue
    const/16 v12, 0x1f4

    const/16 v9, 0x64

    const-wide/high16 v10, 0x4059

    .line 872
    :try_start_0
    iget-object v6, p0, Lcom/pizza/work/SaleActivity$LoadViewTask$4;->this$1:Lcom/pizza/work/SaleActivity$LoadViewTask;

    invoke-static {v6}, Lcom/pizza/work/SaleActivity$LoadViewTask;->access$4(Lcom/pizza/work/SaleActivity$LoadViewTask;)Lcom/pizza/work/SaleActivity;

    move-result-object v6

    invoke-static {v6}, Lcom/pizza/work/SaleActivity;->access$19(Lcom/pizza/work/SaleActivity;)Landroid/widget/EditText;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-interface {v6}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v3

    .line 873
    .local v3, qtytext:Ljava/lang/String;
    iget-object v6, p0, Lcom/pizza/work/SaleActivity$LoadViewTask$4;->this$1:Lcom/pizza/work/SaleActivity$LoadViewTask;

    invoke-static {v6}, Lcom/pizza/work/SaleActivity$LoadViewTask;->access$4(Lcom/pizza/work/SaleActivity$LoadViewTask;)Lcom/pizza/work/SaleActivity;

    move-result-object v6

    invoke-static {v6}, Lcom/pizza/work/SaleActivity;->access$19(Lcom/pizza/work/SaleActivity;)Landroid/widget/EditText;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-interface {v6}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 874
    iget-object v6, p0, Lcom/pizza/work/SaleActivity$LoadViewTask$4;->this$1:Lcom/pizza/work/SaleActivity$LoadViewTask;

    invoke-static {v6}, Lcom/pizza/work/SaleActivity$LoadViewTask;->access$4(Lcom/pizza/work/SaleActivity$LoadViewTask;)Lcom/pizza/work/SaleActivity;

    move-result-object v6

    invoke-static {v6}, Lcom/pizza/work/SaleActivity;->access$19(Lcom/pizza/work/SaleActivity;)Landroid/widget/EditText;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-interface {v6}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 876
    .local v2, no:I
    iget-object v6, p0, Lcom/pizza/work/SaleActivity$LoadViewTask$4;->this$1:Lcom/pizza/work/SaleActivity$LoadViewTask;

    invoke-static {v6}, Lcom/pizza/work/SaleActivity$LoadViewTask;->access$4(Lcom/pizza/work/SaleActivity$LoadViewTask;)Lcom/pizza/work/SaleActivity;

    move-result-object v6

    iget-object v6, v6, Lcom/pizza/work/SaleActivity;->rb1:Landroid/widget/RadioButton;

    invoke-virtual {v6}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 879
    const/16 v6, 0x3e8

    if-lt v2, v6, :cond_0

    .line 882
    iget-object v6, p0, Lcom/pizza/work/SaleActivity$LoadViewTask$4;->this$1:Lcom/pizza/work/SaleActivity$LoadViewTask;

    invoke-static {v6}, Lcom/pizza/work/SaleActivity$LoadViewTask;->access$4(Lcom/pizza/work/SaleActivity$LoadViewTask;)Lcom/pizza/work/SaleActivity;

    move-result-object v6

    invoke-static {v6}, Lcom/pizza/work/SaleActivity;->access$22(Lcom/pizza/work/SaleActivity;)Landroid/widget/Button;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Button;->requestFocus()Z

    .line 884
    const/16 v6, 0x3e8

    if-le v2, v6, :cond_0

    .line 886
    iget-object v6, p0, Lcom/pizza/work/SaleActivity$LoadViewTask$4;->this$1:Lcom/pizza/work/SaleActivity$LoadViewTask;

    invoke-static {v6}, Lcom/pizza/work/SaleActivity$LoadViewTask;->access$4(Lcom/pizza/work/SaleActivity$LoadViewTask;)Lcom/pizza/work/SaleActivity;

    move-result-object v6

    invoke-static {v6}, Lcom/pizza/work/SaleActivity;->access$19(Lcom/pizza/work/SaleActivity;)Landroid/widget/EditText;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x3

    invoke-virtual {v3, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 892
    :cond_0
    iget-object v6, p0, Lcom/pizza/work/SaleActivity$LoadViewTask$4;->this$1:Lcom/pizza/work/SaleActivity$LoadViewTask;

    invoke-static {v6}, Lcom/pizza/work/SaleActivity$LoadViewTask;->access$4(Lcom/pizza/work/SaleActivity$LoadViewTask;)Lcom/pizza/work/SaleActivity;

    move-result-object v6

    iget-object v6, v6, Lcom/pizza/work/SaleActivity;->rb2:Landroid/widget/RadioButton;

    invoke-virtual {v6}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 894
    if-lt v2, v12, :cond_1

    .line 896
    iget-object v6, p0, Lcom/pizza/work/SaleActivity$LoadViewTask$4;->this$1:Lcom/pizza/work/SaleActivity$LoadViewTask;

    invoke-static {v6}, Lcom/pizza/work/SaleActivity$LoadViewTask;->access$4(Lcom/pizza/work/SaleActivity$LoadViewTask;)Lcom/pizza/work/SaleActivity;

    move-result-object v6

    invoke-static {v6}, Lcom/pizza/work/SaleActivity;->access$22(Lcom/pizza/work/SaleActivity;)Landroid/widget/Button;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Button;->requestFocus()Z

    .line 897
    if-le v2, v12, :cond_1

    .line 899
    iget-object v6, p0, Lcom/pizza/work/SaleActivity$LoadViewTask$4;->this$1:Lcom/pizza/work/SaleActivity$LoadViewTask;

    invoke-static {v6}, Lcom/pizza/work/SaleActivity$LoadViewTask;->access$4(Lcom/pizza/work/SaleActivity$LoadViewTask;)Lcom/pizza/work/SaleActivity;

    move-result-object v6

    invoke-static {v6}, Lcom/pizza/work/SaleActivity;->access$19(Lcom/pizza/work/SaleActivity;)Landroid/widget/EditText;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x2

    invoke-virtual {v3, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 902
    :cond_1
    iget-object v6, p0, Lcom/pizza/work/SaleActivity$LoadViewTask$4;->this$1:Lcom/pizza/work/SaleActivity$LoadViewTask;

    invoke-static {v6}, Lcom/pizza/work/SaleActivity$LoadViewTask;->access$4(Lcom/pizza/work/SaleActivity$LoadViewTask;)Lcom/pizza/work/SaleActivity;

    move-result-object v6

    iget-object v6, v6, Lcom/pizza/work/SaleActivity;->rb3:Landroid/widget/RadioButton;

    invoke-virtual {v6}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 904
    if-lt v2, v9, :cond_2

    .line 906
    iget-object v6, p0, Lcom/pizza/work/SaleActivity$LoadViewTask$4;->this$1:Lcom/pizza/work/SaleActivity$LoadViewTask;

    invoke-static {v6}, Lcom/pizza/work/SaleActivity$LoadViewTask;->access$4(Lcom/pizza/work/SaleActivity$LoadViewTask;)Lcom/pizza/work/SaleActivity;

    move-result-object v6

    invoke-static {v6}, Lcom/pizza/work/SaleActivity;->access$22(Lcom/pizza/work/SaleActivity;)Landroid/widget/Button;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Button;->requestFocus()Z

    .line 908
    if-le v2, v9, :cond_2

    .line 910
    iget-object v6, p0, Lcom/pizza/work/SaleActivity$LoadViewTask$4;->this$1:Lcom/pizza/work/SaleActivity$LoadViewTask;

    invoke-static {v6}, Lcom/pizza/work/SaleActivity$LoadViewTask;->access$4(Lcom/pizza/work/SaleActivity$LoadViewTask;)Lcom/pizza/work/SaleActivity;

    move-result-object v6

    invoke-static {v6}, Lcom/pizza/work/SaleActivity;->access$19(Lcom/pizza/work/SaleActivity;)Landroid/widget/EditText;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x2

    invoke-virtual {v3, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 917
    :cond_2
    const-wide/16 v4, 0x0

    .line 918
    .local v4, total:D
    iget-object v6, p0, Lcom/pizza/work/SaleActivity$LoadViewTask$4;->this$1:Lcom/pizza/work/SaleActivity$LoadViewTask;

    invoke-static {v6}, Lcom/pizza/work/SaleActivity$LoadViewTask;->access$4(Lcom/pizza/work/SaleActivity$LoadViewTask;)Lcom/pizza/work/SaleActivity;

    move-result-object v6

    invoke-static {v6}, Lcom/pizza/work/SaleActivity;->access$12(Lcom/pizza/work/SaleActivity;)Landroid/widget/EditText;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-interface {v6}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 920
    iget-object v6, p0, Lcom/pizza/work/SaleActivity$LoadViewTask$4;->this$1:Lcom/pizza/work/SaleActivity$LoadViewTask;

    invoke-static {v6}, Lcom/pizza/work/SaleActivity$LoadViewTask;->access$4(Lcom/pizza/work/SaleActivity$LoadViewTask;)Lcom/pizza/work/SaleActivity;

    move-result-object v6

    invoke-static {v6}, Lcom/pizza/work/SaleActivity;->access$18(Lcom/pizza/work/SaleActivity;)Landroid/widget/EditText;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/EditText;->getVisibility()I

    move-result v6

    if-nez v6, :cond_5

    .line 924
    iget-object v6, p0, Lcom/pizza/work/SaleActivity$LoadViewTask$4;->this$1:Lcom/pizza/work/SaleActivity$LoadViewTask;

    invoke-static {v6}, Lcom/pizza/work/SaleActivity$LoadViewTask;->access$4(Lcom/pizza/work/SaleActivity$LoadViewTask;)Lcom/pizza/work/SaleActivity;

    move-result-object v6

    invoke-static {v6}, Lcom/pizza/work/SaleActivity;->access$18(Lcom/pizza/work/SaleActivity;)Landroid/widget/EditText;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-interface {v6}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    iget-object v6, p0, Lcom/pizza/work/SaleActivity$LoadViewTask$4;->this$1:Lcom/pizza/work/SaleActivity$LoadViewTask;

    invoke-static {v6}, Lcom/pizza/work/SaleActivity$LoadViewTask;->access$4(Lcom/pizza/work/SaleActivity$LoadViewTask;)Lcom/pizza/work/SaleActivity;

    move-result-object v6

    invoke-static {v6}, Lcom/pizza/work/SaleActivity;->access$7(Lcom/pizza/work/SaleActivity;)Landroid/widget/EditText;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-interface {v6}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 927
    iget-object v6, p0, Lcom/pizza/work/SaleActivity$LoadViewTask$4;->this$1:Lcom/pizza/work/SaleActivity$LoadViewTask;

    invoke-static {v6}, Lcom/pizza/work/SaleActivity$LoadViewTask;->access$4(Lcom/pizza/work/SaleActivity$LoadViewTask;)Lcom/pizza/work/SaleActivity;

    move-result-object v6

    invoke-static {v6}, Lcom/pizza/work/SaleActivity;->access$18(Lcom/pizza/work/SaleActivity;)Landroid/widget/EditText;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-interface {v6}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    iget-object v7, p0, Lcom/pizza/work/SaleActivity$LoadViewTask$4;->this$1:Lcom/pizza/work/SaleActivity$LoadViewTask;

    invoke-static {v7}, Lcom/pizza/work/SaleActivity$LoadViewTask;->access$4(Lcom/pizza/work/SaleActivity$LoadViewTask;)Lcom/pizza/work/SaleActivity;

    move-result-object v7

    invoke-static {v7}, Lcom/pizza/work/SaleActivity;->access$7(Lcom/pizza/work/SaleActivity;)Landroid/widget/EditText;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v7

    invoke-interface {v7}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    sub-int/2addr v6, v7

    add-int/lit8 v0, v6, 0x1

    .line 928
    .local v0, dif:I
    if-ltz v0, :cond_3

    .line 929
    iget-object v6, p0, Lcom/pizza/work/SaleActivity$LoadViewTask$4;->this$1:Lcom/pizza/work/SaleActivity$LoadViewTask;

    invoke-static {v6}, Lcom/pizza/work/SaleActivity$LoadViewTask;->access$4(Lcom/pizza/work/SaleActivity$LoadViewTask;)Lcom/pizza/work/SaleActivity;

    move-result-object v6

    invoke-static {v6}, Lcom/pizza/work/SaleActivity;->access$19(Lcom/pizza/work/SaleActivity;)Landroid/widget/EditText;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-interface {v6}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    int-to-double v6, v6

    iget-object v8, p0, Lcom/pizza/work/SaleActivity$LoadViewTask$4;->this$1:Lcom/pizza/work/SaleActivity$LoadViewTask;

    invoke-static {v8}, Lcom/pizza/work/SaleActivity$LoadViewTask;->access$4(Lcom/pizza/work/SaleActivity$LoadViewTask;)Lcom/pizza/work/SaleActivity;

    move-result-object v8

    invoke-static {v8}, Lcom/pizza/work/SaleActivity;->access$12(Lcom/pizza/work/SaleActivity;)Landroid/widget/EditText;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v8

    invoke-interface {v8}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v8

    mul-double/2addr v6, v8

    int-to-double v8, v0

    mul-double v4, v6, v8

    .line 941
    .end local v0           #dif:I
    :cond_3
    :goto_0
    mul-double v6, v4, v10

    invoke-static {v6, v7}, Ljava/lang/Math;->round(D)J

    move-result-wide v6

    long-to-double v6, v6

    div-double v4, v6, v10

    .line 942
    iget-object v6, p0, Lcom/pizza/work/SaleActivity$LoadViewTask$4;->this$1:Lcom/pizza/work/SaleActivity$LoadViewTask;

    invoke-static {v6}, Lcom/pizza/work/SaleActivity$LoadViewTask;->access$4(Lcom/pizza/work/SaleActivity$LoadViewTask;)Lcom/pizza/work/SaleActivity;

    move-result-object v6

    invoke-static {v6}, Lcom/pizza/work/SaleActivity;->access$14(Lcom/pizza/work/SaleActivity;)Landroid/widget/TextView;

    move-result-object v6

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 953
    .end local v2           #no:I
    .end local v3           #qtytext:Ljava/lang/String;
    .end local v4           #total:D
    :cond_4
    :goto_1
    return-void

    .line 939
    .restart local v2       #no:I
    .restart local v3       #qtytext:Ljava/lang/String;
    .restart local v4       #total:D
    :cond_5
    iget-object v6, p0, Lcom/pizza/work/SaleActivity$LoadViewTask$4;->this$1:Lcom/pizza/work/SaleActivity$LoadViewTask;

    invoke-static {v6}, Lcom/pizza/work/SaleActivity$LoadViewTask;->access$4(Lcom/pizza/work/SaleActivity$LoadViewTask;)Lcom/pizza/work/SaleActivity;

    move-result-object v6

    invoke-static {v6}, Lcom/pizza/work/SaleActivity;->access$19(Lcom/pizza/work/SaleActivity;)Landroid/widget/EditText;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-interface {v6}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    int-to-double v6, v6

    iget-object v8, p0, Lcom/pizza/work/SaleActivity$LoadViewTask$4;->this$1:Lcom/pizza/work/SaleActivity$LoadViewTask;

    invoke-static {v8}, Lcom/pizza/work/SaleActivity$LoadViewTask;->access$4(Lcom/pizza/work/SaleActivity$LoadViewTask;)Lcom/pizza/work/SaleActivity;

    move-result-object v8

    invoke-static {v8}, Lcom/pizza/work/SaleActivity;->access$12(Lcom/pizza/work/SaleActivity;)Landroid/widget/EditText;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v8

    invoke-interface {v8}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v8

    mul-double v4, v6, v8

    goto :goto_0

    .line 952
    .end local v2           #no:I
    .end local v3           #qtytext:Ljava/lang/String;
    .end local v4           #total:D
    :catch_0
    move-exception v1

    .local v1, e:Ljava/lang/Exception;
    const-string v6, "ERRRRR"

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 959
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 963
    return-void
.end method
