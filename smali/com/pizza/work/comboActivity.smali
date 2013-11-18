.class public Lcom/pizza/work/comboActivity;
.super Landroid/app/Activity;
.source "comboActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pizza/work/comboActivity$task;
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
    .line 44
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 53
    const/4 v0, 0x0

    iput v0, p0, Lcom/pizza/work/comboActivity;->location:I

    .line 55
    new-instance v0, Lcom/pizza/work/library/UserFunctions;

    invoke-direct {v0}, Lcom/pizza/work/library/UserFunctions;-><init>()V

    iput-object v0, p0, Lcom/pizza/work/comboActivity;->userFunction:Lcom/pizza/work/library/UserFunctions;

    .line 56
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/pizza/work/comboActivity;->catagoryVector:Ljava/util/Vector;

    .line 57
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/pizza/work/comboActivity;->idVector:Ljava/util/Vector;

    .line 59
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/pizza/work/comboActivity;->customerVector:Ljava/util/Vector;

    .line 60
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/pizza/work/comboActivity;->pnames:Ljava/util/Vector;

    .line 61
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/pizza/work/comboActivity;->typeno:Ljava/util/Vector;

    .line 62
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/pizza/work/comboActivity;->quant:Ljava/util/Vector;

    .line 63
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/pizza/work/comboActivity;->price:Ljava/util/Vector;

    .line 64
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/pizza/work/comboActivity;->total:Ljava/util/Vector;

    .line 67
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/pizza/work/comboActivity;->saleProductList:Ljava/util/List;

    .line 84
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/pizza/work/comboActivity;->custnames:Ljava/util/Vector;

    .line 85
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/pizza/work/comboActivity;->amounts:Ljava/util/Vector;

    .line 44
    return-void
.end method


