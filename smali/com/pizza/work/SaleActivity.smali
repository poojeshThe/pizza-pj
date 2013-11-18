.class public Lcom/pizza/work/SaleActivity;
.super Landroid/app/Activity;
.source "SaleActivity.java"

# interfaces
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pizza/work/SaleActivity$LoadViewTask;
    }
.end annotation


# static fields
.field private static i:I

.field public static final progress_bar_type:I


# instance fields
.field private abc:Landroid/widget/Spinner;

.field abclength:I

.field adapter1:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field adapter2:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field adapter3:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private add:Landroid/widget/Button;

.field currentdate:Ljava/lang/String;

.field currentdateisplay:Ljava/lang/String;

.field dateVector:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field db:Lcom/pizza/work/library/DatabaseHandler;

.field detailProductList:Ljava/util/List;
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

.field private end:Landroid/widget/EditText;

.field fillMaps:Ljava/util/List;
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

.field from:[Ljava/lang/String;

.field grandtotal:F

.field gridid:I

.field lv:Landroid/widget/ListView;

.field map:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field myOptionOnClickListener:Landroid/view/View$OnClickListener;

.field private partytext:Landroid/widget/AutoCompleteTextView;

.field private pno:Landroid/widget/EditText;

.field private price:Landroid/widget/EditText;

.field priceVector:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field productObject:Lcom/pizza/work/library/Product;

.field productTemp:Lcom/pizza/work/library/Product;

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

.field productcount:I

.field products:[[Ljava/lang/String;

.field private progressDialog:Landroid/app/ProgressDialog;

.field private qty:Landroid/widget/EditText;

.field rb1:Landroid/widget/RadioButton;

.field rb2:Landroid/widget/RadioButton;

.field rb3:Landroid/widget/RadioButton;

.field private rg:Landroid/widget/RadioGroup;

.field saleFunction:Lcom/pizza/work/library/SaleFunctions;

.field private save:Landroid/widget/Button;

.field saveList:Ljava/util/List;
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

.field selectdate:Ljava/lang/String;

.field private spprod:Landroid/widget/Spinner;

.field subtotal:D

.field t1:Landroid/widget/TableLayout;

.field to:[I

.field today:Ljava/lang/String;

.field private togbut:Landroid/widget/ToggleButton;

.field togflag:Z

.field private tprice:Landroid/widget/TextView;

.field tr:Landroid/widget/TableRow;

.field tv1:Landroid/widget/TextView;

.field tv2:Landroid/widget/TextView;

.field typejson:Lorg/json/JSONObject;

.field typevector:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field typevector1:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field typevector2:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field typevector3:Ljava/util/ArrayList;
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

.field val:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    const/4 v0, 0x0

    sput v0, Lcom/pizza/work/SaleActivity;->i:I

    .line 29
    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/16 v0, 0x64

    const/4 v3, 0x4

    const/4 v2, 0x0

    .line 29
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 31
    iput v2, p0, Lcom/pizza/work/SaleActivity;->gridid:I

    .line 36
    filled-new-array {v0, v0}, [I

    move-result-object v0

    const-class v1, Ljava/lang/String;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Ljava/lang/String;

    iput-object v0, p0, Lcom/pizza/work/SaleActivity;->products:[[Ljava/lang/String;

    .line 41
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/pizza/work/SaleActivity;->typejson:Lorg/json/JSONObject;

    .line 44
    iput v2, p0, Lcom/pizza/work/SaleActivity;->abclength:I

    .line 45
    new-instance v0, Lcom/pizza/work/library/Product;

    invoke-direct {v0}, Lcom/pizza/work/library/Product;-><init>()V

    iput-object v0, p0, Lcom/pizza/work/SaleActivity;->productObject:Lcom/pizza/work/library/Product;

    .line 46
    new-instance v0, Lcom/pizza/work/library/Product;

    invoke-direct {v0}, Lcom/pizza/work/library/Product;-><init>()V

    iput-object v0, p0, Lcom/pizza/work/SaleActivity;->productTemp:Lcom/pizza/work/library/Product;

    .line 48
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/pizza/work/SaleActivity;->productVector:Ljava/util/Vector;

    .line 49
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/pizza/work/SaleActivity;->priceVector:Ljava/util/Vector;

    .line 50
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/pizza/work/SaleActivity;->dateVector:Ljava/util/Vector;

    .line 51
    iput v2, p0, Lcom/pizza/work/SaleActivity;->productcount:I

    .line 52
    iput-boolean v2, p0, Lcom/pizza/work/SaleActivity;->togflag:Z

    .line 54
    const-string v0, ""

    iput-object v0, p0, Lcom/pizza/work/SaleActivity;->today:Ljava/lang/String;

    .line 57
    const/4 v0, 0x0

    iput v0, p0, Lcom/pizza/work/SaleActivity;->grandtotal:F

    .line 59
    iput v2, p0, Lcom/pizza/work/SaleActivity;->val:I

    .line 63
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "pname"

    aput-object v1, v0, v2

    const/4 v1, 0x1

    const-string v2, "abc"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "qty"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "total"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/pizza/work/SaleActivity;->from:[Ljava/lang/String;

    .line 65
    new-array v0, v3, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/pizza/work/SaleActivity;->to:[I

    .line 67
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/pizza/work/SaleActivity;->fillMaps:Ljava/util/List;

    .line 68
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/pizza/work/SaleActivity;->map:Ljava/util/HashMap;

    .line 70
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/pizza/work/SaleActivity;->saveList:Ljava/util/List;

    .line 72
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/pizza/work/SaleActivity;->detailProductList:Ljava/util/List;

    .line 95
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/pizza/work/SaleActivity;->typevector:Ljava/util/ArrayList;

    .line 103
    new-instance v0, Lcom/pizza/work/library/UserFunctions;

    invoke-direct {v0}, Lcom/pizza/work/library/UserFunctions;-><init>()V

    iput-object v0, p0, Lcom/pizza/work/SaleActivity;->userFunction:Lcom/pizza/work/library/UserFunctions;

    .line 104
    new-instance v0, Lcom/pizza/work/library/SaleFunctions;

    invoke-direct {v0}, Lcom/pizza/work/library/SaleFunctions;-><init>()V

    iput-object v0, p0, Lcom/pizza/work/SaleActivity;->saleFunction:Lcom/pizza/work/library/SaleFunctions;

    .line 114
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/pizza/work/SaleActivity;->subtotal:D

    .line 29
    return-void

    .line 65
    :array_0
    .array-data 0x4
        0x14t 0x0t 0x8t 0x7ft
        0x15t 0x0t 0x8t 0x7ft
        0x16t 0x0t 0x8t 0x7ft
        0x17t 0x0t 0x8t 0x7ft
    .end array-data
.end method

.method static synthetic access$0(Lcom/pizza/work/SaleActivity;Landroid/app/ProgressDialog;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 34
    iput-object p1, p0, Lcom/pizza/work/SaleActivity;->progressDialog:Landroid/app/ProgressDialog;

    return-void
.end method

.method static synthetic access$1(Lcom/pizza/work/SaleActivity;)Landroid/app/ProgressDialog;
    .locals 1
    .parameter

    .prologue
    .line 34
    iget-object v0, p0, Lcom/pizza/work/SaleActivity;->progressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$10(Lcom/pizza/work/SaleActivity;Landroid/widget/EditText;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 87
    iput-object p1, p0, Lcom/pizza/work/SaleActivity;->end:Landroid/widget/EditText;

    return-void
.end method

.method static synthetic access$11(Lcom/pizza/work/SaleActivity;Landroid/widget/EditText;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 87
    iput-object p1, p0, Lcom/pizza/work/SaleActivity;->price:Landroid/widget/EditText;

    return-void
.end method

.method static synthetic access$12(Lcom/pizza/work/SaleActivity;)Landroid/widget/EditText;
    .locals 1
    .parameter

    .prologue
    .line 87
    iget-object v0, p0, Lcom/pizza/work/SaleActivity;->price:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$13(Lcom/pizza/work/SaleActivity;Landroid/widget/TextView;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 91
    iput-object p1, p0, Lcom/pizza/work/SaleActivity;->tprice:Landroid/widget/TextView;

    return-void
.end method

.method static synthetic access$14(Lcom/pizza/work/SaleActivity;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 91
    iget-object v0, p0, Lcom/pizza/work/SaleActivity;->tprice:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$15(Lcom/pizza/work/SaleActivity;Landroid/widget/Button;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 88
    iput-object p1, p0, Lcom/pizza/work/SaleActivity;->add:Landroid/widget/Button;

    return-void
.end method

.method static synthetic access$16(Lcom/pizza/work/SaleActivity;Landroid/widget/Button;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 88
    iput-object p1, p0, Lcom/pizza/work/SaleActivity;->save:Landroid/widget/Button;

    return-void
.end method

.method static synthetic access$17(Lcom/pizza/work/SaleActivity;)Landroid/widget/Button;
    .locals 1
    .parameter

    .prologue
    .line 88
    iget-object v0, p0, Lcom/pizza/work/SaleActivity;->save:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$18(Lcom/pizza/work/SaleActivity;)Landroid/widget/EditText;
    .locals 1
    .parameter

    .prologue
    .line 87
    iget-object v0, p0, Lcom/pizza/work/SaleActivity;->end:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$19(Lcom/pizza/work/SaleActivity;)Landroid/widget/EditText;
    .locals 1
    .parameter

    .prologue
    .line 87
    iget-object v0, p0, Lcom/pizza/work/SaleActivity;->qty:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$2(Lcom/pizza/work/SaleActivity;Landroid/widget/AutoCompleteTextView;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 82
    iput-object p1, p0, Lcom/pizza/work/SaleActivity;->partytext:Landroid/widget/AutoCompleteTextView;

    return-void
.end method

.method static synthetic access$20(Lcom/pizza/work/SaleActivity;Landroid/widget/ToggleButton;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 93
    iput-object p1, p0, Lcom/pizza/work/SaleActivity;->togbut:Landroid/widget/ToggleButton;

    return-void
.end method

.method static synthetic access$21(Lcom/pizza/work/SaleActivity;)Landroid/widget/ToggleButton;
    .locals 1
    .parameter

    .prologue
    .line 93
    iget-object v0, p0, Lcom/pizza/work/SaleActivity;->togbut:Landroid/widget/ToggleButton;

    return-object v0
.end method

.method static synthetic access$22(Lcom/pizza/work/SaleActivity;)Landroid/widget/Button;
    .locals 1
    .parameter

    .prologue
    .line 88
    iget-object v0, p0, Lcom/pizza/work/SaleActivity;->add:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$23(Lcom/pizza/work/SaleActivity;)Landroid/widget/Spinner;
    .locals 1
    .parameter

    .prologue
    .line 85
    iget-object v0, p0, Lcom/pizza/work/SaleActivity;->abc:Landroid/widget/Spinner;

    return-object v0
.end method

.method static synthetic access$24(Lcom/pizza/work/SaleActivity;)Landroid/widget/RadioGroup;
    .locals 1
    .parameter

    .prologue
    .line 86
    iget-object v0, p0, Lcom/pizza/work/SaleActivity;->rg:Landroid/widget/RadioGroup;

    return-object v0
.end method

.method static synthetic access$25(Lcom/pizza/work/SaleActivity;)Landroid/widget/AutoCompleteTextView;
    .locals 1
    .parameter

    .prologue
    .line 82
    iget-object v0, p0, Lcom/pizza/work/SaleActivity;->partytext:Landroid/widget/AutoCompleteTextView;

    return-object v0
.end method

.method static synthetic access$26()I
    .locals 1

    .prologue
    .line 35
    sget v0, Lcom/pizza/work/SaleActivity;->i:I

    return v0
.end method

.method static synthetic access$27(I)V
    .locals 0
    .parameter

    .prologue
    .line 35
    sput p0, Lcom/pizza/work/SaleActivity;->i:I

    return-void
.end method

.method static synthetic access$3(Lcom/pizza/work/SaleActivity;Landroid/widget/Spinner;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 80
    iput-object p1, p0, Lcom/pizza/work/SaleActivity;->spprod:Landroid/widget/Spinner;

    return-void
.end method

.method static synthetic access$4(Lcom/pizza/work/SaleActivity;Landroid/widget/RadioGroup;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 86
    iput-object p1, p0, Lcom/pizza/work/SaleActivity;->rg:Landroid/widget/RadioGroup;

    return-void
.end method

.method static synthetic access$5(Lcom/pizza/work/SaleActivity;Landroid/widget/Spinner;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 85
    iput-object p1, p0, Lcom/pizza/work/SaleActivity;->abc:Landroid/widget/Spinner;

    return-void
.end method

.method static synthetic access$6(Lcom/pizza/work/SaleActivity;)Landroid/widget/Spinner;
    .locals 1
    .parameter

    .prologue
    .line 80
    iget-object v0, p0, Lcom/pizza/work/SaleActivity;->spprod:Landroid/widget/Spinner;

    return-object v0
.end method

.method static synthetic access$7(Lcom/pizza/work/SaleActivity;)Landroid/widget/EditText;
    .locals 1
    .parameter

    .prologue
    .line 87
    iget-object v0, p0, Lcom/pizza/work/SaleActivity;->pno:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$8(Lcom/pizza/work/SaleActivity;Landroid/widget/EditText;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 87
    iput-object p1, p0, Lcom/pizza/work/SaleActivity;->pno:Landroid/widget/EditText;

    return-void
.end method

.method static synthetic access$9(Lcom/pizza/work/SaleActivity;Landroid/widget/EditText;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 87
    iput-object p1, p0, Lcom/pizza/work/SaleActivity;->qty:Landroid/widget/EditText;

    return-void
.end method


# virtual methods
.method public abcSpinnerFill(I)V
    .locals 6
    .parameter "i"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 447
    iget-object v1, p0, Lcom/pizza/work/SaleActivity;->rb1:Landroid/widget/RadioButton;

    invoke-virtual {v1, v5}, Landroid/widget/RadioButton;->setEnabled(Z)V

    .line 448
    iget-object v1, p0, Lcom/pizza/work/SaleActivity;->rb2:Landroid/widget/RadioButton;

    invoke-virtual {v1, v5}, Landroid/widget/RadioButton;->setEnabled(Z)V

    .line 449
    iget-object v1, p0, Lcom/pizza/work/SaleActivity;->rb3:Landroid/widget/RadioButton;

    invoke-virtual {v1, v5}, Landroid/widget/RadioButton;->setEnabled(Z)V

    .line 450
    iput p1, p0, Lcom/pizza/work/SaleActivity;->productcount:I

    .line 451
    iget-object v2, p0, Lcom/pizza/work/SaleActivity;->userFunction:Lcom/pizza/work/library/UserFunctions;

    iget-object v1, p0, Lcom/pizza/work/SaleActivity;->dateVector:Ljava/util/Vector;

    invoke-virtual {v1, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v1, p0, Lcom/pizza/work/SaleActivity;->productVector:Ljava/util/Vector;

    invoke-virtual {v1, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Lcom/pizza/work/library/UserFunctions;->getType(Ljava/lang/String;Ljava/lang/String;)Lcom/pizza/work/library/Product;

    move-result-object v1

    iput-object v1, p0, Lcom/pizza/work/SaleActivity;->productObject:Lcom/pizza/work/library/Product;

    .line 452
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/pizza/work/SaleActivity;->typevector:Ljava/util/ArrayList;

    .line 453
    iget-object v1, p0, Lcom/pizza/work/SaleActivity;->productObject:Lcom/pizza/work/library/Product;

    invoke-virtual {v1}, Lcom/pizza/work/library/Product;->getTypeStatus3()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 455
    iget-object v1, p0, Lcom/pizza/work/SaleActivity;->rb3:Landroid/widget/RadioButton;

    invoke-virtual {v1, v4}, Landroid/widget/RadioButton;->setEnabled(Z)V

    .line 456
    iget-object v1, p0, Lcom/pizza/work/SaleActivity;->rb3:Landroid/widget/RadioButton;

    invoke-virtual {v1, v4}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 458
    iget-object v1, p0, Lcom/pizza/work/SaleActivity;->productObject:Lcom/pizza/work/library/Product;

    invoke-virtual {v1}, Lcom/pizza/work/library/Product;->getType3()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "-1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 459
    iget-object v1, p0, Lcom/pizza/work/SaleActivity;->abc:Landroid/widget/Spinner;

    invoke-virtual {v1, v5}, Landroid/widget/Spinner;->setEnabled(Z)V

    .line 510
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/pizza/work/SaleActivity;->productObject:Lcom/pizza/work/library/Product;

    invoke-virtual {v1}, Lcom/pizza/work/library/Product;->getTypeStatus2()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 511
    iget-object v1, p0, Lcom/pizza/work/SaleActivity;->rb2:Landroid/widget/RadioButton;

    invoke-virtual {v1, v4}, Landroid/widget/RadioButton;->setEnabled(Z)V

    .line 513
    iget-object v1, p0, Lcom/pizza/work/SaleActivity;->productObject:Lcom/pizza/work/library/Product;

    invoke-virtual {v1}, Lcom/pizza/work/library/Product;->getType2()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "-1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 514
    iget-object v1, p0, Lcom/pizza/work/SaleActivity;->abc:Landroid/widget/Spinner;

    invoke-virtual {v1, v5}, Landroid/widget/Spinner;->setEnabled(Z)V

    .line 524
    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/pizza/work/SaleActivity;->productObject:Lcom/pizza/work/library/Product;

    invoke-virtual {v1}, Lcom/pizza/work/library/Product;->getTypeStatus1()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 526
    iget-object v1, p0, Lcom/pizza/work/SaleActivity;->rb1:Landroid/widget/RadioButton;

    invoke-virtual {v1, v4}, Landroid/widget/RadioButton;->setEnabled(Z)V

    .line 528
    iget-object v1, p0, Lcom/pizza/work/SaleActivity;->productObject:Lcom/pizza/work/library/Product;

    invoke-virtual {v1}, Lcom/pizza/work/library/Product;->getType1()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "-1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 529
    iget-object v1, p0, Lcom/pizza/work/SaleActivity;->abc:Landroid/widget/Spinner;

    invoke-virtual {v1, v5}, Landroid/widget/Spinner;->setEnabled(Z)V

    .line 540
    :cond_2
    :goto_2
    new-instance v0, Landroid/widget/ArrayAdapter;

    const v1, 0x1090009

    iget-object v2, p0, Lcom/pizza/work/SaleActivity;->typevector:Ljava/util/ArrayList;

    invoke-direct {v0, p0, v1, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 541
    .local v0, adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/pizza/work/SaleActivity;->abc:Landroid/widget/Spinner;

    invoke-virtual {v1, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 543
    return-void

    .line 462
    .end local v0           #adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    :cond_3
    iget-object v1, p0, Lcom/pizza/work/SaleActivity;->abc:Landroid/widget/Spinner;

    invoke-virtual {v1, v4}, Landroid/widget/Spinner;->setEnabled(Z)V

    .line 463
    iget-object v1, p0, Lcom/pizza/work/SaleActivity;->productObject:Lcom/pizza/work/library/Product;

    invoke-virtual {v1}, Lcom/pizza/work/library/Product;->getType3()Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/pizza/work/SaleActivity;->typevector:Ljava/util/ArrayList;

    .line 465
    iget-object v1, p0, Lcom/pizza/work/SaleActivity;->abc:Landroid/widget/Spinner;

    invoke-virtual {v1, v4}, Landroid/widget/Spinner;->setEnabled(Z)V

    goto :goto_0

    .line 471
    :cond_4
    iget-object v1, p0, Lcom/pizza/work/SaleActivity;->productObject:Lcom/pizza/work/library/Product;

    invoke-virtual {v1}, Lcom/pizza/work/library/Product;->getTypeStatus2()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 473
    iget-object v1, p0, Lcom/pizza/work/SaleActivity;->rb2:Landroid/widget/RadioButton;

    invoke-virtual {v1, v4}, Landroid/widget/RadioButton;->setEnabled(Z)V

    .line 474
    iget-object v1, p0, Lcom/pizza/work/SaleActivity;->rb2:Landroid/widget/RadioButton;

    invoke-virtual {v1, v4}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 476
    iget-object v1, p0, Lcom/pizza/work/SaleActivity;->productObject:Lcom/pizza/work/library/Product;

    invoke-virtual {v1}, Lcom/pizza/work/library/Product;->getType2()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "-1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 477
    iget-object v1, p0, Lcom/pizza/work/SaleActivity;->abc:Landroid/widget/Spinner;

    invoke-virtual {v1, v5}, Landroid/widget/Spinner;->setEnabled(Z)V

    goto/16 :goto_0

    .line 479
    :cond_5
    iget-object v1, p0, Lcom/pizza/work/SaleActivity;->productObject:Lcom/pizza/work/library/Product;

    invoke-virtual {v1}, Lcom/pizza/work/library/Product;->getType2()Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/pizza/work/SaleActivity;->typevector:Ljava/util/ArrayList;

    .line 482
    iget-object v1, p0, Lcom/pizza/work/SaleActivity;->abc:Landroid/widget/Spinner;

    invoke-virtual {v1, v4}, Landroid/widget/Spinner;->setEnabled(Z)V

    goto/16 :goto_0

    .line 490
    :cond_6
    iget-object v1, p0, Lcom/pizza/work/SaleActivity;->productObject:Lcom/pizza/work/library/Product;

    invoke-virtual {v1}, Lcom/pizza/work/library/Product;->getTypeStatus1()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 492
    iget-object v1, p0, Lcom/pizza/work/SaleActivity;->rb1:Landroid/widget/RadioButton;

    invoke-virtual {v1, v4}, Landroid/widget/RadioButton;->setEnabled(Z)V

    .line 493
    iget-object v1, p0, Lcom/pizza/work/SaleActivity;->rb1:Landroid/widget/RadioButton;

    invoke-virtual {v1, v4}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 494
    iget-object v1, p0, Lcom/pizza/work/SaleActivity;->productObject:Lcom/pizza/work/library/Product;

    invoke-virtual {v1}, Lcom/pizza/work/library/Product;->getType1()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "-1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 495
    iget-object v1, p0, Lcom/pizza/work/SaleActivity;->abc:Landroid/widget/Spinner;

    invoke-virtual {v1, v5}, Landroid/widget/Spinner;->setEnabled(Z)V

    goto/16 :goto_0

    .line 499
    :cond_7
    iget-object v1, p0, Lcom/pizza/work/SaleActivity;->productObject:Lcom/pizza/work/library/Product;

    invoke-virtual {v1}, Lcom/pizza/work/library/Product;->getType1()Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/pizza/work/SaleActivity;->typevector:Ljava/util/ArrayList;

    .line 502
    iget-object v1, p0, Lcom/pizza/work/SaleActivity;->abc:Landroid/widget/Spinner;

    invoke-virtual {v1, v4}, Landroid/widget/Spinner;->setEnabled(Z)V

    goto/16 :goto_0

    .line 516
    :cond_8
    iget-object v1, p0, Lcom/pizza/work/SaleActivity;->productObject:Lcom/pizza/work/library/Product;

    invoke-virtual {v1}, Lcom/pizza/work/library/Product;->getType2()Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/pizza/work/SaleActivity;->typevector2:Ljava/util/ArrayList;

    .line 519
    iget-object v1, p0, Lcom/pizza/work/SaleActivity;->abc:Landroid/widget/Spinner;

    invoke-virtual {v1, v4}, Landroid/widget/Spinner;->setEnabled(Z)V

    goto/16 :goto_1

    .line 531
    :cond_9
    iget-object v1, p0, Lcom/pizza/work/SaleActivity;->productObject:Lcom/pizza/work/library/Product;

    invoke-virtual {v1}, Lcom/pizza/work/library/Product;->getType1()Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/pizza/work/SaleActivity;->typevector1:Ljava/util/ArrayList;

    .line 534
    iget-object v1, p0, Lcom/pizza/work/SaleActivity;->abc:Landroid/widget/Spinner;

    invoke-virtual {v1, v4}, Landroid/widget/Spinner;->setEnabled(Z)V

    goto/16 :goto_2
.end method

.method public canSale(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)I
    .locals 9
    .parameter "pdname"
    .parameter "abctype"
    .parameter "start"
    .parameter "end"
    .parameter "series"
    .parameter "quantity"
    .parameter "itemprice"

    .prologue
    .line 118
    const-string v0, "ABCT"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "***"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    iget-object v0, p0, Lcom/pizza/work/SaleActivity;->userFunction:Lcom/pizza/work/library/UserFunctions;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move-object v6, p6

    move-object/from16 v7, p7

    invoke-virtual/range {v0 .. v7}, Lcom/pizza/work/library/UserFunctions;->productDateSale(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)I

    move-result v8

    .line 121
    .local v8, condition:I
    return v8
.end method

.method public celldelete(I)V
    .locals 18
    .parameter "p"

    .prologue
    .line 128
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    .line 131
    .local v9, hm:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v14, ""

    .line 132
    .local v14, pname:Ljava/lang/String;
    const-string v16, ""

    .line 133
    .local v16, typeno:Ljava/lang/String;
    const-string v15, ""

    .line 136
    .local v15, qnty:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pizza/work/SaleActivity;->fillMaps:Ljava/util/List;

    move/from16 v0, p1

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    .end local v9           #hm:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    check-cast v9, Ljava/util/HashMap;

    .line 137
    .restart local v9       #hm:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {v9}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .line 140
    .local v10, iter:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_4

    .line 169
    new-instance v11, Lorg/json/JSONObject;

    invoke-direct {v11}, Lorg/json/JSONObject;-><init>()V

    .line 170
    .local v11, jsonobject:Lorg/json/JSONObject;
    const/4 v7, 0x0

    .line 171
    .local v7, delsuccess:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pizza/work/SaleActivity;->userFunction:Lcom/pizza/work/library/UserFunctions;

    move-object/from16 v0, v16

    invoke-virtual {v2, v14, v15, v0}, Lcom/pizza/work/library/UserFunctions;->deleteTemp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v11

    .line 174
    :try_start_0
    const-string v2, "success"

    invoke-virtual {v11, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    move-result v7

    .line 177
    :goto_1
    const/4 v2, 0x1

    if-ne v7, v2, :cond_3

    .line 184
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pizza/work/SaleActivity;->fillMaps:Ljava/util/List;

    move/from16 v0, p1

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    .end local v9           #hm:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    check-cast v9, Ljava/util/HashMap;

    .line 185
    .restart local v9       #hm:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {v9}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .line 188
    :cond_1
    :goto_2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_7

    .line 206
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pizza/work/SaleActivity;->fillMaps:Ljava/util/List;

    move/from16 v0, p1

    invoke-interface {v2, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 208
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pizza/work/SaleActivity;->fillMaps:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_2

    .line 209
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pizza/work/SaleActivity;->save:Landroid/widget/Button;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 211
    :cond_2
    new-instance v1, Landroid/widget/SimpleAdapter;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/pizza/work/SaleActivity;->fillMaps:Ljava/util/List;

    const v4, 0x7f030006

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/pizza/work/SaleActivity;->from:[Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/pizza/work/SaleActivity;->to:[I

    move-object/from16 v2, p0

    invoke-direct/range {v1 .. v6}, Landroid/widget/SimpleAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[I)V

    .line 213
    .local v1, adapter:Landroid/widget/SimpleAdapter;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pizza/work/SaleActivity;->lv:Landroid/widget/ListView;

    invoke-virtual {v2, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 217
    .end local v1           #adapter:Landroid/widget/SimpleAdapter;
    :cond_3
    return-void

    .line 144
    .end local v7           #delsuccess:I
    .end local v11           #jsonobject:Lorg/json/JSONObject;
    :cond_4
    :try_start_1
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/Map$Entry;

    .line 145
    .local v13, mEntry:Ljava/util/Map$Entry;
    invoke-interface {v13}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 146
    .local v12, key:Ljava/lang/String;
    invoke-interface {v13}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/String;

    .line 147
    .local v17, value:Ljava/lang/String;
    const-string v2, "pname"

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 149
    move-object/from16 v14, v17

    .line 151
    :cond_5
    const-string v2, "abc"

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 153
    move-object/from16 v16, v17

    .line 156
    :cond_6
    const-string v2, "qty"

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v2

    if-eqz v2, :cond_0

    .line 158
    move-object/from16 v15, v17

    goto/16 :goto_0

    .line 164
    .end local v12           #key:Ljava/lang/String;
    .end local v13           #mEntry:Ljava/util/Map$Entry;
    .end local v17           #value:Ljava/lang/String;
    :catch_0
    move-exception v8

    .local v8, e:Ljava/lang/Exception;
    const-string v2, "Errordelte"

    invoke-virtual {v8}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 192
    .end local v8           #e:Ljava/lang/Exception;
    .restart local v7       #delsuccess:I
    .restart local v11       #jsonobject:Lorg/json/JSONObject;
    :cond_7
    :try_start_2
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/Map$Entry;

    .line 193
    .restart local v13       #mEntry:Ljava/util/Map$Entry;
    invoke-interface {v13}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 194
    .restart local v12       #key:Ljava/lang/String;
    invoke-interface {v13}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/String;

    .line 195
    .restart local v17       #value:Ljava/lang/String;
    const-string v2, "total"

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 197
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/pizza/work/SaleActivity;->subtotal:D

    invoke-static/range {v17 .. v17}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    float-to-double v4, v4

    sub-double/2addr v2, v4

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/pizza/work/SaleActivity;->subtotal:D

    .line 198
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pizza/work/SaleActivity;->tprice:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-wide v3, v0, Lcom/pizza/work/SaleActivity;->subtotal:D

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_2

    .line 203
    .end local v12           #key:Ljava/lang/String;
    .end local v13           #mEntry:Ljava/util/Map$Entry;
    .end local v17           #value:Ljava/lang/String;
    :catch_1
    move-exception v8

    .restart local v8       #e:Ljava/lang/Exception;
    const-string v2, "Errordelte"

    invoke-virtual {v8}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 176
    .end local v8           #e:Ljava/lang/Exception;
    :catch_2
    move-exception v2

    goto/16 :goto_1
.end method

.method public fillDate()V
    .locals 3

    .prologue
    .line 223
    iget-object v2, p0, Lcom/pizza/work/SaleActivity;->userFunction:Lcom/pizza/work/library/UserFunctions;

    invoke-virtual {v2}, Lcom/pizza/work/library/UserFunctions;->getDate()Ljava/lang/String;

    move-result-object v0

    .line 224
    .local v0, date1:Ljava/lang/String;
    iget-object v2, p0, Lcom/pizza/work/SaleActivity;->userFunction:Lcom/pizza/work/library/UserFunctions;

    invoke-virtual {v2, v0}, Lcom/pizza/work/library/UserFunctions;->resultsplit1(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 225
    .local v1, result:[Ljava/lang/String;
    const/4 v2, 0x0

    aget-object v2, v1, v2

    iput-object v2, p0, Lcom/pizza/work/SaleActivity;->currentdateisplay:Ljava/lang/String;

    .line 227
    const/4 v2, 0x1

    aget-object v2, v1, v2

    iput-object v2, p0, Lcom/pizza/work/SaleActivity;->today:Ljava/lang/String;

    .line 228
    iget-object v2, p0, Lcom/pizza/work/SaleActivity;->today:Ljava/lang/String;

    iput-object v2, p0, Lcom/pizza/work/SaleActivity;->currentdate:Ljava/lang/String;

    .line 229
    return-void
.end method

.method public fillGrid()V
    .locals 7

    .prologue
    .line 277
    const/16 v5, 0x2710

    new-array v4, v5, [Ljava/lang/String;

    .line 279
    .local v4, sale:[Ljava/lang/String;
    iget-object v5, p0, Lcom/pizza/work/SaleActivity;->userFunction:Lcom/pizza/work/library/UserFunctions;

    iget-object v6, p0, Lcom/pizza/work/SaleActivity;->today:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/pizza/work/library/UserFunctions;->saleProduct(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 281
    .local v2, json:Lorg/json/JSONObject;
    const/4 v3, 0x0

    .line 283
    .local v3, json_data:Lorg/json/JSONObject;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    :try_start_0
    invoke-virtual {v2}, Lorg/json/JSONObject;->length()I

    move-result v5

    if-lt v1, v5, :cond_0

    .line 290
    new-instance v0, Landroid/widget/ArrayAdapter;

    const v5, 0x109000a

    invoke-direct {v0, p0, v5, v4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 296
    :goto_1
    return-void

    .line 287
    :cond_0
    const-string v5, "name"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 283
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 294
    :catch_0
    move-exception v5

    goto :goto_1
.end method

.method public fillProduct()V
    .locals 7

    .prologue
    .line 241
    iget-object v5, p0, Lcom/pizza/work/SaleActivity;->productVector:Ljava/util/Vector;

    invoke-virtual {v5}, Ljava/util/Vector;->removeAllElements()V

    .line 242
    iget-object v5, p0, Lcom/pizza/work/SaleActivity;->dateVector:Ljava/util/Vector;

    invoke-virtual {v5}, Ljava/util/Vector;->removeAllElements()V

    .line 243
    iget-object v5, p0, Lcom/pizza/work/SaleActivity;->userFunction:Lcom/pizza/work/library/UserFunctions;

    iget-object v6, p0, Lcom/pizza/work/SaleActivity;->today:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/pizza/work/library/UserFunctions;->saleProduct(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 247
    .local v3, json:Lorg/json/JSONObject;
    const/4 v4, 0x0

    .line 248
    .local v4, json_data:Lorg/json/JSONObject;
    :try_start_0
    const-string v5, "count"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 249
    .local v1, count:I
    const/4 v2, 0x1

    .local v2, i:I
    :goto_0
    if-le v2, v1, :cond_0

    .line 263
    new-instance v0, Landroid/widget/ArrayAdapter;

    const v5, 0x1090009

    iget-object v6, p0, Lcom/pizza/work/SaleActivity;->productVector:Ljava/util/Vector;

    invoke-direct {v0, p0, v5, v6}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 266
    .local v0, adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    iget-object v5, p0, Lcom/pizza/work/SaleActivity;->spprod:Landroid/widget/Spinner;

    invoke-virtual {v5, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 272
    .end local v0           #adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    .end local v1           #count:I
    .end local v2           #i:I
    :goto_1
    return-void

    .line 254
    .restart local v1       #count:I
    .restart local v2       #i:I
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "product"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    .line 256
    iget-object v5, p0, Lcom/pizza/work/SaleActivity;->productVector:Ljava/util/Vector;

    const-string v6, "name"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 257
    iget-object v5, p0, Lcom/pizza/work/SaleActivity;->dateVector:Ljava/util/Vector;

    const-string v6, "date"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 249
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 269
    .end local v1           #count:I
    .end local v2           #i:I
    :catch_0
    move-exception v5

    goto :goto_1
.end method

.method public onBackPressed()V
    .locals 3

    .prologue
    .line 559
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    .line 560
    invoke-virtual {p0}, Lcom/pizza/work/SaleActivity;->finish()V

    .line 562
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/pizza/work/SaleActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/pizza/work/MenuActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 563
    .local v0, i:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/pizza/work/SaleActivity;->startActivity(Landroid/content/Intent;)V

    .line 565
    return-void
.end method

.method public onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .locals 0
    .parameter "arg0"
    .parameter "checkedId"

    .prologue
    .line 572
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0
    .parameter "arg0"

    .prologue
    .line 577
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 550
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 553
    new-instance v0, Lcom/pizza/work/SaleActivity$LoadViewTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/pizza/work/SaleActivity$LoadViewTask;-><init>(Lcom/pizza/work/SaleActivity;Lcom/pizza/work/SaleActivity$LoadViewTask;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/pizza/work/SaleActivity$LoadViewTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 555
    return-void
.end method

.method public saleViewFill(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 12
    .parameter "prodname"
    .parameter "abctype"
    .parameter "no"
    .parameter "quantity"
    .parameter "itemprice"
    .parameter "totalPrice"

    .prologue
    .line 302
    const-string v11, ""

    .line 303
    .local v11, typeno123:Ljava/lang/String;
    const-string v7, "10"

    .line 305
    .local v7, adminprice:Ljava/lang/String;
    iget v8, p0, Lcom/pizza/work/SaleActivity;->abclength:I

    .line 309
    .local v8, l:I
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    .line 310
    .local v9, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    .line 312
    .local v10, savemap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v2, 0x4

    new-array v5, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "pname"

    aput-object v3, v5, v2

    const/4 v2, 0x1

    const-string v3, "abc"

    aput-object v3, v5, v2

    const/4 v2, 0x2

    const-string v3, "qty"

    aput-object v3, v5, v2

    const/4 v2, 0x3

    const-string v3, "total"

    aput-object v3, v5, v2

    .line 314
    .local v5, from:[Ljava/lang/String;
    const-string v2, "pname"

    invoke-virtual {v9, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 317
    const-string v2, "abc"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 318
    const-string v2, "qty"

    move-object/from16 v0, p4

    invoke-virtual {v9, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 319
    const-string v2, "total"

    move-object/from16 v0, p6

    invoke-virtual {v9, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 323
    iget-object v2, p0, Lcom/pizza/work/SaleActivity;->fillMaps:Ljava/util/List;

    invoke-interface {v2, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 327
    new-instance v1, Landroid/widget/SimpleAdapter;

    iget-object v3, p0, Lcom/pizza/work/SaleActivity;->fillMaps:Ljava/util/List;

    const v4, 0x7f030006

    iget-object v6, p0, Lcom/pizza/work/SaleActivity;->to:[I

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Landroid/widget/SimpleAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[I)V

    .line 329
    .local v1, adapter:Landroid/widget/SimpleAdapter;
    iget-object v2, p0, Lcom/pizza/work/SaleActivity;->lv:Landroid/widget/ListView;

    invoke-virtual {v2, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 331
    return-void
.end method

.method public save()V
    .locals 15

    .prologue
    .line 337
    sget-object v0, Lcom/pizza/work/library/UserFunctions;->usercode:Ljava/lang/String;

    .line 339
    .local v0, agent:Ljava/lang/String;
    iget-object v13, p0, Lcom/pizza/work/SaleActivity;->partytext:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v13}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v13

    invoke-interface {v13}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v9

    .line 341
    .local v9, party:Ljava/lang/String;
    if-eqz v0, :cond_3

    .line 343
    const/4 v12, 0x0

    .line 345
    .local v12, totamount:F
    const-wide/16 v13, 0x0

    iput-wide v13, p0, Lcom/pizza/work/SaleActivity;->subtotal:D

    .line 346
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7}, Lorg/json/JSONObject;-><init>()V

    .line 347
    .local v7, jsonsave:Lorg/json/JSONObject;
    new-instance v5, Lorg/json/JSONArray;

    invoke-direct {v5}, Lorg/json/JSONArray;-><init>()V

    .line 348
    .local v5, jarray:Lorg/json/JSONArray;
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 355
    .local v3, hm:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :try_start_0
    iget-object v13, p0, Lcom/pizza/work/SaleActivity;->userFunction:Lcom/pizza/work/library/UserFunctions;

    invoke-virtual {v13, v9}, Lcom/pizza/work/library/UserFunctions;->saveSale(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    .line 357
    .local v6, json:Lorg/json/JSONObject;
    const-string v13, "success"

    invoke-virtual {v6, v13}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    .line 358
    .local v11, salesuccess:I
    const-string v13, "total_amount"

    invoke-virtual {v6, v13}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v10

    .line 359
    .local v10, saleamount:F
    const-string v8, ""

    .line 361
    .local v8, message:Ljava/lang/String;
    if-nez v11, :cond_0

    .line 364
    const-string v8, "All products are time out"

    .line 367
    :cond_0
    const/4 v13, 0x1

    if-ne v11, v13, :cond_1

    .line 370
    const-string v8, "Total Amount : "

    .line 372
    :cond_1
    const/4 v13, 0x2

    if-ne v11, v13, :cond_2

    .line 375
    const-string v8, "Some product are time out!!!!  Sale Amount: "

    .line 379
    :cond_2
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 380
    iget-object v13, p0, Lcom/pizza/work/SaleActivity;->tprice:Landroid/widget/TextView;

    const-string v14, ""

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 381
    iget-object v13, p0, Lcom/pizza/work/SaleActivity;->fillMaps:Ljava/util/List;

    invoke-interface {v13}, Ljava/util/List;->clear()V

    .line 383
    iget-object v13, p0, Lcom/pizza/work/SaleActivity;->saveList:Ljava/util/List;

    invoke-interface {v13}, Ljava/util/List;->clear()V

    .line 385
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 388
    .local v1, alertbox:Landroid/app/AlertDialog$Builder;
    invoke-virtual {v1, v8}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 391
    const-string v13, "Ok"

    new-instance v14, Lcom/pizza/work/SaleActivity$1;

    invoke-direct {v14, p0}, Lcom/pizza/work/SaleActivity$1;-><init>(Lcom/pizza/work/SaleActivity;)V

    invoke-virtual {v1, v13, v14}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 401
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 441
    .end local v1           #alertbox:Landroid/app/AlertDialog$Builder;
    .end local v3           #hm:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v5           #jarray:Lorg/json/JSONArray;
    .end local v6           #json:Lorg/json/JSONObject;
    .end local v7           #jsonsave:Lorg/json/JSONObject;
    .end local v8           #message:Ljava/lang/String;
    .end local v10           #saleamount:F
    .end local v11           #salesuccess:I
    .end local v12           #totamount:F
    :goto_0
    return-void

    .line 407
    .restart local v3       #hm:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v5       #jarray:Lorg/json/JSONArray;
    .restart local v7       #jsonsave:Lorg/json/JSONObject;
    .restart local v12       #totamount:F
    :catch_0
    move-exception v2

    .line 410
    .local v2, e:Ljava/lang/Exception;
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 413
    .restart local v1       #alertbox:Landroid/app/AlertDialog$Builder;
    const-string v13, "Sorry!!! Can\'t Sale...Server Error"

    invoke-virtual {v1, v13}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 414
    iget-object v13, p0, Lcom/pizza/work/SaleActivity;->save:Landroid/widget/Button;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/widget/Button;->setVisibility(I)V

    .line 417
    const-string v13, "Ok"

    new-instance v14, Lcom/pizza/work/SaleActivity$2;

    invoke-direct {v14, p0}, Lcom/pizza/work/SaleActivity$2;-><init>(Lcom/pizza/work/SaleActivity;)V

    invoke-virtual {v1, v13, v14}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 427
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0

    .line 434
    .end local v1           #alertbox:Landroid/app/AlertDialog$Builder;
    .end local v2           #e:Ljava/lang/Exception;
    .end local v3           #hm:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v5           #jarray:Lorg/json/JSONArray;
    .end local v7           #jsonsave:Lorg/json/JSONObject;
    .end local v12           #totamount:F
    :cond_3
    invoke-virtual {p0}, Lcom/pizza/work/SaleActivity;->finish()V

    .line 436
    new-instance v4, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/pizza/work/SaleActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v13

    const-class v14, Lcom/pizza/work/LoginActivity;

    invoke-direct {v4, v13, v14}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 437
    .local v4, i:Landroid/content/Intent;
    invoke-virtual {p0, v4}, Lcom/pizza/work/SaleActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method
