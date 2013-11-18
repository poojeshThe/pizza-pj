.class public Lcom/pizza/work/saleamountwiseActivity;
.super Landroid/app/Activity;
.source "saleamountwiseActivity.java"


# instance fields
.field b1:Landroid/widget/Button;

.field balance:Landroid/widget/TextView;

.field calview1:Landroid/widget/TextView;

.field calview2:Landroid/widget/TextView;

.field catagoryVector:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field dcamount:Landroid/widget/TextView;

.field enddate:Ljava/lang/String;

.field idVector:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field location:I

.field spin_catagory:Landroid/widget/Spinner;

.field startdate:Ljava/lang/String;

.field stock:Landroid/widget/TextView;

.field tamount:Landroid/widget/TextView;

.field tamountpay:Landroid/widget/TextView;

.field today:Ljava/lang/String;

.field total:Landroid/widget/TextView;

.field tsale:Landroid/widget/TextView;

.field userFunction:Lcom/pizza/work/library/UserFunctions;

.field winning:Landroid/widget/TextView;

.field winningamt:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 30
    const/4 v0, 0x0

    iput v0, p0, Lcom/pizza/work/saleamountwiseActivity;->location:I

    .line 31
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/pizza/work/saleamountwiseActivity;->catagoryVector:Ljava/util/Vector;

    .line 32
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/pizza/work/saleamountwiseActivity;->idVector:Ljava/util/Vector;

    .line 49
    new-instance v0, Lcom/pizza/work/library/UserFunctions;

    invoke-direct {v0}, Lcom/pizza/work/library/UserFunctions;-><init>()V

    iput-object v0, p0, Lcom/pizza/work/saleamountwiseActivity;->userFunction:Lcom/pizza/work/library/UserFunctions;

    .line 29
    return-void
.end method


