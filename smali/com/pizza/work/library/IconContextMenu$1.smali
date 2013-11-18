.class Lcom/pizza/work/library/IconContextMenu$1;
.super Ljava/lang/Object;
.source "IconContextMenu.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pizza/work/library/IconContextMenu;->createMenu(Ljava/lang/String;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pizza/work/library/IconContextMenu;


# direct methods
.method constructor <init>(Lcom/pizza/work/library/IconContextMenu;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/pizza/work/library/IconContextMenu$1;->this$0:Lcom/pizza/work/library/IconContextMenu;

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialoginterface"
    .parameter "i"

    .prologue
    .line 78
    iget-object v1, p0, Lcom/pizza/work/library/IconContextMenu$1;->this$0:Lcom/pizza/work/library/IconContextMenu;

    invoke-static {v1}, Lcom/pizza/work/library/IconContextMenu;->access$1(Lcom/pizza/work/library/IconContextMenu;)Lcom/pizza/work/library/IconContextMenu$IconMenuAdapter;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/pizza/work/library/IconContextMenu$IconMenuAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pizza/work/library/IconContextMenu$IconContextMenuItem;

    .line 80
    .local v0, item:Lcom/pizza/work/library/IconContextMenu$IconContextMenuItem;
    iget-object v1, p0, Lcom/pizza/work/library/IconContextMenu$1;->this$0:Lcom/pizza/work/library/IconContextMenu;

    invoke-static {v1}, Lcom/pizza/work/library/IconContextMenu;->access$2(Lcom/pizza/work/library/IconContextMenu;)Lcom/pizza/work/library/IconContextMenu$IconContextMenuOnClickListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 81
    iget-object v1, p0, Lcom/pizza/work/library/IconContextMenu$1;->this$0:Lcom/pizza/work/library/IconContextMenu;

    invoke-static {v1}, Lcom/pizza/work/library/IconContextMenu;->access$2(Lcom/pizza/work/library/IconContextMenu;)Lcom/pizza/work/library/IconContextMenu$IconContextMenuOnClickListener;

    move-result-object v1

    iget v2, v0, Lcom/pizza/work/library/IconContextMenu$IconContextMenuItem;->actionTag:I

    invoke-interface {v1, v2}, Lcom/pizza/work/library/IconContextMenu$IconContextMenuOnClickListener;->onClick(I)V

    .line 83
    :cond_0
    return-void
.end method
