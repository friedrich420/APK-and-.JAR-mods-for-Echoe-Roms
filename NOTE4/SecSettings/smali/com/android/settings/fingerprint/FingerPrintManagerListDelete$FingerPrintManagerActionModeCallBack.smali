.class Lcom/android/settings/fingerprint/FingerPrintManagerListDelete$FingerPrintManagerActionModeCallBack;
.super Ljava/lang/Object;
.source "FingerPrintManagerListDelete.java"

# interfaces
.implements Landroid/view/ActionMode$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FingerPrintManagerActionModeCallBack"
.end annotation


# instance fields
.field private mActionBack:Landroid/widget/LinearLayout;

.field mActionModeCheckBoxListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field private mMultiSelectActionBarView:Landroid/view/View;

.field private mSelectionMenu:Landroid/widget/Button;

.field private mSelectionMenuCheckbox:Landroid/widget/CheckBox;

.field private mSelectionModeBackButton:Landroid/widget/LinearLayout;

.field final synthetic this$0:Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;


# direct methods
.method private constructor <init>(Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;)V
    .locals 1

    .prologue
    .line 604
    iput-object p1, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete$FingerPrintManagerActionModeCallBack;->this$0:Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 611
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete$FingerPrintManagerActionModeCallBack;->mSelectionModeBackButton:Landroid/widget/LinearLayout;

    .line 687
    new-instance v0, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete$FingerPrintManagerActionModeCallBack$3;

    invoke-direct {v0, p0}, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete$FingerPrintManagerActionModeCallBack$3;-><init>(Lcom/android/settings/fingerprint/FingerPrintManagerListDelete$FingerPrintManagerActionModeCallBack;)V

    iput-object v0, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete$FingerPrintManagerActionModeCallBack;->mActionModeCheckBoxListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;Lcom/android/settings/fingerprint/FingerPrintManagerListDelete$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;
    .param p2, "x1"    # Lcom/android/settings/fingerprint/FingerPrintManagerListDelete$1;

    .prologue
    .line 604
    invoke-direct {p0, p1}, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete$FingerPrintManagerActionModeCallBack;-><init>(Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/settings/fingerprint/FingerPrintManagerListDelete$FingerPrintManagerActionModeCallBack;)Landroid/widget/CheckBox;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/fingerprint/FingerPrintManagerListDelete$FingerPrintManagerActionModeCallBack;

    .prologue
    .line 604
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete$FingerPrintManagerActionModeCallBack;->mSelectionMenuCheckbox:Landroid/widget/CheckBox;

    return-object v0
.end method


