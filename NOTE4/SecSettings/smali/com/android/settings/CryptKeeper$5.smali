.class Lcom/android/settings/CryptKeeper$5;
.super Landroid/os/AsyncTask;
.source "CryptKeeper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/CryptKeeper;->setupUi()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field owner_info:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/settings/CryptKeeper;

.field type:I


# direct methods
.method constructor <init>(Lcom/android/settings/CryptKeeper;)V
    .locals 1

    .prologue
    .line 610
    iput-object p1, p0, Lcom/android/settings/CryptKeeper$5;->this$0:Lcom/android/settings/CryptKeeper;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 611
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/CryptKeeper$5;->type:I

    return-void
.end method


# virtual methods
.method public bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 610
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/settings/CryptKeeper$5;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 5
    .param p1, "v"    # [Ljava/lang/Void;

    .prologue
    .line 617
    :try_start_0
    iget-object v2, p0, Lcom/android/settings/CryptKeeper$5;->this$0:Lcom/android/settings/CryptKeeper;

    # invokes: Lcom/android/settings/CryptKeeper;->getMountService()Landroid/os/storage/IMountService;
    invoke-static {v2}, Lcom/android/settings/CryptKeeper;->access$100(Lcom/android/settings/CryptKeeper;)Landroid/os/storage/IMountService;

    move-result-object v1

    .line 618
    .local v1, "service":Landroid/os/storage/IMountService;
    if-eqz v1, :cond_0

    .line 619
    invoke-interface {v1}, Landroid/os/storage/IMountService;->getPasswordType()I

    move-result v2

    iput v2, p0, Lcom/android/settings/CryptKeeper$5;->type:I

    .line 620
    const-string v2, "OwnerInfo"

    invoke-interface {v1, v2}, Landroid/os/storage/IMountService;->getField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/CryptKeeper$5;->owner_info:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 626
    .end local v1    # "service":Landroid/os/storage/IMountService;
    :cond_0
    :goto_0
    const/4 v2, 0x0

    return-object v2

    .line 622
    :catch_0
    move-exception v0

    .line 623
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "CryptKeeper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error calling mount service "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 610
    check-cast p1, Ljava/lang/Void;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/settings/CryptKeeper$5;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method public onPostExecute(Ljava/lang/Void;)V
    .locals 5
    .param p1, "v"    # Ljava/lang/Void;

    .prologue
    const/4 v4, 0x0

    .line 631
    iget v2, p0, Lcom/android/settings/CryptKeeper$5;->type:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_1

    .line 632
    iget-object v2, p0, Lcom/android/settings/CryptKeeper$5;->this$0:Lcom/android/settings/CryptKeeper;

    const v3, 0x7f04005a

    invoke-virtual {v2, v3}, Lcom/android/settings/CryptKeeper;->setContentView(I)V

    .line 633
    iget-object v2, p0, Lcom/android/settings/CryptKeeper$5;->this$0:Lcom/android/settings/CryptKeeper;

    const v3, 0x7f0a0c72

    # setter for: Lcom/android/settings/CryptKeeper;->mStatusString:I
    invoke-static {v2, v3}, Lcom/android/settings/CryptKeeper;->access$2002(Lcom/android/settings/CryptKeeper;I)I

    .line 642
    :goto_0
    iget-object v2, p0, Lcom/android/settings/CryptKeeper$5;->this$0:Lcom/android/settings/CryptKeeper;

    const v3, 0x7f10006c

    invoke-virtual {v2, v3}, Lcom/android/settings/CryptKeeper;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 643
    .local v1, "status":Landroid/widget/TextView;
    iget-object v2, p0, Lcom/android/settings/CryptKeeper$5;->this$0:Lcom/android/settings/CryptKeeper;

    # getter for: Lcom/android/settings/CryptKeeper;->mStatusString:I
    invoke-static {v2}, Lcom/android/settings/CryptKeeper;->access$2000(Lcom/android/settings/CryptKeeper;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 645
    iget-object v2, p0, Lcom/android/settings/CryptKeeper$5;->this$0:Lcom/android/settings/CryptKeeper;

    const v3, 0x7f100109

    invoke-virtual {v2, v3}, Lcom/android/settings/CryptKeeper;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 646
    .local v0, "ownerInfo":Landroid/widget/TextView;
    iget-object v2, p0, Lcom/android/settings/CryptKeeper$5;->owner_info:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 647
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setSelected(Z)V

    .line 649
    iget-object v2, p0, Lcom/android/settings/CryptKeeper$5;->this$0:Lcom/android/settings/CryptKeeper;

    # invokes: Lcom/android/settings/CryptKeeper;->passwordEntryInit()V
    invoke-static {v2}, Lcom/android/settings/CryptKeeper;->access$2100(Lcom/android/settings/CryptKeeper;)V

    .line 651
    iget-object v2, p0, Lcom/android/settings/CryptKeeper$5;->this$0:Lcom/android/settings/CryptKeeper;

    # getter for: Lcom/android/settings/CryptKeeper;->mCooldown:I
    invoke-static {v2}, Lcom/android/settings/CryptKeeper;->access$800(Lcom/android/settings/CryptKeeper;)I

    move-result v2

    if-lez v2, :cond_0

    .line 652
    iget-object v2, p0, Lcom/android/settings/CryptKeeper$5;->this$0:Lcom/android/settings/CryptKeeper;

    # invokes: Lcom/android/settings/CryptKeeper;->setBackFunctionality(Z)V
    invoke-static {v2, v4}, Lcom/android/settings/CryptKeeper;->access$1100(Lcom/android/settings/CryptKeeper;Z)V

    .line 653
    iget-object v2, p0, Lcom/android/settings/CryptKeeper$5;->this$0:Lcom/android/settings/CryptKeeper;

    # invokes: Lcom/android/settings/CryptKeeper;->cooldown()V
    invoke-static {v2}, Lcom/android/settings/CryptKeeper;->access$900(Lcom/android/settings/CryptKeeper;)V

    .line 655
    :cond_0
    return-void

    .line 634
    .end local v0    # "ownerInfo":Landroid/widget/TextView;
    .end local v1    # "status":Landroid/widget/TextView;
    :cond_1
    iget v2, p0, Lcom/android/settings/CryptKeeper$5;->type:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    .line 635
    iget-object v2, p0, Lcom/android/settings/CryptKeeper$5;->this$0:Lcom/android/settings/CryptKeeper;

    const v3, 0x7f040058

    invoke-virtual {v2, v3}, Lcom/android/settings/CryptKeeper;->setContentView(I)V

    .line 636
    iget-object v2, p0, Lcom/android/settings/CryptKeeper$5;->this$0:Lcom/android/settings/CryptKeeper;

    # invokes: Lcom/android/settings/CryptKeeper;->setBackFunctionality(Z)V
    invoke-static {v2, v4}, Lcom/android/settings/CryptKeeper;->access$1100(Lcom/android/settings/CryptKeeper;Z)V

    .line 637
    iget-object v2, p0, Lcom/android/settings/CryptKeeper$5;->this$0:Lcom/android/settings/CryptKeeper;

    const v3, 0x7f0a0c73

    # setter for: Lcom/android/settings/CryptKeeper;->mStatusString:I
    invoke-static {v2, v3}, Lcom/android/settings/CryptKeeper;->access$2002(Lcom/android/settings/CryptKeeper;I)I

    goto :goto_0

    .line 639
    :cond_2
    iget-object v2, p0, Lcom/android/settings/CryptKeeper$5;->this$0:Lcom/android/settings/CryptKeeper;

    const v3, 0x7f040056

    invoke-virtual {v2, v3}, Lcom/android/settings/CryptKeeper;->setContentView(I)V

    .line 640
    iget-object v2, p0, Lcom/android/settings/CryptKeeper$5;->this$0:Lcom/android/settings/CryptKeeper;

    const v3, 0x7f0a0c71

    # setter for: Lcom/android/settings/CryptKeeper;->mStatusString:I
    invoke-static {v2, v3}, Lcom/android/settings/CryptKeeper;->access$2002(Lcom/android/settings/CryptKeeper;I)I

    goto :goto_0
.end method
