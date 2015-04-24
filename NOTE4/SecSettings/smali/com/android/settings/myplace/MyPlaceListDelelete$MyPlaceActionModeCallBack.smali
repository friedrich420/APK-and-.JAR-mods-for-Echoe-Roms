.class Lcom/android/settings/myplace/MyPlaceListDelelete$MyPlaceActionModeCallBack;
.super Ljava/lang/Object;
.source "MyPlaceListDelelete.java"

# interfaces
.implements Landroid/view/ActionMode$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/myplace/MyPlaceListDelelete;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyPlaceActionModeCallBack"
.end annotation


# instance fields
.field private mActionBack:Landroid/widget/LinearLayout;

.field mActionModeCheckBoxListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field private mMultiSelectActionBarView:Landroid/view/View;

.field private mSelectionMenu:Landroid/widget/Button;

.field private mSelectionMenuCheckbox:Landroid/widget/CheckBox;

.field private mTitle:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/android/settings/myplace/MyPlaceListDelelete;


# direct methods
.method private constructor <init>(Lcom/android/settings/myplace/MyPlaceListDelelete;)V
    .locals 1

    .prologue
    .line 484
    iput-object p1, p0, Lcom/android/settings/myplace/MyPlaceListDelelete$MyPlaceActionModeCallBack;->this$0:Lcom/android/settings/myplace/MyPlaceListDelelete;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 529
    new-instance v0, Lcom/android/settings/myplace/MyPlaceListDelelete$MyPlaceActionModeCallBack$3;

    invoke-direct {v0, p0}, Lcom/android/settings/myplace/MyPlaceListDelelete$MyPlaceActionModeCallBack$3;-><init>(Lcom/android/settings/myplace/MyPlaceListDelelete$MyPlaceActionModeCallBack;)V

    iput-object v0, p0, Lcom/android/settings/myplace/MyPlaceListDelelete$MyPlaceActionModeCallBack;->mActionModeCheckBoxListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/myplace/MyPlaceListDelelete;Lcom/android/settings/myplace/MyPlaceListDelelete$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/settings/myplace/MyPlaceListDelelete;
    .param p2, "x1"    # Lcom/android/settings/myplace/MyPlaceListDelelete$1;

    .prologue
    .line 484
    invoke-direct {p0, p1}, Lcom/android/settings/myplace/MyPlaceListDelelete$MyPlaceActionModeCallBack;-><init>(Lcom/android/settings/myplace/MyPlaceListDelelete;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/settings/myplace/MyPlaceListDelelete$MyPlaceActionModeCallBack;)Landroid/widget/CheckBox;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/myplace/MyPlaceListDelelete$MyPlaceActionModeCallBack;

    .prologue
    .line 484
    iget-object v0, p0, Lcom/android/settings/myplace/MyPlaceListDelelete$MyPlaceActionModeCallBack;->mSelectionMenuCheckbox:Landroid/widget/CheckBox;

    return-object v0
.end method


