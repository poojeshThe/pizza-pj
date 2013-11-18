.class Lcom/pizza/work/SaleActivity$LoadViewTask$1;
.super Ljava/lang/Object;
.source "SaleActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pizza/work/SaleActivity$LoadViewTask;->onPostExecute(Ljava/lang/Void;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/widget/AdapterView$OnItemSelectedListener;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/pizza/work/SaleActivity$LoadViewTask;


# direct methods
.method constructor <init>(Lcom/pizza/work/SaleActivity$LoadViewTask;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/pizza/work/SaleActivity$LoadViewTask$1;->this$1:Lcom/pizza/work/SaleActivity$LoadViewTask;

    .line 674
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 1
    .parameter "adapter"
    .parameter "v"
    .parameter "i"
    .parameter "lng"

    .prologue
    .line 679
    iget-object v0, p0, Lcom/pizza/work/SaleActivity$LoadViewTask$1;->this$1:Lcom/pizza/work/SaleActivity$LoadViewTask;

    invoke-static {v0}, Lcom/pizza/work/SaleActivity$LoadViewTask;->access$4(Lcom/pizza/work/SaleActivity$LoadViewTask;)Lcom/pizza/work/SaleActivity;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/pizza/work/SaleActivity;->abcSpinnerFill(I)V

    .line 680
    iget-object v0, p0, Lcom/pizza/work/SaleActivity$LoadViewTask$1;->this$1:Lcom/pizza/work/SaleActivity$LoadViewTask;

    invoke-static {v0}, Lcom/pizza/work/SaleActivity$LoadViewTask;->access$4(Lcom/pizza/work/SaleActivity$LoadViewTask;)Lcom/pizza/work/SaleActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/pizza/work/SaleActivity;->access$7(Lcom/pizza/work/SaleActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 681
    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .parameter "arg0"

    .prologue
    .line 686
    return-void
.end method
