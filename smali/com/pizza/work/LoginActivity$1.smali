.class Lcom/pizza/work/LoginActivity$1;
.super Ljava/lang/Object;
.source "LoginActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pizza/work/LoginActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pizza/work/LoginActivity;


# direct methods
.method constructor <init>(Lcom/pizza/work/LoginActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/pizza/work/LoginActivity$1;->this$0:Lcom/pizza/work/LoginActivity;

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/pizza/work/LoginActivity$1;)Lcom/pizza/work/LoginActivity;
    .locals 1
    .parameter

    .prologue
    .line 72
    iget-object v0, p0, Lcom/pizza/work/LoginActivity$1;->this$0:Lcom/pizza/work/LoginActivity;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 9
    .parameter "view"

    .prologue
    .line 80
    :try_start_0
    iget-object v7, p0, Lcom/pizza/work/LoginActivity$1;->this$0:Lcom/pizza/work/LoginActivity;

    iget-object v7, v7, Lcom/pizza/work/LoginActivity;->inputuid:Landroid/widget/EditText;

    invoke-virtual {v7}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v7

    invoke-interface {v7}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    .line 81
    .local v6, uname:Ljava/lang/String;
    iget-object v7, p0, Lcom/pizza/work/LoginActivity$1;->this$0:Lcom/pizza/work/LoginActivity;

    iget-object v7, v7, Lcom/pizza/work/LoginActivity;->inputPassword:Landroid/widget/EditText;

    invoke-virtual {v7}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v7

    invoke-interface {v7}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 82
    .local v4, password:Ljava/lang/String;
    const-string v7, ""

    if-eq v6, v7, :cond_0

    const-string v7, ""

    if-eq v4, v7, :cond_0

    .line 84
    iget-object v7, p0, Lcom/pizza/work/LoginActivity$1;->this$0:Lcom/pizza/work/LoginActivity;

    iget-object v8, p0, Lcom/pizza/work/LoginActivity$1;->this$0:Lcom/pizza/work/LoginActivity;

    iget-object v8, v8, Lcom/pizza/work/LoginActivity;->userFunction:Lcom/pizza/work/library/UserFunctions;

    invoke-virtual {v8, v6, v4}, Lcom/pizza/work/library/UserFunctions;->imeUser(Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v8

    iput-object v8, v7, Lcom/pizza/work/LoginActivity;->json:Lorg/json/JSONObject;

    .line 85
    iget-object v7, p0, Lcom/pizza/work/LoginActivity$1;->this$0:Lcom/pizza/work/LoginActivity;

    iget-object v7, v7, Lcom/pizza/work/LoginActivity;->json:Lorg/json/JSONObject;

    sput-object v7, Lcom/pizza/work/library/UserFunctions;->adminpriceList:Lorg/json/JSONObject;

    .line 87
    iget-object v7, p0, Lcom/pizza/work/LoginActivity$1;->this$0:Lcom/pizza/work/LoginActivity;

    iget-object v7, v7, Lcom/pizza/work/LoginActivity;->json:Lorg/json/JSONObject;

    const-string v8, "success"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_0

    .line 89
    iget-object v7, p0, Lcom/pizza/work/LoginActivity$1;->this$0:Lcom/pizza/work/LoginActivity;

    iget-object v7, v7, Lcom/pizza/work/LoginActivity;->json:Lorg/json/JSONObject;

    invoke-static {}, Lcom/pizza/work/LoginActivity;->access$0()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 90
    .local v5, res:Ljava/lang/String;
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_1

    .line 92
    iget-object v7, p0, Lcom/pizza/work/LoginActivity$1;->this$0:Lcom/pizza/work/LoginActivity;

    iget-object v7, v7, Lcom/pizza/work/LoginActivity;->json:Lorg/json/JSONObject;

    const-string v8, "uname"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    sput-object v7, Lcom/pizza/work/library/UserFunctions;->usercode:Ljava/lang/String;

    .line 93
    iget-object v7, p0, Lcom/pizza/work/LoginActivity$1;->this$0:Lcom/pizza/work/LoginActivity;

    invoke-virtual {v7}, Lcom/pizza/work/LoginActivity;->finish()V

    .line 98
    new-instance v2, Landroid/content/Intent;

    iget-object v7, p0, Lcom/pizza/work/LoginActivity$1;->this$0:Lcom/pizza/work/LoginActivity;

    invoke-virtual {v7}, Lcom/pizza/work/LoginActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    const-class v8, Lcom/pizza/work/MenuActivity;

    invoke-direct {v2, v7, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 99
    .local v2, i:Landroid/content/Intent;
    iget-object v7, p0, Lcom/pizza/work/LoginActivity$1;->this$0:Lcom/pizza/work/LoginActivity;

    invoke-virtual {v7, v2}, Lcom/pizza/work/LoginActivity;->startActivity(Landroid/content/Intent;)V

    .line 206
    .end local v2           #i:Landroid/content/Intent;
    .end local v4           #password:Ljava/lang/String;
    .end local v5           #res:Ljava/lang/String;
    .end local v6           #uname:Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 104
    .restart local v4       #password:Ljava/lang/String;
    .restart local v5       #res:Ljava/lang/String;
    .restart local v6       #uname:Ljava/lang/String;
    :cond_1
    const-string v3, ""

    .line 105
    .local v3, mesage:Ljava/lang/String;
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    const/4 v8, 0x2

    if-ne v7, v8, :cond_2

    .line 108
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v7, p0, Lcom/pizza/work/LoginActivity$1;->this$0:Lcom/pizza/work/LoginActivity;

    invoke-direct {v0, v7}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 111
    .local v0, alertbox:Landroid/app/AlertDialog$Builder;
    const-string v7, "Password InCorrect"

    invoke-virtual {v0, v7}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 112
    const-string v7, "Ok"

    new-instance v8, Lcom/pizza/work/LoginActivity$1$1;

    invoke-direct {v8, p0}, Lcom/pizza/work/LoginActivity$1$1;-><init>(Lcom/pizza/work/LoginActivity$1;)V

    invoke-virtual {v0, v7, v8}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 119
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 123
    .end local v0           #alertbox:Landroid/app/AlertDialog$Builder;
    :cond_2
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    const/4 v8, 0x3

    if-ne v7, v8, :cond_3

    .line 125
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v7, p0, Lcom/pizza/work/LoginActivity$1;->this$0:Lcom/pizza/work/LoginActivity;

    invoke-direct {v0, v7}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 127
    .restart local v0       #alertbox:Landroid/app/AlertDialog$Builder;
    const-string v7, "Sorry You r Blocked!!!!! Contact Administrator"

    invoke-virtual {v0, v7}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 130
    const-string v7, "Ok"

    new-instance v8, Lcom/pizza/work/LoginActivity$1$2;

    invoke-direct {v8, p0}, Lcom/pizza/work/LoginActivity$1$2;-><init>(Lcom/pizza/work/LoginActivity$1;)V

    invoke-virtual {v0, v7, v8}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 141
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 146
    .end local v0           #alertbox:Landroid/app/AlertDialog$Builder;
    :cond_3
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    if-nez v7, :cond_0

    .line 148
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v7, p0, Lcom/pizza/work/LoginActivity$1;->this$0:Lcom/pizza/work/LoginActivity;

    invoke-direct {v0, v7}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 151
    .restart local v0       #alertbox:Landroid/app/AlertDialog$Builder;
    const-string v7, "Invalid User!!!!!!!!"

    invoke-virtual {v0, v7}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 154
    const-string v7, "Ok"

    new-instance v8, Lcom/pizza/work/LoginActivity$1$3;

    invoke-direct {v8, p0}, Lcom/pizza/work/LoginActivity$1$3;-><init>(Lcom/pizza/work/LoginActivity$1;)V

    invoke-virtual {v0, v7, v8}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 167
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 179
    .end local v0           #alertbox:Landroid/app/AlertDialog$Builder;
    .end local v3           #mesage:Ljava/lang/String;
    .end local v4           #password:Ljava/lang/String;
    .end local v5           #res:Ljava/lang/String;
    .end local v6           #uname:Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 180
    .local v1, e:Ljava/lang/Exception;
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v7, p0, Lcom/pizza/work/LoginActivity$1;->this$0:Lcom/pizza/work/LoginActivity;

    invoke-direct {v0, v7}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 185
    .restart local v0       #alertbox:Landroid/app/AlertDialog$Builder;
    new-instance v7, Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/pizza/work/LoginActivity$1;->this$0:Lcom/pizza/work/LoginActivity;

    iget-object v8, v8, Lcom/pizza/work/LoginActivity;->json:Lorg/json/JSONObject;

    invoke-virtual {v8}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 188
    const-string v7, "Ok"

    new-instance v8, Lcom/pizza/work/LoginActivity$1$4;

    invoke-direct {v8, p0}, Lcom/pizza/work/LoginActivity$1$4;-><init>(Lcom/pizza/work/LoginActivity$1;)V

    invoke-virtual {v0, v7, v8}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 201
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_0
.end method