# virtual methods
.method public createPopup()V
    .locals 2

    .prologue
    .line 661
    iget-object v0, p0, Lcom/android/settings/myplace/MyPlaceListDelelete$MyPlaceActionModeCallBack;->this$0:Lcom/android/settings/myplace/MyPlaceListDelelete;

    # getter for: Lcom/android/settings/myplace/MyPlaceListDelelete;->listpopup:Landroid/widget/ListPopupWindow;
    invoke-static {v0}, Lcom/android/settings/myplace/MyPlaceListDelelete;->access$400(Lcom/android/settings/myplace/MyPlaceListDelelete;)Landroid/widget/ListPopupWindow;

    move-result-object v0

    new-instance v1, Lcom/android/settings/myplace/MyPlaceListDelelete$MyPlaceActionModeCallBack$6;

    invoke-direct {v1, p0}, Lcom/android/settings/myplace/MyPlaceListDelelete$MyPlaceActionModeCallBack$6;-><init>(Lcom/android/settings/myplace/MyPlaceListDelelete$MyPlaceActionModeCallBack;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListPopupWindow;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 692
    return-void
.end method

.method public initOptionsMenu(Landroid/view/Menu;)V
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 624
    const/4 v0, 0x5

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    # setter for: Lcom/android/settings/myplace/MyPlaceListDelelete;->mItem_trash:Landroid/view/MenuItem;
    invoke-static {v0}, Lcom/android/settings/myplace/MyPlaceListDelelete;->access$602(Landroid/view/MenuItem;)Landroid/view/MenuItem;

    .line 625
    return-void
.end method

.method public onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
    .locals 10
    .param p1, "mode"    # Landroid/view/ActionMode;
    .param p2, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v9, 0x1

    .line 495
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 526
    :goto_0
    return v9

    .line 499
    :pswitch_0
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/android/settings/myplace/MyPlaceListDelelete$MyPlaceActionModeCallBack;->this$0:Lcom/android/settings/myplace/MyPlaceListDelelete;

    invoke-virtual {v4}, Lcom/android/settings/myplace/MyPlaceListDelelete;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v1, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 500
    .local v1, "builder":Landroid/app/AlertDialog$Builder;
    const v4, 0x7f0a197c

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 501
    # getter for: Lcom/android/settings/myplace/MyPlaceListDelelete;->mlistView:Landroid/widget/ListView;
    invoke-static {}, Lcom/android/settings/myplace/MyPlaceListDelelete;->access$100()Landroid/widget/ListView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/ListView;->getCheckedItemCount()I

    move-result v2

    .line 503
    .local v2, "count":I
    if-ne v2, v9, :cond_0

    .line 504
    iget-object v4, p0, Lcom/android/settings/myplace/MyPlaceListDelelete$MyPlaceActionModeCallBack;->this$0:Lcom/android/settings/myplace/MyPlaceListDelelete;

    const v5, 0x7f0a1df3

    invoke-virtual {v4, v5}, Lcom/android/settings/myplace/MyPlaceListDelelete;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 508
    .local v3, "tempStr":Ljava/lang/String;
    :goto_1
    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 509
    const v4, 0x7f0a0c76

    new-instance v5, Lcom/android/settings/myplace/MyPlaceListDelelete$MyPlaceActionModeCallBack$1;

    invoke-direct {v5, p0}, Lcom/android/settings/myplace/MyPlaceListDelelete$MyPlaceActionModeCallBack$1;-><init>(Lcom/android/settings/myplace/MyPlaceListDelelete$MyPlaceActionModeCallBack;)V

    invoke-virtual {v1, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 516
    const/high16 v4, 0x1040000

    new-instance v5, Lcom/android/settings/myplace/MyPlaceListDelelete$MyPlaceActionModeCallBack$2;

    invoke-direct {v5, p0}, Lcom/android/settings/myplace/MyPlaceListDelelete$MyPlaceActionModeCallBack$2;-><init>(Lcom/android/settings/myplace/MyPlaceListDelelete$MyPlaceActionModeCallBack;)V

    invoke-virtual {v1, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 522
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 523
    .local v0, "alertDialog":Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto :goto_0

    .line 506
    .end local v0    # "alertDialog":Landroid/app/AlertDialog;
    .end local v3    # "tempStr":Ljava/lang/String;
    :cond_0
    iget-object v4, p0, Lcom/android/settings/myplace/MyPlaceListDelelete$MyPlaceActionModeCallBack;->this$0:Lcom/android/settings/myplace/MyPlaceListDelelete;

    const v5, 0x7f0a1df4

    new-array v6, v9, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {v4, v5, v6}, Lcom/android/settings/myplace/MyPlaceListDelelete;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .restart local v3    # "tempStr":Ljava/lang/String;
    goto :goto_1

    .line 495
    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
    .end packed-switch
.end method

.method public onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 9
    .param p1, "mode"    # Landroid/view/ActionMode;
    .param p2, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v8, 0x5

    const/4 v7, 0x0

    const/4 v5, 0x0

    const/16 v4, 0x8

    const/4 v6, 0x1

    .line 544
    invoke-static {}, Lcom/android/settings/Utils;->isSupportMenuTreeForK()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 545
    iget-object v1, p0, Lcom/android/settings/myplace/MyPlaceListDelelete$MyPlaceActionModeCallBack;->this$0:Lcom/android/settings/myplace/MyPlaceListDelelete;

    invoke-virtual {v1}, Lcom/android/settings/myplace/MyPlaceListDelelete;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f040048

    invoke-virtual {v1, v2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/myplace/MyPlaceListDelelete$MyPlaceActionModeCallBack;->mMultiSelectActionBarView:Landroid/view/View;

    .line 548
    iget-object v1, p0, Lcom/android/settings/myplace/MyPlaceListDelelete$MyPlaceActionModeCallBack;->mMultiSelectActionBarView:Landroid/view/View;

    const v2, 0x7f1000c4

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    iput-object v1, p0, Lcom/android/settings/myplace/MyPlaceListDelelete$MyPlaceActionModeCallBack;->mSelectionMenuCheckbox:Landroid/widget/CheckBox;

    .line 549
    iget-object v1, p0, Lcom/android/settings/myplace/MyPlaceListDelelete$MyPlaceActionModeCallBack;->mMultiSelectActionBarView:Landroid/view/View;

    const v2, 0x7f1000c3

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/settings/myplace/MyPlaceListDelelete$MyPlaceActionModeCallBack;->mActionBack:Landroid/widget/LinearLayout;

    .line 550
    iget-object v1, p0, Lcom/android/settings/myplace/MyPlaceListDelelete$MyPlaceActionModeCallBack;->mActionBack:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 551
    iget-object v1, p0, Lcom/android/settings/myplace/MyPlaceListDelelete$MyPlaceActionModeCallBack;->mSelectionMenuCheckbox:Landroid/widget/CheckBox;

    iget-object v2, p0, Lcom/android/settings/myplace/MyPlaceListDelelete$MyPlaceActionModeCallBack;->mActionModeCheckBoxListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 553
    invoke-virtual {p0}, Lcom/android/settings/myplace/MyPlaceListDelelete$MyPlaceActionModeCallBack;->updateSelectionMenu()V

    .line 554
    iget-object v1, p0, Lcom/android/settings/myplace/MyPlaceListDelelete$MyPlaceActionModeCallBack;->mMultiSelectActionBarView:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/ActionMode;->setCustomView(Landroid/view/View;)V

    .line 555
    invoke-static {}, Lcom/android/settings/myplace/MyPlaceListDelelete;->checkDeleteButtonstate()V

    .line 604
    :goto_0
    const v1, 0x7f0a0c76

    invoke-interface {p2, v7, v8, v7, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    const v2, 0x7f020206

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v6}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 607
    invoke-interface {p2, v8}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    # setter for: Lcom/android/settings/myplace/MyPlaceListDelelete;->mItem_trash:Landroid/view/MenuItem;
    invoke-static {v1}, Lcom/android/settings/myplace/MyPlaceListDelelete;->access$602(Landroid/view/MenuItem;)Landroid/view/MenuItem;

    .line 610
    return v6

    .line 556
    :cond_0
    invoke-static {}, Lcom/android/settings/Utils;->isSupportMyPlaceV2()Z

    move-result v1

    if-nez v1, :cond_2

    .line 557
    iget-object v1, p0, Lcom/android/settings/myplace/MyPlaceListDelelete$MyPlaceActionModeCallBack;->this$0:Lcom/android/settings/myplace/MyPlaceListDelelete;

    invoke-virtual {v1}, Lcom/android/settings/myplace/MyPlaceListDelelete;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f040069

    invoke-virtual {v1, v2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 558
    .local v0, "mCustomView":Landroid/view/View;
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x2

    const/4 v3, -0x1

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 561
    invoke-static {}, Lcom/android/settings/Utils;->isSupportMenuTreeForK()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 562
    const v1, 0x7f100112

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/android/settings/myplace/MyPlaceListDelelete$MyPlaceActionModeCallBack$4;

    invoke-direct {v2, p0}, Lcom/android/settings/myplace/MyPlaceListDelelete$MyPlaceActionModeCallBack$4;-><init>(Lcom/android/settings/myplace/MyPlaceListDelelete$MyPlaceActionModeCallBack;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 570
    :goto_1
    invoke-virtual {p1, v0}, Landroid/view/ActionMode;->setCustomView(Landroid/view/View;)V

    .line 571
    const v1, 0x7f100114

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings/myplace/MyPlaceListDelelete$MyPlaceActionModeCallBack;->mTitle:Landroid/widget/TextView;

    goto :goto_0

    .line 569
    :cond_1
    const v1, 0x7f100113

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 574
    .end local v0    # "mCustomView":Landroid/view/View;
    :cond_2
    iget-object v1, p0, Lcom/android/settings/myplace/MyPlaceListDelelete$MyPlaceActionModeCallBack;->this$0:Lcom/android/settings/myplace/MyPlaceListDelelete;

    new-instance v2, Landroid/widget/ListPopupWindow;

    iget-object v3, p0, Lcom/android/settings/myplace/MyPlaceListDelelete$MyPlaceActionModeCallBack;->this$0:Lcom/android/settings/myplace/MyPlaceListDelelete;

    invoke-virtual {v3}, Lcom/android/settings/myplace/MyPlaceListDelelete;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/ListPopupWindow;-><init>(Landroid/content/Context;)V

    # setter for: Lcom/android/settings/myplace/MyPlaceListDelelete;->listpopup:Landroid/widget/ListPopupWindow;
    invoke-static {v1, v2}, Lcom/android/settings/myplace/MyPlaceListDelelete;->access$402(Lcom/android/settings/myplace/MyPlaceListDelelete;Landroid/widget/ListPopupWindow;)Landroid/widget/ListPopupWindow;

    .line 575
    iget-object v1, p0, Lcom/android/settings/myplace/MyPlaceListDelelete$MyPlaceActionModeCallBack;->this$0:Lcom/android/settings/myplace/MyPlaceListDelelete;

    # getter for: Lcom/android/settings/myplace/MyPlaceListDelelete;->listpopup:Landroid/widget/ListPopupWindow;
    invoke-static {v1}, Lcom/android/settings/myplace/MyPlaceListDelelete;->access$400(Lcom/android/settings/myplace/MyPlaceListDelelete;)Landroid/widget/ListPopupWindow;

    move-result-object v1

    const/16 v2, -0xc

    invoke-virtual {v1, v2}, Landroid/widget/ListPopupWindow;->setVerticalOffset(I)V

    .line 576
    iget-object v1, p0, Lcom/android/settings/myplace/MyPlaceListDelelete$MyPlaceActionModeCallBack;->this$0:Lcom/android/settings/myplace/MyPlaceListDelelete;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    # setter for: Lcom/android/settings/myplace/MyPlaceListDelelete;->select:Ljava/util/ArrayList;
    invoke-static {v1, v2}, Lcom/android/settings/myplace/MyPlaceListDelelete;->access$502(Lcom/android/settings/myplace/MyPlaceListDelelete;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 577
    iget-object v1, p0, Lcom/android/settings/myplace/MyPlaceListDelelete$MyPlaceActionModeCallBack;->this$0:Lcom/android/settings/myplace/MyPlaceListDelelete;

    invoke-virtual {v1}, Lcom/android/settings/myplace/MyPlaceListDelelete;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f040144

    invoke-virtual {v1, v2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/myplace/MyPlaceListDelelete$MyPlaceActionModeCallBack;->mMultiSelectActionBarView:Landroid/view/View;

    .line 580
    iget-object v1, p0, Lcom/android/settings/myplace/MyPlaceListDelelete$MyPlaceActionModeCallBack;->mMultiSelectActionBarView:Landroid/view/View;

    const v2, 0x7f1000c5

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/settings/myplace/MyPlaceListDelelete$MyPlaceActionModeCallBack;->mSelectionMenu:Landroid/widget/Button;

    .line 581
    iget-object v1, p0, Lcom/android/settings/myplace/MyPlaceListDelelete$MyPlaceActionModeCallBack;->mMultiSelectActionBarView:Landroid/view/View;

    const v2, 0x7f1000c3

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/settings/myplace/MyPlaceListDelelete$MyPlaceActionModeCallBack;->mActionBack:Landroid/widget/LinearLayout;

    .line 582
    iget-object v1, p0, Lcom/android/settings/myplace/MyPlaceListDelelete$MyPlaceActionModeCallBack;->mActionBack:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 583
    iget-object v1, p0, Lcom/android/settings/myplace/MyPlaceListDelelete$MyPlaceActionModeCallBack;->mSelectionMenu:Landroid/widget/Button;

    new-instance v2, Lcom/android/settings/myplace/MyPlaceListDelelete$MyPlaceActionModeCallBack$5;

    invoke-direct {v2, p0}, Lcom/android/settings/myplace/MyPlaceListDelelete$MyPlaceActionModeCallBack$5;-><init>(Lcom/android/settings/myplace/MyPlaceListDelelete$MyPlaceActionModeCallBack;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 594
    iget-object v1, p0, Lcom/android/settings/myplace/MyPlaceListDelelete$MyPlaceActionModeCallBack;->this$0:Lcom/android/settings/myplace/MyPlaceListDelelete;

    # getter for: Lcom/android/settings/myplace/MyPlaceListDelelete;->listpopup:Landroid/widget/ListPopupWindow;
    invoke-static {v1}, Lcom/android/settings/myplace/MyPlaceListDelelete;->access$400(Lcom/android/settings/myplace/MyPlaceListDelelete;)Landroid/widget/ListPopupWindow;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/myplace/MyPlaceListDelelete$MyPlaceActionModeCallBack;->mSelectionMenu:Landroid/widget/Button;

    invoke-virtual {v1, v2}, Landroid/widget/ListPopupWindow;->setAnchorView(Landroid/view/View;)V

    .line 595
    iget-object v1, p0, Lcom/android/settings/myplace/MyPlaceListDelelete$MyPlaceActionModeCallBack;->this$0:Lcom/android/settings/myplace/MyPlaceListDelelete;

    # getter for: Lcom/android/settings/myplace/MyPlaceListDelelete;->listpopup:Landroid/widget/ListPopupWindow;
    invoke-static {v1}, Lcom/android/settings/myplace/MyPlaceListDelelete;->access$400(Lcom/android/settings/myplace/MyPlaceListDelelete;)Landroid/widget/ListPopupWindow;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/widget/ListPopupWindow;->setModal(Z)V

    .line 596
    iget-object v1, p0, Lcom/android/settings/myplace/MyPlaceListDelelete$MyPlaceActionModeCallBack;->this$0:Lcom/android/settings/myplace/MyPlaceListDelelete;

    # getter for: Lcom/android/settings/myplace/MyPlaceListDelelete;->listpopup:Landroid/widget/ListPopupWindow;
    invoke-static {v1}, Lcom/android/settings/myplace/MyPlaceListDelelete;->access$400(Lcom/android/settings/myplace/MyPlaceListDelelete;)Landroid/widget/ListPopupWindow;

    move-result-object v1

    new-instance v2, Landroid/widget/ArrayAdapter;

    iget-object v3, p0, Lcom/android/settings/myplace/MyPlaceListDelelete$MyPlaceActionModeCallBack;->this$0:Lcom/android/settings/myplace/MyPlaceListDelelete;

    invoke-virtual {v3}, Lcom/android/settings/myplace/MyPlaceListDelelete;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const v4, 0x7f04010f

    iget-object v5, p0, Lcom/android/settings/myplace/MyPlaceListDelelete$MyPlaceActionModeCallBack;->this$0:Lcom/android/settings/myplace/MyPlaceListDelelete;

    # getter for: Lcom/android/settings/myplace/MyPlaceListDelelete;->select:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/android/settings/myplace/MyPlaceListDelelete;->access$500(Lcom/android/settings/myplace/MyPlaceListDelelete;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-direct {v2, v3, v4, v5}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListPopupWindow;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 598
    invoke-virtual {p0}, Lcom/android/settings/myplace/MyPlaceListDelelete$MyPlaceActionModeCallBack;->createPopup()V

    .line 599
    invoke-virtual {p0}, Lcom/android/settings/myplace/MyPlaceListDelelete$MyPlaceActionModeCallBack;->updateSelectionMenu()V

    .line 600
    iget-object v1, p0, Lcom/android/settings/myplace/MyPlaceListDelelete$MyPlaceActionModeCallBack;->mMultiSelectActionBarView:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/ActionMode;->setCustomView(Landroid/view/View;)V

    .line 601
    invoke-static {}, Lcom/android/settings/myplace/MyPlaceListDelelete;->checkDeleteButtonstate()V

    goto/16 :goto_0
.end method

.method public onDestroyActionMode(Landroid/view/ActionMode;)V
    .locals 1
    .param p1, "mode"    # Landroid/view/ActionMode;

    .prologue
    .line 615
    iget-object v0, p0, Lcom/android/settings/myplace/MyPlaceListDelelete$MyPlaceActionModeCallBack;->this$0:Lcom/android/settings/myplace/MyPlaceListDelelete;

    invoke-virtual {v0}, Lcom/android/settings/myplace/MyPlaceListDelelete;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->onBackPressed()V

    .line 616
    return-void
.end method

.method public onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 1
    .param p1, "mode"    # Landroid/view/ActionMode;
    .param p2, "menu"    # Landroid/view/Menu;

    .prologue
    .line 620
    const/4 v0, 0x0

    return v0
.end method

.method public updateSelectionMenu()V
    .locals 10

    .prologue
    const v9, 0x7f0a002c

    const v8, 0x7f0a0c7a

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 629
    # getter for: Lcom/android/settings/myplace/MyPlaceListDelelete;->mlistView:Landroid/widget/ListView;
    invoke-static {}, Lcom/android/settings/myplace/MyPlaceListDelelete;->access$100()Landroid/widget/ListView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/ListView;->getCheckedItemCount()I

    move-result v0

    .line 631
    .local v0, "count":I
    iget-object v3, p0, Lcom/android/settings/myplace/MyPlaceListDelelete$MyPlaceActionModeCallBack;->this$0:Lcom/android/settings/myplace/MyPlaceListDelelete;

    invoke-virtual {v3}, Lcom/android/settings/myplace/MyPlaceListDelelete;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a002b

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 632
    .local v1, "format":Ljava/lang/String;
    invoke-static {}, Lcom/android/settings/Utils;->isSupportMenuTreeForK()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 633
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/android/settings/myplace/MyPlaceListDelelete$MyPlaceActionModeCallBack;->this$0:Lcom/android/settings/myplace/MyPlaceListDelelete;

    invoke-virtual {v4}, Lcom/android/settings/myplace/MyPlaceListDelelete;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 634
    iget-object v3, p0, Lcom/android/settings/myplace/MyPlaceListDelelete$MyPlaceActionModeCallBack;->mSelectionMenuCheckbox:Landroid/widget/CheckBox;

    invoke-virtual {v3, v1}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    .line 635
    iget-object v3, p0, Lcom/android/settings/myplace/MyPlaceListDelelete$MyPlaceActionModeCallBack;->mSelectionMenuCheckbox:Landroid/widget/CheckBox;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 636
    # getter for: Lcom/android/settings/myplace/MyPlaceListDelelete;->mlistView:Landroid/widget/ListView;
    invoke-static {}, Lcom/android/settings/myplace/MyPlaceListDelelete;->access$100()Landroid/widget/ListView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/ListView;->getCheckedItemCount()I

    move-result v3

    if-lez v3, :cond_0

    # getter for: Lcom/android/settings/myplace/MyPlaceListDelelete;->mlistView:Landroid/widget/ListView;
    invoke-static {}, Lcom/android/settings/myplace/MyPlaceListDelelete;->access$100()Landroid/widget/ListView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/ListView;->getCheckedItemCount()I

    move-result v3

    # getter for: Lcom/android/settings/myplace/MyPlaceListDelelete;->mlistView:Landroid/widget/ListView;
    invoke-static {}, Lcom/android/settings/myplace/MyPlaceListDelelete;->access$100()Landroid/widget/ListView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/ListView;->getCount()I

    move-result v4

    if-ne v3, v4, :cond_0

    .line 637
    iget-object v3, p0, Lcom/android/settings/myplace/MyPlaceListDelelete$MyPlaceActionModeCallBack;->mSelectionMenuCheckbox:Landroid/widget/CheckBox;

    invoke-virtual {v3, v7}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 641
    :goto_0
    iget-object v3, p0, Lcom/android/settings/myplace/MyPlaceListDelelete$MyPlaceActionModeCallBack;->mSelectionMenuCheckbox:Landroid/widget/CheckBox;

    iget-object v4, p0, Lcom/android/settings/myplace/MyPlaceListDelelete$MyPlaceActionModeCallBack;->mActionModeCheckBoxListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v3, v4}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 658
    :goto_1
    return-void

    .line 639
    :cond_0
    iget-object v3, p0, Lcom/android/settings/myplace/MyPlaceListDelelete$MyPlaceActionModeCallBack;->mSelectionMenuCheckbox:Landroid/widget/CheckBox;

    invoke-virtual {v3, v6}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_0

    .line 642
    :cond_1
    invoke-static {}, Lcom/android/settings/Utils;->isSupportMyPlaceV2()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 643
    iget-object v3, p0, Lcom/android/settings/myplace/MyPlaceListDelelete$MyPlaceActionModeCallBack;->mSelectionMenu:Landroid/widget/Button;

    new-array v4, v7, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 644
    const/4 v2, 0x0

    .line 646
    .local v2, "menus":[Ljava/lang/String;
    # getter for: Lcom/android/settings/myplace/MyPlaceListDelelete;->mlistView:Landroid/widget/ListView;
    invoke-static {}, Lcom/android/settings/myplace/MyPlaceListDelelete;->access$100()Landroid/widget/ListView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/ListView;->getCheckedItemCount()I

    move-result v3

    # getter for: Lcom/android/settings/myplace/MyPlaceListDelelete;->mlistView:Landroid/widget/ListView;
    invoke-static {}, Lcom/android/settings/myplace/MyPlaceListDelelete;->access$100()Landroid/widget/ListView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/ListView;->getCount()I

    move-result v4

    if-ne v3, v4, :cond_2

    # getter for: Lcom/android/settings/myplace/MyPlaceListDelelete;->mlistView:Landroid/widget/ListView;
    invoke-static {}, Lcom/android/settings/myplace/MyPlaceListDelelete;->access$100()Landroid/widget/ListView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/ListView;->getCount()I

    move-result v3

    if-eqz v3, :cond_2

    .line 647
    new-array v2, v7, [Ljava/lang/String;

    .end local v2    # "menus":[Ljava/lang/String;
    iget-object v3, p0, Lcom/android/settings/myplace/MyPlaceListDelelete$MyPlaceActionModeCallBack;->this$0:Lcom/android/settings/myplace/MyPlaceListDelelete;

    invoke-virtual {v3, v9}, Lcom/android/settings/myplace/MyPlaceListDelelete;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    .line 653
    .restart local v2    # "menus":[Ljava/lang/String;
    :goto_2
    iget-object v3, p0, Lcom/android/settings/myplace/MyPlaceListDelelete$MyPlaceActionModeCallBack;->this$0:Lcom/android/settings/myplace/MyPlaceListDelelete;

    # getter for: Lcom/android/settings/myplace/MyPlaceListDelelete;->listpopup:Landroid/widget/ListPopupWindow;
    invoke-static {v3}, Lcom/android/settings/myplace/MyPlaceListDelelete;->access$400(Lcom/android/settings/myplace/MyPlaceListDelelete;)Landroid/widget/ListPopupWindow;

    move-result-object v3

    new-instance v4, Landroid/widget/ArrayAdapter;

    iget-object v5, p0, Lcom/android/settings/myplace/MyPlaceListDelelete$MyPlaceActionModeCallBack;->this$0:Lcom/android/settings/myplace/MyPlaceListDelelete;

    invoke-virtual {v5}, Lcom/android/settings/myplace/MyPlaceListDelelete;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const v6, 0x7f04010f

    invoke-direct {v4, v5, v6, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    invoke-virtual {v3, v4}, Landroid/widget/ListPopupWindow;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_1

    .line 648
    :cond_2
    # getter for: Lcom/android/settings/myplace/MyPlaceListDelelete;->mlistView:Landroid/widget/ListView;
    invoke-static {}, Lcom/android/settings/myplace/MyPlaceListDelelete;->access$100()Landroid/widget/ListView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/ListView;->getCheckedItemCount()I

    move-result v3

    if-eqz v3, :cond_3

    # getter for: Lcom/android/settings/myplace/MyPlaceListDelelete;->mlistView:Landroid/widget/ListView;
    invoke-static {}, Lcom/android/settings/myplace/MyPlaceListDelelete;->access$100()Landroid/widget/ListView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/ListView;->getCount()I

    move-result v3

    if-eqz v3, :cond_3

    .line 649
    const/4 v3, 0x2

    new-array v2, v3, [Ljava/lang/String;

    .end local v2    # "menus":[Ljava/lang/String;
    iget-object v3, p0, Lcom/android/settings/myplace/MyPlaceListDelelete$MyPlaceActionModeCallBack;->this$0:Lcom/android/settings/myplace/MyPlaceListDelelete;

    invoke-virtual {v3, v8}, Lcom/android/settings/myplace/MyPlaceListDelelete;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    iget-object v3, p0, Lcom/android/settings/myplace/MyPlaceListDelelete$MyPlaceActionModeCallBack;->this$0:Lcom/android/settings/myplace/MyPlaceListDelelete;

    invoke-virtual {v3, v9}, Lcom/android/settings/myplace/MyPlaceListDelelete;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v7

    .restart local v2    # "menus":[Ljava/lang/String;
    goto :goto_2

    .line 651
    :cond_3
    new-array v2, v7, [Ljava/lang/String;

    .end local v2    # "menus":[Ljava/lang/String;
    iget-object v3, p0, Lcom/android/settings/myplace/MyPlaceListDelelete$MyPlaceActionModeCallBack;->this$0:Lcom/android/settings/myplace/MyPlaceListDelelete;

    invoke-virtual {v3, v8}, Lcom/android/settings/myplace/MyPlaceListDelelete;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    .restart local v2    # "menus":[Ljava/lang/String;
    goto :goto_2

    .line 656
    .end local v2    # "menus":[Ljava/lang/String;
    :cond_4
    iget-object v3, p0, Lcom/android/settings/myplace/MyPlaceListDelelete$MyPlaceActionModeCallBack;->mTitle:Landroid/widget/TextView;

    new-array v4, v7, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1
.end method
