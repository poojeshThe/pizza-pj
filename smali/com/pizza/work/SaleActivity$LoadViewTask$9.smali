.class Lcom/pizza/work/SaleActivity$LoadViewTask$9;
.super Ljava/lang/Object;
.source "SaleActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pizza/work/SaleActivity$LoadViewTask;->onPostExecute(Ljava/lang/Void;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/pizza/work/SaleActivity$LoadViewTask;


# direct methods
.method constructor <init>(Lcom/pizza/work/SaleActivity$LoadViewTask;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/pizza/work/SaleActivity$LoadViewTask$9;->this$1:Lcom/pizza/work/SaleActivity$LoadViewTask;

    .line 1366
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8
    .parameter "view"

    .prologue
    .line 1372
    iget-object v1, p0, Lcom/pizza/work/SaleActivity$LoadViewTask$9;->this$1:Lcom/pizza/work/SaleActivity$LoadViewTask;

    invoke-static {v1}, Lcom/pizza/work/SaleActivity$LoadViewTask;->access$4(Lcom/pizza/work/SaleActivity$LoadViewTask;)Lcom/pizza/work/SaleActivity;

    move-result-object v1

    const/4 v2, 0x0

    iput v2, v1, Lcom/pizza/work/SaleActivity;->gridid:I

    .line 1374
    iget-object v1, p0, Lcom/pizza/work/SaleActivity$LoadViewTask$9;->this$1:Lcom/pizza/work/SaleActivity$LoadViewTask;

    invoke-static {v1}, Lcom/pizza/work/SaleActivity$LoadViewTask;->access$4(Lcom/pizza/work/SaleActivity$LoadViewTask;)Lcom/pizza/work/SaleActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/pizza/work/SaleActivity;->access$25(Lcom/pizza/work/SaleActivity;)Landroid/widget/AutoCompleteTextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1376
    .local v7, partyname:Ljava/lang/String;
    iget-object v1, p0, Lcom/pizza/work/SaleActivity$LoadViewTask$9;->this$1:Lcom/pizza/work/SaleActivity$LoadViewTask;

    invoke-static {v1}, Lcom/pizza/work/SaleActivity$LoadViewTask;->access$4(Lcom/pizza/work/SaleActivity$LoadViewTask;)Lcom/pizza/work/SaleActivity;

    move-result-object v1

    iget-object v1, v1, Lcom/pizza/work/SaleActivity;->saleFunction:Lcom/pizza/work/library/SaleFunctions;

    invoke-virtual {v1, v7}, Lcom/pizza/work/library/SaleFunctions;->validParty(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    .line 1380
    new-instance v6, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/pizza/work/SaleActivity$LoadViewTask$9;->this$1:Lcom/pizza/work/SaleActivity$LoadViewTask;

    invoke-static {v1}, Lcom/pizza/work/SaleActivity$LoadViewTask;->access$4(Lcom/pizza/work/SaleActivity$LoadViewTask;)Lcom/pizza/work/SaleActivity;

    move-result-object v1

    invoke-direct {v6, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1381
    .local v6, alertbox:Landroid/app/AlertDialog$Builder;
    const-string v1, "Enter a valid  customer"

    invoke-virtual {v6, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1382
    const-string v1, "Ok"

    new-instance v2, Lcom/pizza/work/SaleActivity$LoadViewTask$9$1;

    invoke-direct {v2, p0}, Lcom/pizza/work/SaleActivity$LoadViewTask$9$1;-><init>(Lcom/pizza/work/SaleActivity$LoadViewTask$9;)V

    invoke-virtual {v6, v1, v2}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1389
    invoke-virtual {v6}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 1390
    iget-object v1, p0, Lcom/pizza/work/SaleActivity$LoadViewTask$9;->this$1:Lcom/pizza/work/SaleActivity$LoadViewTask;

    invoke-static {v1}, Lcom/pizza/work/SaleActivity$LoadViewTask;->access$4(Lcom/pizza/work/SaleActivity$LoadViewTask;)Lcom/pizza/work/SaleActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/pizza/work/SaleActivity;->access$25(Lcom/pizza/work/SaleActivity;)Landroid/widget/AutoCompleteTextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/AutoCompleteTextView;->requestFocus()Z

    .line 1405
    .end local v6           #alertbox:Landroid/app/AlertDialog$Builder;
    :goto_0
    return-void

    .line 1396
    :cond_0
    iget-object v1, p0, Lcom/pizza/work/SaleActivity$LoadViewTask$9;->this$1:Lcom/pizza/work/SaleActivity$LoadViewTask;

    invoke-static {v1}, Lcom/pizza/work/SaleActivity$LoadViewTask;->access$4(Lcom/pizza/work/SaleActivity$LoadViewTask;)Lcom/pizza/work/SaleActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/pizza/work/SaleActivity;->access$17(Lcom/pizza/work/SaleActivity;)Landroid/widget/Button;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 1397
    iget-object v1, p0, Lcom/pizza/work/SaleActivity$LoadViewTask$9;->this$1:Lcom/pizza/work/SaleActivity$LoadViewTask;

    invoke-static {v1}, Lcom/pizza/work/SaleActivity$LoadViewTask;->access$4(Lcom/pizza/work/SaleActivity$LoadViewTask;)Lcom/pizza/work/SaleActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/pizza/work/SaleActivity;->save()V

    .line 1399
    new-instance v0, Landroid/widget/SimpleAdapter;

    iget-object v1, p0, Lcom/pizza/work/SaleActivity$LoadViewTask$9;->this$1:Lcom/pizza/work/SaleActivity$LoadViewTask;

    invoke-static {v1}, Lcom/pizza/work/SaleActivity$LoadViewTask;->access$4(Lcom/pizza/work/SaleActivity$LoadViewTask;)Lcom/pizza/work/SaleActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/pizza/work/SaleActivity$LoadViewTask$9;->this$1:Lcom/pizza/work/SaleActivity$LoadViewTask;

    invoke-static {v2}, Lcom/pizza/work/SaleActivity$LoadViewTask;->access$4(Lcom/pizza/work/SaleActivity$LoadViewTask;)Lcom/pizza/work/SaleActivity;

    move-result-object v2

    iget-object v2, v2, Lcom/pizza/work/SaleActivity;->fillMaps:Ljava/util/List;

    const v3, 0x7f030006

    iget-object v4, p0, Lcom/pizza/work/SaleActivity$LoadViewTask$9;->this$1:Lcom/pizza/work/SaleActivity$LoadViewTask;

    invoke-static {v4}, Lcom/pizza/work/SaleActivity$LoadViewTask;->access$4(Lcom/pizza/work/SaleActivity$LoadViewTask;)Lcom/pizza/work/SaleActivity;

    move-result-object v4

    iget-object v4, v4, Lcom/pizza/work/SaleActivity;->from:[Ljava/lang/String;

    iget-object v5, p0, Lcom/pizza/work/SaleActivity$LoadViewTask$9;->this$1:Lcom/pizza/work/SaleActivity$LoadViewTask;

    invoke-static {v5}, Lcom/pizza/work/SaleActivity$LoadViewTask;->access$4(Lcom/pizza/work/SaleActivity$LoadViewTask;)Lcom/pizza/work/SaleActivity;

    move-result-object v5

    iget-object v5, v5, Lcom/pizza/work/SaleActivity;->to:[I

    invoke-direct/range {v0 .. v5}, Landroid/widget/SimpleAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[I)V

    .line 1401
    .local v0, adapter:Landroid/widget/SimpleAdapter;
    iget-object v1, p0, Lcom/pizza/work/SaleActivity$LoadViewTask$9;->this$1:Lcom/pizza/work/SaleActivity$LoadViewTask;

    invoke-static {v1}, Lcom/pizza/work/SaleActivity$LoadViewTask;->access$4(Lcom/pizza/work/SaleActivity$LoadViewTask;)Lcom/pizza/work/SaleActivity;

    move-result-object v1

    iget-object v1, v1, Lcom/pizza/work/SaleActivity;->lv:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1402
    iget-object v1, p0, Lcom/pizza/work/SaleActivity$LoadViewTask$9;->this$1:Lcom/pizza/work/SaleActivity$LoadViewTask;

    invoke-static {v1}, Lcom/pizza/work/SaleActivity$LoadViewTask;->access$4(Lcom/pizza/work/SaleActivity$LoadViewTask;)Lcom/pizza/work/SaleActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/pizza/work/SaleActivity;->fillProduct()V

    .line 1403
    iget-object v1, p0, Lcom/pizza/work/SaleActivity$LoadViewTask$9;->this$1:Lcom/pizza/work/SaleActivity$LoadViewTask;

    invoke-static {v1}, Lcom/pizza/work/SaleActivity$LoadViewTask;->access$4(Lcom/pizza/work/SaleActivity$LoadViewTask;)Lcom/pizza/work/SaleActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/pizza/work/SaleActivity;->access$12(Lcom/pizza/work/SaleActivity;)Landroid/widget/EditText;

    move-result-object v1

    const-string v2, "10"

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
