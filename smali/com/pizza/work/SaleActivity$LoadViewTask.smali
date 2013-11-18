.class Lcom/pizza/work/SaleActivity$LoadViewTask;
.super Landroid/os/AsyncTask;
.source "SaleActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pizza/work/SaleActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LoadViewTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pizza/work/SaleActivity;


# direct methods
.method private constructor <init>(Lcom/pizza/work/SaleActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 582
    iput-object p1, p0, Lcom/pizza/work/SaleActivity$LoadViewTask;->this$0:Lcom/pizza/work/SaleActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/pizza/work/SaleActivity;Lcom/pizza/work/SaleActivity$LoadViewTask;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 582
    invoke-direct {p0, p1}, Lcom/pizza/work/SaleActivity$LoadViewTask;-><init>(Lcom/pizza/work/SaleActivity;)V

    return-void
.end method

.method static synthetic access$4(Lcom/pizza/work/SaleActivity$LoadViewTask;)Lcom/pizza/work/SaleActivity;
    .locals 1
    .parameter

    .prologue
    .line 582
    iget-object v0, p0, Lcom/pizza/work/SaleActivity$LoadViewTask;->this$0:Lcom/pizza/work/SaleActivity;

    return-object v0
.end method


# virtual methods
.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/pizza/work/SaleActivity$LoadViewTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 5
    .parameter "params"

    .prologue
    .line 614
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 617
    const/4 v0, 0x0

    .line 619
    .local v0, counter:I
    :goto_0
    const/4 v2, 0x4

    if-le v0, v2, :cond_0

    .line 614
    :try_start_1
    monitor-exit p0

    .line 633
    .end local v0           #counter:I
    :goto_1
    const/4 v2, 0x0

    return-object v2

    .line 622
    .restart local v0       #counter:I
    :cond_0
    const-wide/16 v2, 0x352

    invoke-virtual {p0, v2, v3}, Ljava/lang/Object;->wait(J)V

    .line 624
    add-int/lit8 v0, v0, 0x1

    .line 625
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Integer;

    const/4 v3, 0x0

    mul-int/lit8 v4, v0, 0x19

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {p0, v2}, Lcom/pizza/work/SaleActivity$LoadViewTask;->publishProgress([Ljava/lang/Object;)V

    goto :goto_0

    .line 614
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v2
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    .line 629
    .end local v0           #counter:I
    :catch_0
    move-exception v1

    .line 631
    .local v1, e:Ljava/lang/InterruptedException;
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/pizza/work/SaleActivity$LoadViewTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 6
    .parameter "result"

    .prologue
    .line 653
    :try_start_0
    iget-object v3, p0, Lcom/pizza/work/SaleActivity$LoadViewTask;->this$0:Lcom/pizza/work/SaleActivity;

    const v4, 0x7f030010

    invoke-virtual {v3, v4}, Lcom/pizza/work/SaleActivity;->setContentView(I)V

    .line 655
    iget-object v4, p0, Lcom/pizza/work/SaleActivity$LoadViewTask;->this$0:Lcom/pizza/work/SaleActivity;

    iget-object v3, p0, Lcom/pizza/work/SaleActivity$LoadViewTask;->this$0:Lcom/pizza/work/SaleActivity;

    const v5, 0x7f080030

    invoke-virtual {v3, v5}, Lcom/pizza/work/SaleActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/AutoCompleteTextView;

    invoke-static {v4, v3}, Lcom/pizza/work/SaleActivity;->access$2(Lcom/pizza/work/SaleActivity;Landroid/widget/AutoCompleteTextView;)V

    .line 657
    iget-object v4, p0, Lcom/pizza/work/SaleActivity$LoadViewTask;->this$0:Lcom/pizza/work/SaleActivity;

    iget-object v3, p0, Lcom/pizza/work/SaleActivity$LoadViewTask;->this$0:Lcom/pizza/work/SaleActivity;

    const v5, 0x7f080032

    invoke-virtual {v3, v5}, Lcom/pizza/work/SaleActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Spinner;

    invoke-static {v4, v3}, Lcom/pizza/work/SaleActivity;->access$3(Lcom/pizza/work/SaleActivity;Landroid/widget/Spinner;)V

    .line 658
    iget-object v4, p0, Lcom/pizza/work/SaleActivity$LoadViewTask;->this$0:Lcom/pizza/work/SaleActivity;

    iget-object v3, p0, Lcom/pizza/work/SaleActivity$LoadViewTask;->this$0:Lcom/pizza/work/SaleActivity;

    const v5, 0x7f080038

    invoke-virtual {v3, v5}, Lcom/pizza/work/SaleActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RadioGroup;

    invoke-static {v4, v3}, Lcom/pizza/work/SaleActivity;->access$4(Lcom/pizza/work/SaleActivity;Landroid/widget/RadioGroup;)V

    .line 659
    iget-object v4, p0, Lcom/pizza/work/SaleActivity$LoadViewTask;->this$0:Lcom/pizza/work/SaleActivity;

    iget-object v3, p0, Lcom/pizza/work/SaleActivity$LoadViewTask;->this$0:Lcom/pizza/work/SaleActivity;

    const v5, 0x7f08003c

    invoke-virtual {v3, v5}, Lcom/pizza/work/SaleActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Spinner;

    invoke-static {v4, v3}, Lcom/pizza/work/SaleActivity;->access$5(Lcom/pizza/work/SaleActivity;Landroid/widget/Spinner;)V

    .line 663
    iget-object v3, p0, Lcom/pizza/work/SaleActivity$LoadViewTask;->this$0:Lcom/pizza/work/SaleActivity;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Estimate     Agent Code  "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v5, Lcom/pizza/work/library/UserFunctions;->usercode:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/pizza/work/SaleActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 666
    iget-object v4, p0, Lcom/pizza/work/SaleActivity$LoadViewTask;->this$0:Lcom/pizza/work/SaleActivity;

    iget-object v3, p0, Lcom/pizza/work/SaleActivity$LoadViewTask;->this$0:Lcom/pizza/work/SaleActivity;

    const v5, 0x7f080039

    invoke-virtual {v3, v5}, Lcom/pizza/work/SaleActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RadioButton;

    iput-object v3, v4, Lcom/pizza/work/SaleActivity;->rb1:Landroid/widget/RadioButton;

    .line 667
    iget-object v4, p0, Lcom/pizza/work/SaleActivity$LoadViewTask;->this$0:Lcom/pizza/work/SaleActivity;

    iget-object v3, p0, Lcom/pizza/work/SaleActivity$LoadViewTask;->this$0:Lcom/pizza/work/SaleActivity;

    const v5, 0x7f08003a

    invoke-virtual {v3, v5}, Lcom/pizza/work/SaleActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RadioButton;

    iput-object v3, v4, Lcom/pizza/work/SaleActivity;->rb2:Landroid/widget/RadioButton;

    .line 668
    iget-object v4, p0, Lcom/pizza/work/SaleActivity$LoadViewTask;->this$0:Lcom/pizza/work/SaleActivity;

    iget-object v3, p0, Lcom/pizza/work/SaleActivity$LoadViewTask;->this$0:Lcom/pizza/work/SaleActivity;

    const v5, 0x7f08003b

    invoke-virtual {v3, v5}, Lcom/pizza/work/SaleActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RadioButton;

    iput-object v3, v4, Lcom/pizza/work/SaleActivity;->rb3:Landroid/widget/RadioButton;

    .line 670
    iget-object v3, p0, Lcom/pizza/work/SaleActivity$LoadViewTask;->this$0:Lcom/pizza/work/SaleActivity;

    invoke-virtual {v3}, Lcom/pizza/work/SaleActivity;->fillDate()V

    .line 671
    iget-object v3, p0, Lcom/pizza/work/SaleActivity$LoadViewTask;->this$0:Lcom/pizza/work/SaleActivity;

    iget-object v4, p0, Lcom/pizza/work/SaleActivity$LoadViewTask;->this$0:Lcom/pizza/work/SaleActivity;

    iget-object v4, v4, Lcom/pizza/work/SaleActivity;->today:Ljava/lang/String;

    iput-object v4, v3, Lcom/pizza/work/SaleActivity;->selectdate:Ljava/lang/String;

    .line 674
    iget-object v3, p0, Lcom/pizza/work/SaleActivity$LoadViewTask;->this$0:Lcom/pizza/work/SaleActivity;

    invoke-static {v3}, Lcom/pizza/work/SaleActivity;->access$6(Lcom/pizza/work/SaleActivity;)Landroid/widget/Spinner;

    move-result-object v3

    new-instance v4, Lcom/pizza/work/SaleActivity$LoadViewTask$1;

    invoke-direct {v4, p0}, Lcom/pizza/work/SaleActivity$LoadViewTask$1;-><init>(Lcom/pizza/work/SaleActivity$LoadViewTask;)V

    invoke-virtual {v3, v4}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 690
    iget-object v4, p0, Lcom/pizza/work/SaleActivity$LoadViewTask;->this$0:Lcom/pizza/work/SaleActivity;

    iget-object v3, p0, Lcom/pizza/work/SaleActivity$LoadViewTask;->this$0:Lcom/pizza/work/SaleActivity;

    const v5, 0x7f08003f

    invoke-virtual {v3, v5}, Lcom/pizza/work/SaleActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    invoke-static {v4, v3}, Lcom/pizza/work/SaleActivity;->access$8(Lcom/pizza/work/SaleActivity;Landroid/widget/EditText;)V

    .line 691
    iget-object v4, p0, Lcom/pizza/work/SaleActivity$LoadViewTask;->this$0:Lcom/pizza/work/SaleActivity;

    iget-object v3, p0, Lcom/pizza/work/SaleActivity$LoadViewTask;->this$0:Lcom/pizza/work/SaleActivity;

    const v5, 0x7f080041

    invoke-virtual {v3, v5}, Lcom/pizza/work/SaleActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    invoke-static {v4, v3}, Lcom/pizza/work/SaleActivity;->access$9(Lcom/pizza/work/SaleActivity;Landroid/widget/EditText;)V

    .line 692
    iget-object v4, p0, Lcom/pizza/work/SaleActivity$LoadViewTask;->this$0:Lcom/pizza/work/SaleActivity;

    iget-object v3, p0, Lcom/pizza/work/SaleActivity$LoadViewTask;->this$0:Lcom/pizza/work/SaleActivity;

    const v5, 0x7f080040

    invoke-virtual {v3, v5}, Lcom/pizza/work/SaleActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    invoke-static {v4, v3}, Lcom/pizza/work/SaleActivity;->access$10(Lcom/pizza/work/SaleActivity;Landroid/widget/EditText;)V

    .line 693
    iget-object v4, p0, Lcom/pizza/work/SaleActivity$LoadViewTask;->this$0:Lcom/pizza/work/SaleActivity;

    iget-object v3, p0, Lcom/pizza/work/SaleActivity$LoadViewTask;->this$0:Lcom/pizza/work/SaleActivity;

    const v5, 0x7f080042

    invoke-virtual {v3, v5}, Lcom/pizza/work/SaleActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    invoke-static {v4, v3}, Lcom/pizza/work/SaleActivity;->access$11(Lcom/pizza/work/SaleActivity;Landroid/widget/EditText;)V

    .line 694
    iget-object v3, p0, Lcom/pizza/work/SaleActivity$LoadViewTask;->this$0:Lcom/pizza/work/SaleActivity;

    invoke-static {v3}, Lcom/pizza/work/SaleActivity;->access$12(Lcom/pizza/work/SaleActivity;)Landroid/widget/EditText;

    move-result-object v3

    const-string v4, "10"

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 695
    iget-object v4, p0, Lcom/pizza/work/SaleActivity$LoadViewTask;->this$0:Lcom/pizza/work/SaleActivity;

    iget-object v3, p0, Lcom/pizza/work/SaleActivity$LoadViewTask;->this$0:Lcom/pizza/work/SaleActivity;

    const v5, 0x7f080044

    invoke-virtual {v3, v5}, Lcom/pizza/work/SaleActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-static {v4, v3}, Lcom/pizza/work/SaleActivity;->access$13(Lcom/pizza/work/SaleActivity;Landroid/widget/TextView;)V

    .line 696
    iget-object v3, p0, Lcom/pizza/work/SaleActivity$LoadViewTask;->this$0:Lcom/pizza/work/SaleActivity;

    invoke-static {v3}, Lcom/pizza/work/SaleActivity;->access$14(Lcom/pizza/work/SaleActivity;)Landroid/widget/TextView;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setFocusable(Z)V

    .line 698
    iget-object v4, p0, Lcom/pizza/work/SaleActivity$LoadViewTask;->this$0:Lcom/pizza/work/SaleActivity;

    iget-object v3, p0, Lcom/pizza/work/SaleActivity$LoadViewTask;->this$0:Lcom/pizza/work/SaleActivity;

    const v5, 0x7f080043

    invoke-virtual {v3, v5}, Lcom/pizza/work/SaleActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    invoke-static {v4, v3}, Lcom/pizza/work/SaleActivity;->access$15(Lcom/pizza/work/SaleActivity;Landroid/widget/Button;)V

    .line 699
    iget-object v4, p0, Lcom/pizza/work/SaleActivity$LoadViewTask;->this$0:Lcom/pizza/work/SaleActivity;

    iget-object v3, p0, Lcom/pizza/work/SaleActivity$LoadViewTask;->this$0:Lcom/pizza/work/SaleActivity;

    const v5, 0x7f080048

    invoke-virtual {v3, v5}, Lcom/pizza/work/SaleActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    invoke-static {v4, v3}, Lcom/pizza/work/SaleActivity;->access$16(Lcom/pizza/work/SaleActivity;Landroid/widget/Button;)V

    .line 700
    iget-object v3, p0, Lcom/pizza/work/SaleActivity$LoadViewTask;->this$0:Lcom/pizza/work/SaleActivity;

    invoke-static {v3}, Lcom/pizza/work/SaleActivity;->access$17(Lcom/pizza/work/SaleActivity;)Landroid/widget/Button;

    move-result-object v3

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 702
    iget-object v3, p0, Lcom/pizza/work/SaleActivity$LoadViewTask;->this$0:Lcom/pizza/work/SaleActivity;

    invoke-static {v3}, Lcom/pizza/work/SaleActivity;->access$18(Lcom/pizza/work/SaleActivity;)Landroid/widget/EditText;

    move-result-object v3

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setVisibility(I)V

    .line 703
    iget-object v3, p0, Lcom/pizza/work/SaleActivity$LoadViewTask;->this$0:Lcom/pizza/work/SaleActivity;

    invoke-static {v3}, Lcom/pizza/work/SaleActivity;->access$7(Lcom/pizza/work/SaleActivity;)Landroid/widget/EditText;

    move-result-object v3

    const-string v4, "No"

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 704
    iget-object v3, p0, Lcom/pizza/work/SaleActivity$LoadViewTask;->this$0:Lcom/pizza/work/SaleActivity;

    invoke-static {v3}, Lcom/pizza/work/SaleActivity;->access$19(Lcom/pizza/work/SaleActivity;)Landroid/widget/EditText;

    move-result-object v3

    const-string v4, "Qty"

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 705
    iget-object v3, p0, Lcom/pizza/work/SaleActivity$LoadViewTask;->this$0:Lcom/pizza/work/SaleActivity;

    invoke-static {v3}, Lcom/pizza/work/SaleActivity;->access$7(Lcom/pizza/work/SaleActivity;)Landroid/widget/EditText;

    move-result-object v3

    const/16 v4, 0x10

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setGravity(I)V

    .line 706
    iget-object v3, p0, Lcom/pizza/work/SaleActivity$LoadViewTask;->this$0:Lcom/pizza/work/SaleActivity;

    invoke-static {v3}, Lcom/pizza/work/SaleActivity;->access$19(Lcom/pizza/work/SaleActivity;)Landroid/widget/EditText;

    move-result-object v3

    const/16 v4, 0x10

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setGravity(I)V

    .line 707
    iget-object v4, p0, Lcom/pizza/work/SaleActivity$LoadViewTask;->this$0:Lcom/pizza/work/SaleActivity;

    iget-object v3, p0, Lcom/pizza/work/SaleActivity$LoadViewTask;->this$0:Lcom/pizza/work/SaleActivity;

    const v5, 0x7f080033

    invoke-virtual {v3, v5}, Lcom/pizza/work/SaleActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ToggleButton;

    invoke-static {v4, v3}, Lcom/pizza/work/SaleActivity;->access$20(Lcom/pizza/work/SaleActivity;Landroid/widget/ToggleButton;)V

    .line 709
    iget-object v3, p0, Lcom/pizza/work/SaleActivity$LoadViewTask;->this$0:Lcom/pizza/work/SaleActivity;

    invoke-static {v3}, Lcom/pizza/work/SaleActivity;->access$21(Lcom/pizza/work/SaleActivity;)Landroid/widget/ToggleButton;

    move-result-object v3

    new-instance v4, Lcom/pizza/work/SaleActivity$LoadViewTask$2;

    invoke-direct {v4, p0}, Lcom/pizza/work/SaleActivity$LoadViewTask$2;-><init>(Lcom/pizza/work/SaleActivity$LoadViewTask;)V

    invoke-virtual {v3, v4}, Landroid/widget/ToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 746
    iget-object v4, p0, Lcom/pizza/work/SaleActivity$LoadViewTask;->this$0:Lcom/pizza/work/SaleActivity;

    iget-object v3, p0, Lcom/pizza/work/SaleActivity$LoadViewTask;->this$0:Lcom/pizza/work/SaleActivity;

    const v5, 0x7f080046

    invoke-virtual {v3, v5}, Lcom/pizza/work/SaleActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ListView;

    iput-object v3, v4, Lcom/pizza/work/SaleActivity;->lv:Landroid/widget/ListView;

    .line 748
    new-instance v0, Landroid/widget/ArrayAdapter;

    iget-object v3, p0, Lcom/pizza/work/SaleActivity$LoadViewTask;->this$0:Lcom/pizza/work/SaleActivity;

    const v4, 0x1090009

    iget-object v5, p0, Lcom/pizza/work/SaleActivity$LoadViewTask;->this$0:Lcom/pizza/work/SaleActivity;

    iget-object v5, v5, Lcom/pizza/work/SaleActivity;->typevector:Ljava/util/ArrayList;

    invoke-direct {v0, v3, v4, v5}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 749
    .local v0, adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    iget-object v3, p0, Lcom/pizza/work/SaleActivity$LoadViewTask;->this$0:Lcom/pizza/work/SaleActivity;

    invoke-static {v3}, Lcom/pizza/work/SaleActivity;->access$23(Lcom/pizza/work/SaleActivity;)Landroid/widget/Spinner;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 750
    iget-object v3, p0, Lcom/pizza/work/SaleActivity$LoadViewTask;->this$0:Lcom/pizza/work/SaleActivity;

    iget-object v4, p0, Lcom/pizza/work/SaleActivity$LoadViewTask;->this$0:Lcom/pizza/work/SaleActivity;

    iget-object v4, v4, Lcom/pizza/work/SaleActivity;->productTemp:Lcom/pizza/work/library/Product;

    iput-object v4, v3, Lcom/pizza/work/SaleActivity;->productObject:Lcom/pizza/work/library/Product;

    .line 751
    iget-object v3, p0, Lcom/pizza/work/SaleActivity$LoadViewTask;->this$0:Lcom/pizza/work/SaleActivity;

    invoke-static {v3}, Lcom/pizza/work/SaleActivity;->access$24(Lcom/pizza/work/SaleActivity;)Landroid/widget/RadioGroup;

    move-result-object v3

    new-instance v4, Lcom/pizza/work/SaleActivity$LoadViewTask$3;

    invoke-direct {v4, p0}, Lcom/pizza/work/SaleActivity$LoadViewTask$3;-><init>(Lcom/pizza/work/SaleActivity$LoadViewTask;)V

    invoke-virtual {v3, v4}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 861
    iget-object v3, p0, Lcom/pizza/work/SaleActivity$LoadViewTask;->this$0:Lcom/pizza/work/SaleActivity;

    iget-object v3, v3, Lcom/pizza/work/SaleActivity;->saleFunction:Lcom/pizza/work/library/SaleFunctions;

    invoke-virtual {v3}, Lcom/pizza/work/library/SaleFunctions;->fillParty()Ljava/util/Vector;

    move-result-object v2

    .line 863
    .local v2, v:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/lang/String;>;"
    new-instance v0, Landroid/widget/ArrayAdapter;

    .end local v0           #adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    iget-object v3, p0, Lcom/pizza/work/SaleActivity$LoadViewTask;->this$0:Lcom/pizza/work/SaleActivity;

    const v4, 0x1090003

    invoke-direct {v0, v3, v4, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 865
    .restart local v0       #adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    iget-object v3, p0, Lcom/pizza/work/SaleActivity$LoadViewTask;->this$0:Lcom/pizza/work/SaleActivity;

    invoke-static {v3}, Lcom/pizza/work/SaleActivity;->access$25(Lcom/pizza/work/SaleActivity;)Landroid/widget/AutoCompleteTextView;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/widget/AutoCompleteTextView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 866
    iget-object v3, p0, Lcom/pizza/work/SaleActivity$LoadViewTask;->this$0:Lcom/pizza/work/SaleActivity;

    invoke-static {v3}, Lcom/pizza/work/SaleActivity;->access$25(Lcom/pizza/work/SaleActivity;)Landroid/widget/AutoCompleteTextView;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/widget/AutoCompleteTextView;->setThreshold(I)V

    .line 867
    iget-object v3, p0, Lcom/pizza/work/SaleActivity$LoadViewTask;->this$0:Lcom/pizza/work/SaleActivity;

    invoke-virtual {v3}, Lcom/pizza/work/SaleActivity;->fillProduct()V

    .line 868
    iget-object v3, p0, Lcom/pizza/work/SaleActivity$LoadViewTask;->this$0:Lcom/pizza/work/SaleActivity;

    invoke-static {v3}, Lcom/pizza/work/SaleActivity;->access$19(Lcom/pizza/work/SaleActivity;)Landroid/widget/EditText;

    move-result-object v3

    new-instance v4, Lcom/pizza/work/SaleActivity$LoadViewTask$4;

    invoke-direct {v4, p0}, Lcom/pizza/work/SaleActivity$LoadViewTask$4;-><init>(Lcom/pizza/work/SaleActivity$LoadViewTask;)V

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 966
    iget-object v3, p0, Lcom/pizza/work/SaleActivity$LoadViewTask;->this$0:Lcom/pizza/work/SaleActivity;

    invoke-static {v3}, Lcom/pizza/work/SaleActivity;->access$12(Lcom/pizza/work/SaleActivity;)Landroid/widget/EditText;

    move-result-object v3

    new-instance v4, Lcom/pizza/work/SaleActivity$LoadViewTask$5;

    invoke-direct {v4, p0}, Lcom/pizza/work/SaleActivity$LoadViewTask$5;-><init>(Lcom/pizza/work/SaleActivity$LoadViewTask;)V

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1025
    iget-object v3, p0, Lcom/pizza/work/SaleActivity$LoadViewTask;->this$0:Lcom/pizza/work/SaleActivity;

    invoke-static {v3}, Lcom/pizza/work/SaleActivity;->access$7(Lcom/pizza/work/SaleActivity;)Landroid/widget/EditText;

    move-result-object v3

    new-instance v4, Lcom/pizza/work/SaleActivity$LoadViewTask$6;

    invoke-direct {v4, p0}, Lcom/pizza/work/SaleActivity$LoadViewTask$6;-><init>(Lcom/pizza/work/SaleActivity$LoadViewTask;)V

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1105
    iget-object v3, p0, Lcom/pizza/work/SaleActivity$LoadViewTask;->this$0:Lcom/pizza/work/SaleActivity;

    invoke-static {v3}, Lcom/pizza/work/SaleActivity;->access$18(Lcom/pizza/work/SaleActivity;)Landroid/widget/EditText;

    move-result-object v3

    new-instance v4, Lcom/pizza/work/SaleActivity$LoadViewTask$7;

    invoke-direct {v4, p0}, Lcom/pizza/work/SaleActivity$LoadViewTask$7;-><init>(Lcom/pizza/work/SaleActivity$LoadViewTask;)V

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1169
    iget-object v3, p0, Lcom/pizza/work/SaleActivity$LoadViewTask;->this$0:Lcom/pizza/work/SaleActivity;

    invoke-static {v3}, Lcom/pizza/work/SaleActivity;->access$22(Lcom/pizza/work/SaleActivity;)Landroid/widget/Button;

    move-result-object v3

    new-instance v4, Lcom/pizza/work/SaleActivity$LoadViewTask$8;

    invoke-direct {v4, p0}, Lcom/pizza/work/SaleActivity$LoadViewTask$8;-><init>(Lcom/pizza/work/SaleActivity$LoadViewTask;)V

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1366
    iget-object v3, p0, Lcom/pizza/work/SaleActivity$LoadViewTask;->this$0:Lcom/pizza/work/SaleActivity;

    invoke-static {v3}, Lcom/pizza/work/SaleActivity;->access$17(Lcom/pizza/work/SaleActivity;)Landroid/widget/Button;

    move-result-object v3

    new-instance v4, Lcom/pizza/work/SaleActivity$LoadViewTask$9;

    invoke-direct {v4, p0}, Lcom/pizza/work/SaleActivity$LoadViewTask$9;-><init>(Lcom/pizza/work/SaleActivity$LoadViewTask;)V

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1408
    iget-object v3, p0, Lcom/pizza/work/SaleActivity$LoadViewTask;->this$0:Lcom/pizza/work/SaleActivity;

    iget-object v3, v3, Lcom/pizza/work/SaleActivity;->lv:Landroid/widget/ListView;

    new-instance v4, Lcom/pizza/work/SaleActivity$LoadViewTask$10;

    invoke-direct {v4, p0}, Lcom/pizza/work/SaleActivity$LoadViewTask$10;-><init>(Lcom/pizza/work/SaleActivity$LoadViewTask;)V

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1427
    .end local v0           #adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    .end local v2           #v:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/lang/String;>;"
    :goto_0
    iget-object v3, p0, Lcom/pizza/work/SaleActivity$LoadViewTask;->this$0:Lcom/pizza/work/SaleActivity;

    invoke-static {v3}, Lcom/pizza/work/SaleActivity;->access$1(Lcom/pizza/work/SaleActivity;)Landroid/app/ProgressDialog;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/ProgressDialog;->dismiss()V

    .line 1428
    return-void

    .line 1422
    :catch_0
    move-exception v1

    .line 1425
    .local v1, ex:Ljava/lang/Exception;
    const-string v3, "Error from "

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected onPreExecute()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 590
    iget-object v0, p0, Lcom/pizza/work/SaleActivity$LoadViewTask;->this$0:Lcom/pizza/work/SaleActivity;

    new-instance v1, Landroid/app/ProgressDialog;

    iget-object v2, p0, Lcom/pizza/work/SaleActivity$LoadViewTask;->this$0:Lcom/pizza/work/SaleActivity;

    invoke-direct {v1, v2}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v1}, Lcom/pizza/work/SaleActivity;->access$0(Lcom/pizza/work/SaleActivity;Landroid/app/ProgressDialog;)V

    .line 591
    iget-object v0, p0, Lcom/pizza/work/SaleActivity$LoadViewTask;->this$0:Lcom/pizza/work/SaleActivity;

    invoke-static {v0}, Lcom/pizza/work/SaleActivity;->access$1(Lcom/pizza/work/SaleActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    const-string v1, "Loading..."

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 593
    iget-object v0, p0, Lcom/pizza/work/SaleActivity$LoadViewTask;->this$0:Lcom/pizza/work/SaleActivity;

    invoke-static {v0}, Lcom/pizza/work/SaleActivity;->access$1(Lcom/pizza/work/SaleActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    const-string v1, "Loading application, please wait..."

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 595
    iget-object v0, p0, Lcom/pizza/work/SaleActivity$LoadViewTask;->this$0:Lcom/pizza/work/SaleActivity;

    invoke-static {v0}, Lcom/pizza/work/SaleActivity;->access$1(Lcom/pizza/work/SaleActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 597
    iget-object v0, p0, Lcom/pizza/work/SaleActivity$LoadViewTask;->this$0:Lcom/pizza/work/SaleActivity;

    invoke-static {v0}, Lcom/pizza/work/SaleActivity;->access$1(Lcom/pizza/work/SaleActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 599
    iget-object v0, p0, Lcom/pizza/work/SaleActivity$LoadViewTask;->this$0:Lcom/pizza/work/SaleActivity;

    invoke-static {v0}, Lcom/pizza/work/SaleActivity;->access$1(Lcom/pizza/work/SaleActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMax(I)V

    .line 601
    iget-object v0, p0, Lcom/pizza/work/SaleActivity$LoadViewTask;->this$0:Lcom/pizza/work/SaleActivity;

    invoke-static {v0}, Lcom/pizza/work/SaleActivity;->access$1(Lcom/pizza/work/SaleActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/app/ProgressDialog;->setProgress(I)V

    .line 603
    iget-object v0, p0, Lcom/pizza/work/SaleActivity$LoadViewTask;->this$0:Lcom/pizza/work/SaleActivity;

    invoke-static {v0}, Lcom/pizza/work/SaleActivity;->access$1(Lcom/pizza/work/SaleActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 604
    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Integer;)V
    .locals 2
    .parameter "values"

    .prologue
    .line 641
    iget-object v0, p0, Lcom/pizza/work/SaleActivity$LoadViewTask;->this$0:Lcom/pizza/work/SaleActivity;

    invoke-static {v0}, Lcom/pizza/work/SaleActivity;->access$1(Lcom/pizza/work/SaleActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgress(I)V

    .line 642
    return-void
.end method

.method protected bridge varargs synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/pizza/work/SaleActivity$LoadViewTask;->onProgressUpdate([Ljava/lang/Integer;)V

    return-void
.end method
