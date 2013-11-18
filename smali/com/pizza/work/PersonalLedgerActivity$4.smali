.class Lcom/pizza/work/PersonalLedgerActivity$4;
.super Ljava/lang/Object;
.source "PersonalLedgerActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pizza/work/PersonalLedgerActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pizza/work/PersonalLedgerActivity;


# direct methods
.method constructor <init>(Lcom/pizza/work/PersonalLedgerActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/pizza/work/PersonalLedgerActivity$4;->this$0:Lcom/pizza/work/PersonalLedgerActivity;

    .line 198
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 202
    iget-object v0, p0, Lcom/pizza/work/PersonalLedgerActivity$4;->this$0:Lcom/pizza/work/PersonalLedgerActivity;

    invoke-virtual {v0}, Lcom/pizza/work/PersonalLedgerActivity;->display()V

    .line 203
    iget-object v0, p0, Lcom/pizza/work/PersonalLedgerActivity$4;->this$0:Lcom/pizza/work/PersonalLedgerActivity;

    invoke-virtual {v0}, Lcom/pizza/work/PersonalLedgerActivity;->tabledisplay()V

    .line 206
    return-void
.end method