# virtual methods
.method public display()V
    .locals 7

    .prologue
    .line 194
    iget-object v3, p0, Lcom/pizza/work/saleamountwiseActivity;->userFunction:Lcom/pizza/work/library/UserFunctions;

    iget-object v4, p0, Lcom/pizza/work/saleamountwiseActivity;->startdate:Ljava/lang/String;

    iget-object v5, p0, Lcom/pizza/work/saleamountwiseActivity;->enddate:Ljava/lang/String;

    iget-object v2, p0, Lcom/pizza/work/saleamountwiseActivity;->idVector:Ljava/util/Vector;

    iget v6, p0, Lcom/pizza/work/saleamountwiseActivity;->location:I

    invoke-virtual {v2, v6}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v4, v5, v2}, Lcom/pizza/work/library/UserFunctions;->viewAmountwisesale(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 198
    .local v1, json_data:Lorg/json/JSONObject;
    :try_start_0
    iget-object v2, p0, Lcom/pizza/work/saleamountwiseActivity;->tsale:Landroid/widget/TextView;

    const-string v3, "total_sale"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 199
    iget-object v2, p0, Lcom/pizza/work/saleamountwiseActivity;->tsale:Landroid/widget/TextView;

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setGravity(I)V

    .line 200
    iget-object v2, p0, Lcom/pizza/work/saleamountwiseActivity;->tamount:Landroid/widget/TextView;

    const-string v3, "sale_amount"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 201
    iget-object v2, p0, Lcom/pizza/work/saleamountwiseActivity;->tamount:Landroid/widget/TextView;

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setGravity(I)V

    .line 202
    iget-object v2, p0, Lcom/pizza/work/saleamountwiseActivity;->tamountpay:Landroid/widget/TextView;

    const-string v3, "amount_to_pay"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 203
    iget-object v2, p0, Lcom/pizza/work/saleamountwiseActivity;->tamountpay:Landroid/widget/TextView;

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setGravity(I)V

    .line 204
    iget-object v2, p0, Lcom/pizza/work/saleamountwiseActivity;->winning:Landroid/widget/TextView;

    const-string v3, "no_of_winning"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 205
    iget-object v2, p0, Lcom/pizza/work/saleamountwiseActivity;->winning:Landroid/widget/TextView;

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setGravity(I)V

    .line 206
    iget-object v2, p0, Lcom/pizza/work/saleamountwiseActivity;->winningamt:Landroid/widget/TextView;

    const-string v3, "winning_amount"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 207
    iget-object v2, p0, Lcom/pizza/work/saleamountwiseActivity;->winningamt:Landroid/widget/TextView;

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setGravity(I)V

    .line 208
    iget-object v2, p0, Lcom/pizza/work/saleamountwiseActivity;->dcamount:Landroid/widget/TextView;

    const-string v3, "dc_amount"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 209
    iget-object v2, p0, Lcom/pizza/work/saleamountwiseActivity;->dcamount:Landroid/widget/TextView;

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setGravity(I)V

    .line 210
    iget-object v2, p0, Lcom/pizza/work/saleamountwiseActivity;->stock:Landroid/widget/TextView;

    const-string v3, "stock_amount"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 211
    iget-object v2, p0, Lcom/pizza/work/saleamountwiseActivity;->stock:Landroid/widget/TextView;

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setGravity(I)V

    .line 212
    iget-object v2, p0, Lcom/pizza/work/saleamountwiseActivity;->total:Landroid/widget/TextView;

    const-string v3, "grand_total"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 213
    iget-object v2, p0, Lcom/pizza/work/saleamountwiseActivity;->total:Landroid/widget/TextView;

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setGravity(I)V

    .line 214
    iget-object v2, p0, Lcom/pizza/work/saleamountwiseActivity;->balance:Landroid/widget/TextView;

    const-string v3, "balance"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 216
    iget-object v2, p0, Lcom/pizza/work/saleamountwiseActivity;->balance:Landroid/widget/TextView;

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setGravity(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 225
    :goto_0
    return-void

    .line 219
    :catch_0
    move-exception v0

    .local v0, e:Ljava/lang/Exception;
    const-string v2, "error"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public fillCatagory()V
    .locals 6

    .prologue
    .line 243
    iget-object v4, p0, Lcom/pizza/work/saleamountwiseActivity;->catagoryVector:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->removeAllElements()V

    .line 244
    iget-object v4, p0, Lcom/pizza/work/saleamountwiseActivity;->idVector:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->removeAllElements()V

    .line 245
    const/4 v2, 0x0

    .line 246
    .local v2, json:Lorg/json/JSONArray;
    iget-object v4, p0, Lcom/pizza/work/saleamountwiseActivity;->catagoryVector:Ljava/util/Vector;

    const-string v5, "All"

    invoke-virtual {v4, v5}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 247
    iget-object v4, p0, Lcom/pizza/work/saleamountwiseActivity;->idVector:Ljava/util/Vector;

    const-string v5, "All"

    invoke-virtual {v4, v5}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 249
    iget-object v4, p0, Lcom/pizza/work/saleamountwiseActivity;->userFunction:Lcom/pizza/work/library/UserFunctions;

    iget-object v5, p0, Lcom/pizza/work/saleamountwiseActivity;->today:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/pizza/work/library/UserFunctions;->getCatagory(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 251
    const/4 v3, 0x0

    .line 253
    .local v3, json_data:Lorg/json/JSONObject;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    :try_start_0
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-lt v1, v4, :cond_0

    .line 264
    :goto_1
    new-instance v0, Landroid/widget/ArrayAdapter;

    const v4, 0x1090009

    iget-object v5, p0, Lcom/pizza/work/saleamountwiseActivity;->catagoryVector:Ljava/util/Vector;

    invoke-direct {v0, p0, v4, v5}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 265
    .local v0, adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    iget-object v4, p0, Lcom/pizza/work/saleamountwiseActivity;->spin_catagory:Landroid/widget/Spinner;

    invoke-virtual {v4, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 267
    return-void

    .line 256
    .end local v0           #adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    :cond_0
    :try_start_1
    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 257
    iget-object v4, p0, Lcom/pizza/work/saleamountwiseActivity;->catagoryVector:Ljava/util/Vector;

    const-string v5, "category"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 258
    iget-object v4, p0, Lcom/pizza/work/saleamountwiseActivity;->idVector:Ljava/util/Vector;

    const-string v5, "id"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 253
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 262
    :catch_0
    move-exception v4

    goto :goto_1
.end method

.method public fillDate()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 230
    iget-object v2, p0, Lcom/pizza/work/saleamountwiseActivity;->userFunction:Lcom/pizza/work/library/UserFunctions;

    invoke-virtual {v2}, Lcom/pizza/work/library/UserFunctions;->getDate()Ljava/lang/String;

    move-result-object v0

    .line 231
    .local v0, date1:Ljava/lang/String;
    iget-object v2, p0, Lcom/pizza/work/saleamountwiseActivity;->userFunction:Lcom/pizza/work/library/UserFunctions;

    invoke-virtual {v2, v0}, Lcom/pizza/work/library/UserFunctions;->resultsplit1(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 232
    .local v1, result:[Ljava/lang/String;
    iget-object v2, p0, Lcom/pizza/work/saleamountwiseActivity;->calview1:Landroid/widget/TextView;

    aget-object v3, v1, v4

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 233
    iget-object v2, p0, Lcom/pizza/work/saleamountwiseActivity;->calview2:Landroid/widget/TextView;

    aget-object v3, v1, v4

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 234
    const/4 v2, 0x1

    aget-object v2, v1, v2

    iput-object v2, p0, Lcom/pizza/work/saleamountwiseActivity;->today:Ljava/lang/String;

    .line 235
    iget-object v2, p0, Lcom/pizza/work/saleamountwiseActivity;->today:Ljava/lang/String;

    iput-object v2, p0, Lcom/pizza/work/saleamountwiseActivity;->startdate:Ljava/lang/String;

    .line 236
    iget-object v2, p0, Lcom/pizza/work/saleamountwiseActivity;->today:Ljava/lang/String;

    iput-object v2, p0, Lcom/pizza/work/saleamountwiseActivity;->enddate:Ljava/lang/String;

    .line 237
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    const/4 v1, 0x5

    .line 52
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 53
    const v0, 0x7f030012

    invoke-virtual {p0, v0}, Lcom/pizza/work/saleamountwiseActivity;->setContentView(I)V

    .line 55
    const v0, 0x7f080009

    invoke-virtual {p0, v0}, Lcom/pizza/work/saleamountwiseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/pizza/work/saleamountwiseActivity;->b1:Landroid/widget/Button;

    .line 56
    const v0, 0x7f080012

    invoke-virtual {p0, v0}, Lcom/pizza/work/saleamountwiseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/pizza/work/saleamountwiseActivity;->spin_catagory:Landroid/widget/Spinner;

    .line 57
    const v0, 0x7f08004e

    invoke-virtual {p0, v0}, Lcom/pizza/work/saleamountwiseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/pizza/work/saleamountwiseActivity;->tsale:Landroid/widget/TextView;

    .line 58
    const v0, 0x7f08004f

    invoke-virtual {p0, v0}, Lcom/pizza/work/saleamountwiseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/pizza/work/saleamountwiseActivity;->tamount:Landroid/widget/TextView;

    .line 59
    const v0, 0x7f080050

    invoke-virtual {p0, v0}, Lcom/pizza/work/saleamountwiseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/pizza/work/saleamountwiseActivity;->tamountpay:Landroid/widget/TextView;

    .line 60
    const v0, 0x7f080052

    invoke-virtual {p0, v0}, Lcom/pizza/work/saleamountwiseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/pizza/work/saleamountwiseActivity;->winning:Landroid/widget/TextView;

    .line 61
    const v0, 0x7f080054

    invoke-virtual {p0, v0}, Lcom/pizza/work/saleamountwiseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/pizza/work/saleamountwiseActivity;->winningamt:Landroid/widget/TextView;

    .line 62
    const v0, 0x7f080056

    invoke-virtual {p0, v0}, Lcom/pizza/work/saleamountwiseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/pizza/work/saleamountwiseActivity;->dcamount:Landroid/widget/TextView;

    .line 63
    const v0, 0x7f080058

    invoke-virtual {p0, v0}, Lcom/pizza/work/saleamountwiseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/pizza/work/saleamountwiseActivity;->stock:Landroid/widget/TextView;

    .line 64
    const v0, 0x7f08005a

    invoke-virtual {p0, v0}, Lcom/pizza/work/saleamountwiseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/pizza/work/saleamountwiseActivity;->total:Landroid/widget/TextView;

    .line 65
    const v0, 0x7f08005c

    invoke-virtual {p0, v0}, Lcom/pizza/work/saleamountwiseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/pizza/work/saleamountwiseActivity;->balance:Landroid/widget/TextView;

    .line 66
    const v0, 0x7f08004a

    invoke-virtual {p0, v0}, Lcom/pizza/work/saleamountwiseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/pizza/work/saleamountwiseActivity;->calview1:Landroid/widget/TextView;

    .line 67
    const v0, 0x7f08004b

    invoke-virtual {p0, v0}, Lcom/pizza/work/saleamountwiseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/pizza/work/saleamountwiseActivity;->calview2:Landroid/widget/TextView;

    .line 73
    iget-object v0, p0, Lcom/pizza/work/saleamountwiseActivity;->tsale:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 75
    iget-object v0, p0, Lcom/pizza/work/saleamountwiseActivity;->tamount:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 77
    iget-object v0, p0, Lcom/pizza/work/saleamountwiseActivity;->tamountpay:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 79
    iget-object v0, p0, Lcom/pizza/work/saleamountwiseActivity;->winning:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 81
    iget-object v0, p0, Lcom/pizza/work/saleamountwiseActivity;->winningamt:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 83
    iget-object v0, p0, Lcom/pizza/work/saleamountwiseActivity;->dcamount:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 85
    iget-object v0, p0, Lcom/pizza/work/saleamountwiseActivity;->stock:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 87
    iget-object v0, p0, Lcom/pizza/work/saleamountwiseActivity;->total:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 90
    iget-object v0, p0, Lcom/pizza/work/saleamountwiseActivity;->balance:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 99
    invoke-virtual {p0}, Lcom/pizza/work/saleamountwiseActivity;->fillDate()V

    .line 100
    invoke-virtual {p0}, Lcom/pizza/work/saleamountwiseActivity;->fillCatagory()V

    .line 101
    invoke-virtual {p0}, Lcom/pizza/work/saleamountwiseActivity;->display()V

    .line 102
    iget-object v0, p0, Lcom/pizza/work/saleamountwiseActivity;->b1:Landroid/widget/Button;

    new-instance v1, Lcom/pizza/work/saleamountwiseActivity$1;

    invoke-direct {v1, p0}, Lcom/pizza/work/saleamountwiseActivity$1;-><init>(Lcom/pizza/work/saleamountwiseActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 112
    iget-object v0, p0, Lcom/pizza/work/saleamountwiseActivity;->spin_catagory:Landroid/widget/Spinner;

    new-instance v1, Lcom/pizza/work/saleamountwiseActivity$2;

    invoke-direct {v1, p0}, Lcom/pizza/work/saleamountwiseActivity$2;-><init>(Lcom/pizza/work/saleamountwiseActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 125
    iget-object v0, p0, Lcom/pizza/work/saleamountwiseActivity;->calview1:Landroid/widget/TextView;

    new-instance v1, Lcom/pizza/work/saleamountwiseActivity$3;

    invoke-direct {v1, p0}, Lcom/pizza/work/saleamountwiseActivity$3;-><init>(Lcom/pizza/work/saleamountwiseActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 157
    iget-object v0, p0, Lcom/pizza/work/saleamountwiseActivity;->calview2:Landroid/widget/TextView;

    new-instance v1, Lcom/pizza/work/saleamountwiseActivity$4;

    invoke-direct {v1, p0}, Lcom/pizza/work/saleamountwiseActivity$4;-><init>(Lcom/pizza/work/saleamountwiseActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 189
    return-void
.end method
