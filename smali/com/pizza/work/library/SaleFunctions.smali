.class public Lcom/pizza/work/library/SaleFunctions;
.super Ljava/lang/Object;
.source "SaleFunctions.java"


# static fields
.field static typecount:I

.field static typestatus1:Z

.field static typestatus2:Z

.field static typestatus3:Z


# instance fields
.field p:Lcom/pizza/work/library/Product;

.field ttype:[Ljava/lang/String;

.field type1:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field type2:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field type3:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field userFunction:Lcom/pizza/work/library/UserFunctions;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 17
    sput v0, Lcom/pizza/work/library/SaleFunctions;->typecount:I

    .line 18
    sput-boolean v0, Lcom/pizza/work/library/SaleFunctions;->typestatus1:Z

    .line 19
    sput-boolean v0, Lcom/pizza/work/library/SaleFunctions;->typestatus2:Z

    .line 20
    sput-boolean v0, Lcom/pizza/work/library/SaleFunctions;->typestatus3:Z

    .line 12
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    new-instance v0, Lcom/pizza/work/library/UserFunctions;

    invoke-direct {v0}, Lcom/pizza/work/library/UserFunctions;-><init>()V

    iput-object v0, p0, Lcom/pizza/work/library/SaleFunctions;->userFunction:Lcom/pizza/work/library/UserFunctions;

    .line 15
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/pizza/work/library/SaleFunctions;->ttype:[Ljava/lang/String;

    .line 29
    new-instance v0, Lcom/pizza/work/library/Product;

    invoke-direct {v0}, Lcom/pizza/work/library/Product;-><init>()V

    iput-object v0, p0, Lcom/pizza/work/library/SaleFunctions;->p:Lcom/pizza/work/library/Product;

    .line 31
    return-void
.end method

.method public static getTypeStatus1()Z
    .locals 2

    .prologue
    .line 231
    const-string v0, "****getfunction1***"

    sget-boolean v1, Lcom/pizza/work/library/SaleFunctions;->typestatus1:Z

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    sget-boolean v0, Lcom/pizza/work/library/SaleFunctions;->typestatus1:Z

    return v0
.end method

.method public static getTypeStatus2()Z
    .locals 2

    .prologue
    .line 239
    const-string v0, "****getfunction2***"

    sget-boolean v1, Lcom/pizza/work/library/SaleFunctions;->typestatus2:Z

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    sget-boolean v0, Lcom/pizza/work/library/SaleFunctions;->typestatus2:Z

    return v0
.end method

.method public static getTypeStatus3()Z
    .locals 2

    .prologue
    .line 245
    const-string v0, "****getfunction3***"

    sget-boolean v1, Lcom/pizza/work/library/SaleFunctions;->typestatus3:Z

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    sget-boolean v0, Lcom/pizza/work/library/SaleFunctions;->typestatus3:Z

    return v0
.end method


# virtual methods
.method public fillParty()Ljava/util/Vector;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 40
    new-instance v3, Ljava/util/Vector;

    invoke-direct {v3}, Ljava/util/Vector;-><init>()V

    .line 43
    .local v3, v:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/lang/String;>;"
    iget-object v4, p0, Lcom/pizza/work/library/SaleFunctions;->userFunction:Lcom/pizza/work/library/UserFunctions;

    sget-object v5, Lcom/pizza/work/library/UserFunctions;->usercode:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/pizza/work/library/UserFunctions;->viewParty(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 45
    .local v1, json:Lorg/json/JSONArray;
    const/4 v2, 0x0

    .line 47
    .local v2, json_data:Lorg/json/JSONObject;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    :try_start_0
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-lt v0, v4, :cond_0

    .line 57
    :goto_1
    return-object v3

    .line 50
    :cond_0
    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 51
    const-string v4, "name"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 47
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 55
    :catch_0
    move-exception v4

    goto :goto_1
.end method

.method public getType(Ljava/lang/String;Ljava/lang/String;)Lcom/pizza/work/library/Product;
    .locals 17
    .parameter "date"
    .parameter "name"

    .prologue
    .line 90
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/pizza/work/library/SaleFunctions;->type1:Ljava/util/ArrayList;

    .line 91
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/pizza/work/library/SaleFunctions;->type2:Ljava/util/ArrayList;

    .line 92
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/pizza/work/library/SaleFunctions;->type3:Ljava/util/ArrayList;

    .line 96
    const/4 v2, 0x0

    :try_start_0
    sput-boolean v2, Lcom/pizza/work/library/SaleFunctions;->typestatus1:Z

    .line 97
    const/4 v2, 0x0

    sput-boolean v2, Lcom/pizza/work/library/SaleFunctions;->typestatus2:Z

    .line 98
    const/4 v2, 0x0

    sput-boolean v2, Lcom/pizza/work/library/SaleFunctions;->typestatus3:Z

    .line 99
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pizza/work/library/SaleFunctions;->type1:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 100
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pizza/work/library/SaleFunctions;->type2:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 101
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pizza/work/library/SaleFunctions;->type3:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 103
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pizza/work/library/SaleFunctions;->userFunction:Lcom/pizza/work/library/UserFunctions;

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {v2, v0, v1}, Lcom/pizza/work/library/UserFunctions;->getSaleType(Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v16

    .line 105
    .local v16, typejson:Lorg/json/JSONObject;
    const-string v2, "typeCount"

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/pizza/work/library/SaleFunctions;->typecount:I

    .line 106
    sget v2, Lcom/pizza/work/library/SaleFunctions;->typecount:I

    if-lez v2, :cond_0

    .line 108
    const/4 v11, 0x1

    .local v11, i:I
    :goto_0
    sget v2, Lcom/pizza/work/library/SaleFunctions;->typecount:I

    if-le v11, v2, :cond_1

    .line 178
    .end local v11           #i:I
    :cond_0
    new-instance v2, Lcom/pizza/work/library/Product;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/pizza/work/library/SaleFunctions;->type1:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/pizza/work/library/SaleFunctions;->type2:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/pizza/work/library/SaleFunctions;->type3:Ljava/util/ArrayList;

    sget-boolean v8, Lcom/pizza/work/library/SaleFunctions;->typestatus1:Z

    sget-boolean v9, Lcom/pizza/work/library/SaleFunctions;->typestatus2:Z

    sget-boolean v10, Lcom/pizza/work/library/SaleFunctions;->typestatus3:Z

    move-object/from16 v3, p2

    move-object/from16 v4, p1

    invoke-direct/range {v2 .. v10}, Lcom/pizza/work/library/Product;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;ZZZ)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/pizza/work/library/SaleFunctions;->p:Lcom/pizza/work/library/Product;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 182
    .end local v16           #typejson:Lorg/json/JSONObject;
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pizza/work/library/SaleFunctions;->p:Lcom/pizza/work/library/Product;

    return-object v2

    .line 112
    .restart local v11       #i:I
    .restart local v16       #typejson:Lorg/json/JSONObject;
    :cond_1
    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "type"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v13

    .line 114
    .local v13, json:Lorg/json/JSONObject;
    const-string v2, "name"

    invoke-virtual {v13, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 115
    .local v15, tname:Ljava/lang/String;
    const-string v2, "****tname"

    invoke-static {v2, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    const-string v2, "serial_count"

    invoke-virtual {v13, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    .line 117
    .local v14, serialCount:I
    const-string v2, "1"

    invoke-virtual {v15, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 120
    const/4 v2, 0x1

    sput-boolean v2, Lcom/pizza/work/library/SaleFunctions;->typestatus1:Z

    .line 121
    const-string v2, "****status***"

    sget-boolean v3, Lcom/pizza/work/library/SaleFunctions;->typestatus1:Z

    invoke-static {v3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    if-lez v14, :cond_6

    .line 124
    const/4 v12, 0x1

    .local v12, j:I
    :goto_2
    if-le v12, v14, :cond_5

    .line 133
    .end local v12           #j:I
    :cond_2
    :goto_3
    const-string v2, "2"

    invoke-virtual {v15, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 136
    const/4 v2, 0x1

    sput-boolean v2, Lcom/pizza/work/library/SaleFunctions;->typestatus2:Z

    .line 137
    const-string v2, "****status2***"

    sget-boolean v3, Lcom/pizza/work/library/SaleFunctions;->typestatus2:Z

    invoke-static {v3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    if-lez v14, :cond_8

    .line 141
    const/4 v12, 0x1

    .restart local v12       #j:I
    :goto_4
    if-le v12, v14, :cond_7

    .line 151
    .end local v12           #j:I
    :cond_3
    :goto_5
    const-string v2, "3"

    invoke-virtual {v15, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 154
    const/4 v2, 0x1

    sput-boolean v2, Lcom/pizza/work/library/SaleFunctions;->typestatus3:Z

    .line 155
    const-string v2, "****status3***"

    invoke-static {v14}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    if-lez v14, :cond_a

    .line 159
    const/4 v12, 0x1

    .restart local v12       #j:I
    :goto_6
    if-le v12, v14, :cond_9

    .line 108
    .end local v12           #j:I
    :cond_4
    :goto_7
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_0

    .line 126
    .restart local v12       #j:I
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pizza/work/library/SaleFunctions;->type1:Ljava/util/ArrayList;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "serial"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v13, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 124
    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    .line 131
    .end local v12           #j:I
    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pizza/work/library/SaleFunctions;->type1:Ljava/util/ArrayList;

    const-string v3, "-1"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 181
    .end local v11           #i:I
    .end local v13           #json:Lorg/json/JSONObject;
    .end local v14           #serialCount:I
    .end local v15           #tname:Ljava/lang/String;
    .end local v16           #typejson:Lorg/json/JSONObject;
    :catch_0
    move-exception v2

    goto/16 :goto_1

    .line 143
    .restart local v11       #i:I
    .restart local v12       #j:I
    .restart local v13       #json:Lorg/json/JSONObject;
    .restart local v14       #serialCount:I
    .restart local v15       #tname:Ljava/lang/String;
    .restart local v16       #typejson:Lorg/json/JSONObject;
    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pizza/work/library/SaleFunctions;->type2:Ljava/util/ArrayList;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "serial"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v13, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 141
    add-int/lit8 v12, v12, 0x1

    goto :goto_4

    .line 148
    .end local v12           #j:I
    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pizza/work/library/SaleFunctions;->type2:Ljava/util/ArrayList;

    const-string v3, "-1"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 161
    .restart local v12       #j:I
    :cond_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pizza/work/library/SaleFunctions;->type3:Ljava/util/ArrayList;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "serial"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v13, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 162
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pizza/work/library/SaleFunctions;->ttype:[Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "serial"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v13, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v12

    .line 159
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_6

    .line 167
    .end local v12           #j:I
    :cond_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pizza/work/library/SaleFunctions;->type3:Ljava/util/ArrayList;

    const-string v3, "-1"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_7
.end method

.method public getType1()Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 189
    :try_start_0
    const-string v2, "vector1size"

    iget-object v3, p0, Lcom/pizza/work/library/SaleFunctions;->type1:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    const/4 v1, 0x0

    .local v1, k:I
    :goto_0
    iget-object v2, p0, Lcom/pizza/work/library/SaleFunctions;->type1:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-lt v1, v2, :cond_0

    .line 199
    .end local v1           #k:I
    :goto_1
    iget-object v2, p0, Lcom/pizza/work/library/SaleFunctions;->type1:Ljava/util/ArrayList;

    return-object v2

    .line 195
    .restart local v1       #k:I
    :cond_0
    :try_start_1
    const-string v2, "vector1"

    iget-object v3, p0, Lcom/pizza/work/library/SaleFunctions;->type1:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 192
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 198
    .end local v1           #k:I
    :catch_0
    move-exception v0

    .local v0, e:Ljava/lang/Exception;
    const-string v2, "error vetor2"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public getType2()Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 205
    :try_start_0
    const-string v2, "vector2size"

    iget-object v3, p0, Lcom/pizza/work/library/SaleFunctions;->type2:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    const/4 v1, 0x0

    .local v1, k:I
    :goto_0
    iget-object v2, p0, Lcom/pizza/work/library/SaleFunctions;->type2:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-lt v1, v2, :cond_0

    .line 212
    .end local v1           #k:I
    :goto_1
    iget-object v2, p0, Lcom/pizza/work/library/SaleFunctions;->type2:Ljava/util/ArrayList;

    return-object v2

    .line 209
    .restart local v1       #k:I
    :cond_0
    :try_start_1
    const-string v2, "vector2"

    iget-object v3, p0, Lcom/pizza/work/library/SaleFunctions;->type2:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 206
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 211
    .end local v1           #k:I
    :catch_0
    move-exception v0

    .local v0, e:Ljava/lang/Exception;
    const-string v2, "error vetor2"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public getType3()Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 218
    :try_start_0
    const-string v2, "vector3size"

    iget-object v3, p0, Lcom/pizza/work/library/SaleFunctions;->type3:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    const/4 v1, 0x0

    .local v1, k:I
    :goto_0
    iget-object v2, p0, Lcom/pizza/work/library/SaleFunctions;->type3:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-lt v1, v2, :cond_0

    .line 225
    .end local v1           #k:I
    :goto_1
    iget-object v2, p0, Lcom/pizza/work/library/SaleFunctions;->type3:Ljava/util/ArrayList;

    return-object v2

    .line 222
    .restart local v1       #k:I
    :cond_0
    :try_start_1
    const-string v2, "vector3"

    iget-object v3, p0, Lcom/pizza/work/library/SaleFunctions;->type3:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 219
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 224
    .end local v1           #k:I
    :catch_0
    move-exception v0

    .local v0, e:Ljava/lang/Exception;
    const-string v2, "error vetor3"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public validParty(Ljava/lang/String;)I
    .locals 2
    .parameter "partyName"

    .prologue
    .line 70
    const/4 v0, 0x1

    .line 73
    .local v0, valid:I
    :try_start_0
    const-string v1, "[a-zA-Z]*"

    invoke-virtual {p1, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 75
    const/4 v0, -0x1

    .line 83
    :cond_0
    :goto_0
    return v0

    .line 76
    :cond_1
    const-string v1, ""

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-eqz v1, :cond_0

    .line 77
    const/4 v0, 0x0

    goto :goto_0

    .line 81
    :catch_0
    move-exception v1

    goto :goto_0
.end method
