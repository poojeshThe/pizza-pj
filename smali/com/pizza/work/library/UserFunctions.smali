.class public Lcom/pizza/work/library/UserFunctions;
.super Ljava/lang/Object;
.source "UserFunctions.java"


# static fields
.field public static adminpriceList:Lorg/json/JSONObject;

.field private static amountUrl:Ljava/lang/String;

.field private static catagoryUrl:Ljava/lang/String;

.field private static changepassUrl:Ljava/lang/String;

.field private static conditionUrl:Ljava/lang/String;

.field public static credit:D

.field private static customerUrl:Ljava/lang/String;

.field private static dateUrl:Ljava/lang/String;

.field private static deleteTempUrl:Ljava/lang/String;

.field private static dummy:Ljava/lang/String;

.field private static imeUrl:Ljava/lang/String;

.field private static login_tag:Ljava/lang/String;

.field private static partyURL:Ljava/lang/String;

.field private static personalledgerUrl:Ljava/lang/String;

.field private static productURL:Ljava/lang/String;

.field private static productdetaillUrl:Ljava/lang/String;

.field private static register_tag:Ljava/lang/String;

.field private static resultUrl:Ljava/lang/String;

.field private static resultproductUrl:Ljava/lang/String;

.field private static salepartyURL:Ljava/lang/String;

.field private static salereportDetailUrl:Ljava/lang/String;

.field private static salesaveUrl:Ljava/lang/String;

.field private static salesaveUrltest:Ljava/lang/String;

.field private static saletypeURL:Ljava/lang/String;

.field private static subagentURL:Ljava/lang/String;

.field public static usercode:Ljava/lang/String;

.field private static winUrl:Ljava/lang/String;


# instance fields
.field private jsonParser:Lcom/pizza/work/library/JSONParser;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    sput-object v0, Lcom/pizza/work/library/UserFunctions;->adminpriceList:Lorg/json/JSONObject;

    .line 35
    const-string v0, ""

    sput-object v0, Lcom/pizza/work/library/UserFunctions;->dummy:Ljava/lang/String;

    .line 37
    const-string v0, "get_date.php"

    sput-object v0, Lcom/pizza/work/library/UserFunctions;->dateUrl:Ljava/lang/String;

    .line 38
    const-string v0, "getimecode.php"

    sput-object v0, Lcom/pizza/work/library/UserFunctions;->imeUrl:Ljava/lang/String;

    .line 44
    const-string v0, "agent_sub.php"

    sput-object v0, Lcom/pizza/work/library/UserFunctions;->subagentURL:Ljava/lang/String;

    .line 45
    const-string v0, "agent_party.php"

    sput-object v0, Lcom/pizza/work/library/UserFunctions;->partyURL:Ljava/lang/String;

    .line 46
    const-string v0, "saleparty.php"

    sput-object v0, Lcom/pizza/work/library/UserFunctions;->salepartyURL:Ljava/lang/String;

    .line 47
    const-string v0, "agent_product_test.php"

    sput-object v0, Lcom/pizza/work/library/UserFunctions;->productURL:Ljava/lang/String;

    .line 48
    const-string v0, "getSaleType_andr.php"

    sput-object v0, Lcom/pizza/work/library/UserFunctions;->saletypeURL:Ljava/lang/String;

    .line 51
    const-string v0, "sale_save.php"

    sput-object v0, Lcom/pizza/work/library/UserFunctions;->salesaveUrl:Ljava/lang/String;

    .line 52
    const-string v0, "set_file.php"

    sput-object v0, Lcom/pizza/work/library/UserFunctions;->salesaveUrltest:Ljava/lang/String;

    .line 53
    const-string v0, "sale_del.php"

    sput-object v0, Lcom/pizza/work/library/UserFunctions;->deleteTempUrl:Ljava/lang/String;

    .line 57
    const-string v0, "sale.php"

    sput-object v0, Lcom/pizza/work/library/UserFunctions;->conditionUrl:Ljava/lang/String;

    .line 60
    const-string v0, "ledgercust_andr.php"

    sput-object v0, Lcom/pizza/work/library/UserFunctions;->personalledgerUrl:Ljava/lang/String;

    .line 64
    const-string v0, "salereportamountwise_andr.php"

    sput-object v0, Lcom/pizza/work/library/UserFunctions;->amountUrl:Ljava/lang/String;

    .line 69
    const-string v0, "saleDetailCust_anrd.php"

    sput-object v0, Lcom/pizza/work/library/UserFunctions;->salereportDetailUrl:Ljava/lang/String;

    .line 71
    const-string v0, "get_product_detail.php"

    sput-object v0, Lcom/pizza/work/library/UserFunctions;->productdetaillUrl:Ljava/lang/String;

    .line 74
    const-string v0, "viewresult_andr.php"

    sput-object v0, Lcom/pizza/work/library/UserFunctions;->resultUrl:Ljava/lang/String;

    .line 75
    const-string v0, "resultproduct_andr.php"

    sput-object v0, Lcom/pizza/work/library/UserFunctions;->resultproductUrl:Ljava/lang/String;

    .line 79
    const-string v0, "viewresultdetail_andr.php"

    sput-object v0, Lcom/pizza/work/library/UserFunctions;->winUrl:Ljava/lang/String;

    .line 81
    const-string v0, "getProductCategory_andr.php"

    sput-object v0, Lcom/pizza/work/library/UserFunctions;->catagoryUrl:Ljava/lang/String;

    .line 82
    const-string v0, "changepass_andr.php"

    sput-object v0, Lcom/pizza/work/library/UserFunctions;->changepassUrl:Ljava/lang/String;

    .line 83
    const-string v0, "soldCust_andr.php"

    sput-object v0, Lcom/pizza/work/library/UserFunctions;->customerUrl:Ljava/lang/String;

    .line 86
    const-string v0, "register"

    sput-object v0, Lcom/pizza/work/library/UserFunctions;->register_tag:Ljava/lang/String;

    .line 87
    const-string v0, "login"

    sput-object v0, Lcom/pizza/work/library/UserFunctions;->login_tag:Ljava/lang/String;

    .line 26
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    new-instance v0, Lcom/pizza/work/library/JSONParser;

    invoke-direct {v0}, Lcom/pizza/work/library/JSONParser;-><init>()V

    iput-object v0, p0, Lcom/pizza/work/library/UserFunctions;->jsonParser:Lcom/pizza/work/library/JSONParser;

    .line 93
    return-void
