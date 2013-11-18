.class Lcom/pizza/work/SaleActivity$LoadViewTask$8;
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
    iput-object p1, p0, Lcom/pizza/work/SaleActivity$LoadViewTask$8;->this$1:Lcom/pizza/work/SaleActivity$LoadViewTask;

    .line 1169
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 35
    .parameter "view"

    .prologue
    .line 1173
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pizza/work/SaleActivity$LoadViewTask$8;->this$1:Lcom/pizza/work/SaleActivity$LoadViewTask;

    invoke-static {v2}, Lcom/pizza/work/SaleActivity$LoadViewTask;->access$4(Lcom/pizza/work/SaleActivity$LoadViewTask;)Lcom/pizza/work/SaleActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/pizza/work/SaleActivity;->access$22(Lcom/pizza/work/SaleActivity;)Landroid/widget/Button;

    move-result-object v2

    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 1175
    const/4 v7, 0x1

    .line 1176
    .local v7, select:I
    const/16 v31, -0x1

    .line 1177
    .local v31, startno:I
    const/16 v27, -0x1

    .line 1178
    .local v27, endno:I
    const/16 v25, -0x1

    .line 1179
    .local v25, condition:I
    const-string v4, ""

    .line 1180
    .local v4, abctype:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pizza/work/SaleActivity$LoadViewTask$8;->this$1:Lcom/pizza/work/SaleActivity$LoadViewTask;

    invoke-static {v2}, Lcom/pizza/work/SaleActivity$LoadViewTask;->access$4(Lcom/pizza/work/SaleActivity$LoadViewTask;)Lcom/pizza/work/SaleActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/pizza/work/SaleActivity;->access$6(Lcom/pizza/work/SaleActivity;)Landroid/widget/Spinner;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1181
    .local v3, prodname:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pizza/work/SaleActivity$LoadViewTask$8;->this$1:Lcom/pizza/work/SaleActivity$LoadViewTask;

    invoke-static {v2}, Lcom/pizza/work/SaleActivity$LoadViewTask;->access$4(Lcom/pizza/work/SaleActivity$LoadViewTask;)Lcom/pizza/work/SaleActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/pizza/work/SaleActivity;->access$7(Lcom/pizza/work/SaleActivity;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v20

    .line 1182
    .local v20, ppno:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pizza/work/SaleActivity$LoadViewTask$8;->this$1:Lcom/pizza/work/SaleActivity$LoadViewTask;

    invoke-static {v2}, Lcom/pizza/work/SaleActivity$LoadViewTask;->access$4(Lcom/pizza/work/SaleActivity$LoadViewTask;)Lcom/pizza/work/SaleActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/pizza/work/SaleActivity;->access$19(Lcom/pizza/work/SaleActivity;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1183
    .local v8, quantity:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pizza/work/SaleActivity$LoadViewTask$8;->this$1:Lcom/pizza/work/SaleActivity$LoadViewTask;

    invoke-static {v2}, Lcom/pizza/work/SaleActivity$LoadViewTask;->access$4(Lcom/pizza/work/SaleActivity$LoadViewTask;)Lcom/pizza/work/SaleActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/pizza/work/SaleActivity;->access$12(Lcom/pizza/work/SaleActivity;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v9

    .line 1185
    .local v9, itemprice:Ljava/lang/String;
    const-string v2, ""

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    const-string v2, ""

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    const-string v2, ""

    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 1192
    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->length()I

    move-result v29

    .line 1193
    .local v29, no:I
    const/16 v28, 0x1

    .line 1194
    .local v28, flag:Z
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pizza/work/SaleActivity$LoadViewTask$8;->this$1:Lcom/pizza/work/SaleActivity$LoadViewTask;

    invoke-static {v2}, Lcom/pizza/work/SaleActivity$LoadViewTask;->access$4(Lcom/pizza/work/SaleActivity$LoadViewTask;)Lcom/pizza/work/SaleActivity;

    move-result-object v2

    iget-object v2, v2, Lcom/pizza/work/SaleActivity;->rb2:Landroid/widget/RadioButton;

    invoke-virtual {v2}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1195
    const/4 v7, 0x2

    .line 1196
    const/4 v2, 0x2

    move/from16 v0, v29

    if-ge v0, v2, :cond_0

    .line 1198
    const/16 v28, 0x0

    .line 1204
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pizza/work/SaleActivity$LoadViewTask$8;->this$1:Lcom/pizza/work/SaleActivity$LoadViewTask;

    invoke-static {v2}, Lcom/pizza/work/SaleActivity$LoadViewTask;->access$4(Lcom/pizza/work/SaleActivity$LoadViewTask;)Lcom/pizza/work/SaleActivity;

    move-result-object v2

    iget-object v2, v2, Lcom/pizza/work/SaleActivity;->rb3:Landroid/widget/RadioButton;

    invoke-virtual {v2}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1205
    const/4 v7, 0x3

    .line 1206
    const/4 v2, 0x3

    move/from16 v0, v29

    if-ge v0, v2, :cond_1

    .line 1208
    const/16 v28, 0x0

    .line 1215
    :cond_1
    if-nez v28, :cond_6

    .line 1216
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pizza/work/SaleActivity$LoadViewTask$8;->this$1:Lcom/pizza/work/SaleActivity$LoadViewTask;

    invoke-static {v2}, Lcom/pizza/work/SaleActivity$LoadViewTask;->access$4(Lcom/pizza/work/SaleActivity$LoadViewTask;)Lcom/pizza/work/SaleActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/pizza/work/SaleActivity;->access$7(Lcom/pizza/work/SaleActivity;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->requestFocus()Z

    .line 1341
    :cond_2
    :goto_0
    if-eqz v25, :cond_3

    const/4 v2, 0x2

    move/from16 v0, v25

    if-ne v0, v2, :cond_4

    .line 1343
    :cond_3
    new-instance v24, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pizza/work/SaleActivity$LoadViewTask$8;->this$1:Lcom/pizza/work/SaleActivity$LoadViewTask;

    invoke-static {v2}, Lcom/pizza/work/SaleActivity$LoadViewTask;->access$4(Lcom/pizza/work/SaleActivity$LoadViewTask;)Lcom/pizza/work/SaleActivity;

    move-result-object v2

    move-object/from16 v0, v24

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1344
    .local v24, alertbox:Landroid/app/AlertDialog$Builder;
    const-string v2, "Sorry!!! Time Out Product"

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1345
    const-string v2, "Ok"

    new-instance v5, Lcom/pizza/work/SaleActivity$LoadViewTask$8$1;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lcom/pizza/work/SaleActivity$LoadViewTask$8$1;-><init>(Lcom/pizza/work/SaleActivity$LoadViewTask$8;)V

    move-object/from16 v0, v24

    invoke-virtual {v0, v2, v5}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1348
    invoke-virtual/range {v24 .. v24}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 1349
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pizza/work/SaleActivity$LoadViewTask$8;->this$1:Lcom/pizza/work/SaleActivity$LoadViewTask;

    invoke-static {v2}, Lcom/pizza/work/SaleActivity$LoadViewTask;->access$4(Lcom/pizza/work/SaleActivity$LoadViewTask;)Lcom/pizza/work/SaleActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/pizza/work/SaleActivity;->access$7(Lcom/pizza/work/SaleActivity;)Landroid/widget/EditText;

    move-result-object v2

    const-string v5, ""

    invoke-virtual {v2, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1350
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pizza/work/SaleActivity$LoadViewTask$8;->this$1:Lcom/pizza/work/SaleActivity$LoadViewTask;

    invoke-static {v2}, Lcom/pizza/work/SaleActivity$LoadViewTask;->access$4(Lcom/pizza/work/SaleActivity$LoadViewTask;)Lcom/pizza/work/SaleActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/pizza/work/SaleActivity;->access$18(Lcom/pizza/work/SaleActivity;)Landroid/widget/EditText;

    move-result-object v2

    const-string v5, ""

    invoke-virtual {v2, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1351
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pizza/work/SaleActivity$LoadViewTask$8;->this$1:Lcom/pizza/work/SaleActivity$LoadViewTask;

    invoke-static {v2}, Lcom/pizza/work/SaleActivity$LoadViewTask;->access$4(Lcom/pizza/work/SaleActivity$LoadViewTask;)Lcom/pizza/work/SaleActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/pizza/work/SaleActivity;->access$19(Lcom/pizza/work/SaleActivity;)Landroid/widget/EditText;

    move-result-object v2

    const-string v5, ""

    invoke-virtual {v2, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1352
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pizza/work/SaleActivity$LoadViewTask$8;->this$1:Lcom/pizza/work/SaleActivity$LoadViewTask;

    invoke-static {v2}, Lcom/pizza/work/SaleActivity$LoadViewTask;->access$4(Lcom/pizza/work/SaleActivity$LoadViewTask;)Lcom/pizza/work/SaleActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/pizza/work/SaleActivity;->access$14(Lcom/pizza/work/SaleActivity;)Landroid/widget/TextView;

    move-result-object v2

    const-string v5, ""

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1356
    .end local v24           #alertbox:Landroid/app/AlertDialog$Builder;
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pizza/work/SaleActivity$LoadViewTask$8;->this$1:Lcom/pizza/work/SaleActivity$LoadViewTask;

    invoke-static {v2}, Lcom/pizza/work/SaleActivity$LoadViewTask;->access$4(Lcom/pizza/work/SaleActivity$LoadViewTask;)Lcom/pizza/work/SaleActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/pizza/work/SaleActivity;->access$22(Lcom/pizza/work/SaleActivity;)Landroid/widget/Button;

    move-result-object v2

    const/4 v5, 0x1

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 1360
    .end local v28           #flag:Z
    .end local v29           #no:I
    :cond_5
    return-void

    .line 1221
    .restart local v28       #flag:Z
    .restart local v29       #no:I
    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pizza/work/SaleActivity$LoadViewTask$8;->this$1:Lcom/pizza/work/SaleActivity$LoadViewTask;

    invoke-static {v2}, Lcom/pizza/work/SaleActivity$LoadViewTask;->access$4(Lcom/pizza/work/SaleActivity$LoadViewTask;)Lcom/pizza/work/SaleActivity;

    move-result-object v2

    iget-boolean v2, v2, Lcom/pizza/work/SaleActivity;->togflag:Z

    if-eqz v2, :cond_a

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pizza/work/SaleActivity$LoadViewTask$8;->this$1:Lcom/pizza/work/SaleActivity$LoadViewTask;

    invoke-static {v2}, Lcom/pizza/work/SaleActivity$LoadViewTask;->access$4(Lcom/pizza/work/SaleActivity$LoadViewTask;)Lcom/pizza/work/SaleActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/pizza/work/SaleActivity;->access$18(Lcom/pizza/work/SaleActivity;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v5, ""

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    .line 1224
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pizza/work/SaleActivity$LoadViewTask$8;->this$1:Lcom/pizza/work/SaleActivity$LoadViewTask;

    invoke-static {v2}, Lcom/pizza/work/SaleActivity$LoadViewTask;->access$4(Lcom/pizza/work/SaleActivity$LoadViewTask;)Lcom/pizza/work/SaleActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/pizza/work/SaleActivity;->access$7(Lcom/pizza/work/SaleActivity;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v31

    .line 1225
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pizza/work/SaleActivity$LoadViewTask$8;->this$1:Lcom/pizza/work/SaleActivity$LoadViewTask;

    invoke-static {v2}, Lcom/pizza/work/SaleActivity$LoadViewTask;->access$4(Lcom/pizza/work/SaleActivity$LoadViewTask;)Lcom/pizza/work/SaleActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/pizza/work/SaleActivity;->access$18(Lcom/pizza/work/SaleActivity;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v27

    .line 1227
    move/from16 v0, v27

    move/from16 v1, v31

    if-ge v0, v1, :cond_7

    .line 1229
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pizza/work/SaleActivity$LoadViewTask$8;->this$1:Lcom/pizza/work/SaleActivity$LoadViewTask;

    invoke-static {v2}, Lcom/pizza/work/SaleActivity$LoadViewTask;->access$4(Lcom/pizza/work/SaleActivity$LoadViewTask;)Lcom/pizza/work/SaleActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/pizza/work/SaleActivity;->access$18(Lcom/pizza/work/SaleActivity;)Landroid/widget/EditText;

    move-result-object v2

    const-string v5, ""

    invoke-virtual {v2, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1230
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pizza/work/SaleActivity$LoadViewTask$8;->this$1:Lcom/pizza/work/SaleActivity$LoadViewTask;

    invoke-static {v2}, Lcom/pizza/work/SaleActivity$LoadViewTask;->access$4(Lcom/pizza/work/SaleActivity$LoadViewTask;)Lcom/pizza/work/SaleActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/pizza/work/SaleActivity;->access$18(Lcom/pizza/work/SaleActivity;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->requestFocus()Z

    .line 1232
    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pizza/work/SaleActivity$LoadViewTask$8;->this$1:Lcom/pizza/work/SaleActivity$LoadViewTask;

    invoke-static {v2}, Lcom/pizza/work/SaleActivity$LoadViewTask;->access$4(Lcom/pizza/work/SaleActivity$LoadViewTask;)Lcom/pizza/work/SaleActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/pizza/work/SaleActivity;->access$23(Lcom/pizza/work/SaleActivity;)Landroid/widget/Spinner;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Spinner;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 1233
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pizza/work/SaleActivity$LoadViewTask$8;->this$1:Lcom/pizza/work/SaleActivity$LoadViewTask;

    invoke-static {v2}, Lcom/pizza/work/SaleActivity$LoadViewTask;->access$4(Lcom/pizza/work/SaleActivity$LoadViewTask;)Lcom/pizza/work/SaleActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/pizza/work/SaleActivity;->access$23(Lcom/pizza/work/SaleActivity;)Landroid/widget/Spinner;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v4

    .end local v4           #abctype:Ljava/lang/String;
    check-cast v4, Ljava/lang/String;

    .line 1235
    .restart local v4       #abctype:Ljava/lang/String;
    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pizza/work/SaleActivity$LoadViewTask$8;->this$1:Lcom/pizza/work/SaleActivity$LoadViewTask;

    invoke-static {v2}, Lcom/pizza/work/SaleActivity$LoadViewTask;->access$4(Lcom/pizza/work/SaleActivity$LoadViewTask;)Lcom/pizza/work/SaleActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/pizza/work/SaleActivity;->access$18(Lcom/pizza/work/SaleActivity;)Landroid/widget/EditText;

    move-result-object v2

    const/4 v5, 0x1

    invoke-virtual {v2, v5}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 1236
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pizza/work/SaleActivity$LoadViewTask$8;->this$1:Lcom/pizza/work/SaleActivity$LoadViewTask;

    invoke-static {v2}, Lcom/pizza/work/SaleActivity$LoadViewTask;->access$4(Lcom/pizza/work/SaleActivity$LoadViewTask;)Lcom/pizza/work/SaleActivity;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/pizza/work/SaleActivity$LoadViewTask$8;->this$1:Lcom/pizza/work/SaleActivity$LoadViewTask;

    invoke-static {v5}, Lcom/pizza/work/SaleActivity$LoadViewTask;->access$4(Lcom/pizza/work/SaleActivity$LoadViewTask;)Lcom/pizza/work/SaleActivity;

    move-result-object v5

    invoke-static {v5}, Lcom/pizza/work/SaleActivity;->access$7(Lcom/pizza/work/SaleActivity;)Landroid/widget/EditText;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-interface {v5}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/pizza/work/SaleActivity$LoadViewTask$8;->this$1:Lcom/pizza/work/SaleActivity$LoadViewTask;

    invoke-static {v6}, Lcom/pizza/work/SaleActivity$LoadViewTask;->access$4(Lcom/pizza/work/SaleActivity$LoadViewTask;)Lcom/pizza/work/SaleActivity;

    move-result-object v6

    invoke-static {v6}, Lcom/pizza/work/SaleActivity;->access$18(Lcom/pizza/work/SaleActivity;)Landroid/widget/EditText;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-interface {v6}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {v2 .. v9}, Lcom/pizza/work/SaleActivity;->canSale(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)I

    move-result v25

    .line 1248
    :goto_1
    const/16 v30, 0x0

    .line 1250
    .local v30, nocount:I
    const/4 v2, 0x1

    move/from16 v0, v25

    if-ne v0, v2, :cond_2

    .line 1252
    const/4 v2, -0x1

    move/from16 v0, v31

    if-le v0, v2, :cond_d

    const/4 v2, -0x1

    move/from16 v0, v27

    if-le v0, v2, :cond_d

    .line 1255
    move/from16 v30, v31

    :goto_2
    move/from16 v0, v30

    move/from16 v1, v27

    if-gt v0, v1, :cond_2

    .line 1258
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pizza/work/SaleActivity$LoadViewTask$8;->this$1:Lcom/pizza/work/SaleActivity$LoadViewTask;

    invoke-static {v2}, Lcom/pizza/work/SaleActivity$LoadViewTask;->access$4(Lcom/pizza/work/SaleActivity$LoadViewTask;)Lcom/pizza/work/SaleActivity;

    move-result-object v2

    iget v5, v2, Lcom/pizza/work/SaleActivity;->gridid:I

    add-int/lit8 v5, v5, 0x1

    iput v5, v2, Lcom/pizza/work/SaleActivity;->gridid:I

    .line 1259
    sub-int v2, v27, v31

    add-int/lit8 v26, v2, 0x1

    .line 1261
    .local v26, dif:I
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    int-to-double v5, v2

    invoke-static {v9}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v10

    mul-double v32, v5, v10

    .line 1264
    .local v32, totalPrice:D
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pizza/work/SaleActivity$LoadViewTask$8;->this$1:Lcom/pizza/work/SaleActivity$LoadViewTask;

    invoke-static {v2}, Lcom/pizza/work/SaleActivity$LoadViewTask;->access$4(Lcom/pizza/work/SaleActivity$LoadViewTask;)Lcom/pizza/work/SaleActivity;

    move-result-object v2

    iget-wide v5, v2, Lcom/pizza/work/SaleActivity;->subtotal:D

    add-double v5, v5, v32

    iput-wide v5, v2, Lcom/pizza/work/SaleActivity;->subtotal:D

    .line 1265
    invoke-static/range {v32 .. v33}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v16

    .line 1266
    .local v16, totalprice:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pizza/work/SaleActivity$LoadViewTask$8;->this$1:Lcom/pizza/work/SaleActivity$LoadViewTask;

    invoke-static {v2}, Lcom/pizza/work/SaleActivity$LoadViewTask;->access$4(Lcom/pizza/work/SaleActivity$LoadViewTask;)Lcom/pizza/work/SaleActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/pizza/work/SaleActivity;->access$14(Lcom/pizza/work/SaleActivity;)Landroid/widget/TextView;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/pizza/work/SaleActivity$LoadViewTask$8;->this$1:Lcom/pizza/work/SaleActivity$LoadViewTask;

    invoke-static {v5}, Lcom/pizza/work/SaleActivity$LoadViewTask;->access$4(Lcom/pizza/work/SaleActivity$LoadViewTask;)Lcom/pizza/work/SaleActivity;

    move-result-object v5

    iget-wide v5, v5, Lcom/pizza/work/SaleActivity;->subtotal:D

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1271
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pizza/work/SaleActivity$LoadViewTask$8;->this$1:Lcom/pizza/work/SaleActivity$LoadViewTask;

    invoke-static {v2}, Lcom/pizza/work/SaleActivity$LoadViewTask;->access$4(Lcom/pizza/work/SaleActivity$LoadViewTask;)Lcom/pizza/work/SaleActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/pizza/work/SaleActivity;->access$7(Lcom/pizza/work/SaleActivity;)Landroid/widget/EditText;

    move-result-object v2

    const-string v5, ""

    invoke-virtual {v2, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1272
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pizza/work/SaleActivity$LoadViewTask$8;->this$1:Lcom/pizza/work/SaleActivity$LoadViewTask;

    invoke-static {v2}, Lcom/pizza/work/SaleActivity$LoadViewTask;->access$4(Lcom/pizza/work/SaleActivity$LoadViewTask;)Lcom/pizza/work/SaleActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/pizza/work/SaleActivity;->access$19(Lcom/pizza/work/SaleActivity;)Landroid/widget/EditText;

    move-result-object v2

    const-string v5, ""

    invoke-virtual {v2, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1274
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pizza/work/SaleActivity$LoadViewTask$8;->this$1:Lcom/pizza/work/SaleActivity$LoadViewTask;

    invoke-static {v2}, Lcom/pizza/work/SaleActivity$LoadViewTask;->access$4(Lcom/pizza/work/SaleActivity$LoadViewTask;)Lcom/pizza/work/SaleActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/pizza/work/SaleActivity;->access$18(Lcom/pizza/work/SaleActivity;)Landroid/widget/EditText;

    move-result-object v2

    const-string v5, ""

    invoke-virtual {v2, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1276
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pizza/work/SaleActivity$LoadViewTask$8;->this$1:Lcom/pizza/work/SaleActivity$LoadViewTask;

    invoke-static {v2}, Lcom/pizza/work/SaleActivity$LoadViewTask;->access$4(Lcom/pizza/work/SaleActivity$LoadViewTask;)Lcom/pizza/work/SaleActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/pizza/work/SaleActivity;->access$7(Lcom/pizza/work/SaleActivity;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->requestFocus()Z

    .line 1277
    invoke-static/range {v30 .. v30}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v13

    .line 1278
    .local v13, nocstring:Ljava/lang/String;
    packed-switch v7, :pswitch_data_0

    .line 1295
    :cond_9
    :goto_3
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pizza/work/SaleActivity$LoadViewTask$8;->this$1:Lcom/pizza/work/SaleActivity$LoadViewTask;

    invoke-static {v2}, Lcom/pizza/work/SaleActivity$LoadViewTask;->access$4(Lcom/pizza/work/SaleActivity$LoadViewTask;)Lcom/pizza/work/SaleActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/pizza/work/SaleActivity;->access$17(Lcom/pizza/work/SaleActivity;)Landroid/widget/Button;

    move-result-object v2

    const/4 v5, 0x1

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 1297
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pizza/work/SaleActivity$LoadViewTask$8;->this$1:Lcom/pizza/work/SaleActivity$LoadViewTask;

    invoke-static {v2}, Lcom/pizza/work/SaleActivity$LoadViewTask;->access$4(Lcom/pizza/work/SaleActivity$LoadViewTask;)Lcom/pizza/work/SaleActivity;

    move-result-object v10

    move-object v11, v3

    move-object v12, v4

    move-object v14, v8

    move-object v15, v9

    invoke-virtual/range {v10 .. v16}, Lcom/pizza/work/SaleActivity;->saleViewFill(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1298
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pizza/work/SaleActivity$LoadViewTask$8;->this$1:Lcom/pizza/work/SaleActivity$LoadViewTask;

    invoke-static {v2}, Lcom/pizza/work/SaleActivity$LoadViewTask;->access$4(Lcom/pizza/work/SaleActivity$LoadViewTask;)Lcom/pizza/work/SaleActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/pizza/work/SaleActivity;->access$22(Lcom/pizza/work/SaleActivity;)Landroid/widget/Button;

    move-result-object v2

    const/4 v5, 0x1

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 1255
    add-int/lit8 v30, v30, 0x1

    goto/16 :goto_2

    .line 1240
    .end local v13           #nocstring:Ljava/lang/String;
    .end local v16           #totalprice:Ljava/lang/String;
    .end local v26           #dif:I
    .end local v30           #nocount:I
    .end local v32           #totalPrice:D
    :cond_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pizza/work/SaleActivity$LoadViewTask$8;->this$1:Lcom/pizza/work/SaleActivity$LoadViewTask;

    invoke-static {v2}, Lcom/pizza/work/SaleActivity$LoadViewTask;->access$4(Lcom/pizza/work/SaleActivity$LoadViewTask;)Lcom/pizza/work/SaleActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/pizza/work/SaleActivity;->access$23(Lcom/pizza/work/SaleActivity;)Landroid/widget/Spinner;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Spinner;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 1241
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pizza/work/SaleActivity$LoadViewTask$8;->this$1:Lcom/pizza/work/SaleActivity$LoadViewTask;

    invoke-static {v2}, Lcom/pizza/work/SaleActivity$LoadViewTask;->access$4(Lcom/pizza/work/SaleActivity$LoadViewTask;)Lcom/pizza/work/SaleActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/pizza/work/SaleActivity;->access$23(Lcom/pizza/work/SaleActivity;)Landroid/widget/Spinner;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v4

    .end local v4           #abctype:Ljava/lang/String;
    check-cast v4, Ljava/lang/String;

    .line 1243
    .restart local v4       #abctype:Ljava/lang/String;
    :cond_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pizza/work/SaleActivity$LoadViewTask$8;->this$1:Lcom/pizza/work/SaleActivity$LoadViewTask;

    invoke-static {v2}, Lcom/pizza/work/SaleActivity$LoadViewTask;->access$4(Lcom/pizza/work/SaleActivity$LoadViewTask;)Lcom/pizza/work/SaleActivity;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/pizza/work/SaleActivity$LoadViewTask$8;->this$1:Lcom/pizza/work/SaleActivity$LoadViewTask;

    invoke-static {v5}, Lcom/pizza/work/SaleActivity$LoadViewTask;->access$4(Lcom/pizza/work/SaleActivity$LoadViewTask;)Lcom/pizza/work/SaleActivity;

    move-result-object v5

    invoke-static {v5}, Lcom/pizza/work/SaleActivity;->access$7(Lcom/pizza/work/SaleActivity;)Landroid/widget/EditText;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-interface {v5}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "-1"

    invoke-virtual/range {v2 .. v9}, Lcom/pizza/work/SaleActivity;->canSale(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)I

    move-result v25

    goto/16 :goto_1

    .line 1282
    .restart local v13       #nocstring:Ljava/lang/String;
    .restart local v16       #totalprice:Ljava/lang/String;
    .restart local v26       #dif:I
    .restart local v30       #nocount:I
    .restart local v32       #totalPrice:D
    :pswitch_1
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v5, 0x2

    if-ge v2, v5, :cond_9

    .line 1283
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v5, "0"

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v0, v30

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 1284
    goto/16 :goto_3

    .line 1286
    :pswitch_2
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v5, 0x2

    if-ge v2, v5, :cond_c

    .line 1287
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v5, "00"

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v0, v30

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 1288
    :cond_c
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v5, 0x3

    if-ge v2, v5, :cond_9

    .line 1289
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v5, "0"

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v0, v30

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_3

    .line 1306
    .end local v13           #nocstring:Ljava/lang/String;
    .end local v16           #totalprice:Ljava/lang/String;
    .end local v26           #dif:I
    .end local v32           #totalPrice:D
    :cond_d
    invoke-static {}, Lcom/pizza/work/SaleActivity;->access$26()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-static {v2}, Lcom/pizza/work/SaleActivity;->access$27(I)V

    .line 1308
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pizza/work/SaleActivity$LoadViewTask$8;->this$1:Lcom/pizza/work/SaleActivity$LoadViewTask;

    invoke-static {v2}, Lcom/pizza/work/SaleActivity$LoadViewTask;->access$4(Lcom/pizza/work/SaleActivity$LoadViewTask;)Lcom/pizza/work/SaleActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/pizza/work/SaleActivity;->access$17(Lcom/pizza/work/SaleActivity;)Landroid/widget/Button;

    move-result-object v2

    const/4 v5, 0x1

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 1309
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pizza/work/SaleActivity$LoadViewTask$8;->this$1:Lcom/pizza/work/SaleActivity$LoadViewTask;

    invoke-static {v2}, Lcom/pizza/work/SaleActivity$LoadViewTask;->access$4(Lcom/pizza/work/SaleActivity$LoadViewTask;)Lcom/pizza/work/SaleActivity;

    move-result-object v2

    iget v0, v2, Lcom/pizza/work/SaleActivity;->val:I

    move/from16 v34, v0

    .line 1312
    .local v34, type123:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pizza/work/SaleActivity$LoadViewTask$8;->this$1:Lcom/pizza/work/SaleActivity$LoadViewTask;

    invoke-static {v2}, Lcom/pizza/work/SaleActivity$LoadViewTask;->access$4(Lcom/pizza/work/SaleActivity$LoadViewTask;)Lcom/pizza/work/SaleActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/pizza/work/SaleActivity;->access$23(Lcom/pizza/work/SaleActivity;)Landroid/widget/Spinner;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Spinner;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_e

    .line 1313
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pizza/work/SaleActivity$LoadViewTask$8;->this$1:Lcom/pizza/work/SaleActivity$LoadViewTask;

    invoke-static {v2}, Lcom/pizza/work/SaleActivity$LoadViewTask;->access$4(Lcom/pizza/work/SaleActivity$LoadViewTask;)Lcom/pizza/work/SaleActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/pizza/work/SaleActivity;->access$23(Lcom/pizza/work/SaleActivity;)Landroid/widget/Spinner;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v4

    .end local v4           #abctype:Ljava/lang/String;
    check-cast v4, Ljava/lang/String;

    .line 1316
    .restart local v4       #abctype:Ljava/lang/String;
    :cond_e
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    int-to-double v5, v2

    invoke-static {v9}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v10

    mul-double v32, v5, v10

    .line 1318
    .restart local v32       #totalPrice:D
    invoke-static/range {v32 .. v33}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v16

    .line 1319
    .restart local v16       #totalprice:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pizza/work/SaleActivity$LoadViewTask$8;->this$1:Lcom/pizza/work/SaleActivity$LoadViewTask;

    invoke-static {v2}, Lcom/pizza/work/SaleActivity$LoadViewTask;->access$4(Lcom/pizza/work/SaleActivity$LoadViewTask;)Lcom/pizza/work/SaleActivity;

    move-result-object v2

    iget-wide v5, v2, Lcom/pizza/work/SaleActivity;->subtotal:D

    add-double v5, v5, v32

    iput-wide v5, v2, Lcom/pizza/work/SaleActivity;->subtotal:D

    .line 1321
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pizza/work/SaleActivity$LoadViewTask$8;->this$1:Lcom/pizza/work/SaleActivity$LoadViewTask;

    invoke-static {v2}, Lcom/pizza/work/SaleActivity$LoadViewTask;->access$4(Lcom/pizza/work/SaleActivity$LoadViewTask;)Lcom/pizza/work/SaleActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/pizza/work/SaleActivity;->access$14(Lcom/pizza/work/SaleActivity;)Landroid/widget/TextView;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/pizza/work/SaleActivity$LoadViewTask$8;->this$1:Lcom/pizza/work/SaleActivity$LoadViewTask;

    invoke-static {v5}, Lcom/pizza/work/SaleActivity$LoadViewTask;->access$4(Lcom/pizza/work/SaleActivity$LoadViewTask;)Lcom/pizza/work/SaleActivity;

    move-result-object v5

    iget-wide v5, v5, Lcom/pizza/work/SaleActivity;->subtotal:D

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1323
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pizza/work/SaleActivity$LoadViewTask$8;->this$1:Lcom/pizza/work/SaleActivity$LoadViewTask;

    invoke-static {v2}, Lcom/pizza/work/SaleActivity$LoadViewTask;->access$4(Lcom/pizza/work/SaleActivity$LoadViewTask;)Lcom/pizza/work/SaleActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/pizza/work/SaleActivity;->access$7(Lcom/pizza/work/SaleActivity;)Landroid/widget/EditText;

    move-result-object v2

    const-string v5, ""

    invoke-virtual {v2, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1324
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pizza/work/SaleActivity$LoadViewTask$8;->this$1:Lcom/pizza/work/SaleActivity$LoadViewTask;

    invoke-static {v2}, Lcom/pizza/work/SaleActivity$LoadViewTask;->access$4(Lcom/pizza/work/SaleActivity$LoadViewTask;)Lcom/pizza/work/SaleActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/pizza/work/SaleActivity;->access$19(Lcom/pizza/work/SaleActivity;)Landroid/widget/EditText;

    move-result-object v2

    const-string v5, ""

    invoke-virtual {v2, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1328
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pizza/work/SaleActivity$LoadViewTask$8;->this$1:Lcom/pizza/work/SaleActivity$LoadViewTask;

    invoke-static {v2}, Lcom/pizza/work/SaleActivity$LoadViewTask;->access$4(Lcom/pizza/work/SaleActivity$LoadViewTask;)Lcom/pizza/work/SaleActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/pizza/work/SaleActivity;->access$7(Lcom/pizza/work/SaleActivity;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->requestFocus()Z

    .line 1329
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pizza/work/SaleActivity$LoadViewTask$8;->this$1:Lcom/pizza/work/SaleActivity$LoadViewTask;

    invoke-static {v2}, Lcom/pizza/work/SaleActivity$LoadViewTask;->access$4(Lcom/pizza/work/SaleActivity$LoadViewTask;)Lcom/pizza/work/SaleActivity;

    move-result-object v2

    iget v5, v2, Lcom/pizza/work/SaleActivity;->gridid:I

    add-int/lit8 v5, v5, 0x1

    iput v5, v2, Lcom/pizza/work/SaleActivity;->gridid:I

    .line 1331
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pizza/work/SaleActivity$LoadViewTask$8;->this$1:Lcom/pizza/work/SaleActivity$LoadViewTask;

    invoke-static {v2}, Lcom/pizza/work/SaleActivity$LoadViewTask;->access$4(Lcom/pizza/work/SaleActivity$LoadViewTask;)Lcom/pizza/work/SaleActivity;

    move-result-object v17

    move-object/from16 v18, v3

    move-object/from16 v19, v4

    move-object/from16 v21, v8

    move-object/from16 v22, v9

    move-object/from16 v23, v16

    invoke-virtual/range {v17 .. v23}, Lcom/pizza/work/SaleActivity;->saleViewFill(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1332
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pizza/work/SaleActivity$LoadViewTask$8;->this$1:Lcom/pizza/work/SaleActivity$LoadViewTask;

    invoke-static {v2}, Lcom/pizza/work/SaleActivity$LoadViewTask;->access$4(Lcom/pizza/work/SaleActivity$LoadViewTask;)Lcom/pizza/work/SaleActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/pizza/work/SaleActivity;->access$22(Lcom/pizza/work/SaleActivity;)Landroid/widget/Button;

    move-result-object v2

    const/4 v5, 0x1

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setVisibility(I)V

    goto/16 :goto_0

    .line 1278
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