# virtual methods
.method public createPopup()V
    .locals 2

    .prologue
    .line 839
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete$FingerPrintManagerActionModeCallBack;->this$0:Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;

    # getter for: Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;->listpopup:Landroid/widget/ListPopupWindow;
    invoke-static {v0}, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;->access$1300(Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;)Landroid/widget/ListPopupWindow;

    move-result-object v0

    new-instance v1, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete$FingerPrintManagerActionModeCallBack$6;

    invoke-direct {v1, p0}, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete$FingerPrintManagerActionModeCallBack$6;-><init>(Lcom/android/settings/fingerprint/FingerPrintManagerListDelete$FingerPrintManagerActionModeCallBack;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListPopupWindow;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 870
    return-void
.end method

.method public onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
    .locals 12
    .param p1, "mode"    # Landroid/view/ActionMode;
    .param p2, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 615
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v7

    packed-switch v7, :pswitch_data_0

    .line 685
    :goto_0
    :pswitch_0
    const/4 v7, 0x1

    :goto_1
    return v7

    .line 617
    :pswitch_1
    iget-object v7, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete$FingerPrintManagerActionModeCallBack;->this$0:Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;

    # getter for: Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;->mlistView:Landroid/widget/ListView;
    invoke-static {v7}, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;->access$600(Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;)Landroid/widget/ListView;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/ListView;->getCheckedItemCount()I

    move-result v4

    .line 618
    .local v4, "selectedCount":I
    iget-object v7, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete$FingerPrintManagerActionModeCallBack;->this$0:Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;

    # getter for: Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;->mEnrolledFingerCount:I
    invoke-static {v7}, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;->access$700(Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;)I

    move-result v7

    if-ne v4, v7, :cond_2

    .line 620
    iget-object v7, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete$FingerPrintManagerActionModeCallBack;->this$0:Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;

    # invokes: Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;->checkFingerprintUsageInPersona()Z
    invoke-static {v7}, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;->access$800(Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 624
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v7, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete$FingerPrintManagerActionModeCallBack;->this$0:Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;

    invoke-virtual {v7}, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-direct {v1, v7}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 625
    .local v1, "builder":Landroid/app/AlertDialog$Builder;
    iget-object v7, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete$FingerPrintManagerActionModeCallBack;->this$0:Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;

    const v8, 0x7f0a1cff

    invoke-virtual {v7, v8}, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 626
    iget-object v7, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete$FingerPrintManagerActionModeCallBack;->this$0:Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;

    const v8, 0x7f0a1cfe    # 1.83584E38f

    invoke-virtual {v7, v8}, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 627
    const v7, 0x104000a

    const/4 v8, 0x0

    invoke-virtual {v1, v7, v8}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 628
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 629
    .local v0, "alertDialog":Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 630
    const/4 v7, 0x1

    goto :goto_1

    .line 633
    .end local v0    # "alertDialog":Landroid/app/AlertDialog;
    .end local v1    # "builder":Landroid/app/AlertDialog$Builder;
    :cond_0
    iget-object v7, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete$FingerPrintManagerActionModeCallBack;->this$0:Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;

    # invokes: Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;->checkFingerprintUsageNQuality()Z
    invoke-static {v7}, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;->access$900(Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 636
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5}, Ljava/lang/String;-><init>()V

    .line 637
    .local v5, "str":Ljava/lang/String;
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3}, Ljava/lang/String;-><init>()V

    .line 638
    .local v3, "msgText":Ljava/lang/String;
    const-string v7, "%s\n%s\n"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete$FingerPrintManagerActionModeCallBack;->this$0:Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;

    invoke-virtual {v10}, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0a0225

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x1

    iget-object v10, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete$FingerPrintManagerActionModeCallBack;->this$0:Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;

    invoke-virtual {v10}, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0a1a93

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 641
    iget-object v7, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete$FingerPrintManagerActionModeCallBack;->this$0:Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;

    invoke-virtual {v7}, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0a1b1f

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v5, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 642
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v7, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete$FingerPrintManagerActionModeCallBack;->this$0:Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;

    invoke-virtual {v7}, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-direct {v1, v7}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 643
    .restart local v1    # "builder":Landroid/app/AlertDialog$Builder;
    iget-object v7, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete$FingerPrintManagerActionModeCallBack;->this$0:Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;

    const v8, 0x7f0a1ae9

    invoke-virtual {v7, v8}, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 644
    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 645
    const v7, 0x104000a

    const/4 v8, 0x0

    invoke-virtual {v1, v7, v8}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 646
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 647
    .restart local v0    # "alertDialog":Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 648
    const/4 v7, 0x1

    goto/16 :goto_1

    .line 650
    .end local v0    # "alertDialog":Landroid/app/AlertDialog;
    .end local v1    # "builder":Landroid/app/AlertDialog$Builder;
    .end local v3    # "msgText":Ljava/lang/String;
    .end local v5    # "str":Ljava/lang/String;
    :cond_1
    iget-object v7, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete$FingerPrintManagerActionModeCallBack;->this$0:Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;

    # invokes: Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;->deRegisterAllFingerprint(Landroid/view/ActionMode;I)V
    invoke-static {v7, p1, v4}, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;->access$1000(Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;Landroid/view/ActionMode;I)V

    goto/16 :goto_0

    .line 654
    :cond_2
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v7, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete$FingerPrintManagerActionModeCallBack;->this$0:Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;

    invoke-virtual {v7}, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-direct {v1, v7}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 655
    .restart local v1    # "builder":Landroid/app/AlertDialog$Builder;
    const v7, 0x7f0a1ae2

    invoke-virtual {v1, v7}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 656
    iget-object v7, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete$FingerPrintManagerActionModeCallBack;->this$0:Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;

    # getter for: Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;->mlistView:Landroid/widget/ListView;
    invoke-static {v7}, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;->access$600(Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;)Landroid/widget/ListView;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/ListView;->getCheckedItemCount()I

    move-result v2

    .line 658
    .local v2, "count":I
    const/4 v7, 0x1

    if-ne v2, v7, :cond_3

    .line 659
    iget-object v7, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete$FingerPrintManagerActionModeCallBack;->this$0:Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;

    const v8, 0x7f0a1ab0

    invoke-virtual {v7, v8}, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 663
    .local v6, "tempStr":Ljava/lang/String;
    :goto_2
    invoke-virtual {v1, v6}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 664
    const v7, 0x104000a

    new-instance v8, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete$FingerPrintManagerActionModeCallBack$1;

    invoke-direct {v8, p0}, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete$FingerPrintManagerActionModeCallBack$1;-><init>(Lcom/android/settings/fingerprint/FingerPrintManagerListDelete$FingerPrintManagerActionModeCallBack;)V

    invoke-virtual {v1, v7, v8}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 671
    const/high16 v7, 0x1040000

    new-instance v8, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete$FingerPrintManagerActionModeCallBack$2;

    invoke-direct {v8, p0}, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete$FingerPrintManagerActionModeCallBack$2;-><init>(Lcom/android/settings/fingerprint/FingerPrintManagerListDelete$FingerPrintManagerActionModeCallBack;)V

    invoke-virtual {v1, v7, v8}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 677
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 678
    .restart local v0    # "alertDialog":Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_0

    .line 661
    .end local v0    # "alertDialog":Landroid/app/AlertDialog;
    .end local v6    # "tempStr":Ljava/lang/String;
    :cond_3
    iget-object v7, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete$FingerPrintManagerActionModeCallBack;->this$0:Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;

    const v8, 0x7f0a1ab1

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-virtual {v7, v8, v9}, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .restart local v6    # "tempStr":Ljava/lang/String;
    goto :goto_2

    .line 682
    .end local v1    # "builder":Landroid/app/AlertDialog$Builder;
    .end local v2    # "count":I
    .end local v4    # "selectedCount":I
    .end local v6    # "tempStr":Ljava/lang/String;
    :pswitch_2
    iget-object v7, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete$FingerPrintManagerActionModeCallBack;->this$0:Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;

    invoke-virtual {v7}, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;->renameFingerPrint()V

    goto/16 :goto_0

    .line 615
    nop

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 9
    .param p1, "mode"    # Landroid/view/ActionMode;
    .param p2, "menu"    # Landroid/view/Menu;

    .prologue
    const v3, 0x7f1000c3

    const/4 v8, 0x5

    const/16 v7, 0x8

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 702
    invoke-static {}, Lcom/android/settings/Utils;->isSupportMenuTreeForK()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 703
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete$FingerPrintManagerActionModeCallBack;->this$0:Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;

    invoke-virtual {v0}, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f040048

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete$FingerPrintManagerActionModeCallBack;->mMultiSelectActionBarView:Landroid/view/View;

    .line 706
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete$FingerPrintManagerActionModeCallBack;->mMultiSelectActionBarView:Landroid/view/View;

    const v1, 0x7f1000c4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete$FingerPrintManagerActionModeCallBack;->mSelectionMenuCheckbox:Landroid/widget/CheckBox;

    .line 707
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete$FingerPrintManagerActionModeCallBack;->mMultiSelectActionBarView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete$FingerPrintManagerActionModeCallBack;->mActionBack:Landroid/widget/LinearLayout;

    .line 708
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete$FingerPrintManagerActionModeCallBack;->mActionBack:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 709
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete$FingerPrintManagerActionModeCallBack;->mSelectionMenuCheckbox:Landroid/widget/CheckBox;

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete$FingerPrintManagerActionModeCallBack;->mActionModeCheckBoxListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 711
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete$FingerPrintManagerActionModeCallBack;->updateSelectionMenu()V

    .line 712
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete$FingerPrintManagerActionModeCallBack;->mMultiSelectActionBarView:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/ActionMode;->setCustomView(Landroid/view/View;)V

    .line 713
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete$FingerPrintManagerActionModeCallBack;->this$0:Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;

    invoke-virtual {v0}, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;->checkDeleteButtonstate()V

    .line 772
    :goto_0
    const v0, 0x7f0a012f

    invoke-interface {p2, v6, v7, v6, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f020210

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v5}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 776
    const v0, 0x7f0a18ca

    invoke-interface {p2, v6, v8, v6, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v5}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 779
    invoke-interface {p2, v8}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    # setter for: Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;->mItem_trash:Landroid/view/MenuItem;
    invoke-static {v0}, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;->access$1602(Landroid/view/MenuItem;)Landroid/view/MenuItem;

    .line 780
    invoke-interface {p2, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    # setter for: Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;->mItem_rename:Landroid/view/MenuItem;
    invoke-static {v0}, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;->access$1702(Landroid/view/MenuItem;)Landroid/view/MenuItem;

    .line 781
    return v5

    .line 716
    :cond_0
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete$FingerPrintManagerActionModeCallBack;->this$0:Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;

    new-instance v1, Landroid/widget/ListPopupWindow;

    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete$FingerPrintManagerActionModeCallBack;->this$0:Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;

    invoke-virtual {v2}, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/ListPopupWindow;-><init>(Landroid/content/Context;)V

    # setter for: Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;->listpopup:Landroid/widget/ListPopupWindow;
    invoke-static {v0, v1}, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;->access$1302(Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;Landroid/widget/ListPopupWindow;)Landroid/widget/ListPopupWindow;

    .line 717
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete$FingerPrintManagerActionModeCallBack;->this$0:Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    # setter for: Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;->select:Ljava/util/ArrayList;
    invoke-static {v0, v1}, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;->access$1402(Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 718
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete$FingerPrintManagerActionModeCallBack;->this$0:Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;

    iput-boolean v5, v0, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;->actionModeControl:Z

    .line 721
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete$FingerPrintManagerActionModeCallBack;->this$0:Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;

    invoke-virtual {v0}, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0400c9

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete$FingerPrintManagerActionModeCallBack;->mMultiSelectActionBarView:Landroid/view/View;

    .line 724
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete$FingerPrintManagerActionModeCallBack;->mMultiSelectActionBarView:Landroid/view/View;

    const v1, 0x7f1000c5

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete$FingerPrintManagerActionModeCallBack;->mSelectionMenu:Landroid/widget/Button;

    .line 725
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete$FingerPrintManagerActionModeCallBack;->mMultiSelectActionBarView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete$FingerPrintManagerActionModeCallBack;->mSelectionModeBackButton:Landroid/widget/LinearLayout;

    .line 727
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete$FingerPrintManagerActionModeCallBack;->this$0:Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;

    invoke-virtual {v0}, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 728
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete$FingerPrintManagerActionModeCallBack;->mSelectionModeBackButton:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 731
    :cond_1
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete$FingerPrintManagerActionModeCallBack;->mSelectionModeBackButton:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_2

    .line 732
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete$FingerPrintManagerActionModeCallBack;->mSelectionModeBackButton:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete$FingerPrintManagerActionModeCallBack$4;

    invoke-direct {v1, p0}, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete$FingerPrintManagerActionModeCallBack$4;-><init>(Lcom/android/settings/fingerprint/FingerPrintManagerListDelete$FingerPrintManagerActionModeCallBack;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 741
    :cond_2
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete$FingerPrintManagerActionModeCallBack;->mSelectionMenu:Landroid/widget/Button;

    new-instance v1, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete$FingerPrintManagerActionModeCallBack$5;

    invoke-direct {v1, p0}, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete$FingerPrintManagerActionModeCallBack$5;-><init>(Lcom/android/settings/fingerprint/FingerPrintManagerListDelete$FingerPrintManagerActionModeCallBack;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 753
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete$FingerPrintManagerActionModeCallBack;->this$0:Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;

    # getter for: Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;->listpopup:Landroid/widget/ListPopupWindow;
    invoke-static {v0}, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;->access$1300(Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;)Landroid/widget/ListPopupWindow;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete$FingerPrintManagerActionModeCallBack;->mSelectionMenu:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/ListPopupWindow;->setAnchorView(Landroid/view/View;)V

    .line 754
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete$FingerPrintManagerActionModeCallBack;->this$0:Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;

    # getter for: Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;->listpopup:Landroid/widget/ListPopupWindow;
    invoke-static {v0}, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;->access$1300(Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;)Landroid/widget/ListPopupWindow;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/widget/ListPopupWindow;->setModal(Z)V

    .line 756
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete$FingerPrintManagerActionModeCallBack;->this$0:Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;

    invoke-virtual {v0}, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 757
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete$FingerPrintManagerActionModeCallBack;->this$0:Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;

    # getter for: Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;->listpopup:Landroid/widget/ListPopupWindow;
    invoke-static {v0}, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;->access$1300(Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;)Landroid/widget/ListPopupWindow;

    move-result-object v0

    const/16 v1, 0x13c

    invoke-virtual {v0, v1}, Landroid/widget/ListPopupWindow;->setWidth(I)V

    .line 762
    :goto_1
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete$FingerPrintManagerActionModeCallBack;->this$0:Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;

    # getter for: Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;->listpopup:Landroid/widget/ListPopupWindow;
    invoke-static {v0}, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;->access$1300(Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;)Landroid/widget/ListPopupWindow;

    move-result-object v0

    new-instance v1, Landroid/widget/ArrayAdapter;

    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete$FingerPrintManagerActionModeCallBack;->this$0:Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;

    invoke-virtual {v2}, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f04010e

    iget-object v4, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete$FingerPrintManagerActionModeCallBack;->this$0:Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;

    # getter for: Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;->select:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;->access$1400(Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListPopupWindow;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 764
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete$FingerPrintManagerActionModeCallBack;->createPopup()V

    .line 765
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete$FingerPrintManagerActionModeCallBack;->updateSelectionMenu()V

    .line 767
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete$FingerPrintManagerActionModeCallBack;->mMultiSelectActionBarView:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/ActionMode;->setCustomView(Landroid/view/View;)V

    .line 769
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete$FingerPrintManagerActionModeCallBack;->this$0:Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;

    invoke-virtual {v0}, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;->checkDeleteButtonstate()V

    .line 770
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete$FingerPrintManagerActionModeCallBack;->this$0:Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;

    # setter for: Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;->mMultiActionMode:Landroid/view/ActionMode;
    invoke-static {v0, p1}, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;->access$1502(Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;Landroid/view/ActionMode;)Landroid/view/ActionMode;

    goto/16 :goto_0

    .line 759
    :cond_3
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete$FingerPrintManagerActionModeCallBack;->this$0:Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;

    # getter for: Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;->listpopup:Landroid/widget/ListPopupWindow;
    invoke-static {v0}, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;->access$1300(Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;)Landroid/widget/ListPopupWindow;

    move-result-object v0

    const/16 v1, 0x210

    invoke-virtual {v0, v1}, Landroid/widget/ListPopupWindow;->setWidth(I)V

    goto :goto_1
.end method

.method public onDestroyActionMode(Landroid/view/ActionMode;)V
    .locals 2
    .param p1, "mode"    # Landroid/view/ActionMode;

    .prologue
    .line 786
    const-string v0, "FingerPrintManagerListDelete"

    const-string v1, "onDestroyActionMode"

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 787
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete$FingerPrintManagerActionModeCallBack;->this$0:Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;

    const/4 v1, 0x0

    # setter for: Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;->mMultiActionMode:Landroid/view/ActionMode;
    invoke-static {v0, v1}, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;->access$1502(Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;Landroid/view/ActionMode;)Landroid/view/ActionMode;

    .line 788
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete$FingerPrintManagerActionModeCallBack;->this$0:Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;

    iget-boolean v0, v0, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;->actionModeControl:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 789
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete$FingerPrintManagerActionModeCallBack;->this$0:Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;

    invoke-virtual {v0}, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->onBackPressed()V

    .line 791
    :cond_0
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete$FingerPrintManagerActionModeCallBack;->this$0:Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;->actionModeControl:Z

    .line 792
    return-void
.end method

.method public onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 1
    .param p1, "mode"    # Landroid/view/ActionMode;
    .param p2, "menu"    # Landroid/view/Menu;

    .prologue
    .line 796
    const/4 v0, 0x0

    return v0
.end method

.method public stopMultiActionMode()V
    .locals 1

    .prologue
    .line 800
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete$FingerPrintManagerActionModeCallBack;->this$0:Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;

    # getter for: Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;->mMultiActionMode:Landroid/view/ActionMode;
    invoke-static {v0}, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;->access$1500(Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;)Landroid/view/ActionMode;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 801
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete$FingerPrintManagerActionModeCallBack;->this$0:Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;

    # getter for: Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;->mMultiActionMode:Landroid/view/ActionMode;
    invoke-static {v0}, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;->access$1500(Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;)Landroid/view/ActionMode;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    .line 803
    :cond_0
    return-void
.end method

.method public updateSelectionMenu()V
    .locals 10

    .prologue
    const v9, 0x7f0a0c7a

    const v6, 0x7f0a002c

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 807
    iget-object v3, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete$FingerPrintManagerActionModeCallBack;->this$0:Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;

    # getter for: Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;->mlistView:Landroid/widget/ListView;
    invoke-static {v3}, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;->access$600(Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;)Landroid/widget/ListView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/ListView;->getCheckedItemCount()I

    move-result v0

    .line 809
    .local v0, "count":I
    iget-object v3, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete$FingerPrintManagerActionModeCallBack;->this$0:Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;

    invoke-virtual {v3}, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a002b

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 810
    .local v1, "format":Ljava/lang/String;
    invoke-static {}, Lcom/android/settings/Utils;->isSupportMenuTreeForK()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 812
    iget-object v3, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete$FingerPrintManagerActionModeCallBack;->this$0:Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;

    invoke-virtual {v3}, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a0657

    new-array v5, v8, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-virtual {v3, v4, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 813
    iget-object v3, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete$FingerPrintManagerActionModeCallBack;->mSelectionMenuCheckbox:Landroid/widget/CheckBox;

    invoke-virtual {v3, v1}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    .line 814
    iget-object v3, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete$FingerPrintManagerActionModeCallBack;->mSelectionMenuCheckbox:Landroid/widget/CheckBox;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 815
    iget-object v3, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete$FingerPrintManagerActionModeCallBack;->this$0:Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;

    # getter for: Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;->mlistView:Landroid/widget/ListView;
    invoke-static {v3}, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;->access$600(Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;)Landroid/widget/ListView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/ListView;->getCheckedItemCount()I

    move-result v3

    if-lez v3, :cond_0

    iget-object v3, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete$FingerPrintManagerActionModeCallBack;->this$0:Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;

    # getter for: Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;->mlistView:Landroid/widget/ListView;
    invoke-static {v3}, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;->access$600(Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;)Landroid/widget/ListView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/ListView;->getCheckedItemCount()I

    move-result v3

    iget-object v4, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete$FingerPrintManagerActionModeCallBack;->this$0:Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;

    # getter for: Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;->mlistView:Landroid/widget/ListView;
    invoke-static {v4}, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;->access$600(Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;)Landroid/widget/ListView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/ListView;->getCount()I

    move-result v4

    if-ne v3, v4, :cond_0

    .line 816
    iget-object v3, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete$FingerPrintManagerActionModeCallBack;->mSelectionMenuCheckbox:Landroid/widget/CheckBox;

    invoke-virtual {v3, v8}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 820
    :goto_0
    iget-object v3, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete$FingerPrintManagerActionModeCallBack;->mSelectionMenuCheckbox:Landroid/widget/CheckBox;

    iget-object v4, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete$FingerPrintManagerActionModeCallBack;->mActionModeCheckBoxListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v3, v4}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 835
    :goto_1
    return-void

    .line 818
    :cond_0
    iget-object v3, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete$FingerPrintManagerActionModeCallBack;->mSelectionMenuCheckbox:Landroid/widget/CheckBox;

    invoke-virtual {v3, v7}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_0

    .line 822
    :cond_1
    iget-object v3, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete$FingerPrintManagerActionModeCallBack;->mSelectionMenu:Landroid/widget/Button;

    new-array v4, v8, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 823
    const/4 v2, 0x0

    .line 825
    .local v2, "menus":[Ljava/lang/String;
    iget-object v3, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete$FingerPrintManagerActionModeCallBack;->this$0:Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;

    # getter for: Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;->mlistView:Landroid/widget/ListView;
    invoke-static {v3}, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;->access$600(Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;)Landroid/widget/ListView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/ListView;->getCheckedItemCount()I

    move-result v3

    iget-object v4, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete$FingerPrintManagerActionModeCallBack;->this$0:Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;

    # getter for: Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;->mlistView:Landroid/widget/ListView;
    invoke-static {v4}, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;->access$600(Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;)Landroid/widget/ListView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/ListView;->getCount()I

    move-result v4

    if-ne v3, v4, :cond_2

    .line 826
    new-array v2, v8, [Ljava/lang/String;

    .end local v2    # "menus":[Ljava/lang/String;
    iget-object v3, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete$FingerPrintManagerActionModeCallBack;->this$0:Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;

    invoke-virtual {v3, v6}, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v7

    .line 833
    .restart local v2    # "menus":[Ljava/lang/String;
    :goto_2
    iget-object v3, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete$FingerPrintManagerActionModeCallBack;->this$0:Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;

    # getter for: Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;->listpopup:Landroid/widget/ListPopupWindow;
    invoke-static {v3}, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;->access$1300(Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;)Landroid/widget/ListPopupWindow;

    move-result-object v3

    new-instance v4, Landroid/widget/ArrayAdapter;

    iget-object v5, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete$FingerPrintManagerActionModeCallBack;->this$0:Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;

    invoke-virtual {v5}, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const v6, 0x7f04010e

    invoke-direct {v4, v5, v6, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    invoke-virtual {v3, v4}, Landroid/widget/ListPopupWindow;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_1

    .line 827
    :cond_2
    iget-object v3, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete$FingerPrintManagerActionModeCallBack;->this$0:Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;

    # getter for: Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;->mlistView:Landroid/widget/ListView;
    invoke-static {v3}, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;->access$600(Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;)Landroid/widget/ListView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/ListView;->getCheckedItemCount()I

    move-result v3

    if-lez v3, :cond_3

    iget-object v3, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete$FingerPrintManagerActionModeCallBack;->this$0:Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;

    # getter for: Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;->mlistView:Landroid/widget/ListView;
    invoke-static {v3}, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;->access$600(Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;)Landroid/widget/ListView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/ListView;->getCheckedItemCount()I

    move-result v3

    iget-object v4, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete$FingerPrintManagerActionModeCallBack;->this$0:Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;

    # getter for: Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;->mlistView:Landroid/widget/ListView;
    invoke-static {v4}, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;->access$600(Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;)Landroid/widget/ListView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/ListView;->getCount()I

    move-result v4

    if-eq v3, v4, :cond_3

    .line 828
    const/4 v3, 0x2

    new-array v2, v3, [Ljava/lang/String;

    .end local v2    # "menus":[Ljava/lang/String;
    iget-object v3, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete$FingerPrintManagerActionModeCallBack;->this$0:Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;

    invoke-virtual {v3, v9}, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v7

    iget-object v3, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete$FingerPrintManagerActionModeCallBack;->this$0:Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;

    invoke-virtual {v3, v6}, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v8

    .restart local v2    # "menus":[Ljava/lang/String;
    goto :goto_2

    .line 830
    :cond_3
    new-array v2, v8, [Ljava/lang/String;

    .end local v2    # "menus":[Ljava/lang/String;
    iget-object v3, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete$FingerPrintManagerActionModeCallBack;->this$0:Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;

    invoke-virtual {v3, v9}, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v7

    .restart local v2    # "menus":[Ljava/lang/String;
    goto :goto_2
.end method
