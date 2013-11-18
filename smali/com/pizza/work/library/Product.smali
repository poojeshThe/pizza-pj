.class public Lcom/pizza/work/library/Product;
.super Ljava/lang/Object;
.source "Product.java"


# instance fields
.field date:Ljava/lang/String;

.field productname:Ljava/lang/String;

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

.field typestatus1:Z

.field typestatus2:Z

.field typestatus3:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-boolean v0, p0, Lcom/pizza/work/library/Product;->typestatus1:Z

    .line 13
    iput-boolean v0, p0, Lcom/pizza/work/library/Product;->typestatus2:Z

    .line 14
    iput-boolean v0, p0, Lcom/pizza/work/library/Product;->typestatus3:Z

    .line 24
    new-instance v0, Ljava/lang/String;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/pizza/work/library/Product;->productname:Ljava/lang/String;

    .line 25
    new-instance v0, Ljava/lang/String;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/pizza/work/library/Product;->date:Ljava/lang/String;

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/pizza/work/library/Product;->type1:Ljava/util/ArrayList;

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/pizza/work/library/Product;->type2:Ljava/util/ArrayList;

    .line 28
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/pizza/work/library/Product;->type3:Ljava/util/ArrayList;

    .line 29
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;ZZZ)V
    .locals 1
    .parameter "productname"
    .parameter "Date"
    .parameter
    .parameter
    .parameter
    .parameter "typestatus1"
    .parameter "typestatus2"
    .parameter "typestatus3"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;ZZZ)V"
        }
    .end annotation

    .prologue
    .local p3, type1:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p4, type2:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p5, type3:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-boolean v0, p0, Lcom/pizza/work/library/Product;->typestatus1:Z

    .line 13
    iput-boolean v0, p0, Lcom/pizza/work/library/Product;->typestatus2:Z

    .line 14
    iput-boolean v0, p0, Lcom/pizza/work/library/Product;->typestatus3:Z

    .line 34
    iput-object p1, p0, Lcom/pizza/work/library/Product;->productname:Ljava/lang/String;

    .line 35
    iput-object p2, p0, Lcom/pizza/work/library/Product;->date:Ljava/lang/String;

    .line 36
    iput-object p3, p0, Lcom/pizza/work/library/Product;->type1:Ljava/util/ArrayList;

    .line 37
    iput-object p4, p0, Lcom/pizza/work/library/Product;->type2:Ljava/util/ArrayList;

    .line 38
    iput-object p5, p0, Lcom/pizza/work/library/Product;->type3:Ljava/util/ArrayList;

    .line 39
    iput-boolean p6, p0, Lcom/pizza/work/library/Product;->typestatus1:Z

    .line 40
    iput-boolean p7, p0, Lcom/pizza/work/library/Product;->typestatus2:Z

    .line 41
    iput-boolean p8, p0, Lcom/pizza/work/library/Product;->typestatus3:Z

    .line 44
    return-void
.end method


# virtual methods
.method public getDate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/pizza/work/library/Product;->date:Ljava/lang/String;

    return-object v0
.end method

.method public getProductname()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/pizza/work/library/Product;->productname:Ljava/lang/String;

    return-object v0
.end method

.method public getType1()Ljava/util/ArrayList;
    .locals 1
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
    .line 60
    iget-object v0, p0, Lcom/pizza/work/library/Product;->type1:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getType2()Ljava/util/ArrayList;
    .locals 1
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
    .line 67
    iget-object v0, p0, Lcom/pizza/work/library/Product;->type2:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getType3()Ljava/util/ArrayList;
    .locals 1
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
    .line 72
    iget-object v0, p0, Lcom/pizza/work/library/Product;->type3:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getTypeStatus1()Z
    .locals 2

    .prologue
    .line 78
    const-string v0, "****getfunction1***"

    iget-boolean v1, p0, Lcom/pizza/work/library/Product;->typestatus1:Z

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    iget-boolean v0, p0, Lcom/pizza/work/library/Product;->typestatus1:Z

    return v0
.end method

.method public getTypeStatus2()Z
    .locals 2

    .prologue
    .line 86
    const-string v0, "****getfunction2***"

    iget-boolean v1, p0, Lcom/pizza/work/library/Product;->typestatus2:Z

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    iget-boolean v0, p0, Lcom/pizza/work/library/Product;->typestatus2:Z

    return v0
.end method

.method public getTypeStatus3()Z
    .locals 2

    .prologue
    .line 92
    const-string v0, "****getfunction3***"

    iget-boolean v1, p0, Lcom/pizza/work/library/Product;->typestatus3:Z

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    iget-boolean v0, p0, Lcom/pizza/work/library/Product;->typestatus3:Z

    return v0
.end method
