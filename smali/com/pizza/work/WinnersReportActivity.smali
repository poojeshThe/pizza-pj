.class public Lcom/pizza/work/WinnersReportActivity;
.super Landroid/app/Activity;
.source "WinnersReportActivity.java"


# instance fields
.field a1:[Ljava/lang/String;

.field amounts:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field calview1:Landroid/widget/TextView;

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

.field custnames:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

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

.field pnames:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field price:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field quant:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field saleProductList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field seldate:Ljava/lang/String;

.field private spin_catagory:Landroid/widget/Spinner;

.field tl:Landroid/widget/TableLayout;

.field today:Ljava/lang/String;

.field total:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field tr:Landroid/widget/TableRow;

.field trsecond:Landroid/widget/TableRow;

.field tv1:Landroid/widget/TextView;

.field tv2:Landroid/widget/TextView;

.field tv3:Landroid/widget/TextView;

.field tv4:Landroid/widget/TextView;

.field tv5:Landroid/widget/TextView;

.field tvr1:Landroid/widget/TextView;

.field tvr2:Landroid/widget/TextView;

.field tvr3:Landroid/widget/TextView;

.field tvr4:Landroid/widget/TextView;

.field tvr5:Landroid/widget/TextView;

.field typeno:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field userFunction:Lcom/pizza/work/library/UserFunctions;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 39
    new-instance v0, Lcom/pizza/work/library/UserFunctions;

    invoke-direct {v0}, Lcom/pizza/work/library/UserFunctions;-><init>()V

    iput-object v0, p0, Lcom/pizza/work/WinnersReportActivity;->userFunction:Lcom/pizza/work/library/UserFunctions;

    .line 41
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/pizza/work/WinnersReportActivity;->catagoryVector:Ljava/util/Vector;

    .line 42
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/pizza/work/WinnersReportActivity;->idVector:Ljava/util/Vector;

    .line 43
    const/4 v0, 0x0

    iput v0, p0, Lcom/pizza/work/WinnersReportActivity;->location:I

    .line 46
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/pizza/work/WinnersReportActivity;->pnames:Ljava/util/Vector;

    .line 47
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/pizza/work/WinnersReportActivity;->typeno:Ljava/util/Vector;

    .line 48
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/pizza/work/WinnersReportActivity;->quant:Ljava/util/Vector;

    .line 49
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/pizza/work/WinnersReportActivity;->price:Ljava/util/Vector;

    .line 50
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/pizza/work/WinnersReportActivity;->total:Ljava/util/Vector;

    .line 52
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/pizza/work/WinnersReportActivity;->saleProductList:Ljava/util/List;

    .line 71
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/pizza/work/WinnersReportActivity;->custnames:Ljava/util/Vector;

    .line 72
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/pizza/work/WinnersReportActivity;->amounts:Ljava/util/Vector;

    .line 27
    return-void
.end method


# virtual methods
.method public createView(Landroid/widget/TableRow;Landroid/widget/TextView;Ljava/lang/String;)V
    .locals 4
    .parameter "tr"
    .parameter "t"
    .parameter "viewdata"

    .prologue
    const/4 v3, 0x1

    const/4 v2, -0x2

    const/4 v1, 0x0

    .line 177
    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 179
    new-instance v0, Landroid/widget/TableRow$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/TableRow$LayoutParams;-><init>(II)V

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 180
    const v0, -0xbbbbbc

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 181
    const v0, -0xff0001

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 182
    const/16 v0, 0xa

    invoke-virtual {p2, v0, v1, v1, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 183
    invoke-virtual {p1, v1, v3, v1, v3}, Landroid/widget/TableRow;->setPadding(IIII)V

    .line 185
    invoke-virtual {p1, p2}, Landroid/widget/TableRow;->addView(Landroid/view/View;)V

    .line 186
    return-void
.end method

.method public display()V
    .locals 13

    .prologue
    .line 192
    new-instance v8, Lcom/pizza/work/library/UserFunctions;

    invoke-direct {v8}, Lcom/pizza/work/library/UserFunctions;-><init>()V

    .line 194
    .local v8, userFunction:Lcom/pizza/work/library/UserFunctions;
    const-string v10, "JSONFrom  "

    iget-object v11, p0, Lcom/pizza/work/WinnersReportActivity;->seldate:Ljava/lang/String;

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    iget-object v11, p0, Lcom/pizza/work/WinnersReportActivity;->seldate:Ljava/lang/String;

    iget-object v10, p0, Lcom/pizza/work/WinnersReportActivity;->idVector:Ljava/util/Vector;

    iget v12, p0, Lcom/pizza/work/WinnersReportActivity;->location:I

    invoke-virtual {v10, v12}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v11, v10}, Lcom/pizza/work/library/UserFunctions;->viewWinReport(Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 199
    .local v3, json_data:Lorg/json/JSONObject;
    new-instance v10, Ljava/util/Vector;

    invoke-direct {v10}, Ljava/util/Vector;-><init>()V

    iput-object v10, p0, Lcom/pizza/work/WinnersReportActivity;->pnames:Ljava/util/Vector;

    .line 201
    new-instance v10, Ljava/util/Vector;

    invoke-direct {v10}, Ljava/util/Vector;-><init>()V

    iput-object v10, p0, Lcom/pizza/work/WinnersReportActivity;->typeno:Ljava/util/Vector;

    .line 202
    new-instance v10, Ljava/util/Vector;

    invoke-direct {v10}, Ljava/util/Vector;-><init>()V

    iput-object v10, p0, Lcom/pizza/work/WinnersReportActivity;->quant:Ljava/util/Vector;

    .line 203
    new-instance v10, Ljava/util/Vector;

    invoke-direct {v10}, Ljava/util/Vector;-><init>()V

    iput-object v10, p0, Lcom/pizza/work/WinnersReportActivity;->price:Ljava/util/Vector;

    .line 204
    new-instance v10, Ljava/util/Vector;

    invoke-direct {v10}, Ljava/util/Vector;-><init>()V

    iput-object v10, p0, Lcom/pizza/work/WinnersReportActivity;->total:Ljava/util/Vector;

    .line 206
    iget-object v10, p0, Lcom/pizza/work/WinnersReportActivity;->pnames:Ljava/util/Vector;

    invoke-virtual {v10}, Ljava/util/Vector;->removeAllElements()V

    .line 207
    iget-object v10, p0, Lcom/pizza/work/WinnersReportActivity;->typeno:Ljava/util/Vector;

    invoke-virtual {v10}, Ljava/util/Vector;->removeAllElements()V

    .line 208
    iget-object v10, p0, Lcom/pizza/work/WinnersReportActivity;->quant:Ljava/util/Vector;

    invoke-virtual {v10}, Ljava/util/Vector;->removeAllElements()V

    .line 209
    iget-object v10, p0, Lcom/pizza/work/WinnersReportActivity;->price:Ljava/util/Vector;

    invoke-virtual {v10}, Ljava/util/Vector;->removeAllElements()V

    .line 210
    iget-object v10, p0, Lcom/pizza/work/WinnersReportActivity;->total:Ljava/util/Vector;

    invoke-virtual {v10}, Ljava/util/Vector;->removeAllElements()V

    .line 212
    const/4 v6, 0x1

    .line 217
    .local v6, q:I
    :try_start_0
    const-string v10, "count"

    invoke-virtual {v3, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 218
    .local v0, Count:I
    const/4 v10, -0x1

    if-eq v0, v10, :cond_0

    .line 221
    const-string v10, "CCCCCCC"

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    const/4 v9, 0x1

    .local v9, y:I
    :goto_0
    if-le v9, v0, :cond_1

    .line 267
    .end local v0           #Count:I
    .end local v9           #y:I
    :cond_0
    :goto_1
    return-void

    .line 227
    .restart local v0       #Count:I
    .restart local v9       #y:I
    :cond_1
    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    .line 228
    .local v7, sq:Ljava/lang/String;
    const-string v10, "sq"

    invoke-static {v10, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "gift"

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v10}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 233
    .local v1, b:Lorg/json/JSONObject;
    const-string v10, "COUNT"

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "product"

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v1, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    iget-object v10, p0, Lcom/pizza/work/WinnersReportActivity;->pnames:Ljava/util/Vector;

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "product"

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v1, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 235
    iget-object v10, p0, Lcom/pizza/work/WinnersReportActivity;->typeno:Ljava/util/Vector;

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "price_name"

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v1, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 237
    iget-object v10, p0, Lcom/pizza/work/WinnersReportActivity;->quant:Ljava/util/Vector;

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "price_amount"

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v1, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 238
    iget-object v10, p0, Lcom/pizza/work/WinnersReportActivity;->price:Ljava/util/Vector;

    const-string v11, " "

    invoke-virtual {v10, v11}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 240
    const-string v10, "pcount"

    invoke-virtual {v1, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 242
    .local v5, pcount:I
    const/4 v4, 0x1

    .local v4, l:I
    :goto_2
    if-le v4, v5, :cond_2

    .line 255
    add-int/lit8 v6, v6, 0x1

    .line 224
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_0

    .line 249
    :cond_2
    iget-object v10, p0, Lcom/pizza/work/WinnersReportActivity;->pnames:Ljava/util/Vector;

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "customer"

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v1, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 250
    iget-object v10, p0, Lcom/pizza/work/WinnersReportActivity;->typeno:Ljava/util/Vector;

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "ticket"

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v1, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 251
    iget-object v10, p0, Lcom/pizza/work/WinnersReportActivity;->quant:Ljava/util/Vector;

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "quantity"

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v1, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 252
    iget-object v10, p0, Lcom/pizza/work/WinnersReportActivity;->price:Ljava/util/Vector;

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "toatl_gift_price"

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v1, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 242
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 266
    .end local v0           #Count:I
    .end local v1           #b:Lorg/json/JSONObject;
    .end local v4           #l:I
    .end local v5           #pcount:I
    .end local v7           #sq:Ljava/lang/String;
    .end local v9           #y:I
    :catch_0
    move-exception v2

    .local v2, e:Ljava/lang/Exception;
    const-string v10, "Error   trtet"

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1
.end method

.method public fillCatagory()V
    .locals 6

    .prologue
    .line 282
    iget-object v4, p0, Lcom/pizza/work/WinnersReportActivity;->catagoryVector:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->removeAllElements()V

    .line 283
    iget-object v4, p0, Lcom/pizza/work/WinnersReportActivity;->idVector:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->removeAllElements()V

    .line 284
    const/4 v2, 0x0

    .line 285
    .local v2, json:Lorg/json/JSONArray;
    iget-object v4, p0, Lcom/pizza/work/WinnersReportActivity;->catagoryVector:Ljava/util/Vector;

    const-string v5, "All"

    invoke-virtual {v4, v5}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 286
    iget-object v4, p0, Lcom/pizza/work/WinnersReportActivity;->idVector:Ljava/util/Vector;

    const-string v5, "All"

    invoke-virtual {v4, v5}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 290
    iget-object v4, p0, Lcom/pizza/work/WinnersReportActivity;->userFunction:Lcom/pizza/work/library/UserFunctions;

    iget-object v5, p0, Lcom/pizza/work/WinnersReportActivity;->today:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/pizza/work/library/UserFunctions;->getCatagory(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 294
    const/4 v3, 0x0

    .line 296
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

    .line 308
    :goto_1
    new-instance v0, Landroid/widget/ArrayAdapter;

    const v4, 0x1090009

    iget-object v5, p0, Lcom/pizza/work/WinnersReportActivity;->catagoryVector:Ljava/util/Vector;

    invoke-direct {v0, p0, v4, v5}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 309
    .local v0, adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    iget-object v4, p0, Lcom/pizza/work/WinnersReportActivity;->spin_catagory:Landroid/widget/Spinner;

    invoke-virtual {v4, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 311
    return-void

    .line 299
    .end local v0           #adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    :cond_0
    :try_start_1
    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 300
    const-string v4, "catttttt"

    invoke-virtual {v2}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    iget-object v4, p0, Lcom/pizza/work/WinnersReportActivity;->catagoryVector:Ljava/util/Vector;

    const-string v5, "category"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 302
    iget-object v4, p0, Lcom/pizza/work/WinnersReportActivity;->idVector:Ljava/util/Vector;

    const-string v5, "id"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 296
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 306
    :catch_0
    move-exception v4

    goto :goto_1
.end method

.method public fillDate()V
    .locals 4

    .prologue
    .line 271
    iget-object v2, p0, Lcom/pizza/work/WinnersReportActivity;->userFunction:Lcom/pizza/work/library/UserFunctions;

    invoke-virtual {v2}, Lcom/pizza/work/library/UserFunctions;->getDate()Ljava/lang/String;

    move-result-object v0

    .line 272
    .local v0, date1:Ljava/lang/String;
    iget-object v2, p0, Lcom/pizza/work/WinnersReportActivity;->userFunction:Lcom/pizza/work/library/UserFunctions;

    invoke-virtual {v2, v0}, Lcom/pizza/work/library/UserFunctions;->resultsplit1(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 273
    .local v1, result:[Ljava/lang/String;
    iget-object v2, p0, Lcom/pizza/work/WinnersReportActivity;->calview1:Landroid/widget/TextView;

    const/4 v3, 0x0

    aget-object v3, v1, v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 275
    const/4 v2, 0x1

    aget-object v2, v1, v2

    iput-object v2, p0, Lcom/pizza/work/WinnersReportActivity;->today:Ljava/lang/String;

    .line 277
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 75
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 76
    const v0, 0x7f030016

    invoke-virtual {p0, v0}, Lcom/pizza/work/WinnersReportActivity;->setContentView(I)V

    .line 77
    const v0, 0x7f080012

    invoke-virtual {p0, v0}, Lcom/pizza/work/WinnersReportActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/pizza/work/WinnersReportActivity;->spin_catagory:Landroid/widget/Spinner;

    .line 78
    const v0, 0x7f080001

    invoke-virtual {p0, v0}, Lcom/pizza/work/WinnersReportActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/pizza/work/WinnersReportActivity;->calview1:Landroid/widget/TextView;

    .line 82
    invoke-virtual {p0}, Lcom/pizza/work/WinnersReportActivity;->fillDate()V

    .line 83
    invoke-virtual {p0}, Lcom/pizza/work/WinnersReportActivity;->fillCatagory()V

    .line 84
    iget-object v0, p0, Lcom/pizza/work/WinnersReportActivity;->today:Ljava/lang/String;

    iput-object v0, p0, Lcom/pizza/work/WinnersReportActivity;->seldate:Ljava/lang/String;

    .line 85
    invoke-virtual {p0}, Lcom/pizza/work/WinnersReportActivity;->display()V

    .line 86
    invoke-virtual {p0}, Lcom/pizza/work/WinnersReportActivity;->tabledisplay()V

    .line 90
    iget-object v0, p0, Lcom/pizza/work/WinnersReportActivity;->spin_catagory:Landroid/widget/Spinner;

    new-instance v1, Lcom/pizza/work/WinnersReportActivity$1;

    invoke-direct {v1, p0}, Lcom/pizza/work/WinnersReportActivity$1;-><init>(Lcom/pizza/work/WinnersReportActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 105
    iget-object v0, p0, Lcom/pizza/work/WinnersReportActivity;->calview1:Landroid/widget/TextView;

    new-instance v1, Lcom/pizza/work/WinnersReportActivity$2;

    invoke-direct {v1, p0}, Lcom/pizza/work/WinnersReportActivity$2;-><init>(Lcom/pizza/work/WinnersReportActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 138
    return-void
.end method

.method public tabledisplay()V
    .locals 4

    .prologue
    .line 142
    const v1, 0x7f080049

    invoke-virtual {p0, v1}, Lcom/pizza/work/WinnersReportActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TableLayout;

    iput-object v1, p0, Lcom/pizza/work/WinnersReportActivity;->tl:Landroid/widget/TableLayout;

    .line 143
    iget-object v1, p0, Lcom/pizza/work/WinnersReportActivity;->tl:Landroid/widget/TableLayout;

    invoke-virtual {v1}, Landroid/widget/TableLayout;->removeAllViews()V

    .line 146
    const-string v1, "pname"

    iget-object v2, p0, Lcom/pizza/work/WinnersReportActivity;->pnames:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/pizza/work/WinnersReportActivity;->pnames:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 174
    return-void

    .line 149
    :cond_0
    new-instance v1, Landroid/widget/TableRow;

    invoke-direct {v1, p0}, Landroid/widget/TableRow;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/pizza/work/WinnersReportActivity;->tr:Landroid/widget/TableRow;

    .line 151
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/pizza/work/WinnersReportActivity;->tv1:Landroid/widget/TextView;

    .line 152
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/pizza/work/WinnersReportActivity;->tv2:Landroid/widget/TextView;

    .line 153
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/pizza/work/WinnersReportActivity;->tv3:Landroid/widget/TextView;

    .line 154
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/pizza/work/WinnersReportActivity;->tv4:Landroid/widget/TextView;

    .line 159
    iget-object v2, p0, Lcom/pizza/work/WinnersReportActivity;->tr:Landroid/widget/TableRow;

    iget-object v3, p0, Lcom/pizza/work/WinnersReportActivity;->tv1:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/pizza/work/WinnersReportActivity;->pnames:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v2, v3, v1}, Lcom/pizza/work/WinnersReportActivity;->createView(Landroid/widget/TableRow;Landroid/widget/TextView;Ljava/lang/String;)V

    .line 160
    iget-object v2, p0, Lcom/pizza/work/WinnersReportActivity;->tr:Landroid/widget/TableRow;

    iget-object v3, p0, Lcom/pizza/work/WinnersReportActivity;->tv2:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/pizza/work/WinnersReportActivity;->typeno:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v2, v3, v1}, Lcom/pizza/work/WinnersReportActivity;->createView(Landroid/widget/TableRow;Landroid/widget/TextView;Ljava/lang/String;)V

    .line 161
    iget-object v2, p0, Lcom/pizza/work/WinnersReportActivity;->tr:Landroid/widget/TableRow;

    iget-object v3, p0, Lcom/pizza/work/WinnersReportActivity;->tv3:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/pizza/work/WinnersReportActivity;->quant:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v2, v3, v1}, Lcom/pizza/work/WinnersReportActivity;->createView(Landroid/widget/TableRow;Landroid/widget/TextView;Ljava/lang/String;)V

    .line 162
    iget-object v2, p0, Lcom/pizza/work/WinnersReportActivity;->tr:Landroid/widget/TableRow;

    iget-object v3, p0, Lcom/pizza/work/WinnersReportActivity;->tv4:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/pizza/work/WinnersReportActivity;->price:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v2, v3, v1}, Lcom/pizza/work/WinnersReportActivity;->createView(Landroid/widget/TableRow;Landroid/widget/TextView;Ljava/lang/String;)V

    .line 166
    iget-object v1, p0, Lcom/pizza/work/WinnersReportActivity;->tl:Landroid/widget/TableLayout;

    iget-object v2, p0, Lcom/pizza/work/WinnersReportActivity;->tr:Landroid/widget/TableRow;

    invoke-virtual {v1, v2}, Landroid/widget/TableLayout;->addView(Landroid/view/View;)V

    .line 147
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0
.end method
