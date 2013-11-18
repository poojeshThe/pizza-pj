.class public Lcom/pizza/work/ResultActivity;
.super Landroid/app/Activity;
.source "ResultActivity.java"


# instance fields
.field Nos:[Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

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

.field pricenames:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field productVector:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private spprod:Landroid/widget/Spinner;

.field startdate:Ljava/lang/String;

.field tl:Landroid/widget/TableLayout;

.field today:Ljava/lang/String;

.field tr:Landroid/widget/TableRow;

.field tv1:Landroid/widget/TextView;

.field tv2:Landroid/widget/TextView;

.field userFunction:Lcom/pizza/work/library/UserFunctions;

.field v:[Ljava/util/Vector;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 30
    new-instance v0, Lcom/pizza/work/library/UserFunctions;

    invoke-direct {v0}, Lcom/pizza/work/library/UserFunctions;-><init>()V

    iput-object v0, p0, Lcom/pizza/work/ResultActivity;->userFunction:Lcom/pizza/work/library/UserFunctions;

    .line 31
    const/16 v0, 0x32

    new-array v0, v0, [Ljava/util/Vector;

    iput-object v0, p0, Lcom/pizza/work/ResultActivity;->v:[Ljava/util/Vector;

    .line 36
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/pizza/work/ResultActivity;->pricenames:Ljava/util/Vector;

    .line 37
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/pizza/work/ResultActivity;->amounts:Ljava/util/Vector;

    .line 38
    const/16 v0, 0x1f4

    new-array v0, v0, [Ljava/util/Vector;

    iput-object v0, p0, Lcom/pizza/work/ResultActivity;->Nos:[Ljava/util/Vector;

    .line 39
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/pizza/work/ResultActivity;->productVector:Ljava/util/Vector;

    .line 28
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

    .line 135
    const-string v0, "viewdate"

    invoke-static {v0, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 138
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 139
    const v0, -0xbbbbbc

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 140
    const v0, -0xff0001

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 141
    const/16 v0, 0x14

    invoke-virtual {p2, v0, v1, v1, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 142
    invoke-virtual {p1, v1, v3, v1, v3}, Landroid/widget/TableRow;->setPadding(IIII)V

    .line 143
    const/high16 v0, -0x100

    invoke-virtual {p1, v0}, Landroid/widget/TableRow;->setBackgroundColor(I)V

    .line 144
    invoke-virtual {p1, p2}, Landroid/widget/TableRow;->addView(Landroid/view/View;)V

    .line 145
    return-void
.end method

.method public display()V
    .locals 12

    .prologue
    .line 150
    const-string v9, "JSON from "

    const-string v10, "test"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    iget-object v9, p0, Lcom/pizza/work/ResultActivity;->userFunction:Lcom/pizza/work/library/UserFunctions;

    const-string v10, "today"

    const-string v11, "product"

    invoke-virtual {v9, v10, v11}, Lcom/pizza/work/library/UserFunctions;->viewResult(Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    .line 152
    .local v4, json_data:Lorg/json/JSONObject;
    const-string v9, "JSON from "

    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    const/4 v6, 0x1

    .line 157
    .local v6, q:I
    const/4 v8, 0x0

    .local v8, y:I
    :goto_0
    const/16 v9, 0x8

    if-lt v8, v9, :cond_0

    .line 193
    :try_start_0
    const-string v9, "size"

    iget-object v10, p0, Lcom/pizza/work/ResultActivity;->pricenames:Ljava/util/Vector;

    invoke-virtual {v10}, Ljava/util/Vector;->size()I

    move-result v10

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    const-string v9, "size"

    iget-object v10, p0, Lcom/pizza/work/ResultActivity;->amounts:Ljava/util/Vector;

    invoke-virtual {v10}, Ljava/util/Vector;->size()I

    move-result v10

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    :goto_1
    return-void

    .line 159
    :cond_0
    iget-object v9, p0, Lcom/pizza/work/ResultActivity;->v:[Ljava/util/Vector;

    new-instance v10, Ljava/util/Vector;

    invoke-direct {v10}, Ljava/util/Vector;-><init>()V

    aput-object v10, v9, v8

    .line 160
    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    .line 161
    .local v7, sq:Ljava/lang/String;
    const-string v9, "sq"

    invoke-static {v9, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 164
    .local v1, b:Lorg/json/JSONObject;
    iget-object v9, p0, Lcom/pizza/work/ResultActivity;->v:[Ljava/util/Vector;

    aget-object v9, v9, v8

    const-string v10, "name"

    invoke-virtual {v1, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 165
    const-string v9, "COUNT"

    const-string v10, "name"

    invoke-virtual {v1, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    iget-object v9, p0, Lcom/pizza/work/ResultActivity;->pricenames:Ljava/util/Vector;

    const-string v10, "name"

    invoke-virtual {v1, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 168
    iget-object v9, p0, Lcom/pizza/work/ResultActivity;->v:[Ljava/util/Vector;

    aget-object v9, v9, v8

    const-string v10, "Amount"

    invoke-virtual {v1, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 169
    const-string v9, "COUNT"

    const-string v10, "Amount"

    invoke-virtual {v1, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    iget-object v9, p0, Lcom/pizza/work/ResultActivity;->amounts:Ljava/util/Vector;

    const-string v10, "Amount"

    invoke-virtual {v1, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 171
    const-string v9, "count"

    invoke-virtual {v1, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 173
    .local v2, count:I
    const-string v9, "COUNT"

    const-string v10, "count"

    invoke-virtual {v1, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    const/4 v5, 0x1

    .local v5, l:I
    :goto_2
    if-le v5, v2, :cond_1

    .line 186
    add-int/lit8 v6, v6, 0x1

    .line 157
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_0

    .line 178
    :cond_1
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "no"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 180
    .local v0, NO:Ljava/lang/String;
    const-string v9, "COUNT"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    iget-object v9, p0, Lcom/pizza/work/ResultActivity;->v:[Ljava/util/Vector;

    aget-object v9, v9, v8

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 177
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 203
    .end local v0           #NO:Ljava/lang/String;
    .end local v1           #b:Lorg/json/JSONObject;
    .end local v2           #count:I
    .end local v5           #l:I
    .end local v7           #sq:Ljava/lang/String;
    :catch_0
    move-exception v3

    .local v3, e:Ljava/lang/Exception;
    const-string v9, "Error   trtet"

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1
.end method

.method public fillDate()V
    .locals 4

    .prologue
    .line 211
    iget-object v2, p0, Lcom/pizza/work/ResultActivity;->userFunction:Lcom/pizza/work/library/UserFunctions;

    invoke-virtual {v2}, Lcom/pizza/work/library/UserFunctions;->getDate()Ljava/lang/String;

    move-result-object v0

    .line 212
    .local v0, date1:Ljava/lang/String;
    iget-object v2, p0, Lcom/pizza/work/ResultActivity;->userFunction:Lcom/pizza/work/library/UserFunctions;

    invoke-virtual {v2, v0}, Lcom/pizza/work/library/UserFunctions;->resultsplit1(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 213
    .local v1, result:[Ljava/lang/String;
    iget-object v2, p0, Lcom/pizza/work/ResultActivity;->calview1:Landroid/widget/TextView;

    const/4 v3, 0x0

    aget-object v3, v1, v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 215
    const/4 v2, 0x1

    aget-object v2, v1, v2

    iput-object v2, p0, Lcom/pizza/work/ResultActivity;->today:Ljava/lang/String;

    .line 217
    return-void
.end method

.method public fillProduct()V
    .locals 4

    .prologue
    .line 230
    iget-object v2, p0, Lcom/pizza/work/ResultActivity;->productVector:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->removeAllElements()V

    .line 232
    const/4 v1, 0x0

    .line 238
    .local v1, json:Lorg/json/JSONObject;
    :try_start_0
    iget-object v2, p0, Lcom/pizza/work/ResultActivity;->productVector:Ljava/util/Vector;

    const-string v3, "product"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 243
    new-instance v0, Landroid/widget/ArrayAdapter;

    const v2, 0x1090009

    iget-object v3, p0, Lcom/pizza/work/ResultActivity;->productVector:Ljava/util/Vector;

    invoke-direct {v0, p0, v2, v3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 244
    .local v0, adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    iget-object v2, p0, Lcom/pizza/work/ResultActivity;->spprod:Landroid/widget/Spinner;

    invoke-virtual {v2, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 252
    .end local v0           #adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    :goto_0
    return-void

    .line 247
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 50
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 51
    const v0, 0x7f030013

    invoke-virtual {p0, v0}, Lcom/pizza/work/ResultActivity;->setContentView(I)V

    .line 53
    const v0, 0x7f080049

    invoke-virtual {p0, v0}, Lcom/pizza/work/ResultActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TableLayout;

    iput-object v0, p0, Lcom/pizza/work/ResultActivity;->tl:Landroid/widget/TableLayout;

    .line 55
    const v0, 0x7f080012

    invoke-virtual {p0, v0}, Lcom/pizza/work/ResultActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/pizza/work/ResultActivity;->spprod:Landroid/widget/Spinner;

    .line 56
    const v0, 0x7f080001

    invoke-virtual {p0, v0}, Lcom/pizza/work/ResultActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/pizza/work/ResultActivity;->calview1:Landroid/widget/TextView;

    .line 60
    invoke-virtual {p0}, Lcom/pizza/work/ResultActivity;->fillDate()V

    .line 63
    iget-object v0, p0, Lcom/pizza/work/ResultActivity;->today:Ljava/lang/String;

    iput-object v0, p0, Lcom/pizza/work/ResultActivity;->startdate:Ljava/lang/String;

    .line 65
    invoke-virtual {p0}, Lcom/pizza/work/ResultActivity;->fillProduct()V

    .line 66
    invoke-virtual {p0}, Lcom/pizza/work/ResultActivity;->display()V

    .line 67
    invoke-virtual {p0}, Lcom/pizza/work/ResultActivity;->tabledisplay()V

    .line 71
    iget-object v0, p0, Lcom/pizza/work/ResultActivity;->calview1:Landroid/widget/TextView;

    new-instance v1, Lcom/pizza/work/ResultActivity$1;

    invoke-direct {v1, p0}, Lcom/pizza/work/ResultActivity$1;-><init>(Lcom/pizza/work/ResultActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 104
    return-void
.end method

.method public tabledisplay()V
    .locals 4

    .prologue
    .line 109
    const-string v1, "pricename"

    iget-object v2, p0, Lcom/pizza/work/ResultActivity;->pricenames:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/pizza/work/ResultActivity;->pricenames:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 130
    return-void

    .line 114
    :cond_0
    new-instance v1, Landroid/widget/TableRow;

    invoke-direct {v1, p0}, Landroid/widget/TableRow;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/pizza/work/ResultActivity;->tr:Landroid/widget/TableRow;

    .line 116
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/pizza/work/ResultActivity;->tv1:Landroid/widget/TextView;

    .line 117
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/pizza/work/ResultActivity;->tv2:Landroid/widget/TextView;

    .line 118
    const-string v2, "pricename"

    iget-object v1, p0, Lcom/pizza/work/ResultActivity;->pricenames:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    const-string v2, "pricename"

    iget-object v1, p0, Lcom/pizza/work/ResultActivity;->amounts:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    iget-object v2, p0, Lcom/pizza/work/ResultActivity;->tr:Landroid/widget/TableRow;

    iget-object v3, p0, Lcom/pizza/work/ResultActivity;->tv1:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/pizza/work/ResultActivity;->pricenames:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v2, v3, v1}, Lcom/pizza/work/ResultActivity;->createView(Landroid/widget/TableRow;Landroid/widget/TextView;Ljava/lang/String;)V

    .line 124
    iget-object v2, p0, Lcom/pizza/work/ResultActivity;->tr:Landroid/widget/TableRow;

    iget-object v3, p0, Lcom/pizza/work/ResultActivity;->tv2:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/pizza/work/ResultActivity;->amounts:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v2, v3, v1}, Lcom/pizza/work/ResultActivity;->createView(Landroid/widget/TableRow;Landroid/widget/TextView;Ljava/lang/String;)V

    .line 126
    iget-object v1, p0, Lcom/pizza/work/ResultActivity;->tl:Landroid/widget/TableLayout;

    iget-object v2, p0, Lcom/pizza/work/ResultActivity;->tr:Landroid/widget/TableRow;

    invoke-virtual {v1, v2}, Landroid/widget/TableLayout;->addView(Landroid/view/View;)V

    .line 111
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
