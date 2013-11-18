.class Lcom/pizza/work/SaleActivity$LoadViewTask$3;
.super Ljava/lang/Object;
.source "SaleActivity.java"

# interfaces
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;


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
    iput-object p1, p0, Lcom/pizza/work/SaleActivity$LoadViewTask$3;->this$1:Lcom/pizza/work/SaleActivity$LoadViewTask;

    .line 751
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .locals 9
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 758
    iget-object v6, p0, Lcom/pizza/work/SaleActivity$LoadViewTask$3;->this$1:Lcom/pizza/work/SaleActivity$LoadViewTask;

    invoke-static {v6}, Lcom/pizza/work/SaleActivity$LoadViewTask;->access$4(Lcom/pizza/work/SaleActivity$LoadViewTask;)Lcom/pizza/work/SaleActivity;

    move-result-object v6

    invoke-virtual {v6, p2}, Lcom/pizza/work/SaleActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/RadioButton;

    .line 760
    .local v4, rb:Landroid/widget/RadioButton;
    invoke-virtual {v4}, Landroid/widget/RadioButton;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 761
    .local v5, txt:Ljava/lang/String;
    iget-object v6, p0, Lcom/pizza/work/SaleActivity$LoadViewTask$3;->this$1:Lcom/pizza/work/SaleActivity$LoadViewTask;

    invoke-static {v6}, Lcom/pizza/work/SaleActivity$LoadViewTask;->access$4(Lcom/pizza/work/SaleActivity$LoadViewTask;)Lcom/pizza/work/SaleActivity;

    move-result-object v6

    invoke-static {v6}, Lcom/pizza/work/SaleActivity;->access$6(Lcom/pizza/work/SaleActivity;)Landroid/widget/Spinner;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 765
    .local v0, Prod_name:Ljava/lang/String;
    :try_start_0
    iget-object v6, p0, Lcom/pizza/work/SaleActivity$LoadViewTask$3;->this$1:Lcom/pizza/work/SaleActivity$LoadViewTask;

    invoke-static {v6}, Lcom/pizza/work/SaleActivity$LoadViewTask;->access$4(Lcom/pizza/work/SaleActivity$LoadViewTask;)Lcom/pizza/work/SaleActivity;

    move-result-object v6

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    iput v7, v6, Lcom/pizza/work/SaleActivity;->val:I

    .line 767
    iget-object v6, p0, Lcom/pizza/work/SaleActivity$LoadViewTask$3;->this$1:Lcom/pizza/work/SaleActivity$LoadViewTask;

    invoke-static {v6}, Lcom/pizza/work/SaleActivity$LoadViewTask;->access$4(Lcom/pizza/work/SaleActivity$LoadViewTask;)Lcom/pizza/work/SaleActivity;

    move-result-object v6

    iget v6, v6, Lcom/pizza/work/SaleActivity;->val:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    packed-switch v6, :pswitch_data_0

    .line 843
    :goto_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 845
    .local v3, object:Lorg/json/JSONObject;
    :try_start_1
    const-string v6, "productname"

    invoke-virtual {v3, v6, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 846
    const-string v6, "type"

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_4

    .line 854
    :goto_1
    new-instance v1, Landroid/widget/ArrayAdapter;

    iget-object v6, p0, Lcom/pizza/work/SaleActivity$LoadViewTask$3;->this$1:Lcom/pizza/work/SaleActivity$LoadViewTask;

    invoke-static {v6}, Lcom/pizza/work/SaleActivity$LoadViewTask;->access$4(Lcom/pizza/work/SaleActivity$LoadViewTask;)Lcom/pizza/work/SaleActivity;

    move-result-object v6

    const v7, 0x1090009

    iget-object v8, p0, Lcom/pizza/work/SaleActivity$LoadViewTask$3;->this$1:Lcom/pizza/work/SaleActivity$LoadViewTask;

    invoke-static {v8}, Lcom/pizza/work/SaleActivity$LoadViewTask;->access$4(Lcom/pizza/work/SaleActivity$LoadViewTask;)Lcom/pizza/work/SaleActivity;

    move-result-object v8

    iget-object v8, v8, Lcom/pizza/work/SaleActivity;->typevector:Ljava/util/ArrayList;

    invoke-direct {v1, v6, v7, v8}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 855
    .local v1, adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    iget-object v6, p0, Lcom/pizza/work/SaleActivity$LoadViewTask$3;->this$1:Lcom/pizza/work/SaleActivity$LoadViewTask;

    invoke-static {v6}, Lcom/pizza/work/SaleActivity$LoadViewTask;->access$4(Lcom/pizza/work/SaleActivity$LoadViewTask;)Lcom/pizza/work/SaleActivity;

    move-result-object v6

    invoke-static {v6}, Lcom/pizza/work/SaleActivity;->access$23(Lcom/pizza/work/SaleActivity;)Landroid/widget/Spinner;

    move-result-object v6

    invoke-virtual {v6, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 857
    return-void

    .line 773
    .end local v1           #adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    .end local v3           #object:Lorg/json/JSONObject;
    :pswitch_0
    :try_start_2
    iget-object v6, p0, Lcom/pizza/work/SaleActivity$LoadViewTask$3;->this$1:Lcom/pizza/work/SaleActivity$LoadViewTask;

    invoke-static {v6}, Lcom/pizza/work/SaleActivity$LoadViewTask;->access$4(Lcom/pizza/work/SaleActivity$LoadViewTask;)Lcom/pizza/work/SaleActivity;

    move-result-object v6

    iget-object v6, v6, Lcom/pizza/work/SaleActivity;->productObject:Lcom/pizza/work/library/Product;

    invoke-virtual {v6}, Lcom/pizza/work/library/Product;->getType1()Ljava/util/ArrayList;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    const-string v7, "-1"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 774
    iget-object v6, p0, Lcom/pizza/work/SaleActivity$LoadViewTask$3;->this$1:Lcom/pizza/work/SaleActivity$LoadViewTask;

    invoke-static {v6}, Lcom/pizza/work/SaleActivity$LoadViewTask;->access$4(Lcom/pizza/work/SaleActivity$LoadViewTask;)Lcom/pizza/work/SaleActivity;

    move-result-object v6

    invoke-static {v6}, Lcom/pizza/work/SaleActivity;->access$23(Lcom/pizza/work/SaleActivity;)Landroid/widget/Spinner;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/Spinner;->setEnabled(Z)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 779
    :goto_2
    :try_start_3
    iget-object v6, p0, Lcom/pizza/work/SaleActivity$LoadViewTask$3;->this$1:Lcom/pizza/work/SaleActivity$LoadViewTask;

    invoke-static {v6}, Lcom/pizza/work/SaleActivity$LoadViewTask;->access$4(Lcom/pizza/work/SaleActivity$LoadViewTask;)Lcom/pizza/work/SaleActivity;

    move-result-object v6

    const/4 v7, 0x1

    iput v7, v6, Lcom/pizza/work/SaleActivity;->abclength:I

    .line 780
    iget-object v6, p0, Lcom/pizza/work/SaleActivity$LoadViewTask$3;->this$1:Lcom/pizza/work/SaleActivity$LoadViewTask;

    invoke-static {v6}, Lcom/pizza/work/SaleActivity$LoadViewTask;->access$4(Lcom/pizza/work/SaleActivity$LoadViewTask;)Lcom/pizza/work/SaleActivity;

    move-result-object v6

    invoke-static {v6}, Lcom/pizza/work/SaleActivity;->access$7(Lcom/pizza/work/SaleActivity;)Landroid/widget/EditText;

    move-result-object v6

    const-string v7, ""

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 781
    iget-object v6, p0, Lcom/pizza/work/SaleActivity$LoadViewTask$3;->this$1:Lcom/pizza/work/SaleActivity$LoadViewTask;

    invoke-static {v6}, Lcom/pizza/work/SaleActivity$LoadViewTask;->access$4(Lcom/pizza/work/SaleActivity$LoadViewTask;)Lcom/pizza/work/SaleActivity;

    move-result-object v6

    invoke-static {v6}, Lcom/pizza/work/SaleActivity;->access$19(Lcom/pizza/work/SaleActivity;)Landroid/widget/EditText;

    move-result-object v6

    const-string v7, ""

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 782
    iget-object v6, p0, Lcom/pizza/work/SaleActivity$LoadViewTask$3;->this$1:Lcom/pizza/work/SaleActivity$LoadViewTask;

    invoke-static {v6}, Lcom/pizza/work/SaleActivity$LoadViewTask;->access$4(Lcom/pizza/work/SaleActivity$LoadViewTask;)Lcom/pizza/work/SaleActivity;

    move-result-object v6

    invoke-static {v6}, Lcom/pizza/work/SaleActivity;->access$18(Lcom/pizza/work/SaleActivity;)Landroid/widget/EditText;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/EditText;->getVisibility()I

    move-result v6

    if-nez v6, :cond_0

    .line 784
    iget-object v6, p0, Lcom/pizza/work/SaleActivity$LoadViewTask$3;->this$1:Lcom/pizza/work/SaleActivity$LoadViewTask;

    invoke-static {v6}, Lcom/pizza/work/SaleActivity$LoadViewTask;->access$4(Lcom/pizza/work/SaleActivity$LoadViewTask;)Lcom/pizza/work/SaleActivity;

    move-result-object v6

    invoke-static {v6}, Lcom/pizza/work/SaleActivity;->access$18(Lcom/pizza/work/SaleActivity;)Landroid/widget/EditText;

    move-result-object v6

    const-string v7, ""

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 788
    :cond_0
    iget-object v6, p0, Lcom/pizza/work/SaleActivity$LoadViewTask$3;->this$1:Lcom/pizza/work/SaleActivity$LoadViewTask;

    invoke-static {v6}, Lcom/pizza/work/SaleActivity$LoadViewTask;->access$4(Lcom/pizza/work/SaleActivity$LoadViewTask;)Lcom/pizza/work/SaleActivity;

    move-result-object v6

    invoke-static {v6}, Lcom/pizza/work/SaleActivity;->access$7(Lcom/pizza/work/SaleActivity;)Landroid/widget/EditText;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/EditText;->requestFocus()Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_0

    .line 841
    :catch_0
    move-exception v2

    .local v2, e:Ljava/lang/Exception;
    const-string v6, "error vector"

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 776
    .end local v2           #e:Ljava/lang/Exception;
    :cond_1
    :try_start_4
    iget-object v6, p0, Lcom/pizza/work/SaleActivity$LoadViewTask$3;->this$1:Lcom/pizza/work/SaleActivity$LoadViewTask;

    invoke-static {v6}, Lcom/pizza/work/SaleActivity$LoadViewTask;->access$4(Lcom/pizza/work/SaleActivity$LoadViewTask;)Lcom/pizza/work/SaleActivity;

    move-result-object v6

    iget-object v7, p0, Lcom/pizza/work/SaleActivity$LoadViewTask$3;->this$1:Lcom/pizza/work/SaleActivity$LoadViewTask;

    invoke-static {v7}, Lcom/pizza/work/SaleActivity$LoadViewTask;->access$4(Lcom/pizza/work/SaleActivity$LoadViewTask;)Lcom/pizza/work/SaleActivity;

    move-result-object v7

    iget-object v7, v7, Lcom/pizza/work/SaleActivity;->productObject:Lcom/pizza/work/library/Product;

    invoke-virtual {v7}, Lcom/pizza/work/library/Product;->getType1()Ljava/util/ArrayList;

    move-result-object v7

    iput-object v7, v6, Lcom/pizza/work/SaleActivity;->typevector:Ljava/util/ArrayList;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_2

    .line 778
    :catch_1
    move-exception v2

    .restart local v2       #e:Ljava/lang/Exception;
    :try_start_5
    const-string v6, "case 1"

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_2

    .line 796
    .end local v2           #e:Ljava/lang/Exception;
    :pswitch_1
    :try_start_6
    iget-object v6, p0, Lcom/pizza/work/SaleActivity$LoadViewTask$3;->this$1:Lcom/pizza/work/SaleActivity$LoadViewTask;

    invoke-static {v6}, Lcom/pizza/work/SaleActivity$LoadViewTask;->access$4(Lcom/pizza/work/SaleActivity$LoadViewTask;)Lcom/pizza/work/SaleActivity;

    move-result-object v6

    iget-object v6, v6, Lcom/pizza/work/SaleActivity;->productObject:Lcom/pizza/work/library/Product;

    invoke-virtual {v6}, Lcom/pizza/work/library/Product;->getType2()Ljava/util/ArrayList;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    const-string v7, "-1"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 797
    iget-object v6, p0, Lcom/pizza/work/SaleActivity$LoadViewTask$3;->this$1:Lcom/pizza/work/SaleActivity$LoadViewTask;

    invoke-static {v6}, Lcom/pizza/work/SaleActivity$LoadViewTask;->access$4(Lcom/pizza/work/SaleActivity$LoadViewTask;)Lcom/pizza/work/SaleActivity;

    move-result-object v6

    invoke-static {v6}, Lcom/pizza/work/SaleActivity;->access$23(Lcom/pizza/work/SaleActivity;)Landroid/widget/Spinner;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/Spinner;->setEnabled(Z)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    .line 803
    :goto_3
    :try_start_7
    iget-object v6, p0, Lcom/pizza/work/SaleActivity$LoadViewTask$3;->this$1:Lcom/pizza/work/SaleActivity$LoadViewTask;

    invoke-static {v6}, Lcom/pizza/work/SaleActivity$LoadViewTask;->access$4(Lcom/pizza/work/SaleActivity$LoadViewTask;)Lcom/pizza/work/SaleActivity;

    move-result-object v6

    const/4 v7, 0x2

    iput v7, v6, Lcom/pizza/work/SaleActivity;->abclength:I

    .line 804
    iget-object v6, p0, Lcom/pizza/work/SaleActivity$LoadViewTask$3;->this$1:Lcom/pizza/work/SaleActivity$LoadViewTask;

    invoke-static {v6}, Lcom/pizza/work/SaleActivity$LoadViewTask;->access$4(Lcom/pizza/work/SaleActivity$LoadViewTask;)Lcom/pizza/work/SaleActivity;

    move-result-object v6

    invoke-static {v6}, Lcom/pizza/work/SaleActivity;->access$7(Lcom/pizza/work/SaleActivity;)Landroid/widget/EditText;

    move-result-object v6

    const-string v7, ""

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 805
    iget-object v6, p0, Lcom/pizza/work/SaleActivity$LoadViewTask$3;->this$1:Lcom/pizza/work/SaleActivity$LoadViewTask;

    invoke-static {v6}, Lcom/pizza/work/SaleActivity$LoadViewTask;->access$4(Lcom/pizza/work/SaleActivity$LoadViewTask;)Lcom/pizza/work/SaleActivity;

    move-result-object v6

    invoke-static {v6}, Lcom/pizza/work/SaleActivity;->access$19(Lcom/pizza/work/SaleActivity;)Landroid/widget/EditText;

    move-result-object v6

    const-string v7, ""

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 806
    iget-object v6, p0, Lcom/pizza/work/SaleActivity$LoadViewTask$3;->this$1:Lcom/pizza/work/SaleActivity$LoadViewTask;

    invoke-static {v6}, Lcom/pizza/work/SaleActivity$LoadViewTask;->access$4(Lcom/pizza/work/SaleActivity$LoadViewTask;)Lcom/pizza/work/SaleActivity;

    move-result-object v6

    invoke-static {v6}, Lcom/pizza/work/SaleActivity;->access$18(Lcom/pizza/work/SaleActivity;)Landroid/widget/EditText;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/EditText;->getVisibility()I

    move-result v6

    if-nez v6, :cond_2

    .line 808
    iget-object v6, p0, Lcom/pizza/work/SaleActivity$LoadViewTask$3;->this$1:Lcom/pizza/work/SaleActivity$LoadViewTask;

    invoke-static {v6}, Lcom/pizza/work/SaleActivity$LoadViewTask;->access$4(Lcom/pizza/work/SaleActivity$LoadViewTask;)Lcom/pizza/work/SaleActivity;

    move-result-object v6

    invoke-static {v6}, Lcom/pizza/work/SaleActivity;->access$18(Lcom/pizza/work/SaleActivity;)Landroid/widget/EditText;

    move-result-object v6

    const-string v7, ""

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 812
    :cond_2
    iget-object v6, p0, Lcom/pizza/work/SaleActivity$LoadViewTask$3;->this$1:Lcom/pizza/work/SaleActivity$LoadViewTask;

    invoke-static {v6}, Lcom/pizza/work/SaleActivity$LoadViewTask;->access$4(Lcom/pizza/work/SaleActivity$LoadViewTask;)Lcom/pizza/work/SaleActivity;

    move-result-object v6

    invoke-static {v6}, Lcom/pizza/work/SaleActivity;->access$7(Lcom/pizza/work/SaleActivity;)Landroid/widget/EditText;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/EditText;->requestFocus()Z
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    goto/16 :goto_0

    .line 800
    :cond_3
    :try_start_8
    iget-object v6, p0, Lcom/pizza/work/SaleActivity$LoadViewTask$3;->this$1:Lcom/pizza/work/SaleActivity$LoadViewTask;

    invoke-static {v6}, Lcom/pizza/work/SaleActivity$LoadViewTask;->access$4(Lcom/pizza/work/SaleActivity$LoadViewTask;)Lcom/pizza/work/SaleActivity;

    move-result-object v6

    iget-object v7, p0, Lcom/pizza/work/SaleActivity$LoadViewTask$3;->this$1:Lcom/pizza/work/SaleActivity$LoadViewTask;

    invoke-static {v7}, Lcom/pizza/work/SaleActivity$LoadViewTask;->access$4(Lcom/pizza/work/SaleActivity$LoadViewTask;)Lcom/pizza/work/SaleActivity;

    move-result-object v7

    iget-object v7, v7, Lcom/pizza/work/SaleActivity;->productObject:Lcom/pizza/work/library/Product;

    invoke-virtual {v7}, Lcom/pizza/work/library/Product;->getType2()Ljava/util/ArrayList;

    move-result-object v7

    iput-object v7, v6, Lcom/pizza/work/SaleActivity;->typevector:Ljava/util/ArrayList;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2

    goto :goto_3

    .line 802
    :catch_2
    move-exception v2

    .restart local v2       #e:Ljava/lang/Exception;
    :try_start_9
    const-string v6, "case 2"

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0

    goto :goto_3

    .line 816
    .end local v2           #e:Ljava/lang/Exception;
    :pswitch_2
    :try_start_a
    const-string v6, "333"

    iget-object v7, p0, Lcom/pizza/work/SaleActivity$LoadViewTask$3;->this$1:Lcom/pizza/work/SaleActivity$LoadViewTask;

    invoke-static {v7}, Lcom/pizza/work/SaleActivity$LoadViewTask;->access$4(Lcom/pizza/work/SaleActivity$LoadViewTask;)Lcom/pizza/work/SaleActivity;

    move-result-object v7

    iget-object v7, v7, Lcom/pizza/work/SaleActivity;->productObject:Lcom/pizza/work/library/Product;

    invoke-virtual {v7}, Lcom/pizza/work/library/Product;->getType3()Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 819
    iget-object v6, p0, Lcom/pizza/work/SaleActivity$LoadViewTask$3;->this$1:Lcom/pizza/work/SaleActivity$LoadViewTask;

    invoke-static {v6}, Lcom/pizza/work/SaleActivity$LoadViewTask;->access$4(Lcom/pizza/work/SaleActivity$LoadViewTask;)Lcom/pizza/work/SaleActivity;

    move-result-object v6

    iget-object v6, v6, Lcom/pizza/work/SaleActivity;->productObject:Lcom/pizza/work/library/Product;

    invoke-virtual {v6}, Lcom/pizza/work/library/Product;->getType3()Ljava/util/ArrayList;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    const-string v7, "-1"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 820
    iget-object v6, p0, Lcom/pizza/work/SaleActivity$LoadViewTask$3;->this$1:Lcom/pizza/work/SaleActivity$LoadViewTask;

    invoke-static {v6}, Lcom/pizza/work/SaleActivity$LoadViewTask;->access$4(Lcom/pizza/work/SaleActivity$LoadViewTask;)Lcom/pizza/work/SaleActivity;

    move-result-object v6

    invoke-static {v6}, Lcom/pizza/work/SaleActivity;->access$23(Lcom/pizza/work/SaleActivity;)Landroid/widget/Spinner;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/Spinner;->setEnabled(Z)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_3

    .line 827
    :goto_4
    :try_start_b
    iget-object v6, p0, Lcom/pizza/work/SaleActivity$LoadViewTask$3;->this$1:Lcom/pizza/work/SaleActivity$LoadViewTask;

    invoke-static {v6}, Lcom/pizza/work/SaleActivity$LoadViewTask;->access$4(Lcom/pizza/work/SaleActivity$LoadViewTask;)Lcom/pizza/work/SaleActivity;

    move-result-object v6

    const/4 v7, 0x3

    iput v7, v6, Lcom/pizza/work/SaleActivity;->abclength:I

    .line 828
    iget-object v6, p0, Lcom/pizza/work/SaleActivity$LoadViewTask$3;->this$1:Lcom/pizza/work/SaleActivity$LoadViewTask;

    invoke-static {v6}, Lcom/pizza/work/SaleActivity$LoadViewTask;->access$4(Lcom/pizza/work/SaleActivity$LoadViewTask;)Lcom/pizza/work/SaleActivity;

    move-result-object v6

    invoke-static {v6}, Lcom/pizza/work/SaleActivity;->access$7(Lcom/pizza/work/SaleActivity;)Landroid/widget/EditText;

    move-result-object v6

    const-string v7, ""

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 829
    iget-object v6, p0, Lcom/pizza/work/SaleActivity$LoadViewTask$3;->this$1:Lcom/pizza/work/SaleActivity$LoadViewTask;

    invoke-static {v6}, Lcom/pizza/work/SaleActivity$LoadViewTask;->access$4(Lcom/pizza/work/SaleActivity$LoadViewTask;)Lcom/pizza/work/SaleActivity;

    move-result-object v6

    invoke-static {v6}, Lcom/pizza/work/SaleActivity;->access$19(Lcom/pizza/work/SaleActivity;)Landroid/widget/EditText;

    move-result-object v6

    const-string v7, ""

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 830
    iget-object v6, p0, Lcom/pizza/work/SaleActivity$LoadViewTask$3;->this$1:Lcom/pizza/work/SaleActivity$LoadViewTask;

    invoke-static {v6}, Lcom/pizza/work/SaleActivity$LoadViewTask;->access$4(Lcom/pizza/work/SaleActivity$LoadViewTask;)Lcom/pizza/work/SaleActivity;

    move-result-object v6

    invoke-static {v6}, Lcom/pizza/work/SaleActivity;->access$18(Lcom/pizza/work/SaleActivity;)Landroid/widget/EditText;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/EditText;->getVisibility()I

    move-result v6

    if-nez v6, :cond_4

    .line 832
    iget-object v6, p0, Lcom/pizza/work/SaleActivity$LoadViewTask$3;->this$1:Lcom/pizza/work/SaleActivity$LoadViewTask;

    invoke-static {v6}, Lcom/pizza/work/SaleActivity$LoadViewTask;->access$4(Lcom/pizza/work/SaleActivity$LoadViewTask;)Lcom/pizza/work/SaleActivity;

    move-result-object v6

    invoke-static {v6}, Lcom/pizza/work/SaleActivity;->access$18(Lcom/pizza/work/SaleActivity;)Landroid/widget/EditText;

    move-result-object v6

    const-string v7, ""

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 836
    :cond_4
    iget-object v6, p0, Lcom/pizza/work/SaleActivity$LoadViewTask$3;->this$1:Lcom/pizza/work/SaleActivity$LoadViewTask;

    invoke-static {v6}, Lcom/pizza/work/SaleActivity$LoadViewTask;->access$4(Lcom/pizza/work/SaleActivity$LoadViewTask;)Lcom/pizza/work/SaleActivity;

    move-result-object v6

    invoke-static {v6}, Lcom/pizza/work/SaleActivity;->access$7(Lcom/pizza/work/SaleActivity;)Landroid/widget/EditText;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/EditText;->requestFocus()Z
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_0

    goto/16 :goto_0

    .line 823
    :cond_5
    :try_start_c
    iget-object v6, p0, Lcom/pizza/work/SaleActivity$LoadViewTask$3;->this$1:Lcom/pizza/work/SaleActivity$LoadViewTask;

    invoke-static {v6}, Lcom/pizza/work/SaleActivity$LoadViewTask;->access$4(Lcom/pizza/work/SaleActivity$LoadViewTask;)Lcom/pizza/work/SaleActivity;

    move-result-object v6

    iget-object v7, p0, Lcom/pizza/work/SaleActivity$LoadViewTask$3;->this$1:Lcom/pizza/work/SaleActivity$LoadViewTask;

    invoke-static {v7}, Lcom/pizza/work/SaleActivity$LoadViewTask;->access$4(Lcom/pizza/work/SaleActivity$LoadViewTask;)Lcom/pizza/work/SaleActivity;

    move-result-object v7

    iget-object v7, v7, Lcom/pizza/work/SaleActivity;->productObject:Lcom/pizza/work/library/Product;

    invoke-virtual {v7}, Lcom/pizza/work/library/Product;->getType3()Ljava/util/ArrayList;

    move-result-object v7

    iput-object v7, v6, Lcom/pizza/work/SaleActivity;->typevector:Ljava/util/ArrayList;
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_3

    goto :goto_4

    .line 826
    :catch_3
    move-exception v2

    .restart local v2       #e:Ljava/lang/Exception;
    :try_start_d
    const-string v6, "case 3"

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_0

    goto :goto_4

    .line 849
    .end local v2           #e:Ljava/lang/Exception;
    .restart local v3       #object:Lorg/json/JSONObject;
    :catch_4
    move-exception v2

    .line 850
    .local v2, e:Lorg/json/JSONException;
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    goto/16 :goto_1

    .line 767
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
