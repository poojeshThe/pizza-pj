.class public Lcom/pizza/work/SaleReportActivity;
.super Landroid/app/Activity;
.source "SaleReportActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pizza/work/SaleReportActivity$task;
    }
.end annotation


# instance fields
.field Nos:[Ljava/util/Vector;

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

.field b1:Landroid/widget/Button;

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

.field customerVector:Ljava/util/Vector;
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

.field nos:[[Ljava/lang/String;

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

.field spin_cust:Landroid/widget/Spinner;

.field startdate:Ljava/lang/String;

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
    .line 35
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 46
    const/4 v0, 0x0

    iput v0, p0, Lcom/pizza/work/SaleReportActivity;->location:I

    .line 48
    new-instance v0, Lcom/pizza/work/library/UserFunctions;

    invoke-direct {v0}, Lcom/pizza/work/library/UserFunctions;-><init>()V

    iput-object v0, p0, Lcom/pizza/work/SaleReportActivity;->userFunction:Lcom/pizza/work/library/UserFunctions;

    .line 49
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/pizza/work/SaleReportActivity;->catagoryVector:Ljava/util/Vector;

    .line 50
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/pizza/work/SaleReportActivity;->idVector:Ljava/util/Vector;

    .line 52
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/pizza/work/SaleReportActivity;->customerVector:Ljava/util/Vector;

    .line 53
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/pizza/work/SaleReportActivity;->pnames:Ljava/util/Vector;

    .line 54
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/pizza/work/SaleReportActivity;->typeno:Ljava/util/Vector;

    .line 55
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/pizza/work/SaleReportActivity;->quant:Ljava/util/Vector;

    .line 56
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/pizza/work/SaleReportActivity;->price:Ljava/util/Vector;

    .line 57
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/pizza/work/SaleReportActivity;->total:Ljava/util/Vector;

    .line 60
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/pizza/work/SaleReportActivity;->saleProductList:Ljava/util/List;

    .line 77
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/pizza/work/SaleReportActivity;->custnames:Ljava/util/Vector;

    .line 78
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/pizza/work/SaleReportActivity;->amounts:Ljava/util/Vector;

    .line 35
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

    const/high16 v2, -0x100

    const/4 v1, 0x0

    .line 193
    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 196
    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 197
    const v0, -0xff0001

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 198
    const/16 v0, 0xa

    invoke-virtual {p2, v0, v1, v1, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 200
    invoke-virtual {p1, v1, v3, v1, v3}, Landroid/widget/TableRow;->setPadding(IIII)V

    .line 201
    invoke-virtual {p1, v2}, Landroid/widget/TableRow;->setBackgroundColor(I)V

    .line 202
    invoke-virtual {p1, p2}, Landroid/widget/TableRow;->addView(Landroid/view/View;)V

    .line 203
    return-void
.end method

.method public display()V
    .locals 11

    .prologue
    .line 207
    new-instance v8, Lcom/pizza/work/library/UserFunctions;

    invoke-direct {v8}, Lcom/pizza/work/library/UserFunctions;-><init>()V

    .line 210
    .local v8, userFunction:Lcom/pizza/work/library/UserFunctions;
    const/4 v4, 0x0

    .line 213
    .local v4, json_data:Lorg/json/JSONObject;
    iget-object v9, p0, Lcom/pizza/work/SaleReportActivity;->startdate:Ljava/lang/String;

    iget-object v10, p0, Lcom/pizza/work/SaleReportActivity;->spin_cust:Landroid/widget/Spinner;

    invoke-virtual {v10}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Lcom/pizza/work/library/UserFunctions;->viewSaleDetail(Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    .line 216
    const/4 v6, 0x1

    .line 217
    .local v6, q:I
    const/4 v5, 0x0

    .line 221
    .local v5, net:F
    :try_start_0
    new-instance v9, Ljava/util/Vector;

    invoke-direct {v9}, Ljava/util/Vector;-><init>()V

    iput-object v9, p0, Lcom/pizza/work/SaleReportActivity;->pnames:Ljava/util/Vector;

    .line 223
    new-instance v9, Ljava/util/Vector;

    invoke-direct {v9}, Ljava/util/Vector;-><init>()V

    iput-object v9, p0, Lcom/pizza/work/SaleReportActivity;->typeno:Ljava/util/Vector;

    .line 224
    new-instance v9, Ljava/util/Vector;

    invoke-direct {v9}, Ljava/util/Vector;-><init>()V

    iput-object v9, p0, Lcom/pizza/work/SaleReportActivity;->quant:Ljava/util/Vector;

    .line 225
    new-instance v9, Ljava/util/Vector;

    invoke-direct {v9}, Ljava/util/Vector;-><init>()V

    iput-object v9, p0, Lcom/pizza/work/SaleReportActivity;->price:Ljava/util/Vector;

    .line 226
    new-instance v9, Ljava/util/Vector;

    invoke-direct {v9}, Ljava/util/Vector;-><init>()V

    iput-object v9, p0, Lcom/pizza/work/SaleReportActivity;->total:Ljava/util/Vector;

    .line 228
    iget-object v9, p0, Lcom/pizza/work/SaleReportActivity;->pnames:Ljava/util/Vector;

    invoke-virtual {v9}, Ljava/util/Vector;->removeAllElements()V

    .line 229
    iget-object v9, p0, Lcom/pizza/work/SaleReportActivity;->typeno:Ljava/util/Vector;

    invoke-virtual {v9}, Ljava/util/Vector;->removeAllElements()V

    .line 230
    iget-object v9, p0, Lcom/pizza/work/SaleReportActivity;->quant:Ljava/util/Vector;

    invoke-virtual {v9}, Ljava/util/Vector;->removeAllElements()V

    .line 231
    iget-object v9, p0, Lcom/pizza/work/SaleReportActivity;->price:Ljava/util/Vector;

    invoke-virtual {v9}, Ljava/util/Vector;->removeAllElements()V

    .line 232
    const/4 v7, 0x0

    .line 233
    .local v7, tot:F
    const-string v9, "count"

    invoke-virtual {v4, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 234
    .local v0, Count:I
    const/4 v9, -0x1

    if-eq v0, v9, :cond_0

    .line 237
    const/4 v3, 0x1

    .local v3, i:I
    :goto_0
    if-le v3, v0, :cond_1

    .line 247
    iget-object v9, p0, Lcom/pizza/work/SaleReportActivity;->pnames:Ljava/util/Vector;

    const-string v10, " "

    invoke-virtual {v9, v10}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 248
    iget-object v9, p0, Lcom/pizza/work/SaleReportActivity;->typeno:Ljava/util/Vector;

    const-string v10, " "

    invoke-virtual {v9, v10}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 249
    iget-object v9, p0, Lcom/pizza/work/SaleReportActivity;->quant:Ljava/util/Vector;

    const-string v10, "Total"

    invoke-virtual {v9, v10}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 250
    iget-object v9, p0, Lcom/pizza/work/SaleReportActivity;->price:Ljava/util/Vector;

    invoke-static {v7}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 252
    add-float/2addr v5, v7

    .line 263
    .end local v3           #i:I
    :cond_0
    const/4 v4, 0x0

    .line 271
    .end local v0           #Count:I
    .end local v7           #tot:F
    :goto_1
    return-void

    .line 239
    .restart local v0       #Count:I
    .restart local v3       #i:I
    .restart local v7       #tot:F
    :cond_1
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "sale"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 240
    .local v1, b:Lorg/json/JSONObject;
    iget-object v9, p0, Lcom/pizza/work/SaleReportActivity;->pnames:Ljava/util/Vector;

    const-string v10, "product"

    invoke-virtual {v1, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 241
    iget-object v9, p0, Lcom/pizza/work/SaleReportActivity;->typeno:Ljava/util/Vector;

    const-string v10, "ticket_no"

    invoke-virtual {v1, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 242
    iget-object v9, p0, Lcom/pizza/work/SaleReportActivity;->quant:Ljava/util/Vector;

    const-string v10, "qunatity"

    invoke-virtual {v1, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 243
    iget-object v9, p0, Lcom/pizza/work/SaleReportActivity;->price:Ljava/util/Vector;

    const-string v10, "price"

    invoke-virtual {v1, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 244
    const-string v9, "price"

    invoke-virtual {v1, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v9

    add-float/2addr v7, v9

    .line 237
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 268
    .end local v0           #Count:I
    .end local v1           #b:Lorg/json/JSONObject;
    .end local v3           #i:I
    .end local v7           #tot:F
    :catch_0
    move-exception v2

    .local v2, e:Ljava/lang/Exception;
    const-string v9, "Error   trtet"

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public fillCatagory()V
    .locals 6

    .prologue
    .line 289
    iget-object v4, p0, Lcom/pizza/work/SaleReportActivity;->catagoryVector:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->removeAllElements()V

    .line 290
    iget-object v4, p0, Lcom/pizza/work/SaleReportActivity;->idVector:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->removeAllElements()V

    .line 291
    const/4 v2, 0x0

    .line 292
    .local v2, json:Lorg/json/JSONArray;
    iget-object v4, p0, Lcom/pizza/work/SaleReportActivity;->catagoryVector:Ljava/util/Vector;

    const-string v5, "All"

    invoke-virtual {v4, v5}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 293
    iget-object v4, p0, Lcom/pizza/work/SaleReportActivity;->idVector:Ljava/util/Vector;

    const-string v5, "All"

    invoke-virtual {v4, v5}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 294
    iget-object v4, p0, Lcom/pizza/work/SaleReportActivity;->userFunction:Lcom/pizza/work/library/UserFunctions;

    iget-object v5, p0, Lcom/pizza/work/SaleReportActivity;->today:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/pizza/work/library/UserFunctions;->getCatagory(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 296
    const/4 v3, 0x0

    .line 298
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

    .line 309
    :goto_1
    new-instance v0, Landroid/widget/ArrayAdapter;

    const v4, 0x1090009

    iget-object v5, p0, Lcom/pizza/work/SaleReportActivity;->catagoryVector:Ljava/util/Vector;

    invoke-direct {v0, p0, v4, v5}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 310
    .local v0, adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    iget-object v4, p0, Lcom/pizza/work/SaleReportActivity;->spin_cust:Landroid/widget/Spinner;

    invoke-virtual {v4, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 312
    return-void

    .line 301
    .end local v0           #adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    :cond_0
    :try_start_1
    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 302
    iget-object v4, p0, Lcom/pizza/work/SaleReportActivity;->catagoryVector:Ljava/util/Vector;

    const-string v5, "category"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 303
    iget-object v4, p0, Lcom/pizza/work/SaleReportActivity;->idVector:Ljava/util/Vector;

    const-string v5, "id"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 298
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 307
    :catch_0
    move-exception v4

    goto :goto_1
.end method

.method public fillCustomer()V
    .locals 7

    .prologue
    .line 323
    iget-object v4, p0, Lcom/pizza/work/SaleReportActivity;->customerVector:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->removeAllElements()V

    .line 326
    const/4 v3, 0x0

    .line 329
    .local v3, json_data:Lorg/json/JSONObject;
    iget-object v4, p0, Lcom/pizza/work/SaleReportActivity;->userFunction:Lcom/pizza/work/library/UserFunctions;

    iget-object v5, p0, Lcom/pizza/work/SaleReportActivity;->startdate:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/pizza/work/library/UserFunctions;->getCustomer(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 333
    :try_start_0
    const-string v4, "count"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 334
    .local v1, count:I
    const/4 v4, -0x1

    if-eq v1, v4, :cond_0

    .line 336
    const/4 v2, 0x1

    .local v2, i:I
    :goto_0
    if-le v2, v1, :cond_1

    .line 345
    .end local v1           #count:I
    .end local v2           #i:I
    :cond_0
    :goto_1
    new-instance v0, Landroid/widget/ArrayAdapter;

    const v4, 0x1090009

    iget-object v5, p0, Lcom/pizza/work/SaleReportActivity;->customerVector:Ljava/util/Vector;

    invoke-direct {v0, p0, v4, v5}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 346
    .local v0, adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    iget-object v4, p0, Lcom/pizza/work/SaleReportActivity;->spin_cust:Landroid/widget/Spinner;

    invoke-virtual {v4, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 348
    return-void

    .line 338
    .end local v0           #adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    .restart local v1       #count:I
    .restart local v2       #i:I
    :cond_1
    :try_start_1
    iget-object v4, p0, Lcom/pizza/work/SaleReportActivity;->customerVector:Ljava/util/Vector;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "cust"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 336
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 343
    .end local v1           #count:I
    .end local v2           #i:I
    :catch_0
    move-exception v4

    goto :goto_1
.end method

.method public fillDate()V
    .locals 4

    .prologue
    .line 277
    iget-object v2, p0, Lcom/pizza/work/SaleReportActivity;->userFunction:Lcom/pizza/work/library/UserFunctions;

    invoke-virtual {v2}, Lcom/pizza/work/library/UserFunctions;->getDate()Ljava/lang/String;

    move-result-object v0

    .line 278
    .local v0, date1:Ljava/lang/String;
    iget-object v2, p0, Lcom/pizza/work/SaleReportActivity;->userFunction:Lcom/pizza/work/library/UserFunctions;

    invoke-virtual {v2, v0}, Lcom/pizza/work/library/UserFunctions;->resultsplit1(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 279
    .local v1, result:[Ljava/lang/String;
    iget-object v2, p0, Lcom/pizza/work/SaleReportActivity;->calview1:Landroid/widget/TextView;

    const/4 v3, 0x0

    aget-object v3, v1, v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 281
    const/4 v2, 0x1

    aget-object v2, v1, v2

    iput-object v2, p0, Lcom/pizza/work/SaleReportActivity;->today:Ljava/lang/String;

    .line 283
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 83
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 84
    const v0, 0x7f030011

    invoke-virtual {p0, v0}, Lcom/pizza/work/SaleReportActivity;->setContentView(I)V

    .line 85
    const v0, 0x7f080009

    invoke-virtual {p0, v0}, Lcom/pizza/work/SaleReportActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/pizza/work/SaleReportActivity;->b1:Landroid/widget/Button;

    .line 86
    const v0, 0x7f080012

    invoke-virtual {p0, v0}, Lcom/pizza/work/SaleReportActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/pizza/work/SaleReportActivity;->spin_cust:Landroid/widget/Spinner;

    .line 87
    const v0, 0x7f080001

    invoke-virtual {p0, v0}, Lcom/pizza/work/SaleReportActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/pizza/work/SaleReportActivity;->calview1:Landroid/widget/TextView;

    .line 88
    invoke-virtual {p0}, Lcom/pizza/work/SaleReportActivity;->fillDate()V

    .line 90
    iget-object v0, p0, Lcom/pizza/work/SaleReportActivity;->today:Ljava/lang/String;

    iput-object v0, p0, Lcom/pizza/work/SaleReportActivity;->startdate:Ljava/lang/String;

    .line 91
    invoke-virtual {p0}, Lcom/pizza/work/SaleReportActivity;->fillCustomer()V

    .line 95
    iget-object v0, p0, Lcom/pizza/work/SaleReportActivity;->spin_cust:Landroid/widget/Spinner;

    new-instance v1, Lcom/pizza/work/SaleReportActivity$1;

    invoke-direct {v1, p0}, Lcom/pizza/work/SaleReportActivity$1;-><init>(Lcom/pizza/work/SaleReportActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 108
    iget-object v0, p0, Lcom/pizza/work/SaleReportActivity;->b1:Landroid/widget/Button;

    new-instance v1, Lcom/pizza/work/SaleReportActivity$2;

    invoke-direct {v1, p0}, Lcom/pizza/work/SaleReportActivity$2;-><init>(Lcom/pizza/work/SaleReportActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 119
    iget-object v0, p0, Lcom/pizza/work/SaleReportActivity;->calview1:Landroid/widget/TextView;

    new-instance v1, Lcom/pizza/work/SaleReportActivity$3;

    invoke-direct {v1, p0}, Lcom/pizza/work/SaleReportActivity$3;-><init>(Lcom/pizza/work/SaleReportActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 150
    return-void
.end method

.method public tabledisplay()V
    .locals 4

    .prologue
    .line 157
    const v1, 0x7f080049

    invoke-virtual {p0, v1}, Lcom/pizza/work/SaleReportActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TableLayout;

    iput-object v1, p0, Lcom/pizza/work/SaleReportActivity;->tl:Landroid/widget/TableLayout;

    .line 158
    iget-object v1, p0, Lcom/pizza/work/SaleReportActivity;->tl:Landroid/widget/TableLayout;

    invoke-virtual {v1}, Landroid/widget/TableLayout;->removeAllViews()V

    .line 159
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/pizza/work/SaleReportActivity;->pnames:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 185
    iget-object v1, p0, Lcom/pizza/work/SaleReportActivity;->pnames:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->removeAllElements()V

    .line 186
    iget-object v1, p0, Lcom/pizza/work/SaleReportActivity;->typeno:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->removeAllElements()V

    .line 187
    iget-object v1, p0, Lcom/pizza/work/SaleReportActivity;->quant:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->removeAllElements()V

    .line 188
    iget-object v1, p0, Lcom/pizza/work/SaleReportActivity;->price:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->removeAllElements()V

    .line 190
    return-void

    .line 161
    :cond_0
    new-instance v1, Landroid/widget/TableRow;

    invoke-direct {v1, p0}, Landroid/widget/TableRow;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/pizza/work/SaleReportActivity;->tr:Landroid/widget/TableRow;

    .line 163
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/pizza/work/SaleReportActivity;->tv1:Landroid/widget/TextView;

    .line 164
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/pizza/work/SaleReportActivity;->tv2:Landroid/widget/TextView;

    .line 165
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/pizza/work/SaleReportActivity;->tv3:Landroid/widget/TextView;

    .line 166
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/pizza/work/SaleReportActivity;->tv4:Landroid/widget/TextView;

    .line 167
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/pizza/work/SaleReportActivity;->tv5:Landroid/widget/TextView;

    .line 171
    iget-object v2, p0, Lcom/pizza/work/SaleReportActivity;->tr:Landroid/widget/TableRow;

    iget-object v3, p0, Lcom/pizza/work/SaleReportActivity;->tv1:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/pizza/work/SaleReportActivity;->pnames:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v2, v3, v1}, Lcom/pizza/work/SaleReportActivity;->createView(Landroid/widget/TableRow;Landroid/widget/TextView;Ljava/lang/String;)V

    .line 172
    iget-object v2, p0, Lcom/pizza/work/SaleReportActivity;->tr:Landroid/widget/TableRow;

    iget-object v3, p0, Lcom/pizza/work/SaleReportActivity;->tv2:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/pizza/work/SaleReportActivity;->typeno:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v2, v3, v1}, Lcom/pizza/work/SaleReportActivity;->createView(Landroid/widget/TableRow;Landroid/widget/TextView;Ljava/lang/String;)V

    .line 173
    iget-object v2, p0, Lcom/pizza/work/SaleReportActivity;->tr:Landroid/widget/TableRow;

    iget-object v3, p0, Lcom/pizza/work/SaleReportActivity;->tv3:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/pizza/work/SaleReportActivity;->quant:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v2, v3, v1}, Lcom/pizza/work/SaleReportActivity;->createView(Landroid/widget/TableRow;Landroid/widget/TextView;Ljava/lang/String;)V

    .line 174
    iget-object v2, p0, Lcom/pizza/work/SaleReportActivity;->tr:Landroid/widget/TableRow;

    iget-object v3, p0, Lcom/pizza/work/SaleReportActivity;->tv4:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/pizza/work/SaleReportActivity;->price:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v2, v3, v1}, Lcom/pizza/work/SaleReportActivity;->createView(Landroid/widget/TableRow;Landroid/widget/TextView;Ljava/lang/String;)V

    .line 178
    iget-object v1, p0, Lcom/pizza/work/SaleReportActivity;->tl:Landroid/widget/TableLayout;

    iget-object v2, p0, Lcom/pizza/work/SaleReportActivity;->tr:Landroid/widget/TableRow;

    invoke-virtual {v1, v2}, Landroid/widget/TableLayout;->addView(Landroid/view/View;)V

    .line 159
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0
.end method
