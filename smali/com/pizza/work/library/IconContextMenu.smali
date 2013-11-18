.class public Lcom/pizza/work/library/IconContextMenu;
.super Ljava/lang/Object;
.source "IconContextMenu.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pizza/work/library/IconContextMenu$IconContextMenuItem;,
        Lcom/pizza/work/library/IconContextMenu$IconContextMenuOnClickListener;,
        Lcom/pizza/work/library/IconContextMenu$IconMenuAdapter;
    }
.end annotation


# static fields
.field private static final LIST_PREFERED_HEIGHT:I = 0x41


# instance fields
.field private clickHandler:Lcom/pizza/work/library/IconContextMenu$IconContextMenuOnClickListener;

.field private dialogId:I

.field private menuAdapter:Lcom/pizza/work/library/IconContextMenu$IconMenuAdapter;

.field private parentActivity:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Landroid/app/Activity;I)V
    .locals 2
    .parameter "parent"
    .parameter "id"

    .prologue
    const/4 v1, 0x0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object v1, p0, Lcom/pizza/work/library/IconContextMenu;->menuAdapter:Lcom/pizza/work/library/IconContextMenu$IconMenuAdapter;

    .line 29
    iput-object v1, p0, Lcom/pizza/work/library/IconContextMenu;->parentActivity:Landroid/app/Activity;

    .line 30
    const/4 v0, 0x0

    iput v0, p0, Lcom/pizza/work/library/IconContextMenu;->dialogId:I

    .line 32
    iput-object v1, p0, Lcom/pizza/work/library/IconContextMenu;->clickHandler:Lcom/pizza/work/library/IconContextMenu$IconContextMenuOnClickListener;

    .line 40
    iput-object p1, p0, Lcom/pizza/work/library/IconContextMenu;->parentActivity:Landroid/app/Activity;

    .line 41
    iput p2, p0, Lcom/pizza/work/library/IconContextMenu;->dialogId:I

    .line 43
    new-instance v0, Lcom/pizza/work/library/IconContextMenu$IconMenuAdapter;

    iget-object v1, p0, Lcom/pizza/work/library/IconContextMenu;->parentActivity:Landroid/app/Activity;

    invoke-direct {v0, p0, v1}, Lcom/pizza/work/library/IconContextMenu$IconMenuAdapter;-><init>(Lcom/pizza/work/library/IconContextMenu;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/pizza/work/library/IconContextMenu;->menuAdapter:Lcom/pizza/work/library/IconContextMenu$IconMenuAdapter;

    .line 44
    return-void
.end method

.method static synthetic access$0(Lcom/pizza/work/library/IconContextMenu;)Landroid/app/Activity;
    .locals 1
    .parameter

    .prologue
    .line 29
    iget-object v0, p0, Lcom/pizza/work/library/IconContextMenu;->parentActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$1(Lcom/pizza/work/library/IconContextMenu;)Lcom/pizza/work/library/IconContextMenu$IconMenuAdapter;
    .locals 1
    .parameter

    .prologue
    .line 28
    iget-object v0, p0, Lcom/pizza/work/library/IconContextMenu;->menuAdapter:Lcom/pizza/work/library/IconContextMenu$IconMenuAdapter;

    return-object v0
.end method

.method static synthetic access$2(Lcom/pizza/work/library/IconContextMenu;)Lcom/pizza/work/library/IconContextMenu$IconContextMenuOnClickListener;
    .locals 1
    .parameter

    .prologue
    .line 32
    iget-object v0, p0, Lcom/pizza/work/library/IconContextMenu;->clickHandler:Lcom/pizza/work/library/IconContextMenu$IconContextMenuOnClickListener;

    return-object v0
.end method

.method private cleanup()V
    .locals 2

    .prologue
    .line 102
    iget-object v0, p0, Lcom/pizza/work/library/IconContextMenu;->parentActivity:Landroid/app/Activity;

    iget v1, p0, Lcom/pizza/work/library/IconContextMenu;->dialogId:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->dismissDialog(I)V

    .line 103
    return-void
.end method


# virtual methods
.method public addItem(Landroid/content/res/Resources;III)V
    .locals 7
    .parameter "res"
    .parameter "textResourceId"
    .parameter "imageResourceId"
    .parameter "actionTag"

    .prologue
    .line 57
    iget-object v6, p0, Lcom/pizza/work/library/IconContextMenu;->menuAdapter:Lcom/pizza/work/library/IconContextMenu$IconMenuAdapter;

    new-instance v0, Lcom/pizza/work/library/IconContextMenu$IconContextMenuItem;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/pizza/work/library/IconContextMenu$IconContextMenuItem;-><init>(Lcom/pizza/work/library/IconContextMenu;Landroid/content/res/Resources;III)V

    invoke-virtual {v6, v0}, Lcom/pizza/work/library/IconContextMenu$IconMenuAdapter;->addItem(Lcom/pizza/work/library/IconContextMenu$IconContextMenuItem;)V

    .line 58
    return-void
.end method

.method public addItem(Landroid/content/res/Resources;Ljava/lang/CharSequence;II)V
    .locals 7
    .parameter "res"
    .parameter "title"
    .parameter "imageResourceId"
    .parameter "actionTag"

    .prologue
    .line 52
    iget-object v6, p0, Lcom/pizza/work/library/IconContextMenu;->menuAdapter:Lcom/pizza/work/library/IconContextMenu$IconMenuAdapter;

    new-instance v0, Lcom/pizza/work/library/IconContextMenu$IconContextMenuItem;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/pizza/work/library/IconContextMenu$IconContextMenuItem;-><init>(Lcom/pizza/work/library/IconContextMenu;Landroid/content/res/Resources;Ljava/lang/CharSequence;II)V

    invoke-virtual {v6, v0}, Lcom/pizza/work/library/IconContextMenu$IconMenuAdapter;->addItem(Lcom/pizza/work/library/IconContextMenu$IconContextMenuItem;)V

    .line 53
    return-void
.end method

.method public createMenu(Ljava/lang/String;)Landroid/app/Dialog;
    .locals 4
    .parameter "menuItitle"

    .prologue
    .line 73
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/pizza/work/library/IconContextMenu;->parentActivity:Landroid/app/Activity;

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 74
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 75
    iget-object v2, p0, Lcom/pizza/work/library/IconContextMenu;->menuAdapter:Lcom/pizza/work/library/IconContextMenu$IconMenuAdapter;

    new-instance v3, Lcom/pizza/work/library/IconContextMenu$1;

    invoke-direct {v3, p0}, Lcom/pizza/work/library/IconContextMenu$1;-><init>(Lcom/pizza/work/library/IconContextMenu;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 86
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setInverseBackgroundForced(Z)Landroid/app/AlertDialog$Builder;

    .line 88
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 89
    .local v1, dialog:Landroid/app/AlertDialog;
    invoke-virtual {v1, p0}, Landroid/app/AlertDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 90
    invoke-virtual {v1, p0}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 91
    return-object v1
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 0
    .parameter "dialog"

    .prologue
    .line 95
    invoke-direct {p0}, Lcom/pizza/work/library/IconContextMenu;->cleanup()V

    .line 96
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 0
    .parameter "dialog"

    .prologue
    .line 99
    return-void
.end method

.method public setOnClickListener(Lcom/pizza/work/library/IconContextMenu$IconContextMenuOnClickListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 65
    iput-object p1, p0, Lcom/pizza/work/library/IconContextMenu;->clickHandler:Lcom/pizza/work/library/IconContextMenu$IconContextMenuOnClickListener;

    .line 66
    return-void
.end method
