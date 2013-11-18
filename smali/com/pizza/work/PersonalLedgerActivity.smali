.class public Lcom/pizza/work/PersonalLedgerActivity;
.super Landroid/app/Activity;
.source "PersonalLedgerActivity.java"


# instance fields
.field Nos:[Ljava/util/Vector;

.field a1:[Ljava/lang/String;

.field amounts:Ljava/util/Vector;

.field b1:Landroid/widget/Button;

.field balance:Ljava/util/Vector;

.field calview1:Landroid/widget/TextView;

.field calview2:Landroid/widget/TextView;

.field custnames:Ljava/util/Vector;

.field cutomername:Ljava/lang/String;

.field dates:Ljava/util/Vector;

.field enddate:Ljava/lang/String;

.field nos:[[Ljava/lang/String;

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

.field sales:Ljava/util/Vector;

.field spcust:Landroid/widget/Spinner;

.field startdate:Ljava/lang/String;

.field tl:Landroid/widget/TableLayout;

.field today:Ljava/lang/String;

.field total:Ljava/util/Vector;

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

.field userFunction:Lcom/pizza/work/library/UserFunctions;

.field v:[Ljava/util/Vector;

.field winning:Ljava/util/Vector;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 33
    const/16 v0, 0xfa

    new-array v0, v0, [Ljava/util/Vector;

    iput-object v0, p0, Lcom/pizza/work/PersonalLedgerActivity;->v:[Ljava/util/Vector;

    .line 41
    new-instance v0, Lcom/pizza/work/library/UserFunctions;

    invoke-direct {v0}, Lcom/pizza/work/library/UserFunctions;-><init>()V

    iput-object v0, p0, Lcom/pizza/work/PersonalLedgerActivity;->userFunction:Lcom/pizza/work/library/UserFunctions;

    .line 47
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/pizza/work/PersonalLedgerActivity;->dates:Ljava/util/Vector;

    .line 48
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/pizza/work/PersonalLedgerActivity;->sales:Ljava/util/Vector;

    .line 49
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/pizza/work/PersonalLedgerActivity;->winning:Ljava/util/Vector;

    .line 50
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/pizza/work/PersonalLedgerActivity;->balance:Ljava/util/Vector;

    .line 51
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/pizza/work/PersonalLedgerActivity;->total:Ljava/util/Vector;

    .line 57
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/pizza/work/PersonalLedgerActivity;->saleProductList:Ljava/util/List;

    .line 81
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/pizza/work/PersonalLedgerActivity;->custnames:Ljava/util/Vector;

    .line 82
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/pizza/work/PersonalLedgerActivity;->amounts:Ljava/util/Vector;

    .line 28
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

    .line 256
    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 259
    const v0, -0xbbbbbc

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 260
    const v0, -0xff0001

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 261
    const/16 v0, 0xa

    invoke-virtual {p2, v0, v1, v1, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 263
    invoke-virtual {p1, v1, v2, v1, v2}, Landroid/widget/TableRow;->setPadding(IIII)V

    .line 264
    const/high16 v0, -0x100

    invoke-virtual {p1, v0}, Landroid/widget/TableRow;->setBackgroundColor(I)V

    .line 265
    invoke-virtual {p1, p2}, Landroid/widget/TableRow;->addView(Landroid/view/View;)V

    .line 266
    return-void
.end method

.method public display()V
    .locals 33

    .prologue
    .line 275
    new-instance v28, Lcom/pizza/work/library/UserFunctions;

    invoke-direct/range {v28 .. v28}, Lcom/pizza/work/library/UserFunctions;-><init>()V

    .line 277
    .local v28, userFunction:Lcom/pizza/work/library/UserFunctions;
    const-string v30, "JSONFrom  "

    const-string v31, "test"

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    const/4 v9, 0x0

    .line 280
    .local v9, json_data:Lorg/json/JSONObject;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pizza/work/PersonalLedgerActivity;->startdate:Ljava/lang/String;

    move-object/from16 v30, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pizza/work/PersonalLedgerActivity;->enddate:Ljava/lang/String;

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pizza/work/PersonalLedgerActivity;->spcust:Landroid/widget/Spinner;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v28

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    move-object/from16 v3, v32

    invoke-virtual {v0, v1, v2, v3}, Lcom/pizza/work/library/UserFunctions;->viewPersonalLedger(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v9

    .line 282
    const/16 v20, 0x1

    .line 283
    .local v20, q:I
    const-wide/16 v11, 0x0

    .line 284
    .local v11, net:D
    const-wide/16 v15, 0x0

    .line 285
    .local v15, netsale:D
    const-wide/16 v17, 0x0

    .line 286
    .local v17, netwin:D
    const-wide/16 v13, 0x0

    .line 291
    .local v13, netbal:D
    :try_start_0
    new-instance v30, Ljava/util/Vector;

    invoke-direct/range {v30 .. v30}, Ljava/util/Vector;-><init>()V

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/pizza/work/PersonalLedgerActivity;->dates:Ljava/util/Vector;

    .line 293
    new-instance v30, Ljava/util/Vector;

    invoke-direct/range {v30 .. v30}, Ljava/util/Vector;-><init>()V

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/pizza/work/PersonalLedgerActivity;->sales:Ljava/util/Vector;

    .line 294
    new-instance v30, Ljava/util/Vector;

    invoke-direct/range {v30 .. v30}, Ljava/util/Vector;-><init>()V

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/pizza/work/PersonalLedgerActivity;->winning:Ljava/util/Vector;

    .line 295
    new-instance v30, Ljava/util/Vector;

    invoke-direct/range {v30 .. v30}, Ljava/util/Vector;-><init>()V

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/pizza/work/PersonalLedgerActivity;->balance:Ljava/util/Vector;

    .line 296
    new-instance v30, Ljava/util/Vector;

    invoke-direct/range {v30 .. v30}, Ljava/util/Vector;-><init>()V

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/pizza/work/PersonalLedgerActivity;->total:Ljava/util/Vector;

    .line 298
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pizza/work/PersonalLedgerActivity;->dates:Ljava/util/Vector;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Ljava/util/Vector;->removeAllElements()V

    .line 299
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pizza/work/PersonalLedgerActivity;->sales:Ljava/util/Vector;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Ljava/util/Vector;->removeAllElements()V

    .line 300
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pizza/work/PersonalLedgerActivity;->winning:Ljava/util/Vector;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Ljava/util/Vector;->removeAllElements()V

    .line 301
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pizza/work/PersonalLedgerActivity;->balance:Ljava/util/Vector;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Ljava/util/Vector;->removeAllElements()V

    .line 303
    const-string v30, "count"

    move-object/from16 v0, v30

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 304
    .local v4, Count:I
    const/16 v30, -0x1

    move/from16 v0, v30

    if-eq v4, v0, :cond_0

    .line 306
    const-string v30, "JSON fromsalereport  "

    invoke-virtual {v9}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    const/16 v29, 0x1

    .local v29, y:I
    :goto_0
    move/from16 v0, v29

    if-le v0, v4, :cond_1

    .line 368
    const-string v30, "COMES HERE"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pizza/work/PersonalLedgerActivity;->dates:Ljava/util/Vector;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Ljava/util/Vector;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 369
    const-string v30, "COMES HERE"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pizza/work/PersonalLedgerActivity;->sales:Ljava/util/Vector;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Ljava/util/Vector;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    const-string v30, "COMES HERE"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pizza/work/PersonalLedgerActivity;->winning:Ljava/util/Vector;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Ljava/util/Vector;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    const-string v30, "COMES HERE"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pizza/work/PersonalLedgerActivity;->balance:Ljava/util/Vector;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Ljava/util/Vector;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 372
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pizza/work/PersonalLedgerActivity;->dates:Ljava/util/Vector;

    move-object/from16 v30, v0

    const-string v31, " "

    invoke-virtual/range {v30 .. v31}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 373
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pizza/work/PersonalLedgerActivity;->sales:Ljava/util/Vector;

    move-object/from16 v30, v0

    const-string v31, " "

    invoke-virtual/range {v30 .. v31}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 374
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pizza/work/PersonalLedgerActivity;->winning:Ljava/util/Vector;

    move-object/from16 v30, v0

    const-string v31, " "

    invoke-virtual/range {v30 .. v31}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 375
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pizza/work/PersonalLedgerActivity;->balance:Ljava/util/Vector;

    move-object/from16 v30, v0

    const-string v31, " "

    invoke-virtual/range {v30 .. v31}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 377
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pizza/work/PersonalLedgerActivity;->dates:Ljava/util/Vector;

    move-object/from16 v30, v0

    const-string v31, "G. Total"

    invoke-virtual/range {v30 .. v31}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 378
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pizza/work/PersonalLedgerActivity;->sales:Ljava/util/Vector;

    move-object/from16 v30, v0

    invoke-static/range {v15 .. v16}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 379
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pizza/work/PersonalLedgerActivity;->winning:Ljava/util/Vector;

    move-object/from16 v30, v0

    invoke-static/range {v17 .. v18}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 380
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pizza/work/PersonalLedgerActivity;->balance:Ljava/util/Vector;

    move-object/from16 v30, v0

    invoke-static {v13, v14}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 391
    .end local v4           #Count:I
    .end local v29           #y:I
    :cond_0
    :goto_1
    return-void

    .line 312
    .restart local v4       #Count:I
    .restart local v29       #y:I
    :cond_1
    invoke-static/range {v20 .. v20}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v21

    .line 313
    .local v21, sq:Ljava/lang/String;
    const-string v30, "sq"

    move-object/from16 v0, v30

    move-object/from16 v1, v21

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    new-instance v30, Ljava/lang/StringBuilder;

    const-string v31, "cust"

    invoke-direct/range {v30 .. v31}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v30

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    .line 317
    .local v6, b:Lorg/json/JSONObject;
    const-string v30, "COUNT"

    const-string v31, "name"

    move-object/from16 v0, v31

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pizza/work/PersonalLedgerActivity;->dates:Ljava/util/Vector;

    move-object/from16 v30, v0

    const-string v31, "name"

    move-object/from16 v0, v31

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 319
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pizza/work/PersonalLedgerActivity;->sales:Ljava/util/Vector;

    move-object/from16 v30, v0

    const-string v31, " "

    invoke-virtual/range {v30 .. v31}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 320
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pizza/work/PersonalLedgerActivity;->winning:Ljava/util/Vector;

    move-object/from16 v30, v0

    const-string v31, " "

    invoke-virtual/range {v30 .. v31}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 321
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pizza/work/PersonalLedgerActivity;->balance:Ljava/util/Vector;

    move-object/from16 v30, v0

    const-string v31, " "

    invoke-virtual/range {v30 .. v31}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 323
    const-string v30, "pcount"

    move-object/from16 v0, v30

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v19

    .line 324
    .local v19, pcount:I
    const/4 v8, 0x0

    .line 325
    .local v8, grand:F
    const-wide/16 v24, 0x0

    .line 326
    .local v24, totsale:D
    const-wide/16 v26, 0x0

    .line 327
    .local v26, totwin:D
    const-wide/16 v22, 0x0

    .line 329
    .local v22, totbal:D
    const/4 v10, 0x1

    .local v10, l:I
    :goto_2
    move/from16 v0, v19

    if-le v10, v0, :cond_2

    .line 347
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pizza/work/PersonalLedgerActivity;->dates:Ljava/util/Vector;

    move-object/from16 v30, v0

    const-string v31, " Total "

    invoke-virtual/range {v30 .. v31}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 348
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pizza/work/PersonalLedgerActivity;->sales:Ljava/util/Vector;

    move-object/from16 v30, v0

    invoke-static/range {v24 .. v25}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 349
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pizza/work/PersonalLedgerActivity;->winning:Ljava/util/Vector;

    move-object/from16 v30, v0

    invoke-static/range {v26 .. v27}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 350
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pizza/work/PersonalLedgerActivity;->balance:Ljava/util/Vector;

    move-object/from16 v30, v0

    invoke-static/range {v22 .. v23}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 352
    add-double v15, v15, v24

    .line 353
    add-double v17, v17, v26

    .line 354
    add-double v13, v13, v22

    .line 356
    add-int/lit8 v20, v20, 0x1

    .line 309
    add-int/lit8 v29, v29, 0x1

    goto/16 :goto_0

    .line 333
    :cond_2
    new-instance v30, Ljava/lang/StringBuilder;

    const-string v31, "no"

    invoke-direct/range {v30 .. v31}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v30

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 336
    .local v5, NO:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pizza/work/PersonalLedgerActivity;->dates:Ljava/util/Vector;

    move-object/from16 v30, v0

    new-instance v31, Ljava/lang/StringBuilder;

    const-string v32, "date"

    invoke-direct/range {v31 .. v32}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v31

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 338
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pizza/work/PersonalLedgerActivity;->sales:Ljava/util/Vector;

    move-object/from16 v30, v0

    new-instance v31, Ljava/lang/StringBuilder;

    const-string v32, "sale"

    invoke-direct/range {v31 .. v32}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v31

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 339
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pizza/work/PersonalLedgerActivity;->winning:Ljava/util/Vector;

    move-object/from16 v30, v0

    new-instance v31, Ljava/lang/StringBuilder;

    const-string v32, "winning"

    invoke-direct/range {v31 .. v32}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v31

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 340
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pizza/work/PersonalLedgerActivity;->balance:Ljava/util/Vector;

    move-object/from16 v30, v0

    new-instance v31, Ljava/lang/StringBuilder;

    const-string v32, "balance"

    invoke-direct/range {v31 .. v32}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v31

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 342
    new-instance v30, Ljava/lang/StringBuilder;

    const-string v31, "sale"

    invoke-direct/range {v30 .. v31}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v30

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v30 .. v30}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v30

    add-double v24, v24, v30

    .line 343
    new-instance v30, Ljava/lang/StringBuilder;

    const-string v31, "winning"

    invoke-direct/range {v30 .. v31}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v30

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v30 .. v30}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v30

    add-double v26, v26, v30

    .line 344
    new-instance v30, Ljava/lang/StringBuilder;

    const-string v31, "balance"

    invoke-direct/range {v30 .. v31}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v30

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v30 .. v30}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v30

    add-double v22, v22, v30

    .line 329
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_2

    .line 388
    .end local v4           #Count:I
    .end local v5           #NO:Ljava/lang/String;
    .end local v6           #b:Lorg/json/JSONObject;
    .end local v8           #grand:F
    .end local v10           #l:I
    .end local v19           #pcount:I
    .end local v21           #sq:Ljava/lang/String;
    .end local v22           #totbal:D
    .end local v24           #totsale:D
    .end local v26           #totwin:D
    .end local v29           #y:I
    :catch_0
    move-exception v7

    .local v7, e:Ljava/lang/Exception;
    const-string v30, "Error   trtet"

    invoke-virtual {v7}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1
.end method

.method public fillDate()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 399
    iget-object v2, p0, Lcom/pizza/work/PersonalLedgerActivity;->userFunction:Lcom/pizza/work/library/UserFunctions;

    invoke-virtual {v2}, Lcom/pizza/work/library/UserFunctions;->getDate()Ljava/lang/String;

    move-result-object v0

    .line 400
    .local v0, date1:Ljava/lang/String;
    iget-object v2, p0, Lcom/pizza/work/PersonalLedgerActivity;->userFunction:Lcom/pizza/work/library/UserFunctions;

    invoke-virtual {v2, v0}, Lcom/pizza/work/library/UserFunctions;->resultsplit1(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 401
    .local v1, result:[Ljava/lang/String;
    iget-object v2, p0, Lcom/pizza/work/PersonalLedgerActivity;->calview1:Landroid/widget/TextView;

    aget-object v3, v1, v4

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 402
    iget-object v2, p0, Lcom/pizza/work/PersonalLedgerActivity;->calview2:Landroid/widget/TextView;

    aget-object v3, v1, v4

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 404
    const/4 v2, 0x1

    aget-object v2, v1, v2

    iput-object v2, p0, Lcom/pizza/work/PersonalLedgerActivity;->today:Ljava/lang/String;

    .line 406
    return-void
.end method

.method public fillParty()V
    .locals 8

    .prologue
    .line 415
    new-instance v5, Ljava/util/Vector;

    invoke-direct {v5}, Ljava/util/Vector;-><init>()V

    .line 417
    .local v5, v:Ljava/util/Vector;
    const/16 v6, 0x3e8

    new-array v4, v6, [Ljava/lang/String;

    .line 418
    .local v4, name1:[Ljava/lang/String;
    iget-object v6, p0, Lcom/pizza/work/PersonalLedgerActivity;->userFunction:Lcom/pizza/work/library/UserFunctions;

    sget-object v7, Lcom/pizza/work/library/UserFunctions;->usercode:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lcom/pizza/work/library/UserFunctions;->viewParty(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 421
    .local v2, json:Lorg/json/JSONArray;
    const/4 v3, 0x0

    .line 422
    .local v3, json_data:Lorg/json/JSONObject;
    :try_start_0
    const-string v6, "All"

    invoke-virtual {v5, v6}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 423
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-lt v1, v6, :cond_0

    .line 432
    new-instance v0, Landroid/widget/ArrayAdapter;

    const v6, 0x1090009

    invoke-direct {v0, p0, v6, v5}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 434
    .local v0, adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    iget-object v6, p0, Lcom/pizza/work/PersonalLedgerActivity;->spcust:Landroid/widget/Spinner;

    invoke-virtual {v6, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 449
    .end local v0           #adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    .end local v1           #i:I
    :goto_1
    return-void

    .line 426
    .restart local v1       #i:I
    :cond_0
    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 427
    const-string v6, "name"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 423
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 442
    .end local v1           #i:I
    :catch_0
    move-exception v6

    goto :goto_1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 85
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 86
    const v0, 0x7f03000d

    invoke-virtual {p0, v0}, Lcom/pizza/work/PersonalLedgerActivity;->setContentView(I)V

    .line 92
    const v0, 0x7f080022

    invoke-virtual {p0, v0}, Lcom/pizza/work/PersonalLedgerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/pizza/work/PersonalLedgerActivity;->calview1:Landroid/widget/TextView;

    .line 93
    const v0, 0x7f080023

    invoke-virtual {p0, v0}, Lcom/pizza/work/PersonalLedgerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/pizza/work/PersonalLedgerActivity;->calview2:Landroid/widget/TextView;

    .line 95
    const v0, 0x7f080009

    invoke-virtual {p0, v0}, Lcom/pizza/work/PersonalLedgerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/pizza/work/PersonalLedgerActivity;->b1:Landroid/widget/Button;

    .line 97
    invoke-virtual {p0}, Lcom/pizza/work/PersonalLedgerActivity;->fillDate()V

    .line 98
    iget-object v0, p0, Lcom/pizza/work/PersonalLedgerActivity;->today:Ljava/lang/String;

    iput-object v0, p0, Lcom/pizza/work/PersonalLedgerActivity;->startdate:Ljava/lang/String;

    .line 99
    iget-object v0, p0, Lcom/pizza/work/PersonalLedgerActivity;->today:Ljava/lang/String;

    iput-object v0, p0, Lcom/pizza/work/PersonalLedgerActivity;->enddate:Ljava/lang/String;

    .line 101
    const v0, 0x7f080025

    invoke-virtual {p0, v0}, Lcom/pizza/work/PersonalLedgerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/pizza/work/PersonalLedgerActivity;->spcust:Landroid/widget/Spinner;

    .line 106
    invoke-virtual {p0}, Lcom/pizza/work/PersonalLedgerActivity;->fillParty()V

    .line 109
    invoke-virtual {p0}, Lcom/pizza/work/PersonalLedgerActivity;->display()V

    .line 110
    invoke-virtual {p0}, Lcom/pizza/work/PersonalLedgerActivity;->tabledisplay()V

    .line 111
    iget-object v0, p0, Lcom/pizza/work/PersonalLedgerActivity;->calview1:Landroid/widget/TextView;

    new-instance v1, Lcom/pizza/work/PersonalLedgerActivity$1;

    invoke-direct {v1, p0}, Lcom/pizza/work/PersonalLedgerActivity$1;-><init>(Lcom/pizza/work/PersonalLedgerActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 148
    iget-object v0, p0, Lcom/pizza/work/PersonalLedgerActivity;->calview2:Landroid/widget/TextView;

    new-instance v1, Lcom/pizza/work/PersonalLedgerActivity$2;

    invoke-direct {v1, p0}, Lcom/pizza/work/PersonalLedgerActivity$2;-><init>(Lcom/pizza/work/PersonalLedgerActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 183
    iget-object v0, p0, Lcom/pizza/work/PersonalLedgerActivity;->spcust:Landroid/widget/Spinner;

    new-instance v1, Lcom/pizza/work/PersonalLedgerActivity$3;

    invoke-direct {v1, p0}, Lcom/pizza/work/PersonalLedgerActivity$3;-><init>(Lcom/pizza/work/PersonalLedgerActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 198
    iget-object v0, p0, Lcom/pizza/work/PersonalLedgerActivity;->b1:Landroid/widget/Button;

    new-instance v1, Lcom/pizza/work/PersonalLedgerActivity$4;

    invoke-direct {v1, p0}, Lcom/pizza/work/PersonalLedgerActivity$4;-><init>(Lcom/pizza/work/PersonalLedgerActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 216
    return-void
.end method

.method public tabledisplay()V
    .locals 4

    .prologue
    .line 223
    const v1, 0x7f080027

    invoke-virtual {p0, v1}, Lcom/pizza/work/PersonalLedgerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TableLayout;

    iput-object v1, p0, Lcom/pizza/work/PersonalLedgerActivity;->tl:Landroid/widget/TableLayout;

    .line 224
    iget-object v1, p0, Lcom/pizza/work/PersonalLedgerActivity;->tl:Landroid/widget/TableLayout;

    invoke-virtual {v1}, Landroid/widget/TableLayout;->removeAllViews()V

    const-string v1, "sixe"

    iget-object v2, p0, Lcom/pizza/work/PersonalLedgerActivity;->dates:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/pizza/work/PersonalLedgerActivity;->dates:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 253
    return-void

    .line 227
    :cond_0
    new-instance v1, Landroid/widget/TableRow;

    invoke-direct {v1, p0}, Landroid/widget/TableRow;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/pizza/work/PersonalLedgerActivity;->tr:Landroid/widget/TableRow;

    .line 229
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/pizza/work/PersonalLedgerActivity;->tv1:Landroid/widget/TextView;

    .line 230
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/pizza/work/PersonalLedgerActivity;->tv2:Landroid/widget/TextView;

    .line 231
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/pizza/work/PersonalLedgerActivity;->tv3:Landroid/widget/TextView;

    .line 232
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/pizza/work/PersonalLedgerActivity;->tv4:Landroid/widget/TextView;

    .line 237
    iget-object v1, p0, Lcom/pizza/work/PersonalLedgerActivity;->tr:Landroid/widget/TableRow;

    iget-object v2, p0, Lcom/pizza/work/PersonalLedgerActivity;->tv1:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/pizza/work/PersonalLedgerActivity;->dates:Ljava/util/Vector;

    invoke-virtual {v3, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v1, v2, v3}, Lcom/pizza/work/PersonalLedgerActivity;->createView(Landroid/widget/TableRow;Landroid/widget/TextView;Ljava/lang/String;)V

    .line 238
    iget-object v1, p0, Lcom/pizza/work/PersonalLedgerActivity;->tr:Landroid/widget/TableRow;

    iget-object v2, p0, Lcom/pizza/work/PersonalLedgerActivity;->tv2:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/pizza/work/PersonalLedgerActivity;->sales:Ljava/util/Vector;

    invoke-virtual {v3, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v1, v2, v3}, Lcom/pizza/work/PersonalLedgerActivity;->createView(Landroid/widget/TableRow;Landroid/widget/TextView;Ljava/lang/String;)V

    .line 239
    iget-object v1, p0, Lcom/pizza/work/PersonalLedgerActivity;->tr:Landroid/widget/TableRow;

    iget-object v2, p0, Lcom/pizza/work/PersonalLedgerActivity;->tv3:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/pizza/work/PersonalLedgerActivity;->winning:Ljava/util/Vector;

    invoke-virtual {v3, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v1, v2, v3}, Lcom/pizza/work/PersonalLedgerActivity;->createView(Landroid/widget/TableRow;Landroid/widget/TextView;Ljava/lang/String;)V

    .line 240
    iget-object v1, p0, Lcom/pizza/work/PersonalLedgerActivity;->tr:Landroid/widget/TableRow;

    iget-object v2, p0, Lcom/pizza/work/PersonalLedgerActivity;->tv4:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/pizza/work/PersonalLedgerActivity;->balance:Ljava/util/Vector;

    invoke-virtual {v3, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v1, v2, v3}, Lcom/pizza/work/PersonalLedgerActivity;->createView(Landroid/widget/TableRow;Landroid/widget/TextView;Ljava/lang/String;)V

    .line 244
    iget-object v1, p0, Lcom/pizza/work/PersonalLedgerActivity;->tl:Landroid/widget/TableLayout;

    iget-object v2, p0, Lcom/pizza/work/PersonalLedgerActivity;->tr:Landroid/widget/TableRow;

    invoke-virtual {v1, v2}, Landroid/widget/TableLayout;->addView(Landroid/view/View;)V

    .line 225
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