.end method


# virtual methods
.method public changePass(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 5
    .parameter "password"

    .prologue
    .line 143
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 144
    .local v1, params:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "username"

    sget-object v4, Lcom/pizza/work/library/UserFunctions;->usercode:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 145
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "password"

    invoke-direct {v2, v3, p1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 148
    iget-object v2, p0, Lcom/pizza/work/library/UserFunctions;->jsonParser:Lcom/pizza/work/library/JSONParser;

    new-instance v3, Ljava/lang/StringBuilder;

    sget-object v4, Lcom/pizza/work/library/UserFunctions;->dummy:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v4, Lcom/pizza/work/library/UserFunctions;->changepassUrl:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Lcom/pizza/work/library/JSONParser;->getJSONFromUrl(Ljava/lang/String;Ljava/util/List;)Lorg/json/JSONObject;

    move-result-object v0

    .line 151
    .local v0, json:Lorg/json/JSONObject;
    return-object v0
.end method

.method public deleteTemp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 5
    .parameter "pname"
    .parameter "qnty"
    .parameter "typeno"

    .prologue
    .line 271
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 272
    .local v0, jsonobject:Lorg/json/JSONObject;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 273
    .local v1, params:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "agent"

    sget-object v4, Lcom/pizza/work/library/UserFunctions;->usercode:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 274
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "pname"

    invoke-direct {v2, v3, p1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 275
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "qnty"

    invoke-direct {v2, v3, p2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 276
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "typeno"

    invoke-direct {v2, v3, p3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 278
    iget-object v2, p0, Lcom/pizza/work/library/UserFunctions;->jsonParser:Lcom/pizza/work/library/JSONParser;

    new-instance v3, Ljava/lang/StringBuilder;

    sget-object v4, Lcom/pizza/work/library/UserFunctions;->dummy:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v4, Lcom/pizza/work/library/UserFunctions;->deleteTempUrl:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Lcom/pizza/work/library/JSONParser;->getJSONFromUrl(Ljava/lang/String;Ljava/util/List;)Lorg/json/JSONObject;

    move-result-object v0

    .line 282
    return-object v0
.end method

.method public getCatagory(Ljava/lang/String;)Lorg/json/JSONArray;
    .locals 5
    .parameter "date"

    .prologue
    .line 416
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 418
    .local v1, params:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "date"

    invoke-direct {v2, v3, p1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 419
    iget-object v2, p0, Lcom/pizza/work/library/UserFunctions;->jsonParser:Lcom/pizza/work/library/JSONParser;

    new-instance v3, Ljava/lang/StringBuilder;

    sget-object v4, Lcom/pizza/work/library/UserFunctions;->dummy:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v4, Lcom/pizza/work/library/UserFunctions;->catagoryUrl:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Lcom/pizza/work/library/JSONParser;->getJSONArrayFromUrl(Ljava/lang/String;Ljava/util/List;)Lorg/json/JSONArray;

    move-result-object v0

    .line 422
    .local v0, json:Lorg/json/JSONArray;
    return-object v0
.end method

.method public getCustomer(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 5
    .parameter "date"

    .prologue
    .line 430
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 431
    .local v1, params:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "agent"

    sget-object v4, Lcom/pizza/work/library/UserFunctions;->usercode:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 432
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "date"

    invoke-direct {v2, v3, p1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 434
    iget-object v2, p0, Lcom/pizza/work/library/UserFunctions;->jsonParser:Lcom/pizza/work/library/JSONParser;

    new-instance v3, Ljava/lang/StringBuilder;

    sget-object v4, Lcom/pizza/work/library/UserFunctions;->dummy:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v4, Lcom/pizza/work/library/UserFunctions;->customerUrl:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Lcom/pizza/work/library/JSONParser;->getJSONFromUrl(Ljava/lang/String;Ljava/util/List;)Lorg/json/JSONObject;

    move-result-object v0

    .line 437
    .local v0, json:Lorg/json/JSONObject;
    return-object v0
.end method

.method public getDate()Ljava/lang/String;
    .locals 5

    .prologue
    .line 173
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 177
    .local v1, params:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    iget-object v2, p0, Lcom/pizza/work/library/UserFunctions;->jsonParser:Lcom/pizza/work/library/JSONParser;

    new-instance v3, Ljava/lang/StringBuilder;

    sget-object v4, Lcom/pizza/work/library/UserFunctions;->dummy:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v4, Lcom/pizza/work/library/UserFunctions;->dateUrl:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Lcom/pizza/work/library/JSONParser;->getStringFromUrl(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    .line 180
    .local v0, date:Ljava/lang/String;
    return-object v0
.end method

.method public getDummy()V
    .locals 6

    .prologue
    .line 98
    const-string v3, ""

    sput-object v3, Lcom/pizza/work/library/UserFunctions;->dummy:Ljava/lang/String;

    .line 99
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 100
    .local v1, params:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "tag"

    const-string v5, "welcome"

    invoke-direct {v3, v4, v5}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 102
    iget-object v3, p0, Lcom/pizza/work/library/UserFunctions;->jsonParser:Lcom/pizza/work/library/JSONParser;

    const-string v4, "http://113.30.141.95/"

    invoke-virtual {v3, v4, v1}, Lcom/pizza/work/library/JSONParser;->getJSONFromUrl(Ljava/lang/String;Ljava/util/List;)Lorg/json/JSONObject;

    move-result-object v0

    .line 106
    .local v0, json:Lorg/json/JSONObject;
    :try_start_0
    const-string v3, "success"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 109
    const-string v3, "success"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 110
    .local v2, res:Ljava/lang/String;
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 111
    const-string v3, "http://"

    sput-object v3, Lcom/pizza/work/library/UserFunctions;->dummy:Ljava/lang/String;

    .line 112
    new-instance v3, Ljava/lang/StringBuilder;

    sget-object v4, Lcom/pizza/work/library/UserFunctions;->dummy:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "service"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/pizza/work/library/UserFunctions;->dummy:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 118
    .end local v2           #res:Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 117
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method public getProductDetail(Ljava/lang/String;)Lorg/json/JSONArray;
    .locals 5
    .parameter "date"

    .prologue
    .line 505
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 507
    .local v1, params:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "date"

    invoke-direct {v2, v3, p1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 508
    iget-object v2, p0, Lcom/pizza/work/library/UserFunctions;->jsonParser:Lcom/pizza/work/library/JSONParser;

    new-instance v3, Ljava/lang/StringBuilder;

    sget-object v4, Lcom/pizza/work/library/UserFunctions;->dummy:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v4, Lcom/pizza/work/library/UserFunctions;->productdetaillUrl:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Lcom/pizza/work/library/JSONParser;->getJSONArrayFromUrl(Ljava/lang/String;Ljava/util/List;)Lorg/json/JSONArray;

    move-result-object v0

    .line 511
    .local v0, json:Lorg/json/JSONArray;
    return-object v0
.end method

.method public getSaleType(Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 5
    .parameter "date"
    .parameter "name"

    .prologue
    .line 560
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 562
    .local v1, params:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "date"

    invoke-direct {v2, v3, p1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 563
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "product"

    invoke-direct {v2, v3, p2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 568
    iget-object v2, p0, Lcom/pizza/work/library/UserFunctions;->jsonParser:Lcom/pizza/work/library/JSONParser;

    new-instance v3, Ljava/lang/StringBuilder;

    sget-object v4, Lcom/pizza/work/library/UserFunctions;->dummy:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v4, Lcom/pizza/work/library/UserFunctions;->saletypeURL:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Lcom/pizza/work/library/JSONParser;->getJSONFromUrl(Ljava/lang/String;Ljava/util/List;)Lorg/json/JSONObject;

    move-result-object v0

    .line 570
    .local v0, json:Lorg/json/JSONObject;
    return-object v0
.end method

.method public getType(Ljava/lang/String;Ljava/lang/String;)Lcom/pizza/work/library/Product;
    .locals 18
    .parameter "date"
    .parameter "name"

    .prologue
    .line 697
    const/16 v16, 0x0

    .line 698
    .local v16, typecount:I
    const/4 v7, 0x0

    .line 699
    .local v7, typestatus1:Z
    const/4 v8, 0x0

    .line 700
    .local v8, typestatus2:Z
    const/4 v9, 0x0

    .line 705
    .local v9, typestatus3:Z
    new-instance v13, Lcom/pizza/work/library/Product;

    invoke-direct {v13}, Lcom/pizza/work/library/Product;-><init>()V

    .line 708
    .local v13, p:Lcom/pizza/work/library/Product;
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 709
    .local v4, type1:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 710
    .local v5, type2:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 716
    .local v6, type3:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v7, 0x0

    .line 717
    const/4 v8, 0x0

    .line 718
    const/4 v9, 0x0

    .line 719
    :try_start_0
    const-string v2, "-1"

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 720
    const-string v2, "-1"

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 721
    const-string v2, "-1"

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 723
    invoke-virtual/range {p0 .. p2}, Lcom/pizza/work/library/UserFunctions;->getSaleType(Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v17

    .line 725
    .local v17, typejson:Lorg/json/JSONObject;
    const-string v2, "typeCount"

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v16

    .line 726
    if-lez v16, :cond_0

    .line 728
    const/4 v10, 0x1

    .local v10, i:I
    :goto_0
    move/from16 v0, v16

    if-le v10, v0, :cond_1

    .line 791
    .end local v10           #i:I
    :cond_0
    new-instance v1, Lcom/pizza/work/library/Product;

    move-object/from16 v2, p2

    move-object/from16 v3, p1

    invoke-direct/range {v1 .. v9}, Lcom/pizza/work/library/Product;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;ZZZ)V

    .line 795
    .end local v13           #p:Lcom/pizza/work/library/Product;
    .end local v17           #typejson:Lorg/json/JSONObject;
    .local v1, p:Lcom/pizza/work/library/Product;
    :goto_1
    return-object v1

    .line 731
    .end local v1           #p:Lcom/pizza/work/library/Product;
    .restart local v10       #i:I
    .restart local v13       #p:Lcom/pizza/work/library/Product;
    .restart local v17       #typejson:Lorg/json/JSONObject;
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "type"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v12

    .line 733
    .local v12, json:Lorg/json/JSONObject;
    const-string v2, "name"

    invoke-virtual {v12, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 734
    .local v15, tname:Ljava/lang/String;
    const-string v2, "serial_count"

    invoke-virtual {v12, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    .line 735
    .local v14, serialCount:I
    const-string v2, "1"

    invoke-virtual {v15, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 738
    const/4 v7, 0x1

    .line 740
    if-lez v14, :cond_6

    .line 741
    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 742
    const/4 v11, 0x1

    .local v11, j:I
    :goto_2
    if-le v11, v14, :cond_5

    .line 751
    .end local v11           #j:I
    :cond_2
    :goto_3
    const-string v2, "2"

    invoke-virtual {v15, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 754
    const/4 v8, 0x1

    .line 755
    if-lez v14, :cond_8

    .line 757
    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 758
    const/4 v11, 0x1

    .restart local v11       #j:I
    :goto_4
    if-le v11, v14, :cond_7

    .line 768
    .end local v11           #j:I
    :cond_3
    :goto_5
    const-string v2, "3"

    invoke-virtual {v15, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 771
    const/4 v9, 0x1

    .line 773
    if-lez v14, :cond_a

    .line 775
    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 776
    const/4 v11, 0x1

    .restart local v11       #j:I
    :goto_6
    if-le v11, v14, :cond_9

    .line 728
    .end local v11           #j:I
    :cond_4
    :goto_7
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 744
    .restart local v11       #j:I
    :cond_5
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "serial"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v12, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 742
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    .line 749
    .end local v11           #j:I
    :cond_6
    const-string v2, "-1"

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 794
    .end local v10           #i:I
    .end local v12           #json:Lorg/json/JSONObject;
    .end local v14           #serialCount:I
    .end local v15           #tname:Ljava/lang/String;
    .end local v17           #typejson:Lorg/json/JSONObject;
    :catch_0
    move-exception v2

    move-object v1, v13

    .end local v13           #p:Lcom/pizza/work/library/Product;
    .restart local v1       #p:Lcom/pizza/work/library/Product;
    goto :goto_1

    .line 760
    .end local v1           #p:Lcom/pizza/work/library/Product;
    .restart local v10       #i:I
    .restart local v11       #j:I
    .restart local v12       #json:Lorg/json/JSONObject;
    .restart local v13       #p:Lcom/pizza/work/library/Product;
    .restart local v14       #serialCount:I
    .restart local v15       #tname:Ljava/lang/String;
    .restart local v17       #typejson:Lorg/json/JSONObject;
    :cond_7
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "serial"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v12, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 758
    add-int/lit8 v11, v11, 0x1

    goto :goto_4

    .line 765
    .end local v11           #j:I
    :cond_8
    const-string v2, "-1"

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 778
    .restart local v11       #j:I
    :cond_9
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "serial"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v12, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 776
    add-int/lit8 v11, v11, 0x1

    goto :goto_6

    .line 784
    .end local v11           #j:I
    :cond_a
    const-string v2, "-1"

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_7
.end method

.method public getresultProductDetail(Ljava/lang/String;)Lorg/json/JSONArray;
    .locals 5
    .parameter "date"

    .prologue
    .line 401
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 403
    .local v1, params:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "date"

    invoke-direct {v2, v3, p1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 404
    iget-object v2, p0, Lcom/pizza/work/library/UserFunctions;->jsonParser:Lcom/pizza/work/library/JSONParser;

    new-instance v3, Ljava/lang/StringBuilder;

    sget-object v4, Lcom/pizza/work/library/UserFunctions;->dummy:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v4, Lcom/pizza/work/library/UserFunctions;->resultproductUrl:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Lcom/pizza/work/library/JSONParser;->getJSONArrayFromUrl(Ljava/lang/String;Ljava/util/List;)Lorg/json/JSONArray;

    move-result-object v0

    .line 407
    .local v0, json:Lorg/json/JSONArray;
    return-object v0
.end method

.method public imeUser(Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 5
    .parameter "ime"
    .parameter "password"

    .prologue
    .line 125
    invoke-virtual {p0}, Lcom/pizza/work/library/UserFunctions;->getDummy()V

    .line 128
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 129
    .local v1, params:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "uname"

    invoke-direct {v2, v3, p1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 130
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "password"

    invoke-direct {v2, v3, p2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 132
    iget-object v2, p0, Lcom/pizza/work/library/UserFunctions;->jsonParser:Lcom/pizza/work/library/JSONParser;

    new-instance v3, Ljava/lang/StringBuilder;

    sget-object v4, Lcom/pizza/work/library/UserFunctions;->dummy:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v4, Lcom/pizza/work/library/UserFunctions;->imeUrl:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Lcom/pizza/work/library/JSONParser;->getJSONFromUrl(Ljava/lang/String;Ljava/util/List;)Lorg/json/JSONObject;

    move-result-object v0

    .line 135
    .local v0, json:Lorg/json/JSONObject;
    return-object v0
.end method

.method public isUserLoggedIn(Landroid/content/Context;)Z
    .locals 3
    .parameter "context"

    .prologue
    .line 646
    new-instance v1, Lcom/pizza/work/library/DatabaseHandler;

    invoke-direct {v1, p1}, Lcom/pizza/work/library/DatabaseHandler;-><init>(Landroid/content/Context;)V

    .line 647
    .local v1, db:Lcom/pizza/work/library/DatabaseHandler;
    invoke-virtual {v1}, Lcom/pizza/work/library/DatabaseHandler;->getRowCount()I

    move-result v0

    .line 648
    .local v0, count:I
    if-lez v0, :cond_0

    .line 650
    const/4 v2, 0x1

    .line 652
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public loginUser(Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 5
    .parameter "email"
    .parameter "password"

    .prologue
    .line 161
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 162
    .local v1, params:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "tag"

    sget-object v4, Lcom/pizza/work/library/UserFunctions;->login_tag:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 163
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "email"

    invoke-direct {v2, v3, p1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 164
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "password"

    invoke-direct {v2, v3, p2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 165
    iget-object v2, p0, Lcom/pizza/work/library/UserFunctions;->jsonParser:Lcom/pizza/work/library/JSONParser;

    sget-object v3, Lcom/pizza/work/library/UserFunctions;->dummy:Ljava/lang/String;

    invoke-virtual {v2, v3, v1}, Lcom/pizza/work/library/JSONParser;->getJSONFromUrl(Ljava/lang/String;Ljava/util/List;)Lorg/json/JSONObject;

    move-result-object v0

    .line 168
    .local v0, json:Lorg/json/JSONObject;
    return-object v0
.end method

.method public logoutUser(Landroid/content/Context;)Z
    .locals 2
    .parameter "context"

    .prologue
    .line 660
    new-instance v0, Lcom/pizza/work/library/DatabaseHandler;

    invoke-direct {v0, p1}, Lcom/pizza/work/library/DatabaseHandler;-><init>(Landroid/content/Context;)V

    .line 661
    .local v0, db:Lcom/pizza/work/library/DatabaseHandler;
    invoke-virtual {v0}, Lcom/pizza/work/library/DatabaseHandler;->resetTables()V

    .line 662
    const/4 v1, 0x1

    return v1
.end method

.method public productDateSale(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)I
    .locals 6
    .parameter "product"
    .parameter "abctype"
    .parameter "from"
    .parameter "to"
    .parameter "select"
    .parameter "quantity"
    .parameter "itemprice"

    .prologue
    .line 349
    const/4 v0, 0x0

    .line 350
    .local v0, condition:I
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 351
    .local v2, params:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "agent"

    sget-object v5, Lcom/pizza/work/library/UserFunctions;->usercode:Ljava/lang/String;

    invoke-direct {v3, v4, v5}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 352
    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "product"

    invoke-direct {v3, v4, p1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 353
    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "serial"

    invoke-direct {v3, v4, p2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 354
    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "from"

    invoke-direct {v3, v4, p3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 355
    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "to"

    invoke-direct {v3, v4, p4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 356
    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "type"

    invoke-static {p5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 357
    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "quantity"

    invoke-direct {v3, v4, p6}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 358
    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "price"

    invoke-direct {v3, v4, p7}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 362
    iget-object v3, p0, Lcom/pizza/work/library/UserFunctions;->jsonParser:Lcom/pizza/work/library/JSONParser;

    new-instance v4, Ljava/lang/StringBuilder;

    sget-object v5, Lcom/pizza/work/library/UserFunctions;->dummy:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v5, Lcom/pizza/work/library/UserFunctions;->conditionUrl:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Lcom/pizza/work/library/JSONParser;->getJSONFromUrl(Ljava/lang/String;Ljava/util/List;)Lorg/json/JSONObject;

    move-result-object v1

    .line 366
    .local v1, json:Lorg/json/JSONObject;
    :try_start_0
    const-string v3, "condition"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 369
    :goto_0
    return v0

    .line 368
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method public registerUser(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 5
    .parameter "name"
    .parameter "email"
    .parameter "password"

    .prologue
    .line 585
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 586
    .local v1, params:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "tag"

    sget-object v4, Lcom/pizza/work/library/UserFunctions;->register_tag:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 587
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "name"

    invoke-direct {v2, v3, p1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 588
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "email"

    invoke-direct {v2, v3, p2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 589
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "password"

    invoke-direct {v2, v3, p3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 592
    iget-object v2, p0, Lcom/pizza/work/library/UserFunctions;->jsonParser:Lcom/pizza/work/library/JSONParser;

    sget-object v3, Lcom/pizza/work/library/UserFunctions;->dummy:Ljava/lang/String;

    invoke-virtual {v2, v3, v1}, Lcom/pizza/work/library/JSONParser;->getJSONFromUrl(Ljava/lang/String;Ljava/util/List;)Lorg/json/JSONObject;

    move-result-object v0

    .line 594
    .local v0, json:Lorg/json/JSONObject;
    return-object v0
.end method

.method public resultsplit1(Ljava/lang/String;)[Ljava/lang/String;
    .locals 7
    .parameter "original"

    .prologue
    .line 666
    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    .line 667
    .local v2, nodes:Ljava/util/Vector;
    const-string v4, "<br>"

    .line 670
    .local v4, separator:Ljava/lang/String;
    invoke-virtual {p1, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 671
    .local v0, index:I
    :goto_0
    if-gez v0, :cond_1

    .line 677
    invoke-virtual {v2, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 680
    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v5

    new-array v3, v5, [Ljava/lang/String;

    .line 681
    .local v3, result:[Ljava/lang/String;
    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v5

    if-lez v5, :cond_0

    .line 682
    const/4 v1, 0x0

    .local v1, loop:I
    :goto_1
    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v5

    if-lt v1, v5, :cond_2

    .line 690
    .end local v1           #loop:I
    :cond_0
    return-object v3

    .line 672
    .end local v3           #result:[Ljava/lang/String;
    :cond_1
    const/4 v5, 0x0

    invoke-virtual {p1, v5, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 673
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v5, v0

    invoke-virtual {p1, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 674
    invoke-virtual {p1, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 684
    .restart local v1       #loop:I
    .restart local v3       #result:[Ljava/lang/String;
    :cond_2
    invoke-virtual {v2, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    aput-object v5, v3, v1

    .line 685
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    aget-object v6, v3, v1

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 682
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public saleProduct(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 5
    .parameter "date"

    .prologue
    .line 546
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 548
    .local v1, params:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "date"

    invoke-direct {v2, v3, p1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 549
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "agent"

    sget-object v4, Lcom/pizza/work/library/UserFunctions;->usercode:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 553
    iget-object v2, p0, Lcom/pizza/work/library/UserFunctions;->jsonParser:Lcom/pizza/work/library/JSONParser;

    new-instance v3, Ljava/lang/StringBuilder;

    sget-object v4, Lcom/pizza/work/library/UserFunctions;->dummy:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v4, Lcom/pizza/work/library/UserFunctions;->productURL:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Lcom/pizza/work/library/JSONParser;->getJSONFromUrl(Ljava/lang/String;Ljava/util/List;)Lorg/json/JSONObject;

    move-result-object v0

    .line 555
    .local v0, json:Lorg/json/JSONObject;
    return-object v0
.end method

.method public saveSale(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 5
    .parameter "partyName"

    .prologue
    .line 252
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 253
    .local v0, jsonobject:Lorg/json/JSONObject;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 255
    .local v1, params:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "customer"

    invoke-direct {v2, v3, p1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 256
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "agent"

    sget-object v4, Lcom/pizza/work/library/UserFunctions;->usercode:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 258
    iget-object v2, p0, Lcom/pizza/work/library/UserFunctions;->jsonParser:Lcom/pizza/work/library/JSONParser;

    new-instance v3, Ljava/lang/StringBuilder;

    sget-object v4, Lcom/pizza/work/library/UserFunctions;->dummy:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v4, Lcom/pizza/work/library/UserFunctions;->salesaveUrl:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Lcom/pizza/work/library/JSONParser;->InsertSaleUrl(Ljava/lang/String;Ljava/util/List;)Lorg/json/JSONObject;

    move-result-object v0

    .line 260
    return-object v0
.end method

.method public tempSale(ILjava/lang/String;ILjava/lang/String;IFF)Lorg/json/JSONObject;
    .locals 6
    .parameter "i"
    .parameter "pname"
    .parameter "type123"
    .parameter "abctype"
    .parameter "qty"
    .parameter "price"
    .parameter "tprice"

    .prologue
    .line 609
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 611
    .local v1, object:Lorg/json/JSONObject;
    :try_start_0
    const-string v2, "id"

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 612
    const-string v2, "productname"

    invoke-virtual {v1, v2, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 613
    const-string v2, "ptype"

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 614
    const-string v2, "abctype"

    invoke-virtual {v1, v2, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 615
    const-string v2, "qty"

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p5}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 616
    const-string v2, "price"

    new-instance v3, Ljava/lang/Double;

    float-to-double v4, p6

    invoke-direct {v3, v4, v5}, Ljava/lang/Double;-><init>(D)V

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 617
    const-string v2, "total"

    new-instance v3, Ljava/lang/Double;

    float-to-double v4, p6

    invoke-direct {v3, v4, v5}, Ljava/lang/Double;-><init>(D)V

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 623
    :goto_0
    return-object v1

    .line 620
    :catch_0
    move-exception v0

    .line 621
    .local v0, e:Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public viewAmountwisesale(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 6
    .parameter "startdate"
    .parameter "enddate"
    .parameter "catid"

    .prologue
    .line 520
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 521
    .local v0, json:Lorg/json/JSONObject;
    const-string v2, ""

    .line 523
    .local v2, s:Ljava/lang/String;
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 527
    .local v1, params:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "startdate"

    invoke-direct {v3, v4, p1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 528
    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "enddate"

    invoke-direct {v3, v4, p2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 529
    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "agent"

    sget-object v5, Lcom/pizza/work/library/UserFunctions;->usercode:Ljava/lang/String;

    invoke-direct {v3, v4, v5}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 531
    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "catid"

    invoke-direct {v3, v4, p3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 533
    iget-object v3, p0, Lcom/pizza/work/library/UserFunctions;->jsonParser:Lcom/pizza/work/library/JSONParser;

    new-instance v4, Ljava/lang/StringBuilder;

    sget-object v5, Lcom/pizza/work/library/UserFunctions;->dummy:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v5, Lcom/pizza/work/library/UserFunctions;->amountUrl:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v1}, Lcom/pizza/work/library/JSONParser;->getJSONFromUrl(Ljava/lang/String;Ljava/util/List;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 538
    .end local v1           #params:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    :goto_0
    return-object v0

    .line 537
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method public viewParty(Ljava/lang/String;)Lorg/json/JSONArray;
    .locals 5
    .parameter "agent"

    .prologue
    .line 297
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 299
    .local v1, params:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "agent"

    invoke-direct {v2, v3, p1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 301
    iget-object v2, p0, Lcom/pizza/work/library/UserFunctions;->jsonParser:Lcom/pizza/work/library/JSONParser;

    new-instance v3, Ljava/lang/StringBuilder;

    sget-object v4, Lcom/pizza/work/library/UserFunctions;->dummy:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v4, Lcom/pizza/work/library/UserFunctions;->salepartyURL:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Lcom/pizza/work/library/JSONParser;->getJSONArrayFromUrl(Ljava/lang/String;Ljava/util/List;)Lorg/json/JSONArray;

    move-result-object v0

    .line 304
    .local v0, json:Lorg/json/JSONArray;
    return-object v0
.end method

.method public viewPersonalLedger(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 5
    .parameter "startdate"
    .parameter "enddate"
    .parameter "customer"

    .prologue
    .line 460
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 462
    .local v1, params:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "from"

    invoke-direct {v2, v3, p1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 463
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "to"

    invoke-direct {v2, v3, p2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 464
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "cust"

    invoke-direct {v2, v3, p3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 465
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "agent"

    sget-object v4, Lcom/pizza/work/library/UserFunctions;->usercode:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 466
    iget-object v2, p0, Lcom/pizza/work/library/UserFunctions;->jsonParser:Lcom/pizza/work/library/JSONParser;

    new-instance v3, Ljava/lang/StringBuilder;

    sget-object v4, Lcom/pizza/work/library/UserFunctions;->dummy:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v4, Lcom/pizza/work/library/UserFunctions;->personalledgerUrl:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Lcom/pizza/work/library/JSONParser;->getJSONFromUrl1(Ljava/lang/String;Ljava/util/List;)Lorg/json/JSONObject;

    move-result-object v0

    .line 469
    .local v0, json:Lorg/json/JSONObject;
    return-object v0
.end method

.method public viewResult(Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 5
    .parameter "date"
    .parameter "catid"

    .prologue
    .line 385
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 387
    .local v1, params:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "date"

    invoke-direct {v2, v3, p1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 388
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "catid"

    invoke-direct {v2, v3, p2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 389
    iget-object v2, p0, Lcom/pizza/work/library/UserFunctions;->jsonParser:Lcom/pizza/work/library/JSONParser;

    new-instance v3, Ljava/lang/StringBuilder;

    sget-object v4, Lcom/pizza/work/library/UserFunctions;->dummy:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v4, Lcom/pizza/work/library/UserFunctions;->resultUrl:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Lcom/pizza/work/library/JSONParser;->getJSONFromUrl(Ljava/lang/String;Ljava/util/List;)Lorg/json/JSONObject;

    move-result-object v0

    .line 392
    .local v0, json:Lorg/json/JSONObject;
    return-object v0
.end method

.method public viewSaleDetail(Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 5
    .parameter "date"
    .parameter "customer"

    .prologue
    .line 442
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 444
    .local v1, params:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "date"

    invoke-direct {v2, v3, p1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 445
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "agent"

    sget-object v4, Lcom/pizza/work/library/UserFunctions;->usercode:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 446
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "cust"

    invoke-direct {v2, v3, p2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 448
    iget-object v2, p0, Lcom/pizza/work/library/UserFunctions;->jsonParser:Lcom/pizza/work/library/JSONParser;

    new-instance v3, Ljava/lang/StringBuilder;

    sget-object v4, Lcom/pizza/work/library/UserFunctions;->dummy:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v4, Lcom/pizza/work/library/UserFunctions;->salereportDetailUrl:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Lcom/pizza/work/library/JSONParser;->getJSONFromUrl(Ljava/lang/String;Ljava/util/List;)Lorg/json/JSONObject;

    move-result-object v0

    .line 451
    .local v0, json:Lorg/json/JSONObject;
    return-object v0
.end method

.method public viewSubagent(Ljava/lang/String;)Lorg/json/JSONArray;
    .locals 5
    .parameter "agent"

    .prologue
    .line 310
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 312
    .local v1, params:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "agent"

    invoke-direct {v2, v3, p1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 313
    iget-object v2, p0, Lcom/pizza/work/library/UserFunctions;->jsonParser:Lcom/pizza/work/library/JSONParser;

    new-instance v3, Ljava/lang/StringBuilder;

    sget-object v4, Lcom/pizza/work/library/UserFunctions;->dummy:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v4, Lcom/pizza/work/library/UserFunctions;->subagentURL:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Lcom/pizza/work/library/JSONParser;->getJSONArrayFromUrl(Ljava/lang/String;Ljava/util/List;)Lorg/json/JSONArray;

    move-result-object v0

    .line 316
    .local v0, json:Lorg/json/JSONArray;
    return-object v0
.end method

.method public viewWinReport(Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 5
    .parameter "date"
    .parameter "catid"

    .prologue
    .line 481
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 483
    .local v0, json:Lorg/json/JSONObject;
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 485
    .local v1, params:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "date"

    invoke-direct {v2, v3, p1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 486
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "agent"

    sget-object v4, Lcom/pizza/work/library/UserFunctions;->usercode:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 488
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "catid"

    invoke-direct {v2, v3, p2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 489
    iget-object v2, p0, Lcom/pizza/work/library/UserFunctions;->jsonParser:Lcom/pizza/work/library/JSONParser;

    new-instance v3, Ljava/lang/StringBuilder;

    sget-object v4, Lcom/pizza/work/library/UserFunctions;->dummy:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v4, Lcom/pizza/work/library/UserFunctions;->winUrl:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Lcom/pizza/work/library/JSONParser;->getJSONFromUrl(Ljava/lang/String;Ljava/util/List;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 494
    .end local v1           #params:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    :goto_0
    return-object v0

    .line 491
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public writeJSON()V
    .locals 6

    .prologue
    .line 628
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 630
    .local v1, object:Lorg/json/JSONObject;
    :try_start_0
    const-string v2, "name"

    const-string v3, "Jack Hack"

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 631
    const-string v2, "score"

    new-instance v3, Ljava/lang/Integer;

    const/16 v4, 0xc8

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 632
    const-string v2, "current"

    new-instance v3, Ljava/lang/Double;

    const-wide v4, 0x40630a3d70a3d70aL

    invoke-direct {v3, v4, v5}, Ljava/lang/Double;-><init>(D)V

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 633
    const-string v2, "nickname"

    const-string v3, "Hacker"

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 637
    :goto_0
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v2, v1}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    .line 638
    return-void

    .line 634
    :catch_0
    move-exception v0

    .line 635
    .local v0, e:Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method
