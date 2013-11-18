.class Lcom/pizza/work/SaleActivity$LoadViewTask$5;
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
    iput-object p1, p0, Lcom/pizza/work/SaleActivity$LoadViewTask$5;->this$1:Lcom/pizza/work/SaleActivity$LoadViewTask;

    .line 966
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 10
    .parameter "s"

    .prologue
    const-wide/high16 v8, 0x4059

    .line 969
    iget-object v4, p0, Lcom/pizza/work/SaleActivity$LoadViewTask$5;->this$1:Lcom/pizza/work/SaleActivity$LoadViewTask;

    invoke-static {v4}, Lcom/pizza/work/SaleActivity$LoadViewTask;->access$4(Lcom/pizza/work/SaleActivity$LoadViewTask;)Lcom/pizza/work/SaleActivity;

    move-result-object v4

    invoke-static {v4}, Lcom/pizza/work/SaleActivity;->access$12(Lcom/pizza/work/SaleActivity;)Landroid/widget/EditText;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-interface {v4}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 972
    iget-object v4, p0, Lcom/pizza/work/SaleActivity$LoadViewTask$5;->this$1:Lcom/pizza/work/SaleActivity$LoadViewTask;

    invoke-static {v4}, Lcom/pizza/work/SaleActivity$LoadViewTask;->access$4(Lcom/pizza/work/SaleActivity$LoadViewTask;)Lcom/pizza/work/SaleActivity;

    move-result-object v4

    invoke-static {v4}, Lcom/pizza/work/SaleActivity;->access$12(Lcom/pizza/work/SaleActivity;)Landroid/widget/EditText;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-interface {v4}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    .line 974
    .local v1, pricevalue:F
    const/high16 v4, 0x4140

    cmpl-float v4, v1, v4

    if-lez v4, :cond_1

    .line 978
    iget-object v4, p0, Lcom/pizza/work/SaleActivity$LoadViewTask$5;->this$1:Lcom/pizza/work/SaleActivity$LoadViewTask;

    invoke-static {v4}, Lcom/pizza/work/SaleActivity$LoadViewTask;->access$4(Lcom/pizza/work/SaleActivity$LoadViewTask;)Lcom/pizza/work/SaleActivity;

    move-result-object v4

    invoke-static {v4}, Lcom/pizza/work/SaleActivity;->access$12(Lcom/pizza/work/SaleActivity;)Landroid/widget/EditText;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 979
    iget-object v4, p0, Lcom/pizza/work/SaleActivity$LoadViewTask$5;->this$1:Lcom/pizza/work/SaleActivity$LoadViewTask;

    invoke-static {v4}, Lcom/pizza/work/SaleActivity$LoadViewTask;->access$4(Lcom/pizza/work/SaleActivity$LoadViewTask;)Lcom/pizza/work/SaleActivity;

    move-result-object v4

    invoke-static {v4}, Lcom/pizza/work/SaleActivity;->access$12(Lcom/pizza/work/SaleActivity;)Landroid/widget/EditText;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/EditText;->requestFocus()Z

    .line 1015
    .end local v1           #pricevalue:F
    :cond_0
    :goto_0
    return-void

    .line 987
    .restart local v1       #pricevalue:F
    :cond_1
    iget-object v4, p0, Lcom/pizza/work/SaleActivity$LoadViewTask$5;->this$1:Lcom/pizza/work/SaleActivity$LoadViewTask;

    invoke-static {v4}, Lcom/pizza/work/SaleActivity$LoadViewTask;->access$4(Lcom/pizza/work/SaleActivity$LoadViewTask;)Lcom/pizza/work/SaleActivity;

    move-result-object v4

    invoke-static {v4}, Lcom/pizza/work/SaleActivity;->access$19(Lcom/pizza/work/SaleActivity;)Landroid/widget/EditText;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-interface {v4}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/pizza/work/SaleActivity$LoadViewTask$5;->this$1:Lcom/pizza/work/SaleActivity$LoadViewTask;

    invoke-static {v4}, Lcom/pizza/work/SaleActivity$LoadViewTask;->access$4(Lcom/pizza/work/SaleActivity$LoadViewTask;)Lcom/pizza/work/SaleActivity;

    move-result-object v4

    invoke-static {v4}, Lcom/pizza/work/SaleActivity;->access$12(Lcom/pizza/work/SaleActivity;)Landroid/widget/EditText;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-interface {v4}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 988
    const-wide/16 v2, 0x0

    .line 990
    .local v2, total:D
    iget-object v4, p0, Lcom/pizza/work/SaleActivity$LoadViewTask$5;->this$1:Lcom/pizza/work/SaleActivity$LoadViewTask;

    invoke-static {v4}, Lcom/pizza/work/SaleActivity$LoadViewTask;->access$4(Lcom/pizza/work/SaleActivity$LoadViewTask;)Lcom/pizza/work/SaleActivity;

    move-result-object v4

    invoke-static {v4}, Lcom/pizza/work/SaleActivity;->access$18(Lcom/pizza/work/SaleActivity;)Landroid/widget/EditText;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/EditText;->getVisibility()I

    move-result v4

    if-nez v4, :cond_3

    .line 994
    iget-object v4, p0, Lcom/pizza/work/SaleActivity$LoadViewTask$5;->this$1:Lcom/pizza/work/SaleActivity$LoadViewTask;

    invoke-static {v4}, Lcom/pizza/work/SaleActivity$LoadViewTask;->access$4(Lcom/pizza/work/SaleActivity$LoadViewTask;)Lcom/pizza/work/SaleActivity;

    move-result-object v4

    invoke-static {v4}, Lcom/pizza/work/SaleActivity;->access$18(Lcom/pizza/work/SaleActivity;)Landroid/widget/EditText;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-interface {v4}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    iget-object v4, p0, Lcom/pizza/work/SaleActivity$LoadViewTask$5;->this$1:Lcom/pizza/work/SaleActivity$LoadViewTask;

    invoke-static {v4}, Lcom/pizza/work/SaleActivity$LoadViewTask;->access$4(Lcom/pizza/work/SaleActivity$LoadViewTask;)Lcom/pizza/work/SaleActivity;

    move-result-object v4

    invoke-static {v4}, Lcom/pizza/work/SaleActivity;->access$7(Lcom/pizza/work/SaleActivity;)Landroid/widget/EditText;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-interface {v4}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 997
    iget-object v4, p0, Lcom/pizza/work/SaleActivity$LoadViewTask$5;->this$1:Lcom/pizza/work/SaleActivity$LoadViewTask;

    invoke-static {v4}, Lcom/pizza/work/SaleActivity$LoadViewTask;->access$4(Lcom/pizza/work/SaleActivity$LoadViewTask;)Lcom/pizza/work/SaleActivity;

    move-result-object v4

    invoke-static {v4}, Lcom/pizza/work/SaleActivity;->access$18(Lcom/pizza/work/SaleActivity;)Landroid/widget/EditText;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-interface {v4}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iget-object v5, p0, Lcom/pizza/work/SaleActivity$LoadViewTask$5;->this$1:Lcom/pizza/work/SaleActivity$LoadViewTask;

    invoke-static {v5}, Lcom/pizza/work/SaleActivity$LoadViewTask;->access$4(Lcom/pizza/work/SaleActivity$LoadViewTask;)Lcom/pizza/work/SaleActivity;

    move-result-object v5

    invoke-static {v5}, Lcom/pizza/work/SaleActivity;->access$7(Lcom/pizza/work/SaleActivity;)Landroid/widget/EditText;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-interface {v5}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    sub-int/2addr v4, v5

    add-int/lit8 v0, v4, 0x1

    .line 998
    .local v0, dif:I
    if-ltz v0, :cond_2

    .line 999
    iget-object v4, p0, Lcom/pizza/work/SaleActivity$LoadViewTask$5;->this$1:Lcom/pizza/work/SaleActivity$LoadViewTask;

    invoke-static {v4}, Lcom/pizza/work/SaleActivity$LoadViewTask;->access$4(Lcom/pizza/work/SaleActivity$LoadViewTask;)Lcom/pizza/work/SaleActivity;

    move-result-object v4

    invoke-static {v4}, Lcom/pizza/work/SaleActivity;->access$19(Lcom/pizza/work/SaleActivity;)Landroid/widget/EditText;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-interface {v4}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    int-to-double v4, v4

    iget-object v6, p0, Lcom/pizza/work/SaleActivity$LoadViewTask$5;->this$1:Lcom/pizza/work/SaleActivity$LoadViewTask;

    invoke-static {v6}, Lcom/pizza/work/SaleActivity$LoadViewTask;->access$4(Lcom/pizza/work/SaleActivity$LoadViewTask;)Lcom/pizza/work/SaleActivity;

    move-result-object v6

    invoke-static {v6}, Lcom/pizza/work/SaleActivity;->access$12(Lcom/pizza/work/SaleActivity;)Landroid/widget/EditText;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-interface {v6}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v6

    mul-double/2addr v4, v6

    int-to-double v6, v0

    mul-double v2, v4, v6

    .line 1009
    .end local v0           #dif:I
    :cond_2
    :goto_1
    mul-double v4, v2, v8

    invoke-static {v4, v5}, Ljava/lang/Math;->round(D)J

    move-result-wide v4

    long-to-double v4, v4

    div-double v2, v4, v8

    .line 1011
    iget-object v4, p0, Lcom/pizza/work/SaleActivity$LoadViewTask$5;->this$1:Lcom/pizza/work/SaleActivity$LoadViewTask;

    invoke-static {v4}, Lcom/pizza/work/SaleActivity$LoadViewTask;->access$4(Lcom/pizza/work/SaleActivity$LoadViewTask;)Lcom/pizza/work/SaleActivity;

    move-result-object v4

    invoke-static {v4}, Lcom/pizza/work/SaleActivity;->access$14(Lcom/pizza/work/SaleActivity;)Landroid/widget/TextView;

    move-result-object v4

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 1007
    :cond_3
    iget-object v4, p0, Lcom/pizza/work/SaleActivity$LoadViewTask$5;->this$1:Lcom/pizza/work/SaleActivity$LoadViewTask;

    invoke-static {v4}, Lcom/pizza/work/SaleActivity$LoadViewTask;->access$4(Lcom/pizza/work/SaleActivity$LoadViewTask;)Lcom/pizza/work/SaleActivity;

    move-result-object v4

    invoke-static {v4}, Lcom/pizza/work/SaleActivity;->access$19(Lcom/pizza/work/SaleActivity;)Landroid/widget/EditText;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-interface {v4}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    int-to-double v4, v4

    iget-object v6, p0, Lcom/pizza/work/SaleActivity$LoadViewTask$5;->this$1:Lcom/pizza/work/SaleActivity$LoadViewTask;

    invoke-static {v6}, Lcom/pizza/work/SaleActivity$LoadViewTask;->access$4(Lcom/pizza/work/SaleActivity$LoadViewTask;)Lcom/pizza/work/SaleActivity;

    move-result-object v6

    invoke-static {v6}, Lcom/pizza/work/SaleActivity;->access$12(Lcom/pizza/work/SaleActivity;)Landroid/widget/EditText;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-interface {v6}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v6

    mul-double v2, v4, v6

    goto :goto_1
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 1018
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 1022
    return-void
.end method
