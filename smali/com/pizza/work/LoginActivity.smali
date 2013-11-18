.class public Lcom/pizza/work/LoginActivity;
.super Landroid/app/Activity;
.source "LoginActivity.java"


# static fields
.field private static KEY_CREATED_AT:Ljava/lang/String;

.field private static KEY_EMAIL:Ljava/lang/String;

.field private static KEY_ERROR:Ljava/lang/String;

.field private static KEY_ERROR_MSG:Ljava/lang/String;

.field private static KEY_NAME:Ljava/lang/String;

.field private static KEY_SUCCESS:Ljava/lang/String;

.field private static KEY_UID:Ljava/lang/String;


# instance fields
.field adminpricemap:Ljava/util/HashMap;
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

.field btnLinkToRegister:Landroid/widget/Button;

.field btnLogin:Landroid/widget/Button;

.field inputEmail:Landroid/widget/EditText;

.field inputPassword:Landroid/widget/EditText;

.field inputuid:Landroid/widget/EditText;

.field json:Lorg/json/JSONObject;

.field ledger:Landroid/widget/Button;

.field loginErrorMsg:Landroid/widget/TextView;

.field report:Landroid/widget/Button;

.field sale:Landroid/widget/Button;

.field userFunction:Lcom/pizza/work/library/UserFunctions;

.field winners:Landroid/widget/Button;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 48
    const-string v0, "success"

    sput-object v0, Lcom/pizza/work/LoginActivity;->KEY_SUCCESS:Ljava/lang/String;

    .line 49
    const-string v0, "error"

    sput-object v0, Lcom/pizza/work/LoginActivity;->KEY_ERROR:Ljava/lang/String;

    .line 50
    const-string v0, "error_msg"

    sput-object v0, Lcom/pizza/work/LoginActivity;->KEY_ERROR_MSG:Ljava/lang/String;

    .line 51
    const-string v0, "uid"

    sput-object v0, Lcom/pizza/work/LoginActivity;->KEY_UID:Ljava/lang/String;

    .line 52
    const-string v0, "name"

    sput-object v0, Lcom/pizza/work/LoginActivity;->KEY_NAME:Ljava/lang/String;

    .line 53
    const-string v0, "email"

    sput-object v0, Lcom/pizza/work/LoginActivity;->KEY_EMAIL:Ljava/lang/String;

    .line 54
    const-string v0, "created_at"

    sput-object v0, Lcom/pizza/work/LoginActivity;->KEY_CREATED_AT:Ljava/lang/String;

    .line 32
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 44
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/pizza/work/LoginActivity;->adminpricemap:Ljava/util/HashMap;

    .line 55
    new-instance v0, Lcom/pizza/work/library/UserFunctions;

    invoke-direct {v0}, Lcom/pizza/work/library/UserFunctions;-><init>()V

    iput-object v0, p0, Lcom/pizza/work/LoginActivity;->userFunction:Lcom/pizza/work/library/UserFunctions;

    .line 57
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pizza/work/LoginActivity;->json:Lorg/json/JSONObject;

    .line 32
    return-void
.end method

.method static synthetic access$0()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    sget-object v0, Lcom/pizza/work/LoginActivity;->KEY_SUCCESS:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 63
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 64
    const v0, 0x7f030001

    invoke-virtual {p0, v0}, Lcom/pizza/work/LoginActivity;->setContentView(I)V

    .line 66
    const v0, 0x7f080002

    invoke-virtual {p0, v0}, Lcom/pizza/work/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/pizza/work/LoginActivity;->inputuid:Landroid/widget/EditText;

    .line 67
    const v0, 0x7f080004

    invoke-virtual {p0, v0}, Lcom/pizza/work/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/pizza/work/LoginActivity;->inputPassword:Landroid/widget/EditText;

    .line 68
    const v0, 0x7f080005

    invoke-virtual {p0, v0}, Lcom/pizza/work/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/pizza/work/LoginActivity;->btnLogin:Landroid/widget/Button;

    .line 72
    iget-object v0, p0, Lcom/pizza/work/LoginActivity;->btnLogin:Landroid/widget/Button;

    new-instance v1, Lcom/pizza/work/LoginActivity$1;

    invoke-direct {v1, p0}, Lcom/pizza/work/LoginActivity$1;-><init>(Lcom/pizza/work/LoginActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 208
    return-void
.end method