# virtual methods
.method public createView(Landroid/widget/TableRow;Landroid/widget/TextView;Ljava/lang/String;)V
    .locals 3
    .parameter "tr"
    .parameter "t"
    .parameter "viewdata"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 128
    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 131
    const v0, -0xbbbbbc

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 132
    const v0, -0xff0001

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 133
    const/16 v0, 0xa

    invoke-virtual {p2, v0, v1, v1, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 135
    invoke-virtual {p1, v1, v2, v1, v2}, Landroid/widget/TableRow;->setPadding(IIII)V

    .line 136
    const/high16 v0, -0x100

    invoke-virtual {p1, v0}, Landroid/widget/TableRow;->setBackgroundColor(I)V

    .line 137
    invoke-virtual {p1, p2}, Landroid/widget/TableRow;->addView(Landroid/view/View;)V

    .line 138
    return-void
.end method

.method public display()V
    .locals 11

    .prologue
    .line 142
    new-instance v8, Lcom/pizza/work/library/UserFunctions;

    invoke-direct {v8}, Lcom/pizza/work/library/UserFunctions;-><init>()V

    .line 144
    .local v8, userFunction:Lcom/pizza/work/library/UserFunctions;
    const-string v9, "JSONFrom  "

    const-string v10, "test"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    const/4 v4, 0x0

    .line 148
    .local v4, json_data:Lorg/json/JSONObject;
    iget-object v9, p0, Lcom/pizza/work/comboActivity;->startdate:Ljava/lang/String;

    iget-object v10, p0, Lcom/pizza/work/comboActivity;->spin_cust:Landroid/widget/Spinner;

    invoke-virtual {v10}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Lcom/pizza/work/library/UserFunctions;->viewSaleDetail(Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    .line 149
    const-string v9, " "

    const-string v10, " "

    invoke-virtual {v8, v9, v10}, Lcom/pizza/work/library/UserFunctions;->viewSaleDetail(Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    .line 151
    const/4 v6, 0x1

    .line 152
    .local v6, q:I
    const/4 v5, 0x0

    .line 156
    .local v5, net:F
    :try_start_0
    new-instance v9, Ljava/util/Vector;

    invoke-direct {v9}, Ljava/util/Vector;-><init>()V

    iput-object v9, p0, Lcom/pizza/work/comboActivity;->pnames:Ljava/util/Vector;

    .line 158
    new-instance v9, Ljava/util/Vector;

    invoke-direct {v9}, Ljava/util/Vector;-><init>()V

    iput-object v9, p0, Lcom/pizza/work/comboActivity;->typeno:Ljava/util/Vector;

    .line 159
    new-instance v9, Ljava/util/Vector;

    invoke-direct {v9}, Ljava/util/Vector;-><init>()V

    iput-object v9, p0, Lcom/pizza/work/comboActivity;->quant:Ljava/util/Vector;

    .line 160
    new-instance v9, Ljava/util/Vector;

    invoke-direct {v9}, Ljava/util/Vector;-><init>()V

    iput-object v9, p0, Lcom/pizza/work/comboActivity;->price:Ljava/util/Vector;

    .line 161
    new-instance v9, Ljava/util/Vector;

    invoke-direct {v9}, Ljava/util/Vector;-><init>()V

    iput-object v9, p0, Lcom/pizza/work/comboActivity;->total:Ljava/util/Vector;

    .line 163
    iget-object v9, p0, Lcom/pizza/work/comboActivity;->pnames:Ljava/util/Vector;

    invoke-virtual {v9}, Ljava/util/Vector;->removeAllElements()V

    .line 164
    iget-object v9, p0, Lcom/pizza/work/comboActivity;->typeno:Ljava/util/Vector;

    invoke-virtual {v9}, Ljava/util/Vector;->removeAllElements()V

    .line 165
    iget-object v9, p0, Lcom/pizza/work/comboActivity;->quant:Ljava/util/Vector;

    invoke-virtual {v9}, Ljava/util/Vector;->removeAllElements()V

    .line 166
    iget-object v9, p0, Lcom/pizza/work/comboActivity;->price:Ljava/util/Vector;

    invoke-virtual {v9}, Ljava/util/Vector;->removeAllElements()V

    .line 167
    const/4 v7, 0x0

    .line 168
    .local v7, tot:F
    const-string v9, "count"

    invoke-virtual {v4, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 169
    .local v0, Count:I
    const/4 v9, -0x1

    if-eq v0, v9, :cond_0

    .line 171
    const-string v9, "JSON fromsalereport  "

    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    const/4 v3, 0x1

    .local v3, i:I
    :goto_0
    if-le v3, v0, :cond_1

    .line 183
    iget-object v9, p0, Lcom/pizza/work/comboActivity;->pnames:Ljava/util/Vector;

    const-string v10, " "

    invoke-virtual {v9, v10}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 184
    iget-object v9, p0, Lcom/pizza/work/comboActivity;->typeno:Ljava/util/Vector;

    const-string v10, " "

    invoke-virtual {v9, v10}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 185
    iget-object v9, p0, Lcom/pizza/work/comboActivity;->quant:Ljava/util/Vector;

    const-string v10, "Total"

    invoke-virtual {v9, v10}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 186
    iget-object v9, p0, Lcom/pizza/work/comboActivity;->price:Ljava/util/Vector;

    invoke-static {v7}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 188
    add-float/2addr v5, v7

    .line 199
    .end local v3           #i:I
    :cond_0
    const/4 v4, 0x0

    .line 206
    .end local v0           #Count:I
    .end local v7           #tot:F
    :goto_1
    return-void

    .line 175
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

    .line 176
    .local v1, b:Lorg/json/JSONObject;
    iget-object v9, p0, Lcom/pizza/work/comboActivity;->pnames:Ljava/util/Vector;

    const-string v10, "product"

    invoke-virtual {v1, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 177
    iget-object v9, p0, Lcom/pizza/work/comboActivity;->typeno:Ljava/util/Vector;

    const-string v10, "ticket_no"

    invoke-virtual {v1, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 178
    iget-object v9, p0, Lcom/pizza/work/comboActivity;->quant:Ljava/util/Vector;

    const-string v10, "qunatity"

    invoke-virtual {v1, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 179
    iget-object v9, p0, Lcom/pizza/work/comboActivity;->price:Ljava/util/Vector;

    const-string v10, "price"

    invoke-virtual {v1, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 180
    const-string v9, "price"

    invoke-virtual {v1, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v9

    add-float/2addr v7, v9

    .line 173
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 203
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
    .line 224
    iget-object v4, p0, Lcom/pizza/work/comboActivity;->catagoryVector:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->removeAllElements()V

    .line 225
    iget-object v4, p0, Lcom/pizza/work/comboActivity;->idVector:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->removeAllElements()V

    .line 226
    const/4 v2, 0x0

    .line 227
    .local v2, json:Lorg/json/JSONArray;
    iget-object v4, p0, Lcom/pizza/work/comboActivity;->catagoryVector:Ljava/util/Vector;

    const-string v5, "All"

    invoke-virtual {v4, v5}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 228
    iget-object v4, p0, Lcom/pizza/work/comboActivity;->idVector:Ljava/util/Vector;

    const-string v5, "All"

    invoke-virtual {v4, v5}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 229
    iget-object v4, p0, Lcom/pizza/work/comboActivity;->userFunction:Lcom/pizza/work/library/UserFunctions;

    iget-object v5, p0, Lcom/pizza/work/comboActivity;->today:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/pizza/work/library/UserFunctions;->getCatagory(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 231
    const/4 v3, 0x0

    .line 233
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

    .line 244
    :goto_1
    new-instance v0, Landroid/widget/ArrayAdapter;

    const v4, 0x1090009

    .line 246
    iget-object v5, p0, Lcom/pizza/work/comboActivity;->catagoryVector:Ljava/util/Vector;

    .line 244
    invoke-direct {v0, p0, v4, v5}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 247
    .local v0, adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    iget-object v4, p0, Lcom/pizza/work/comboActivity;->spin_cust:Landroid/widget/Spinner;

    invoke-virtual {v4, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 249
    return-void

    .line 236
    .end local v0           #adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    :cond_0
    :try_start_1
    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 237
    iget-object v4, p0, Lcom/pizza/work/comboActivity;->catagoryVector:Ljava/util/Vector;

    const-string v5, "category"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 238
    iget-object v4, p0, Lcom/pizza/work/comboActivity;->idVector:Ljava/util/Vector;

    const-string v5, "id"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 233
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 242
    :catch_0
    move-exception v4

    goto :goto_1
.end method

.method public fillCustomer()V
    .locals 6

    .prologue
    .line 260
    iget-object v3, p0, Lcom/pizza/work/comboActivity;->customerVector:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->removeAllElements()V

    .line 263
    const/4 v2, 0x0

    .line 266
    .local v2, json_data:Lorg/json/JSONObject;
    iget-object v3, p0, Lcom/pizza/work/comboActivity;->userFunction:Lcom/pizza/work/library/UserFunctions;

    iget-object v4, p0, Lcom/pizza/work/comboActivity;->today:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/pizza/work/library/UserFunctions;->getCustomer(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 269
    :try_start_0
    const-string v3, "count"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 270
    .local v0, count:I
    const/4 v3, -0x1

    if-eq v0, v3, :cond_0

    .line 272
    const/4 v1, 0x1

    .local v1, i:I
    :goto_0
    if-le v1, v0, :cond_1

    .line 277
    iget-object v3, p0, Lcom/pizza/work/comboActivity;->customerVector:Ljava/util/Vector;

    const-string v4, "All"

    invoke-virtual {v3, v4}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 283
    .end local v0           #count:I
    .end local v1           #i:I
    :cond_0
    :goto_1
    return-void

    .line 274
    .restart local v0       #count:I
    .restart local v1       #i:I
    :cond_1
    iget-object v3, p0, Lcom/pizza/work/comboActivity;->customerVector:Ljava/util/Vector;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "cust"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 272
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 279
    .end local v0           #count:I
    .end local v1           #i:I
    :catch_0
    move-exception v3

    goto :goto_1
.end method

.method public fillDate()V
    .locals 3

    .prologue
    .line 212
    iget-object v2, p0, Lcom/pizza/work/comboActivity;->userFunction:Lcom/pizza/work/library/UserFunctions;

    invoke-virtual {v2}, Lcom/pizza/work/library/UserFunctions;->getDate()Ljava/lang/String;

    move-result-object v0

    .line 213
    .local v0, date1:Ljava/lang/String;
    iget-object v2, p0, Lcom/pizza/work/comboActivity;->userFunction:Lcom/pizza/work/library/UserFunctions;

    invoke-virtual {v2, v0}, Lcom/pizza/work/library/UserFunctions;->resultsplit1(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 216
    .local v1, result:[Ljava/lang/String;
    const/4 v2, 0x1

    aget-object v2, v1, v2

    iput-object v2, p0, Lcom/pizza/work/comboActivity;->today:Ljava/lang/String;

    .line 218
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 291
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 292
    const v0, 0x7f030011

    invoke-virtual {p0, v0}, Lcom/pizza/work/comboActivity;->setContentView(I)V

    .line 294
    const v0, 0x7f080012

    invoke-virtual {p0, v0}, Lcom/pizza/work/comboActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/pizza/work/comboActivity;->spin_cust:Landroid/widget/Spinner;

    .line 295
    const v0, 0x7f080001

    invoke-virtual {p0, v0}, Lcom/pizza/work/comboActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/pizza/work/comboActivity;->calview1:Landroid/widget/TextView;

    .line 296
    new-instance v0, Lcom/pizza/work/comboActivity$task;

    invoke-direct {v0, p0}, Lcom/pizza/work/comboActivity$task;-><init>(Lcom/pizza/work/comboActivity;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/pizza/work/comboActivity$task;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 297
    return-void
.end method

.method public tabledisplay()V
    .locals 4

    .prologue
    .line 95
    const v1, 0x7f080049

    invoke-virtual {p0, v1}, Lcom/pizza/work/comboActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TableLayout;

    iput-object v1, p0, Lcom/pizza/work/comboActivity;->tl:Landroid/widget/TableLayout;

    .line 96
    iget-object v1, p0, Lcom/pizza/work/comboActivity;->tl:Landroid/widget/TableLayout;

    invoke-virtual {v1}, Landroid/widget/TableLayout;->removeAllViews()V

    .line 97
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/pizza/work/comboActivity;->pnames:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 125
    return-void

    .line 99
    :cond_0
    new-instance v1, Landroid/widget/TableRow;

    invoke-direct {v1, p0}, Landroid/widget/TableRow;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/pizza/work/comboActivity;->tr:Landroid/widget/TableRow;

    .line 101
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/pizza/work/comboActivity;->tv1:Landroid/widget/TextView;

    .line 102
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/pizza/work/comboActivity;->tv2:Landroid/widget/TextView;

    .line 103
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/pizza/work/comboActivity;->tv3:Landroid/widget/TextView;

    .line 104
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/pizza/work/comboActivity;->tv4:Landroid/widget/TextView;

    .line 105
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/pizza/work/comboActivity;->tv5:Landroid/widget/TextView;

    .line 109
    iget-object v2, p0, Lcom/pizza/work/comboActivity;->tr:Landroid/widget/TableRow;

    iget-object v3, p0, Lcom/pizza/work/comboActivity;->tv1:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/pizza/work/comboActivity;->pnames:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v2, v3, v1}, Lcom/pizza/work/comboActivity;->createView(Landroid/widget/TableRow;Landroid/widget/TextView;Ljava/lang/String;)V

    .line 110
    iget-object v2, p0, Lcom/pizza/work/comboActivity;->tr:Landroid/widget/TableRow;

    iget-object v3, p0, Lcom/pizza/work/comboActivity;->tv2:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/pizza/work/comboActivity;->typeno:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v2, v3, v1}, Lcom/pizza/work/comboActivity;->createView(Landroid/widget/TableRow;Landroid/widget/TextView;Ljava/lang/String;)V

    .line 111
    iget-object v2, p0, Lcom/pizza/work/comboActivity;->tr:Landroid/widget/TableRow;

    iget-object v3, p0, Lcom/pizza/work/comboActivity;->tv3:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/pizza/work/comboActivity;->quant:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v2, v3, v1}, Lcom/pizza/work/comboActivity;->createView(Landroid/widget/TableRow;Landroid/widget/TextView;Ljava/lang/String;)V

    .line 112
    iget-object v2, p0, Lcom/pizza/work/comboActivity;->tr:Landroid/widget/TableRow;

    iget-object v3, p0, Lcom/pizza/work/comboActivity;->tv4:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/pizza/work/comboActivity;->price:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v2, v3, v1}, Lcom/pizza/work/comboActivity;->createView(Landroid/widget/TableRow;Landroid/widget/TextView;Ljava/lang/String;)V

    .line 116
    iget-object v1, p0, Lcom/pizza/work/comboActivity;->tl:Landroid/widget/TableLayout;

    iget-object v2, p0, Lcom/pizza/work/comboActivity;->tr:Landroid/widget/TableRow;

    invoke-virtual {v1, v2}, Landroid/widget/TableLayout;->addView(Landroid/view/View;)V

    .line 97
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0
.end method
