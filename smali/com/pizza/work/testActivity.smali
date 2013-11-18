.class public Lcom/pizza/work/testActivity;
.super Landroid/app/Activity;
.source "testActivity.java"


# instance fields
.field Nos:[Ljava/util/Vector;

.field a1:[Ljava/lang/String;

.field amounts:[Ljava/util/Vector;

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

.field pricecounter:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field pricenames:[Ljava/util/Vector;

.field prodcount:Z

.field productVector:Ljava/util/Vector;

.field private spin_catagory:Landroid/widget/Spinner;

.field startdate:Ljava/lang/String;

.field tl:Landroid/widget/TableLayout;

.field today:Ljava/lang/String;

.field tr:Landroid/widget/TableRow;

.field trsecond:Landroid/widget/TableRow;

.field trthird:Landroid/widget/TableRow;

.field tv1:Landroid/widget/TextView;

.field tv2:Landroid/widget/TextView;

.field tv3:Landroid/widget/TextView;

.field tvempty:Landroid/widget/TextView;

.field tvr1:Landroid/widget/TextView;

.field tvr2:Landroid/widget/TextView;

.field tvr3:Landroid/widget/TextView;

.field tvr4:Landroid/widget/TextView;

.field tvr5:Landroid/widget/TextView;

.field userFunction:Lcom/pizza/work/library/UserFunctions;

.field v:[[Ljava/util/Vector;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/16 v0, 0x3e8

    const/16 v3, 0x1f4

    const/4 v2, 0x0

    .line 29
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 34
    filled-new-array {v0, v0}, [I

    move-result-object v0

    const-class v1, Ljava/util/Vector;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Ljava/util/Vector;

    iput-object v0, p0, Lcom/pizza/work/testActivity;->v:[[Ljava/util/Vector;

    .line 36
    iput-boolean v2, p0, Lcom/pizza/work/testActivity;->prodcount:Z

    .line 40
    iput v2, p0, Lcom/pizza/work/testActivity;->location:I

    .line 41
    new-instance v0, Lcom/pizza/work/library/UserFunctions;

    invoke-direct {v0}, Lcom/pizza/work/library/UserFunctions;-><init>()V

    iput-object v0, p0, Lcom/pizza/work/testActivity;->userFunction:Lcom/pizza/work/library/UserFunctions;

    .line 44
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/pizza/work/testActivity;->catagoryVector:Ljava/util/Vector;

    .line 45
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/pizza/work/testActivity;->idVector:Ljava/util/Vector;

    .line 46
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/pizza/work/testActivity;->productVector:Ljava/util/Vector;

    .line 63
    new-array v0, v3, [Ljava/util/Vector;

    iput-object v0, p0, Lcom/pizza/work/testActivity;->pricenames:[Ljava/util/Vector;

    .line 64
    new-array v0, v3, [Ljava/util/Vector;

    iput-object v0, p0, Lcom/pizza/work/testActivity;->amounts:[Ljava/util/Vector;

    .line 65
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/pizza/work/testActivity;->pricecounter:Ljava/util/Vector;

    .line 29
    return-void
.end method


# virtual methods
.method public createView(Landroid/widget/TableRow;Landroid/widget/TextView;Ljava/lang/String;I)V
    .locals 4
    .parameter "tr"
    .parameter "t"
    .parameter "viewdata"
    .parameter "clr"

    .prologue
    const/4 v3, 0x1

    const/high16 v2, -0x100

    const/4 v1, 0x0

    .line 217
    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 220
    const/16 v0, 0x1f4

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setWidth(I)V

    .line 222
    const v0, -0xbbbbbc

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 223
    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 224
    invoke-virtual {p2, p4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 225
    const v0, -0xff0001

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 226
    const/16 v0, 0xa

    invoke-virtual {p2, v0, v1, v1, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 227
    invoke-virtual {p1, v1, v3, v1, v3}, Landroid/widget/TableRow;->setPadding(IIII)V

    .line 228
    invoke-virtual {p1, v2}, Landroid/widget/TableRow;->setBackgroundColor(I)V

    .line 229
    invoke-virtual {p1, p2}, Landroid/widget/TableRow;->addView(Landroid/view/View;)V

    .line 230
    return-void
.end method

.method public display()V
    .locals 17

    .prologue
    .line 235
    new-instance v12, Lcom/pizza/work/library/UserFunctions;

    invoke-direct {v12}, Lcom/pizza/work/library/UserFunctions;-><init>()V

    .line 238
    .local v12, userFunction:Lcom/pizza/work/library/UserFunctions;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/pizza/work/testActivity;->startdate:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/pizza/work/testActivity;->idVector:Ljava/util/Vector;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/pizza/work/testActivity;->location:I

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    invoke-virtual {v14}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v15, v14}, Lcom/pizza/work/library/UserFunctions;->viewResult(Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    .line 243
    .local v6, json_data:Lorg/json/JSONObject;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/pizza/work/testActivity;->productVector:Ljava/util/Vector;

    invoke-virtual {v14}, Ljava/util/Vector;->removeAllElements()V

    .line 244
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/pizza/work/testActivity;->v:[[Ljava/util/Vector;

    array-length v13, v14

    .line 246
    .local v13, vlen:I
    const-string v14, "productCount"

    invoke-virtual {v6, v14}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 248
    .local v2, count:I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/pizza/work/testActivity;->productVector:Ljava/util/Vector;

    invoke-virtual {v14}, Ljava/util/Vector;->removeAllElements()V

    .line 250
    const/4 v14, -0x1

    if-eq v2, v14, :cond_0

    .line 254
    const/4 v4, 0x1

    .local v4, i:I
    :goto_0
    if-le v4, v2, :cond_1

    .line 304
    .end local v2           #count:I
    .end local v4           #i:I
    .end local v13           #vlen:I
    :cond_0
    :goto_1
    return-void

    .line 257
    .restart local v2       #count:I
    .restart local v4       #i:I
    .restart local v13       #vlen:I
    :cond_1
    const/4 v11, 0x1

    .line 259
    .local v11, q:I
    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "product"

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v6, v14}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v8

    .line 260
    .local v8, outerjson:Lorg/json/JSONObject;
    const-string v14, "TTT"

    new-instance v15, Ljava/lang/StringBuilder;

    const-string v16, "****"

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/pizza/work/testActivity;->productVector:Ljava/util/Vector;

    const-string v15, "name"

    invoke-virtual {v8, v15}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 263
    const-string v14, "priceCount"

    invoke-virtual {v8, v14}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    .line 264
    .local v9, pricecount:I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/pizza/work/testActivity;->pricecounter:Ljava/util/Vector;

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 265
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/pizza/work/testActivity;->pricenames:[Ljava/util/Vector;

    add-int/lit8 v15, v4, -0x1

    new-instance v16, Ljava/util/Vector;

    invoke-direct/range {v16 .. v16}, Ljava/util/Vector;-><init>()V

    aput-object v16, v14, v15

    .line 266
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/pizza/work/testActivity;->amounts:[Ljava/util/Vector;

    add-int/lit8 v15, v4, -0x1

    new-instance v16, Ljava/util/Vector;

    invoke-direct/range {v16 .. v16}, Ljava/util/Vector;-><init>()V

    aput-object v16, v14, v15

    .line 268
    const/4 v5, 0x1

    .local v5, j:I
    :goto_2
    if-le v5, v9, :cond_2

    .line 254
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 271
    :cond_2
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/pizza/work/testActivity;->pricenames:[Ljava/util/Vector;

    add-int/lit8 v15, v4, -0x1

    aget-object v14, v14, v15

    new-instance v15, Ljava/lang/StringBuilder;

    const-string v16, "priceName"

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v8, v15}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 272
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/pizza/work/testActivity;->amounts:[Ljava/util/Vector;

    add-int/lit8 v15, v4, -0x1

    aget-object v14, v14, v15

    new-instance v15, Ljava/lang/StringBuilder;

    const-string v16, "amt"

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v8, v15}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 273
    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "pirceNoCount"

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v8, v14}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    .line 274
    .local v10, pricenocount:I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/pizza/work/testActivity;->v:[[Ljava/util/Vector;

    add-int/lit8 v15, v4, -0x1

    aget-object v14, v14, v15

    add-int/lit8 v15, v5, -0x1

    new-instance v16, Ljava/util/Vector;

    invoke-direct/range {v16 .. v16}, Ljava/util/Vector;-><init>()V

    aput-object v16, v14, v15

    .line 275
    const/4 v7, 0x1

    .local v7, k:I
    :goto_3
    if-le v7, v10, :cond_3

    .line 268
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 280
    :cond_3
    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "priceNo"

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 281
    .local v1, NO:Ljava/lang/String;
    const-string v14, "TTT"

    new-instance v15, Ljava/lang/StringBuilder;

    const-string v16, "****NO"

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/pizza/work/testActivity;->v:[[Ljava/util/Vector;

    add-int/lit8 v15, v4, -0x1

    aget-object v14, v14, v15

    add-int/lit8 v15, v5, -0x1

    aget-object v14, v14, v15

    invoke-virtual {v8, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 275
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 302
    .end local v1           #NO:Ljava/lang/String;
    .end local v2           #count:I
    .end local v4           #i:I
    .end local v5           #j:I
    .end local v7           #k:I
    .end local v8           #outerjson:Lorg/json/JSONObject;
    .end local v9           #pricecount:I
    .end local v10           #pricenocount:I
    .end local v11           #q:I
    .end local v13           #vlen:I
    :catch_0
    move-exception v3

    .local v3, e:Ljava/lang/Exception;
    const-string v14, "Error   trtet"

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1
.end method

.method public fillCatagory()V
    .locals 6

    .prologue
    .line 354
    iget-object v4, p0, Lcom/pizza/work/testActivity;->catagoryVector:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->removeAllElements()V

    .line 355
    iget-object v4, p0, Lcom/pizza/work/testActivity;->idVector:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->removeAllElements()V

    .line 356
    const/4 v2, 0x0

    .line 359
    .local v2, json:Lorg/json/JSONArray;
    iget-object v4, p0, Lcom/pizza/work/testActivity;->userFunction:Lcom/pizza/work/library/UserFunctions;

    iget-object v5, p0, Lcom/pizza/work/testActivity;->today:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/pizza/work/library/UserFunctions;->getCatagory(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 361
    const/4 v3, 0x0

    .line 363
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

    .line 374
    :goto_1
    new-instance v0, Landroid/widget/ArrayAdapter;

    const v4, 0x1090009

    .line 376
    iget-object v5, p0, Lcom/pizza/work/testActivity;->catagoryVector:Ljava/util/Vector;

    .line 374
    invoke-direct {v0, p0, v4, v5}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 377
    .local v0, adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    iget-object v4, p0, Lcom/pizza/work/testActivity;->spin_catagory:Landroid/widget/Spinner;

    invoke-virtual {v4, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 379
    return-void

    .line 366
    .end local v0           #adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    :cond_0
    :try_start_1
    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 367
    iget-object v4, p0, Lcom/pizza/work/testActivity;->catagoryVector:Ljava/util/Vector;

    const-string v5, "category"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 368
    iget-object v4, p0, Lcom/pizza/work/testActivity;->idVector:Ljava/util/Vector;

    const-string v5, "id"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 363
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 372
    :catch_0
    move-exception v4

    goto :goto_1
.end method

.method public fillDate()V
    .locals 4

    .prologue
    .line 308
    iget-object v2, p0, Lcom/pizza/work/testActivity;->userFunction:Lcom/pizza/work/library/UserFunctions;

    invoke-virtual {v2}, Lcom/pizza/work/library/UserFunctions;->getDate()Ljava/lang/String;

    move-result-object v0

    .line 309
    .local v0, date1:Ljava/lang/String;
    iget-object v2, p0, Lcom/pizza/work/testActivity;->userFunction:Lcom/pizza/work/library/UserFunctions;

    invoke-virtual {v2, v0}, Lcom/pizza/work/library/UserFunctions;->resultsplit1(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 310
    .local v1, result:[Ljava/lang/String;
    iget-object v2, p0, Lcom/pizza/work/testActivity;->calview1:Landroid/widget/TextView;

    const/4 v3, 0x0

    aget-object v3, v1, v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 312
    const/4 v2, 0x1

    aget-object v2, v1, v2

    iput-object v2, p0, Lcom/pizza/work/testActivity;->today:Ljava/lang/String;

    .line 314
    return-void
.end method

.method public fillProduct()V
    .locals 6

    .prologue
    .line 325
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/pizza/work/testActivity;->prodcount:Z

    .line 326
    iget-object v4, p0, Lcom/pizza/work/testActivity;->productVector:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->removeAllElements()V

    .line 328
    iget-object v4, p0, Lcom/pizza/work/testActivity;->userFunction:Lcom/pizza/work/library/UserFunctions;

    iget-object v5, p0, Lcom/pizza/work/testActivity;->startdate:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/pizza/work/library/UserFunctions;->getresultProductDetail(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 334
    .local v2, json:Lorg/json/JSONArray;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    :try_start_0
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-lt v1, v4, :cond_0

    .line 341
    new-instance v0, Landroid/widget/ArrayAdapter;

    const v4, 0x1090009

    iget-object v5, p0, Lcom/pizza/work/testActivity;->productVector:Ljava/util/Vector;

    invoke-direct {v0, p0, v4, v5}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 342
    .local v0, adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    iget-object v4, p0, Lcom/pizza/work/testActivity;->spin_catagory:Landroid/widget/Spinner;

    invoke-virtual {v4, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 349
    .end local v0           #adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    :goto_1
    return-void

    .line 336
    :cond_0
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/pizza/work/testActivity;->prodcount:Z

    .line 337
    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 338
    .local v3, json_data:Lorg/json/JSONObject;
    iget-object v4, p0, Lcom/pizza/work/testActivity;->productVector:Ljava/util/Vector;

    const-string v5, "product"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 334
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 346
    .end local v3           #json_data:Lorg/json/JSONObject;
    :catch_0
    move-exception v4

    goto :goto_1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    const v0, 0x7f030013

    .line 69
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 70
    invoke-virtual {p0, v0}, Lcom/pizza/work/testActivity;->setContentView(I)V

    .line 71
    invoke-virtual {p0, v0}, Lcom/pizza/work/testActivity;->setContentView(I)V

    .line 73
    const v0, 0x7f080012

    invoke-virtual {p0, v0}, Lcom/pizza/work/testActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/pizza/work/testActivity;->spin_catagory:Landroid/widget/Spinner;

    .line 76
    const v0, 0x7f080001

    invoke-virtual {p0, v0}, Lcom/pizza/work/testActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/pizza/work/testActivity;->calview1:Landroid/widget/TextView;

    .line 79
    invoke-virtual {p0}, Lcom/pizza/work/testActivity;->fillDate()V

    .line 80
    iget-object v0, p0, Lcom/pizza/work/testActivity;->today:Ljava/lang/String;

    iput-object v0, p0, Lcom/pizza/work/testActivity;->startdate:Ljava/lang/String;

    .line 81
    invoke-virtual {p0}, Lcom/pizza/work/testActivity;->fillCatagory()V

    .line 83
    invoke-virtual {p0}, Lcom/pizza/work/testActivity;->display()V

    .line 84
    invoke-virtual {p0}, Lcom/pizza/work/testActivity;->tabledisplay()V

    .line 88
    iget-object v0, p0, Lcom/pizza/work/testActivity;->calview1:Landroid/widget/TextView;

    new-instance v1, Lcom/pizza/work/testActivity$1;

    invoke-direct {v1, p0}, Lcom/pizza/work/testActivity$1;-><init>(Lcom/pizza/work/testActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 126
    iget-object v0, p0, Lcom/pizza/work/testActivity;->spin_catagory:Landroid/widget/Spinner;

    new-instance v1, Lcom/pizza/work/testActivity$2;

    invoke-direct {v1, p0}, Lcom/pizza/work/testActivity$2;-><init>(Lcom/pizza/work/testActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 144
    return-void
.end method

.method public tabledisplay()V
    .locals 10

    .prologue
    .line 154
    const v6, 0x7f080049

    invoke-virtual {p0, v6}, Lcom/pizza/work/testActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TableLayout;

    iput-object v6, p0, Lcom/pizza/work/testActivity;->tl:Landroid/widget/TableLayout;

    .line 155
    iget-object v6, p0, Lcom/pizza/work/testActivity;->tl:Landroid/widget/TableLayout;

    invoke-virtual {v6}, Landroid/widget/TableLayout;->removeAllViews()V

    .line 156
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v6, p0, Lcom/pizza/work/testActivity;->productVector:Ljava/util/Vector;

    invoke-virtual {v6}, Ljava/util/Vector;->size()I

    move-result v6

    if-lt v1, v6, :cond_0

    .line 214
    return-void

    .line 160
    :cond_0
    new-instance v6, Landroid/widget/TableRow;

    invoke-direct {v6, p0}, Landroid/widget/TableRow;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/pizza/work/testActivity;->tr:Landroid/widget/TableRow;

    .line 164
    new-instance v6, Landroid/widget/TextView;

    invoke-direct {v6, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/pizza/work/testActivity;->tv1:Landroid/widget/TextView;

    .line 168
    iget-object v6, p0, Lcom/pizza/work/testActivity;->tr:Landroid/widget/TableRow;

    iget-object v7, p0, Lcom/pizza/work/testActivity;->tv1:Landroid/widget/TextView;

    iget-object v8, p0, Lcom/pizza/work/testActivity;->productVector:Ljava/util/Vector;

    invoke-virtual {v8, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    const/high16 v9, -0x1

    invoke-virtual {p0, v6, v7, v8, v9}, Lcom/pizza/work/testActivity;->createView(Landroid/widget/TableRow;Landroid/widget/TextView;Ljava/lang/String;I)V

    .line 170
    iget-object v6, p0, Lcom/pizza/work/testActivity;->tl:Landroid/widget/TableLayout;

    iget-object v7, p0, Lcom/pizza/work/testActivity;->tr:Landroid/widget/TableRow;

    invoke-virtual {v6, v7}, Landroid/widget/TableLayout;->addView(Landroid/view/View;)V

    .line 171
    const/4 v2, 0x0

    .local v2, j:I
    :goto_1
    iget-object v6, p0, Lcom/pizza/work/testActivity;->pricenames:[Ljava/util/Vector;

    aget-object v6, v6, v1

    invoke-virtual {v6}, Ljava/util/Vector;->size()I

    move-result v6

    if-lt v2, v6, :cond_1

    .line 156
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 174
    :cond_1
    new-instance v6, Landroid/widget/TableRow;

    invoke-direct {v6, p0}, Landroid/widget/TableRow;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/pizza/work/testActivity;->trsecond:Landroid/widget/TableRow;

    .line 176
    new-instance v6, Landroid/widget/TextView;

    invoke-direct {v6, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/pizza/work/testActivity;->tvr1:Landroid/widget/TextView;

    .line 182
    const/4 v3, 0x0

    .local v3, k:I
    :goto_2
    iget-object v6, p0, Lcom/pizza/work/testActivity;->v:[[Ljava/util/Vector;

    aget-object v6, v6, v1

    aget-object v6, v6, v2

    invoke-virtual {v6}, Ljava/util/Vector;->size()I

    move-result v6

    if-lt v3, v6, :cond_2

    .line 171
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 184
    :cond_2
    const-string v6, "TEST"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "UUU"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    new-instance v6, Landroid/widget/TableRow;

    invoke-direct {v6, p0}, Landroid/widget/TableRow;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/pizza/work/testActivity;->trthird:Landroid/widget/TableRow;

    .line 187
    new-instance v6, Landroid/widget/TextView;

    invoke-direct {v6, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/pizza/work/testActivity;->tvr2:Landroid/widget/TextView;

    .line 189
    iget-object v6, p0, Lcom/pizza/work/testActivity;->pricenames:[Ljava/util/Vector;

    aget-object v6, v6, v1

    invoke-virtual {v6, v2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    .line 190
    .local v5, pname:Ljava/lang/String;
    iget-object v6, p0, Lcom/pizza/work/testActivity;->amounts:[Ljava/util/Vector;

    aget-object v6, v6, v1

    invoke-virtual {v6, v2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 193
    .local v0, amt:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    .local v4, len:I
    :goto_3
    const/16 v6, 0xa

    if-le v4, v6, :cond_3

    .line 199
    iget-object v6, p0, Lcom/pizza/work/testActivity;->trthird:Landroid/widget/TableRow;

    iget-object v7, p0, Lcom/pizza/work/testActivity;->tvr2:Landroid/widget/TextView;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v9, " :  "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/pizza/work/testActivity;->v:[[Ljava/util/Vector;

    aget-object v9, v9, v1

    aget-object v9, v9, v2

    invoke-virtual {v9, v3}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/high16 v9, -0x100

    invoke-virtual {p0, v6, v7, v8, v9}, Lcom/pizza/work/testActivity;->createView(Landroid/widget/TableRow;Landroid/widget/TextView;Ljava/lang/String;I)V

    .line 201
    iget-object v6, p0, Lcom/pizza/work/testActivity;->tl:Landroid/widget/TableLayout;

    iget-object v7, p0, Lcom/pizza/work/testActivity;->trthird:Landroid/widget/TableRow;

    invoke-virtual {v6, v7}, Landroid/widget/TableLayout;->addView(Landroid/view/View;)V

    .line 182
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_2

    .line 195
    :cond_3
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 193
    add-int/lit8 v4, v4, 0x1

    goto :goto_3
.end method
