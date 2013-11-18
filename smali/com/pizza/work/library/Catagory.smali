.class public Lcom/pizza/work/library/Catagory;
.super Ljava/lang/Object;
.source "Catagory.java"


# instance fields
.field catName:Ljava/lang/String;

.field catid:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    new-instance v0, Ljava/lang/String;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/pizza/work/library/Catagory;->catid:Ljava/lang/String;

    .line 11
    new-instance v0, Ljava/lang/String;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/pizza/work/library/Catagory;->catName:Ljava/lang/String;

    .line 14
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "catid"
    .parameter "catName"

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/pizza/work/library/Catagory;->catid:Ljava/lang/String;

    .line 19
    iput-object p2, p0, Lcom/pizza/work/library/Catagory;->catName:Ljava/lang/String;

    .line 21
    return-void
.end method


# virtual methods
.method public getCatid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/pizza/work/library/Catagory;->catid:Ljava/lang/String;

    return-object v0
.end method

.method public getcatName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/pizza/work/library/Catagory;->catName:Ljava/lang/String;

    return-object v0
.end method
