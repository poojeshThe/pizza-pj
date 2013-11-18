.class Lcom/pizza/work/ChangePassActivity$1;
.super Ljava/lang/Object;
.source "ChangePassActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pizza/work/ChangePassActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pizza/work/ChangePassActivity;


# direct methods
.method constructor <init>(Lcom/pizza/work/ChangePassActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/pizza/work/ChangePassActivity$1;->this$0:Lcom/pizza/work/ChangePassActivity;

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/pizza/work/ChangePassActivity$1;)Lcom/pizza/work/ChangePassActivity;
    .locals 1
    .parameter

    .prologue
    .line 38
    iget-object v0, p0, Lcom/pizza/work/ChangePassActivity$1;->this$0:Lcom/pizza/work/ChangePassActivity;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "view"

    .prologue
    .line 42
    iget-object v3, p0, Lcom/pizza/work/ChangePassActivity$1;->this$0:Lcom/pizza/work/ChangePassActivity;

    invoke-static {v3}, Lcom/pizza/work/ChangePassActivity;->access$0(Lcom/pizza/work/ChangePassActivity;)Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/pizza/work/ChangePassActivity$1;->this$0:Lcom/pizza/work/ChangePassActivity;

    invoke-static {v4}, Lcom/pizza/work/ChangePassActivity;->access$1(Lcom/pizza/work/ChangePassActivity;)Landroid/widget/EditText;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-interface {v4}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 46
    :try_start_0
    iget-object v3, p0, Lcom/pizza/work/ChangePassActivity$1;->this$0:Lcom/pizza/work/ChangePassActivity;

    iget-object v3, v3, Lcom/pizza/work/ChangePassActivity;->userFunction:Lcom/pizza/work/library/UserFunctions;

    iget-object v4, p0, Lcom/pizza/work/ChangePassActivity$1;->this$0:Lcom/pizza/work/ChangePassActivity;

    invoke-static {v4}, Lcom/pizza/work/ChangePassActivity;->access$0(Lcom/pizza/work/ChangePassActivity;)Landroid/widget/EditText;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-interface {v4}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/pizza/work/library/UserFunctions;->changePass(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 47
    .local v1, json:Lorg/json/JSONObject;
    const-string v3, "success"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 51
    const-string v3, "success"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 52
    .local v2, res:Ljava/lang/String;
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    .line 55
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/pizza/work/ChangePassActivity$1;->this$0:Lcom/pizza/work/ChangePassActivity;

    invoke-direct {v0, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 58
    .local v0, alertbox:Landroid/app/AlertDialog$Builder;
    const-string v3, "Update Password Successfully"

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 61
    const-string v3, "Ok"

    new-instance v4, Lcom/pizza/work/ChangePassActivity$1$1;

    invoke-direct {v4, p0}, Lcom/pizza/work/ChangePassActivity$1$1;-><init>(Lcom/pizza/work/ChangePassActivity$1;)V

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 74
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 140
    .end local v0           #alertbox:Landroid/app/AlertDialog$Builder;
    .end local v1           #json:Lorg/json/JSONObject;
    .end local v2           #res:Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 81
    .restart local v1       #json:Lorg/json/JSONObject;
    .restart local v2       #res:Ljava/lang/String;
    :cond_1
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/pizza/work/ChangePassActivity$1;->this$0:Lcom/pizza/work/ChangePassActivity;

    invoke-direct {v0, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 84
    .restart local v0       #alertbox:Landroid/app/AlertDialog$Builder;
    const-string v3, "Sorry!!! Error Occured"

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 87
    const-string v3, "Ok"

    new-instance v4, Lcom/pizza/work/ChangePassActivity$1$2;

    invoke-direct {v4, p0}, Lcom/pizza/work/ChangePassActivity$1$2;-><init>(Lcom/pizza/work/ChangePassActivity$1;)V

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 99
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 109
    .end local v0           #alertbox:Landroid/app/AlertDialog$Builder;
    .end local v1           #json:Lorg/json/JSONObject;
    .end local v2           #res:Ljava/lang/String;
    :catch_0
    move-exception v3

    goto :goto_0

    .line 115
    :cond_2
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/pizza/work/ChangePassActivity$1;->this$0:Lcom/pizza/work/ChangePassActivity;

    invoke-direct {v0, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 118
    .restart local v0       #alertbox:Landroid/app/AlertDialog$Builder;
    const-string v3, "Change password and confirm password are  Not equal"

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 121
    const-string v3, "Ok"

    new-instance v4, Lcom/pizza/work/ChangePassActivity$1$3;

    invoke-direct {v4, p0}, Lcom/pizza/work/ChangePassActivity$1$3;-><init>(Lcom/pizza/work/ChangePassActivity$1;)V

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 134
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0
.end method
