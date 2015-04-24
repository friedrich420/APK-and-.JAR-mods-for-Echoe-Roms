.class Lcom/android/settings/DreamSettings$DreamInfoAdapter;
.super Landroid/widget/ArrayAdapter;
.source "DreamSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/DreamSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DreamInfoAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/android/settings/DreamBackend$DreamInfo;",
        ">;"
    }
.end annotation


# instance fields
.field private final mInflater:Landroid/view/LayoutInflater;

.field final synthetic this$0:Lcom/android/settings/DreamSettings;


# direct methods
.method public constructor <init>(Lcom/android/settings/DreamSettings;Landroid/content/Context;)V
    .locals 1
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 452
    iput-object p1, p0, Lcom/android/settings/DreamSettings$DreamInfoAdapter;->this$0:Lcom/android/settings/DreamSettings;

    .line 453
    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    .line 454
    const-string v0, "layout_inflater"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/settings/DreamSettings$DreamInfoAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 455
    return-void
.end method

.method static synthetic access$700(Lcom/android/settings/DreamSettings$DreamInfoAdapter;Lcom/android/settings/DreamBackend$DreamInfo;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/DreamSettings$DreamInfoAdapter;
    .param p1, "x1"    # Lcom/android/settings/DreamBackend$DreamInfo;

    .prologue
    .line 449
    invoke-direct {p0, p1}, Lcom/android/settings/DreamSettings$DreamInfoAdapter;->activate(Lcom/android/settings/DreamBackend$DreamInfo;)V

    return-void
.end method

.method private activate(Lcom/android/settings/DreamBackend$DreamInfo;)V
    .locals 3
    .param p1, "dreamInfo"    # Lcom/android/settings/DreamBackend$DreamInfo;

    .prologue
    .line 535
    invoke-direct {p0}, Lcom/android/settings/DreamSettings$DreamInfoAdapter;->getCurrentSelection()Lcom/android/settings/DreamBackend$DreamInfo;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 543
    :goto_0
    return-void

    .line 537
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-virtual {p0}, Lcom/android/settings/DreamSettings$DreamInfoAdapter;->getCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 538
    invoke-virtual {p0, v0}, Lcom/android/settings/DreamSettings$DreamInfoAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/DreamBackend$DreamInfo;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/android/settings/DreamBackend$DreamInfo;->isActive:Z

    .line 537
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 540
    :cond_1
    const/4 v1, 0x1

    iput-boolean v1, p1, Lcom/android/settings/DreamBackend$DreamInfo;->isActive:Z

    .line 541
    iget-object v1, p0, Lcom/android/settings/DreamSettings$DreamInfoAdapter;->this$0:Lcom/android/settings/DreamSettings;

    # getter for: Lcom/android/settings/DreamSettings;->mBackend:Lcom/android/settings/DreamBackend;
    invoke-static {v1}, Lcom/android/settings/DreamSettings;->access$100(Lcom/android/settings/DreamSettings;)Lcom/android/settings/DreamBackend;

    move-result-object v1

    iget-object v2, p1, Lcom/android/settings/DreamBackend$DreamInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v1, v2}, Lcom/android/settings/DreamBackend;->setActiveDream(Landroid/content/ComponentName;)V

    .line 542
    invoke-virtual {p0}, Lcom/android/settings/DreamSettings$DreamInfoAdapter;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method private createDreamInfoRow(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .param p1, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 515
    iget-object v2, p0, Lcom/android/settings/DreamSettings$DreamInfoAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f0400a2

    const/4 v4, 0x0

    invoke-virtual {v2, v3, p1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 516
    .local v1, "row":Landroid/view/View;
    const v2, 0x1020018

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 517
    .local v0, "header":Landroid/view/View;
    new-instance v2, Lcom/android/settings/DreamSettings$DreamInfoAdapter$4;

    invoke-direct {v2, p0, v1}, Lcom/android/settings/DreamSettings$DreamInfoAdapter$4;-><init>(Lcom/android/settings/DreamSettings$DreamInfoAdapter;Landroid/view/View;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 523
    return-object v1
.end method

.method private getCurrentSelection()Lcom/android/settings/DreamBackend$DreamInfo;
    .locals 3

    .prologue
    .line 527
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/DreamSettings$DreamInfoAdapter;->getCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 528
    invoke-virtual {p0, v1}, Lcom/android/settings/DreamSettings$DreamInfoAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/DreamBackend$DreamInfo;

    .line 529
    .local v0, "dreamInfo":Lcom/android/settings/DreamBackend$DreamInfo;
    iget-boolean v2, v0, Lcom/android/settings/DreamBackend$DreamInfo;->isActive:Z

    if-eqz v2, :cond_0

    .line 532
    .end local v0    # "dreamInfo":Lcom/android/settings/DreamBackend$DreamInfo;
    :goto_1
    return-object v0

    .line 527
    .restart local v0    # "dreamInfo":Lcom/android/settings/DreamBackend$DreamInfo;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 532
    .end local v0    # "dreamInfo":Lcom/android/settings/DreamBackend$DreamInfo;
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 11
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 459
    invoke-virtual {p0, p1}, Lcom/android/settings/DreamSettings$DreamInfoAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/DreamBackend$DreamInfo;

    .line 460
    .local v0, "dreamInfo":Lcom/android/settings/DreamBackend$DreamInfo;
    const-string v7, "getView(%s)"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    iget-object v10, v0, Lcom/android/settings/DreamBackend$DreamInfo;->caption:Ljava/lang/CharSequence;

    aput-object v10, v8, v9

    # invokes: Lcom/android/settings/DreamSettings;->logd(Ljava/lang/String;[Ljava/lang/Object;)V
    invoke-static {v7, v8}, Lcom/android/settings/DreamSettings;->access$800(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 461
    if-eqz p2, :cond_0

    move-object v3, p2

    .line 462
    .local v3, "row":Landroid/view/View;
    :goto_0
    invoke-virtual {v3, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 465
    const v7, 0x1020006

    invoke-virtual {v3, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    iget-object v8, v0, Lcom/android/settings/DreamBackend$DreamInfo;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 468
    const v7, 0x1020016

    invoke-virtual {v3, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iget-object v8, v0, Lcom/android/settings/DreamBackend$DreamInfo;->caption:Ljava/lang/CharSequence;

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 471
    const v7, 0x1020019

    invoke-virtual {v3, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RadioButton;

    .line 472
    .local v2, "radioButton":Landroid/widget/RadioButton;
    iget-boolean v7, v0, Lcom/android/settings/DreamBackend$DreamInfo;->isActive:Z

    invoke-virtual {v2, v7}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 473
    new-instance v7, Lcom/android/settings/DreamSettings$DreamInfoAdapter$1;

    invoke-direct {v7, p0, v3}, Lcom/android/settings/DreamSettings$DreamInfoAdapter$1;-><init>(Lcom/android/settings/DreamSettings$DreamInfoAdapter;Landroid/view/View;)V

    invoke-virtual {v2, v7}, Landroid/widget/RadioButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 480
    const v7, 0x1020018

    invoke-virtual {v3, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    .line 481
    .local v1, "layout":Landroid/widget/RelativeLayout;
    new-instance v7, Lcom/android/settings/DreamSettings$DreamInfoAdapter$2;

    invoke-direct {v7, p0, v3}, Lcom/android/settings/DreamSettings$DreamInfoAdapter$2;-><init>(Lcom/android/settings/DreamSettings$DreamInfoAdapter;Landroid/view/View;)V

    invoke-virtual {v1, v7}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 490
    iget-object v7, v0, Lcom/android/settings/DreamBackend$DreamInfo;->settingsComponentName:Landroid/content/ComponentName;

    if-eqz v7, :cond_1

    const/4 v6, 0x1

    .line 491
    .local v6, "showSettings":Z
    :goto_1
    const v7, 0x7f10019b

    invoke-virtual {v3, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 492
    .local v5, "settingsDivider":Landroid/view/View;
    iget-boolean v7, v0, Lcom/android/settings/DreamBackend$DreamInfo;->isActive:Z

    if-eqz v7, :cond_2

    const v7, 0x3f4ccccd    # 0.8f

    :goto_2
    invoke-virtual {v5, v7}, Landroid/view/View;->setAlpha(F)V

    .line 493
    if-eqz v6, :cond_3

    const/4 v7, 0x0

    :goto_3
    invoke-virtual {v5, v7}, Landroid/view/View;->setVisibility(I)V

    .line 495
    const v7, 0x102001a

    invoke-virtual {v3, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 496
    .local v4, "settingsButton":Landroid/widget/ImageView;
    if-eqz v6, :cond_4

    const/4 v7, 0x0

    :goto_4
    invoke-virtual {v4, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 497
    iget-boolean v7, v0, Lcom/android/settings/DreamBackend$DreamInfo;->isActive:Z

    if-eqz v7, :cond_5

    const/high16 v7, 0x3f800000    # 1.0f

    :goto_5
    invoke-virtual {v4, v7}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 498
    iget-boolean v7, v0, Lcom/android/settings/DreamBackend$DreamInfo;->isActive:Z

    invoke-virtual {v4, v7}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 499
    iget-boolean v7, v0, Lcom/android/settings/DreamBackend$DreamInfo;->isActive:Z

    invoke-virtual {v4, v7}, Landroid/widget/ImageView;->setFocusable(Z)V

    .line 500
    new-instance v7, Lcom/android/settings/DreamSettings$DreamInfoAdapter$3;

    invoke-direct {v7, p0, v3}, Lcom/android/settings/DreamSettings$DreamInfoAdapter$3;-><init>(Lcom/android/settings/DreamSettings$DreamInfoAdapter;Landroid/view/View;)V

    invoke-virtual {v4, v7}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 505
    iget-boolean v7, v0, Lcom/android/settings/DreamBackend$DreamInfo;->isActive:Z

    if-eqz v7, :cond_6

    .line 506
    const/4 v7, 0x1

    invoke-virtual {v4, v7}, Landroid/widget/ImageView;->setFocusable(Z)V

    .line 511
    :goto_6
    return-object v3

    .line 461
    .end local v1    # "layout":Landroid/widget/RelativeLayout;
    .end local v2    # "radioButton":Landroid/widget/RadioButton;
    .end local v3    # "row":Landroid/view/View;
    .end local v4    # "settingsButton":Landroid/widget/ImageView;
    .end local v5    # "settingsDivider":Landroid/view/View;
    .end local v6    # "showSettings":Z
    :cond_0
    invoke-direct {p0, p3}, Lcom/android/settings/DreamSettings$DreamInfoAdapter;->createDreamInfoRow(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    goto/16 :goto_0

    .line 490
    .restart local v1    # "layout":Landroid/widget/RelativeLayout;
    .restart local v2    # "radioButton":Landroid/widget/RadioButton;
    .restart local v3    # "row":Landroid/view/View;
    :cond_1
    const/4 v6, 0x0

    goto :goto_1

    .line 492
    .restart local v5    # "settingsDivider":Landroid/view/View;
    .restart local v6    # "showSettings":Z
    :cond_2
    const v7, 0x3ea8f5c3    # 0.33f

    goto :goto_2

    .line 493
    :cond_3
    const/4 v7, 0x4

    goto :goto_3

    .line 496
    .restart local v4    # "settingsButton":Landroid/widget/ImageView;
    :cond_4
    const/4 v7, 0x4

    goto :goto_4

    .line 497
    :cond_5
    const v7, 0x3ecccccd    # 0.4f

    goto :goto_5

    .line 509
    :cond_6
    const/4 v7, 0x0

    invoke-virtual {v4, v7}, Landroid/widget/ImageView;->setFocusable(Z)V

    goto :goto_6
.end method
