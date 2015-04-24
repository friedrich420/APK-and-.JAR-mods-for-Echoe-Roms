.class public Lcom/android/launcher2/MenuView;
.super Landroid/widget/TabHost;
.source "MenuView.java"

# interfaces
.implements Lcom/android/launcher2/Launcher$HardwareKeys;
.implements Lcom/android/launcher2/Launcher$StateAnimatorProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher2/MenuView$3;,
        Lcom/android/launcher2/MenuView$SavedState;,
        Lcom/android/launcher2/MenuView$ViewType;,
        Lcom/android/launcher2/MenuView$NeedsTabHost;,
        Lcom/android/launcher2/MenuView$PackageNotifications;,
        Lcom/android/launcher2/MenuView$AppModelNotifications;
    }
.end annotation


# static fields
.field static final APPS_TAB_TAG:Ljava/lang/String; = "APPS"

.field public static final MENU_VIEW_TYPE_KEY:Ljava/lang/String; = "MenuView.ViewType"

.field private static final TAG:Ljava/lang/String; = "MenuView"

.field static final WIDGETS_TAB_TAG:Ljava/lang/String; = "WIDGETS"

.field public static mOldViewType:Lcom/android/launcher2/MenuView$ViewType;

.field public static oldState:Lcom/android/launcher2/MenuAppsGrid$State;

.field public static onShowAllAppsClicked:Z


# instance fields
.field private mAppsTabTextView:Landroid/widget/TextView;

.field mDownButton:Landroid/view/View;

.field private mDownloadedButton:Landroid/widget/TextView;

.field private mDownloadedButtonDrawablePadding:I

.field private mDownloadedContainer:Landroid/view/View;

.field private mDownloadedText:Ljava/lang/CharSequence;

.field private mMaxItemsPerScreen:I

.field public mMenuAppLoaded:Z

.field mMenuContainer:Landroid/view/View;

.field mMenuOrMarket:Landroid/view/View;

.field mMenuViewDarken:Landroid/view/View;

.field private mNoDownloadedAppsToastMessage:Landroid/widget/Toast;

.field private mQuickView:Lcom/android/launcher2/QuickViewMainMenu;

.field private mTabDivider:Landroid/view/View;

.field private mTabGapView:Landroid/view/View;

.field private mTabManager:Lcom/android/launcher2/tabs/TabManager;

.field private mTabTitle:Landroid/widget/TextView;

.field private mTabsView:Landroid/view/View;

.field private mTalkbackMenuTitle:Ljava/lang/String;

.field private mTitleBarManager:Lcom/android/launcher2/MenuTitleBarManager;

.field private mViewType:Lcom/android/launcher2/MenuView$ViewType;

.field private mWidgetsTabTextView:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 565
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/launcher2/MenuView;->onShowAllAppsClicked:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 134
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/launcher2/MenuView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 135
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v5, 0x0

    .line 138
    invoke-direct {p0, p1, p2}, Landroid/widget/TabHost;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 131
    iput-boolean v5, p0, Lcom/android/launcher2/MenuView;->mMenuAppLoaded:Z

    .line 141
    const-string v4, "com.sec.android.app.launcher.prefs"

    invoke-virtual {p1, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 146
    .local v1, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 148
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v4

    const-string v5, "CscFeature_Launcher_EnableViewByAlphabetAsDefault"

    invoke-virtual {v4, v5}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 149
    const-string v4, "MenuView.ViewType"

    const-string v5, ""

    invoke-interface {v1, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 150
    .local v3, "savedMenuViewType":Ljava/lang/String;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 151
    :cond_0
    const-string v4, "MenuView.ViewType"

    sget-object v5, Lcom/android/launcher2/MenuView$ViewType;->ALPHABETIC_GRID:Lcom/android/launcher2/MenuView$ViewType;

    invoke-virtual {v5}, Lcom/android/launcher2/MenuView$ViewType;->name()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 152
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 156
    .end local v3    # "savedMenuViewType":Ljava/lang/String;
    :cond_1
    const-string v4, "MenuView.ViewType"

    sget-object v5, Lcom/android/launcher2/MenuView$ViewType;->CUSTOM_GRID:Lcom/android/launcher2/MenuView$ViewType;

    invoke-virtual {v5}, Lcom/android/launcher2/MenuView$ViewType;->name()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/launcher2/MenuView$ViewType;->valueOf(Ljava/lang/String;)Lcom/android/launcher2/MenuView$ViewType;

    move-result-object v4

    iput-object v4, p0, Lcom/android/launcher2/MenuView;->mViewType:Lcom/android/launcher2/MenuView$ViewType;

    .line 159
    invoke-virtual {p0}, Lcom/android/launcher2/MenuView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 160
    .local v2, "res":Landroid/content/res/Resources;
    const v4, 0x7f0c0027

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    const v5, 0x7f0c0028

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    mul-int/2addr v4, v5

    iput v4, p0, Lcom/android/launcher2/MenuView;->mMaxItemsPerScreen:I

    .line 163
    invoke-direct {p0}, Lcom/android/launcher2/MenuView;->setAppNormalizer()V

    .line 165
    check-cast p1, Lcom/android/launcher2/Launcher;

    .end local p1    # "context":Landroid/content/Context;
    invoke-virtual {p1, p0}, Lcom/android/launcher2/Launcher;->addStateAnimatorProvider(Lcom/android/launcher2/Launcher$StateAnimatorProvider;)V

    .line 166
    new-instance v4, Lcom/android/launcher2/MenuTitleBarManager;

    invoke-direct {v4}, Lcom/android/launcher2/MenuTitleBarManager;-><init>()V

    iput-object v4, p0, Lcom/android/launcher2/MenuView;->mTitleBarManager:Lcom/android/launcher2/MenuTitleBarManager;

    .line 168
    const/4 v4, 0x2

    invoke-virtual {p0, v4}, Lcom/android/launcher2/MenuView;->setImportantForAccessibility(I)V

    .line 169
    return-void
.end method

.method private closeViewTypeDialog()V
    .locals 3

    .prologue
    .line 686
    invoke-virtual {p0}, Lcom/android/launcher2/MenuView;->getContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    .line 687
    .local v1, "manager":Landroid/app/FragmentManager;
    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 689
    .local v0, "ft":Landroid/app/FragmentTransaction;
    invoke-static {v1}, Lcom/android/launcher2/UninstallConfirmDialogFragment;->isActive(Landroid/app/FragmentManager;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 690
    invoke-static {v0, v1}, Lcom/android/launcher2/UninstallConfirmDialogFragment;->dismiss(Landroid/app/FragmentTransaction;Landroid/app/FragmentManager;)V

    .line 694
    :cond_0
    :goto_0
    invoke-static {v0, v1}, Lcom/android/launcher2/MenuViewTypeDialog;->dismiss(Landroid/app/FragmentTransaction;Landroid/app/FragmentManager;)V

    .line 695
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 696
    return-void

    .line 691
    :cond_1
    invoke-static {v1}, Lcom/android/launcher2/MenuAppsGrid$MenuEditCancelDialogFragment;->isActive(Landroid/app/FragmentManager;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 692
    invoke-static {v0, v1}, Lcom/android/launcher2/MenuAppsGrid$MenuEditCancelDialogFragment;->dismiss(Landroid/app/FragmentTransaction;Landroid/app/FragmentManager;)V

    goto :goto_0
.end method

.method private collectAnimators(Ljava/util/ArrayList;Landroid/animation/Animator;Landroid/animation/Animator;)V
    .locals 6
    .param p2, "tabContentAnimator"    # Landroid/animation/Animator;
    .param p3, "otherAnimator"    # Landroid/animation/Animator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/animation/Animator;",
            ">;",
            "Landroid/animation/Animator;",
            "Landroid/animation/Animator;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, "animators":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    const v5, 0x1020011

    .line 916
    invoke-virtual {p0, v5}, Lcom/android/launcher2/MenuView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    move-object v1, v4

    check-cast v1, Landroid/view/ViewGroup;

    .line 918
    .local v1, "container":Landroid/view/ViewGroup;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    if-ge v2, v4, :cond_2

    .line 919
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 920
    .local v3, "v":Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-eqz v4, :cond_0

    .line 918
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 923
    :cond_0
    invoke-virtual {v3}, Landroid/view/View;->getId()I

    move-result v4

    if-ne v4, v5, :cond_1

    .line 924
    invoke-virtual {p2}, Landroid/animation/Animator;->clone()Landroid/animation/Animator;

    move-result-object v0

    .line 929
    .local v0, "a":Landroid/animation/Animator;
    :goto_2
    invoke-virtual {v0, v3}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    .line 930
    new-instance v4, Lcom/android/launcher2/MenuView$2;

    invoke-direct {v4, p0, v3}, Lcom/android/launcher2/MenuView$2;-><init>(Lcom/android/launcher2/MenuView;Landroid/view/View;)V

    invoke-virtual {v0, v4}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 949
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 926
    .end local v0    # "a":Landroid/animation/Animator;
    :cond_1
    invoke-virtual {p3}, Landroid/animation/Animator;->clone()Landroid/animation/Animator;

    move-result-object v0

    .restart local v0    # "a":Landroid/animation/Animator;
    goto :goto_2

    .line 951
    .end local v0    # "a":Landroid/animation/Animator;
    .end local v3    # "v":Landroid/view/View;
    :cond_2
    return-void
.end method

.method private static removeButton(Landroid/view/View;)V
    .locals 1
    .param p0, "v"    # Landroid/view/View;

    .prologue
    .line 855
    if-eqz p0, :cond_0

    .line 856
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 857
    .local v0, "parent":Landroid/view/ViewGroup;
    if-eqz v0, :cond_0

    .line 858
    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 861
    .end local v0    # "parent":Landroid/view/ViewGroup;
    :cond_0
    return-void
.end method

.method private setAppNormalizer()V
    .locals 3

    .prologue
    .line 699
    const/4 v0, 0x0

    .line 700
    .local v0, "normalizer":Lcom/android/launcher2/MenuAppModel$Normalizer;, "Lcom/android/launcher2/MenuAppModel$Normalizer<Lcom/android/launcher2/AppItem;>;"
    sget-object v1, Lcom/android/launcher2/MenuView$3;->$SwitchMap$com$android$launcher2$MenuView$ViewType:[I

    iget-object v2, p0, Lcom/android/launcher2/MenuView;->mViewType:Lcom/android/launcher2/MenuView$ViewType;

    invoke-virtual {v2}, Lcom/android/launcher2/MenuView$ViewType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 708
    :goto_0
    sget-object v1, Lcom/android/launcher2/MenuAppModel;->INSTANCE:Lcom/android/launcher2/MenuAppModel;

    iget v2, p0, Lcom/android/launcher2/MenuView;->mMaxItemsPerScreen:I

    invoke-virtual {v1, v0, v2}, Lcom/android/launcher2/MenuAppModel;->setNormalizer(Lcom/android/launcher2/MenuAppModel$Normalizer;I)V

    .line 709
    return-void

    .line 702
    :pswitch_0
    sget-object v0, Lcom/android/launcher2/MenuAppModel;->MENU_CUSTOM_NORMALIZER:Lcom/android/launcher2/MenuAppModel$Normalizer;

    .line 703
    goto :goto_0

    .line 706
    :pswitch_1
    sget-object v0, Lcom/android/launcher2/MenuAppModel;->MENU_ALPHA_NORMALIZER:Lcom/android/launcher2/MenuAppModel$Normalizer;

    goto :goto_0

    .line 700
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private setupTabTitleBar()V
    .locals 11

    .prologue
    const/high16 v10, 0x3f800000    # 1.0f

    const/4 v9, 0x0

    const/4 v8, 0x0

    .line 1046
    invoke-virtual {p0}, Lcom/android/launcher2/MenuView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 1047
    .local v4, "res":Landroid/content/res/Resources;
    const v6, 0x7f0b0015

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    .line 1048
    .local v5, "showDownloadedText":Z
    const v6, 0x7f0b0014

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    .line 1049
    .local v1, "expandTabs":Z
    const v6, 0x7f0e0116

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 1050
    .local v2, "fixedSizeTabBar":I
    const v6, 0x7f0e0021

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 1051
    .local v0, "downloadedTextPadding":I
    iget-object v6, p0, Lcom/android/launcher2/MenuView;->mDownloadedButton:Landroid/widget/TextView;

    if-eqz v6, :cond_0

    .line 1052
    if-eqz v5, :cond_5

    iget-object v6, p0, Lcom/android/launcher2/MenuView;->mDownloadedText:Ljava/lang/CharSequence;

    if-eqz v6, :cond_5

    .line 1053
    iget-object v6, p0, Lcom/android/launcher2/MenuView;->mDownloadedButton:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/android/launcher2/MenuView;->mDownloadedText:Ljava/lang/CharSequence;

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1054
    iget-object v6, p0, Lcom/android/launcher2/MenuView;->mDownloadedButton:Landroid/widget/TextView;

    iget v7, p0, Lcom/android/launcher2/MenuView;->mDownloadedButtonDrawablePadding:I

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    .line 1055
    iget-object v6, p0, Lcom/android/launcher2/MenuView;->mDownloadedButton:Landroid/widget/TextView;

    invoke-virtual {v6, v0, v8, v0, v8}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 1062
    :cond_0
    :goto_0
    iget-object v6, p0, Lcom/android/launcher2/MenuView;->mTabsView:Landroid/view/View;

    if-eqz v6, :cond_1

    .line 1063
    iget-object v6, p0, Lcom/android/launcher2/MenuView;->mTabsView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout$LayoutParams;

    .line 1064
    .local v3, "lp":Landroid/widget/LinearLayout$LayoutParams;
    if-eqz v3, :cond_1

    .line 1065
    if-eqz v1, :cond_6

    .line 1066
    iput v8, v3, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 1067
    const/high16 v6, 0x40000000    # 2.0f

    iput v6, v3, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 1072
    :goto_1
    iget-object v6, p0, Lcom/android/launcher2/MenuView;->mTabsView:Landroid/view/View;

    invoke-virtual {v6, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1075
    .end local v3    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    :cond_1
    iget-object v6, p0, Lcom/android/launcher2/MenuView;->mDownloadedContainer:Landroid/view/View;

    if-eqz v6, :cond_2

    .line 1076
    iget-object v6, p0, Lcom/android/launcher2/MenuView;->mDownloadedContainer:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout$LayoutParams;

    .line 1077
    .restart local v3    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    if-eqz v3, :cond_2

    .line 1078
    if-eqz v1, :cond_7

    if-eqz v5, :cond_7

    .line 1079
    iput v8, v3, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 1080
    iput v10, v3, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 1085
    :goto_2
    iget-object v6, p0, Lcom/android/launcher2/MenuView;->mDownloadedContainer:Landroid/view/View;

    invoke-virtual {v6, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1088
    .end local v3    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    :cond_2
    iget-object v6, p0, Lcom/android/launcher2/MenuView;->mTabGapView:Landroid/view/View;

    if-eqz v6, :cond_3

    .line 1089
    iget-object v6, p0, Lcom/android/launcher2/MenuView;->mTabGapView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout$LayoutParams;

    .line 1090
    .restart local v3    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    if-eqz v3, :cond_3

    .line 1091
    if-eqz v1, :cond_8

    .line 1092
    iput v9, v3, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 1096
    :goto_3
    iget-object v6, p0, Lcom/android/launcher2/MenuView;->mTabGapView:Landroid/view/View;

    invoke-virtual {v6, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1099
    .end local v3    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    :cond_3
    iget-object v6, p0, Lcom/android/launcher2/MenuView;->mTabDivider:Landroid/view/View;

    if-eqz v6, :cond_4

    .line 1100
    if-eqz v1, :cond_9

    .line 1101
    iget-object v6, p0, Lcom/android/launcher2/MenuView;->mTabDivider:Landroid/view/View;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    .line 1106
    :cond_4
    :goto_4
    return-void

    .line 1057
    :cond_5
    iget-object v6, p0, Lcom/android/launcher2/MenuView;->mDownloadedButton:Landroid/widget/TextView;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1058
    iget-object v6, p0, Lcom/android/launcher2/MenuView;->mDownloadedButton:Landroid/widget/TextView;

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    .line 1059
    iget-object v6, p0, Lcom/android/launcher2/MenuView;->mDownloadedButton:Landroid/widget/TextView;

    invoke-virtual {v6, v8, v8, v8, v8}, Landroid/widget/TextView;->setPadding(IIII)V

    goto :goto_0

    .line 1069
    .restart local v3    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    :cond_6
    iput v2, v3, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 1070
    iput v9, v3, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    goto :goto_1

    .line 1082
    :cond_7
    const/4 v6, -0x2

    iput v6, v3, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 1083
    iput v9, v3, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    goto :goto_2

    .line 1094
    :cond_8
    iput v10, v3, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    goto :goto_3

    .line 1103
    .end local v3    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    :cond_9
    iget-object v6, p0, Lcom/android/launcher2/MenuView;->mTabDivider:Landroid/view/View;

    invoke-virtual {v6, v8}, Landroid/view/View;->setVisibility(I)V

    goto :goto_4
.end method

.method private showNoDownloadedAppsToastMessage()V
    .locals 3

    .prologue
    .line 525
    iget-object v0, p0, Lcom/android/launcher2/MenuView;->mNoDownloadedAppsToastMessage:Landroid/widget/Toast;

    if-nez v0, :cond_0

    .line 526
    invoke-virtual {p0}, Lcom/android/launcher2/MenuView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f10008f

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/MenuView;->mNoDownloadedAppsToastMessage:Landroid/widget/Toast;

    .line 528
    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/MenuView;->mNoDownloadedAppsToastMessage:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 529
    return-void
.end method


# virtual methods
.method public appBadgeUpdated(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher2/AppItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 412
    .local p1, "apps":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher2/AppItem;>;"
    iget-object v3, p0, Lcom/android/launcher2/MenuView;->mTabManager:Lcom/android/launcher2/tabs/TabManager;

    invoke-virtual {v3}, Lcom/android/launcher2/tabs/TabManager;->getTabInfo()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/tabs/TabManager$TabInfo;

    .line 413
    .local v2, "info":Lcom/android/launcher2/tabs/TabManager$TabInfo;
    invoke-virtual {v2}, Lcom/android/launcher2/tabs/TabManager$TabInfo;->getFrag()Landroid/app/Fragment;

    move-result-object v0

    .line 414
    .local v0, "frag":Landroid/app/Fragment;
    instance-of v3, v0, Lcom/android/launcher2/MenuView$AppModelNotifications;

    if-eqz v3, :cond_0

    .line 415
    check-cast v0, Lcom/android/launcher2/MenuView$AppModelNotifications;

    .end local v0    # "frag":Landroid/app/Fragment;
    invoke-interface {v0, p1}, Lcom/android/launcher2/MenuView$AppModelNotifications;->appBadgeUpdated(Ljava/util/List;)V

    goto :goto_0

    .line 418
    .end local v2    # "info":Lcom/android/launcher2/tabs/TabManager$TabInfo;
    :cond_1
    return-void
.end method

.method public appModelLoaded()V
    .locals 4

    .prologue
    .line 356
    iget-object v3, p0, Lcom/android/launcher2/MenuView;->mTabManager:Lcom/android/launcher2/tabs/TabManager;

    invoke-virtual {v3}, Lcom/android/launcher2/tabs/TabManager;->getTabInfo()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/tabs/TabManager$TabInfo;

    .line 357
    .local v2, "info":Lcom/android/launcher2/tabs/TabManager$TabInfo;
    invoke-virtual {v2}, Lcom/android/launcher2/tabs/TabManager$TabInfo;->getFrag()Landroid/app/Fragment;

    move-result-object v0

    .line 358
    .local v0, "frag":Landroid/app/Fragment;
    instance-of v3, v0, Lcom/android/launcher2/MenuView$AppModelNotifications;

    if-eqz v3, :cond_0

    check-cast v0, Lcom/android/launcher2/MenuView$AppModelNotifications;

    .end local v0    # "frag":Landroid/app/Fragment;
    invoke-interface {v0}, Lcom/android/launcher2/MenuView$AppModelNotifications;->appModelLoaded()V

    goto :goto_0

    .line 360
    .end local v2    # "info":Lcom/android/launcher2/tabs/TabManager$TabInfo;
    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher2/MenuView;->setDownloadIconEnabled()V

    .line 361
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/launcher2/MenuView;->mMenuAppLoaded:Z

    .line 362
    return-void
.end method

.method public appModelUpdated()V
    .locals 4

    .prologue
    .line 403
    iget-object v3, p0, Lcom/android/launcher2/MenuView;->mTabManager:Lcom/android/launcher2/tabs/TabManager;

    invoke-virtual {v3}, Lcom/android/launcher2/tabs/TabManager;->getTabInfo()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/tabs/TabManager$TabInfo;

    .line 404
    .local v2, "info":Lcom/android/launcher2/tabs/TabManager$TabInfo;
    invoke-virtual {v2}, Lcom/android/launcher2/tabs/TabManager$TabInfo;->getFrag()Landroid/app/Fragment;

    move-result-object v0

    .line 405
    .local v0, "frag":Landroid/app/Fragment;
    instance-of v3, v0, Lcom/android/launcher2/MenuView$AppModelNotifications;

    if-eqz v3, :cond_0

    .line 406
    check-cast v0, Lcom/android/launcher2/MenuView$AppModelNotifications;

    .end local v0    # "frag":Landroid/app/Fragment;
    invoke-interface {v0}, Lcom/android/launcher2/MenuView$AppModelNotifications;->appModelUpdated()V

    goto :goto_0

    .line 409
    .end local v2    # "info":Lcom/android/launcher2/tabs/TabManager$TabInfo;
    :cond_1
    return-void
.end method

.method public bindMenuSecretMode()V
    .locals 3

    .prologue
    .line 1128
    iget-object v1, p0, Lcom/android/launcher2/MenuView;->mTabManager:Lcom/android/launcher2/tabs/TabManager;

    const-string v2, "APPS"

    invoke-virtual {v1, v2}, Lcom/android/launcher2/tabs/TabManager;->getFragmentForTab(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    .line 1129
    .local v0, "appsFrag":Landroid/app/Fragment;
    instance-of v1, v0, Lcom/android/launcher2/MenuAppsGridFragment;

    if-eqz v1, :cond_2

    .line 1131
    invoke-virtual {p0}, Lcom/android/launcher2/MenuView;->getState()Lcom/android/launcher2/MenuAppsGrid$State;

    move-result-object v1

    sget-object v2, Lcom/android/launcher2/MenuAppsGrid$State;->MOVE_TO_SECRET_BOX:Lcom/android/launcher2/MenuAppsGrid$State;

    if-eq v1, v2, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/MenuView;->getState()Lcom/android/launcher2/MenuAppsGrid$State;

    move-result-object v1

    sget-object v2, Lcom/android/launcher2/MenuAppsGrid$State;->REMOVE_FROM_SECRET_BOX:Lcom/android/launcher2/MenuAppsGrid$State;

    if-ne v1, v2, :cond_1

    .line 1133
    :cond_0
    sget-object v1, Lcom/android/launcher2/MenuAppsGrid$State;->NORMAL:Lcom/android/launcher2/MenuAppsGrid$State;

    invoke-virtual {p0, v1}, Lcom/android/launcher2/MenuView;->changeState(Lcom/android/launcher2/MenuAppsGrid$State;)V

    .line 1135
    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher2/MenuView;->getMenuAppsGrid()Lcom/android/launcher2/MenuAppsGrid;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher2/MenuAppsGrid;->invalidatePageData()V

    move-object v1, v0

    .line 1136
    check-cast v1, Lcom/android/launcher2/MenuAppsGridFragment;

    invoke-virtual {v1}, Lcom/android/launcher2/MenuAppsGridFragment;->getMenuAppsGrid()Lcom/android/launcher2/MenuAppsGrid;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 1137
    check-cast v0, Lcom/android/launcher2/MenuAppsGridFragment;

    .end local v0    # "appsFrag":Landroid/app/Fragment;
    invoke-virtual {v0}, Lcom/android/launcher2/MenuAppsGridFragment;->getMenuAppsGrid()Lcom/android/launcher2/MenuAppsGrid;

    move-result-object v1

    sget-boolean v2, Lcom/android/launcher2/Launcher;->sIsSecretModeOn:Z

    invoke-virtual {v1, v2}, Lcom/android/launcher2/MenuAppsGrid;->refreshQuickViewMenuGrid(Z)V

    .line 1140
    :cond_2
    invoke-virtual {p0}, Lcom/android/launcher2/MenuView;->hasSecretWidget()V

    .line 1141
    invoke-virtual {p0}, Lcom/android/launcher2/MenuView;->setSecretWidgetByFiltering()V

    .line 1142
    sget-object v1, Lcom/android/launcher2/MenuAppModel;->INSTANCE:Lcom/android/launcher2/MenuAppModel;

    invoke-virtual {v1}, Lcom/android/launcher2/MenuAppModel;->updateCanUninstallApps()V

    .line 1143
    return-void
.end method

.method public changeState(Lcom/android/launcher2/MenuAppsGrid$State;)V
    .locals 4
    .param p1, "s"    # Lcom/android/launcher2/MenuAppsGrid$State;

    .prologue
    .line 433
    iget-object v1, p0, Lcom/android/launcher2/MenuView;->mTabManager:Lcom/android/launcher2/tabs/TabManager;

    const-string v2, "APPS"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/android/launcher2/tabs/TabManager;->getFragmentForTab(Ljava/lang/String;Z)Landroid/app/Fragment;

    move-result-object v0

    .line 434
    .local v0, "frag":Landroid/app/Fragment;
    instance-of v1, v0, Lcom/android/launcher2/MenuAppsGridFragment;

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/app/Fragment;->isAdded()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 435
    check-cast v0, Lcom/android/launcher2/MenuAppsGridFragment;

    .end local v0    # "frag":Landroid/app/Fragment;
    invoke-virtual {v0, p1}, Lcom/android/launcher2/MenuAppsGridFragment;->changeState(Lcom/android/launcher2/MenuAppsGrid$State;)V

    .line 437
    :cond_0
    return-void
.end method

.method public chooseViewType()V
    .locals 2

    .prologue
    .line 421
    iget-object v1, p0, Lcom/android/launcher2/MenuView;->mViewType:Lcom/android/launcher2/MenuView$ViewType;

    invoke-virtual {p0}, Lcom/android/launcher2/MenuView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/launcher2/MenuViewTypeDialog;->createAndShow(Lcom/android/launcher2/MenuView$ViewType;Landroid/app/FragmentManager;)V

    .line 422
    return-void
.end method

.method public closeFolders()V
    .locals 4

    .prologue
    .line 712
    iget-object v3, p0, Lcom/android/launcher2/MenuView;->mTabManager:Lcom/android/launcher2/tabs/TabManager;

    invoke-virtual {v3}, Lcom/android/launcher2/tabs/TabManager;->getTabInfo()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/tabs/TabManager$TabInfo;

    .line 713
    .local v2, "info":Lcom/android/launcher2/tabs/TabManager$TabInfo;
    invoke-virtual {v2}, Lcom/android/launcher2/tabs/TabManager$TabInfo;->getFrag()Landroid/app/Fragment;

    move-result-object v0

    .line 714
    .local v0, "frag":Landroid/app/Fragment;
    instance-of v3, v0, Lcom/android/launcher2/MenuAppsGridFragment;

    if-eqz v3, :cond_0

    .line 715
    check-cast v0, Lcom/android/launcher2/MenuAppsGridFragment;

    .end local v0    # "frag":Landroid/app/Fragment;
    invoke-virtual {v0}, Lcom/android/launcher2/MenuAppsGridFragment;->closeFolders()V

    goto :goto_0

    .line 717
    .end local v2    # "info":Lcom/android/launcher2/tabs/TabManager$TabInfo;
    :cond_1
    return-void
.end method

.method public collectExitAllAppsAnimators(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/animation/Animator;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 887
    .local p1, "animators":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    iget-object v0, p0, Lcom/android/launcher2/MenuView;->mMenuViewDarken:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 890
    iget-object v0, p0, Lcom/android/launcher2/MenuView;->mMenuViewDarken:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 892
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher2/MenuView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f05000b

    invoke-static {v0, v1}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/launcher2/MenuView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x10b0001

    invoke-static {v1, v2}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lcom/android/launcher2/MenuView;->collectAnimators(Ljava/util/ArrayList;Landroid/animation/Animator;Landroid/animation/Animator;)V

    .line 895
    return-void
.end method

.method public collectShowAllAppsAnimators(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/animation/Animator;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 880
    .local p1, "animators":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    invoke-virtual {p0}, Lcom/android/launcher2/MenuView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f050007

    invoke-static {v0, v1}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/launcher2/MenuView;->getContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x10b0000

    invoke-static {v1, v2}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lcom/android/launcher2/MenuView;->collectAnimators(Ljava/util/ArrayList;Landroid/animation/Animator;Landroid/animation/Animator;)V

    .line 883
    return-void
.end method

.method public enterAllStates()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 621
    iget-object v2, p0, Lcom/android/launcher2/MenuView;->mTabManager:Lcom/android/launcher2/tabs/TabManager;

    const-string v3, "APPS"

    invoke-virtual {v2, v3, v4}, Lcom/android/launcher2/tabs/TabManager;->getFragmentForTab(Ljava/lang/String;Z)Landroid/app/Fragment;

    move-result-object v0

    .line 622
    .local v0, "appsTab":Landroid/app/Fragment;
    invoke-virtual {p0}, Lcom/android/launcher2/MenuView;->getViewType()Lcom/android/launcher2/MenuView$ViewType;

    move-result-object v2

    sput-object v2, Lcom/android/launcher2/MenuView;->mOldViewType:Lcom/android/launcher2/MenuView$ViewType;

    .line 623
    invoke-virtual {p0}, Lcom/android/launcher2/MenuView;->getState()Lcom/android/launcher2/MenuAppsGrid$State;

    move-result-object v2

    sput-object v2, Lcom/android/launcher2/MenuView;->oldState:Lcom/android/launcher2/MenuAppsGrid$State;

    .line 624
    instance-of v2, v0, Lcom/android/launcher2/MenuAppsGridFragment;

    if-eqz v2, :cond_0

    .line 625
    check-cast v0, Lcom/android/launcher2/MenuAppsGridFragment;

    .end local v0    # "appsTab":Landroid/app/Fragment;
    invoke-virtual {v0, p0}, Lcom/android/launcher2/MenuAppsGridFragment;->onShowTab(Lcom/android/launcher2/MenuView;)V

    .line 626
    invoke-virtual {p0}, Lcom/android/launcher2/MenuView;->getState()Lcom/android/launcher2/MenuAppsGrid$State;

    move-result-object v2

    sget-object v3, Lcom/android/launcher2/MenuAppsGrid$State;->NORMAL:Lcom/android/launcher2/MenuAppsGrid$State;

    if-eq v2, v3, :cond_0

    sget-boolean v2, Lcom/android/launcher2/Launcher;->isHelpAppRunning:Z

    if-eqz v2, :cond_0

    .line 628
    sget-object v2, Lcom/android/launcher2/MenuAppsGrid$State;->NORMAL:Lcom/android/launcher2/MenuAppsGrid$State;

    invoke-virtual {p0, v2}, Lcom/android/launcher2/MenuView;->changeState(Lcom/android/launcher2/MenuAppsGrid$State;)V

    .line 632
    :cond_0
    iget-object v2, p0, Lcom/android/launcher2/MenuView;->mTabManager:Lcom/android/launcher2/tabs/TabManager;

    const-string v3, "WIDGETS"

    invoke-virtual {v2, v3, v4}, Lcom/android/launcher2/tabs/TabManager;->getFragmentForTab(Ljava/lang/String;Z)Landroid/app/Fragment;

    move-result-object v1

    .line 633
    .local v1, "wdgtTab":Landroid/app/Fragment;
    instance-of v2, v1, Lcom/android/launcher2/MenuWidgetsFragment;

    if-eqz v2, :cond_1

    .line 634
    check-cast v1, Lcom/android/launcher2/MenuWidgetsFragment;

    .end local v1    # "wdgtTab":Landroid/app/Fragment;
    invoke-virtual {v1, p0}, Lcom/android/launcher2/MenuWidgetsFragment;->onShowTab(Lcom/android/launcher2/MenuView;)V

    .line 636
    :cond_1
    return-void
.end method

.method public exitAllStates()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 659
    iget-object v2, p0, Lcom/android/launcher2/MenuView;->mTabManager:Lcom/android/launcher2/tabs/TabManager;

    const-string v3, "APPS"

    invoke-virtual {v2, v3, v4}, Lcom/android/launcher2/tabs/TabManager;->getFragmentForTab(Ljava/lang/String;Z)Landroid/app/Fragment;

    move-result-object v0

    .line 660
    .local v0, "appsTab":Landroid/app/Fragment;
    instance-of v2, v0, Lcom/android/launcher2/MenuAppsGridFragment;

    if-eqz v2, :cond_0

    .line 661
    check-cast v0, Lcom/android/launcher2/MenuAppsGridFragment;

    .end local v0    # "appsTab":Landroid/app/Fragment;
    invoke-virtual {v0, p0}, Lcom/android/launcher2/MenuAppsGridFragment;->onHideTab(Lcom/android/launcher2/MenuView;)V

    .line 664
    :cond_0
    iget-object v2, p0, Lcom/android/launcher2/MenuView;->mTabManager:Lcom/android/launcher2/tabs/TabManager;

    const-string v3, "WIDGETS"

    invoke-virtual {v2, v3, v4}, Lcom/android/launcher2/tabs/TabManager;->getFragmentForTab(Ljava/lang/String;Z)Landroid/app/Fragment;

    move-result-object v1

    .line 665
    .local v1, "wdgtTab":Landroid/app/Fragment;
    instance-of v2, v1, Lcom/android/launcher2/MenuWidgetsFragment;

    if-eqz v2, :cond_1

    .line 666
    check-cast v1, Lcom/android/launcher2/MenuWidgetsFragment;

    .end local v1    # "wdgtTab":Landroid/app/Fragment;
    invoke-virtual {v1, p0}, Lcom/android/launcher2/MenuWidgetsFragment;->onHideTab(Lcom/android/launcher2/MenuView;)V

    .line 669
    :cond_1
    return-void
.end method

.method public getCurrentFragment()Z
    .locals 3

    .prologue
    .line 733
    iget-object v1, p0, Lcom/android/launcher2/MenuView;->mTabManager:Lcom/android/launcher2/tabs/TabManager;

    invoke-virtual {v1}, Lcom/android/launcher2/tabs/TabManager;->getCurrentlyShownFragment()Landroid/app/Fragment;

    move-result-object v0

    .line 735
    .local v0, "isTabchanging":Landroid/app/Fragment;
    invoke-virtual {v0}, Landroid/app/Fragment;->getTag()Ljava/lang/String;

    move-result-object v1

    const-string v2, "APPS"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 736
    const/4 v1, 0x1

    .line 739
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getCurrentTabView()Landroid/view/View;
    .locals 1

    .prologue
    .line 460
    invoke-virtual {p0}, Lcom/android/launcher2/MenuView;->getCurrentView()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getDescendantFocusability()I
    .locals 1

    .prologue
    .line 848
    invoke-virtual {p0}, Lcom/android/launcher2/MenuView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    .line 849
    const/high16 v0, 0x60000

    .line 851
    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Landroid/widget/TabHost;->getDescendantFocusability()I

    move-result v0

    goto :goto_0
.end method

.method public getDownButton()Landroid/view/View;
    .locals 1

    .prologue
    .line 871
    iget-object v0, p0, Lcom/android/launcher2/MenuView;->mDownButton:Landroid/view/View;

    return-object v0
.end method

.method public getMenuAppsGrid()Lcom/android/launcher2/MenuAppsGrid;
    .locals 4

    .prologue
    .line 651
    iget-object v1, p0, Lcom/android/launcher2/MenuView;->mTabManager:Lcom/android/launcher2/tabs/TabManager;

    const-string v2, "APPS"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/android/launcher2/tabs/TabManager;->getFragmentForTab(Ljava/lang/String;Z)Landroid/app/Fragment;

    move-result-object v0

    .line 652
    .local v0, "appsTab":Landroid/app/Fragment;
    instance-of v1, v0, Lcom/android/launcher2/MenuAppsGridFragment;

    if-eqz v1, :cond_0

    .line 653
    check-cast v0, Lcom/android/launcher2/MenuAppsGridFragment;

    .end local v0    # "appsTab":Landroid/app/Fragment;
    invoke-virtual {v0}, Lcom/android/launcher2/MenuAppsGridFragment;->getMenuAppsGrid()Lcom/android/launcher2/MenuAppsGrid;

    move-result-object v1

    .line 655
    :goto_0
    return-object v1

    .restart local v0    # "appsTab":Landroid/app/Fragment;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getMenuOrMarketButton()Landroid/view/View;
    .locals 1

    .prologue
    .line 867
    iget-object v0, p0, Lcom/android/launcher2/MenuView;->mMenuOrMarket:Landroid/view/View;

    return-object v0
.end method

.method public getMenuWidgets()Lcom/android/launcher2/MenuWidgets;
    .locals 4

    .prologue
    .line 639
    iget-object v1, p0, Lcom/android/launcher2/MenuView;->mTabManager:Lcom/android/launcher2/tabs/TabManager;

    const-string v2, "WIDGETS"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/android/launcher2/tabs/TabManager;->getFragmentForTab(Ljava/lang/String;Z)Landroid/app/Fragment;

    move-result-object v0

    .line 640
    .local v0, "wdgtTab":Landroid/app/Fragment;
    instance-of v1, v0, Lcom/android/launcher2/MenuWidgetsFragment;

    if-eqz v1, :cond_0

    .line 641
    check-cast v0, Lcom/android/launcher2/MenuWidgetsFragment;

    .end local v0    # "wdgtTab":Landroid/app/Fragment;
    invoke-virtual {v0}, Lcom/android/launcher2/MenuWidgetsFragment;->getMenuWidgets()Lcom/android/launcher2/MenuWidgets;

    move-result-object v1

    .line 643
    :goto_0
    return-object v1

    .restart local v0    # "wdgtTab":Landroid/app/Fragment;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getQuickView(Z)Lcom/android/launcher2/QuickViewMainMenu;
    .locals 2
    .param p1, "inflateIfNecessary"    # Z

    .prologue
    .line 722
    iget-object v1, p0, Lcom/android/launcher2/MenuView;->mQuickView:Lcom/android/launcher2/QuickViewMainMenu;

    if-nez v1, :cond_0

    if-eqz p1, :cond_0

    .line 723
    const v1, 0x7f0f00c9

    invoke-virtual {p0, v1}, Lcom/android/launcher2/MenuView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    .line 724
    .local v0, "stub":Landroid/view/ViewStub;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/QuickViewMainMenu;

    iput-object v1, p0, Lcom/android/launcher2/MenuView;->mQuickView:Lcom/android/launcher2/QuickViewMainMenu;

    .line 726
    .end local v0    # "stub":Landroid/view/ViewStub;
    :cond_0
    iget-object v1, p0, Lcom/android/launcher2/MenuView;->mQuickView:Lcom/android/launcher2/QuickViewMainMenu;

    return-object v1
.end method

.method public getState()Lcom/android/launcher2/MenuAppsGrid$State;
    .locals 4

    .prologue
    .line 464
    iget-object v1, p0, Lcom/android/launcher2/MenuView;->mTabManager:Lcom/android/launcher2/tabs/TabManager;

    const-string v2, "APPS"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/android/launcher2/tabs/TabManager;->getFragmentForTab(Ljava/lang/String;Z)Landroid/app/Fragment;

    move-result-object v0

    .line 465
    .local v0, "frag":Landroid/app/Fragment;
    instance-of v1, v0, Lcom/android/launcher2/MenuAppsGridFragment;

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/app/Fragment;->isAdded()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 466
    check-cast v0, Lcom/android/launcher2/MenuAppsGridFragment;

    .end local v0    # "frag":Landroid/app/Fragment;
    invoke-virtual {v0}, Lcom/android/launcher2/MenuAppsGridFragment;->getState()Lcom/android/launcher2/MenuAppsGrid$State;

    move-result-object v1

    .line 468
    :goto_0
    return-object v1

    .restart local v0    # "frag":Landroid/app/Fragment;
    :cond_0
    sget-object v1, Lcom/android/launcher2/MenuAppsGrid$State;->NORMAL:Lcom/android/launcher2/MenuAppsGrid$State;

    goto :goto_0
.end method

.method public getTabManager()Lcom/android/launcher2/tabs/TabManager;
    .locals 1

    .prologue
    .line 750
    iget-object v0, p0, Lcom/android/launcher2/MenuView;->mTabManager:Lcom/android/launcher2/tabs/TabManager;

    return-object v0
.end method

.method public getTitleBarManager()Lcom/android/launcher2/MenuTitleBarManager;
    .locals 1

    .prologue
    .line 875
    iget-object v0, p0, Lcom/android/launcher2/MenuView;->mTitleBarManager:Lcom/android/launcher2/MenuTitleBarManager;

    return-object v0
.end method

.method public getViewType()Lcom/android/launcher2/MenuView$ViewType;
    .locals 1

    .prologue
    .line 425
    iget-object v0, p0, Lcom/android/launcher2/MenuView;->mViewType:Lcom/android/launcher2/MenuView$ViewType;

    return-object v0
.end method

.method public getWidgetState()Lcom/android/launcher2/MenuWidgets$WidgetState;
    .locals 4

    .prologue
    .line 472
    iget-object v1, p0, Lcom/android/launcher2/MenuView;->mTabManager:Lcom/android/launcher2/tabs/TabManager;

    const-string v2, "WIDGETS"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/android/launcher2/tabs/TabManager;->getFragmentForTab(Ljava/lang/String;Z)Landroid/app/Fragment;

    move-result-object v0

    .line 473
    .local v0, "frag":Landroid/app/Fragment;
    instance-of v1, v0, Lcom/android/launcher2/MenuWidgetsFragment;

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/app/Fragment;->isAdded()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 474
    check-cast v0, Lcom/android/launcher2/MenuWidgetsFragment;

    .end local v0    # "frag":Landroid/app/Fragment;
    invoke-virtual {v0}, Lcom/android/launcher2/MenuWidgetsFragment;->getWidgetState()Lcom/android/launcher2/MenuWidgets$WidgetState;

    move-result-object v1

    .line 476
    :goto_0
    return-object v1

    .restart local v0    # "frag":Landroid/app/Fragment;
    :cond_0
    sget-object v1, Lcom/android/launcher2/MenuWidgets$WidgetState;->NORMAL:Lcom/android/launcher2/MenuWidgets$WidgetState;

    goto :goto_0
.end method

.method public hasSecretWidget()V
    .locals 0

    .prologue
    .line 1198
    return-void
.end method

.method public isCurrentTabAppGrid()Z
    .locals 2

    .prologue
    .line 452
    invoke-virtual {p0}, Lcom/android/launcher2/MenuView;->getCurrentTabTag()Ljava/lang/String;

    move-result-object v0

    const-string v1, "APPS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isCurrentTabAppsTab()Z
    .locals 2

    .prologue
    .line 456
    invoke-virtual {p0}, Lcom/android/launcher2/MenuView;->getCurrentTabTag()Ljava/lang/String;

    move-result-object v0

    const-string v1, "APPS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isCurrentTabWidgets()Z
    .locals 2

    .prologue
    .line 448
    invoke-virtual {p0}, Lcom/android/launcher2/MenuView;->getCurrentTabTag()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WIDGETS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isMenuExiting()Z
    .locals 3

    .prologue
    .line 743
    invoke-virtual {p0}, Lcom/android/launcher2/MenuView;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/Launcher;

    .line 744
    .local v1, "launcher":Lcom/android/launcher2/Launcher;
    invoke-virtual {p0}, Lcom/android/launcher2/MenuView;->isVisible()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/android/launcher2/Launcher;->isExitingAllApps()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 745
    .local v0, "isExiting":Z
    :goto_0
    return v0

    .line 744
    .end local v0    # "isExiting":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isVisible()Z
    .locals 1

    .prologue
    .line 778
    invoke-virtual {p0}, Lcom/android/launcher2/MenuView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onBackPressed()Z
    .locals 2

    .prologue
    .line 481
    iget-object v1, p0, Lcom/android/launcher2/MenuView;->mTabManager:Lcom/android/launcher2/tabs/TabManager;

    invoke-virtual {v1}, Lcom/android/launcher2/tabs/TabManager;->getCurrentlyShownFragment()Landroid/app/Fragment;

    move-result-object v0

    .line 482
    .local v0, "currentFragment":Landroid/app/Fragment;
    instance-of v1, v0, Lcom/android/launcher2/Launcher$HardwareKeys;

    if-eqz v1, :cond_0

    .line 483
    check-cast v0, Lcom/android/launcher2/Launcher$HardwareKeys;

    .end local v0    # "currentFragment":Landroid/app/Fragment;
    invoke-interface {v0}, Lcom/android/launcher2/Launcher$HardwareKeys;->onBackPressed()Z

    move-result v1

    .line 485
    :goto_0
    return v1

    .restart local v0    # "currentFragment":Landroid/app/Fragment;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 13
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    const/4 v12, 0x0

    .line 956
    invoke-super {p0, p1}, Landroid/widget/TabHost;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 958
    invoke-virtual {p0}, Lcom/android/launcher2/MenuView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 959
    .local v3, "r":Landroid/content/res/Resources;
    invoke-direct {p0}, Lcom/android/launcher2/MenuView;->setupTabTitleBar()V

    .line 961
    const v10, 0x7f0e0048

    invoke-virtual {v3, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    .line 962
    .local v8, "tab_tm":I
    const v10, 0x7f0e0111

    invoke-virtual {v3, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    .line 963
    .local v6, "tab_lm":I
    const v10, 0x7f0e0112

    invoke-virtual {v3, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    .line 965
    .local v7, "tab_rm":I
    const v10, 0x7f0e0113

    invoke-virtual {v3, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 966
    .local v1, "lm":I
    const v10, 0x7f0e0114

    invoke-virtual {v3, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 967
    .local v4, "rm":I
    const v10, 0x7f0e0016

    invoke-virtual {v3, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 972
    .local v0, "height":I
    const v10, 0x7f0f00b9

    invoke-virtual {p0, v10}, Lcom/android/launcher2/MenuView;->findViewById(I)Landroid/view/View;

    move-result-object v9

    .line 973
    .local v9, "titleBar":Landroid/view/View;
    if-eqz v9, :cond_0

    .line 974
    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 975
    .local v2, "lp":Landroid/widget/FrameLayout$LayoutParams;
    iput v0, v2, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 976
    iput v8, v2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 977
    iput v6, v2, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 978
    iput v7, v2, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 979
    invoke-virtual {v9, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 980
    invoke-virtual {v9}, Landroid/view/View;->getPaddingTop()I

    move-result v10

    invoke-virtual {v9}, Landroid/view/View;->getPaddingBottom()I

    move-result v11

    invoke-virtual {v9, v12, v10, v12, v11}, Landroid/view/View;->setPadding(IIII)V

    .line 982
    .end local v2    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    :cond_0
    const v10, 0x7f0f00c1

    invoke-virtual {p0, v10}, Lcom/android/launcher2/MenuView;->findViewById(I)Landroid/view/View;

    move-result-object v9

    .line 983
    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 984
    .restart local v2    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    iput v0, v2, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 985
    iput v1, v2, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 986
    iput v4, v2, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 987
    invoke-virtual {v9, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 988
    invoke-virtual {v9}, Landroid/view/View;->getPaddingTop()I

    move-result v10

    invoke-virtual {v9}, Landroid/view/View;->getPaddingBottom()I

    move-result v11

    invoke-virtual {v9, v12, v10, v12, v11}, Landroid/view/View;->setPadding(IIII)V

    .line 990
    const v10, 0x7f0f00c2

    invoke-virtual {p0, v10}, Lcom/android/launcher2/MenuView;->findViewById(I)Landroid/view/View;

    move-result-object v9

    .line 991
    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .end local v2    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 992
    .restart local v2    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    iput v0, v2, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 993
    iput v1, v2, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 994
    iput v4, v2, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 995
    invoke-virtual {v9, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 996
    invoke-virtual {v9}, Landroid/view/View;->getPaddingTop()I

    move-result v10

    invoke-virtual {v9}, Landroid/view/View;->getPaddingBottom()I

    move-result v11

    invoke-virtual {v9, v12, v10, v12, v11}, Landroid/view/View;->setPadding(IIII)V

    .line 998
    const v10, 0x7f0f00c4

    invoke-virtual {p0, v10}, Lcom/android/launcher2/MenuView;->findViewById(I)Landroid/view/View;

    move-result-object v9

    .line 999
    if-nez v9, :cond_1

    .line 1000
    const v10, 0x7f0f00c3

    invoke-virtual {p0, v10}, Lcom/android/launcher2/MenuView;->findViewById(I)Landroid/view/View;

    move-result-object v9

    .line 1001
    :cond_1
    if-eqz v9, :cond_2

    .line 1002
    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .end local v2    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 1003
    .restart local v2    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    iput v0, v2, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 1004
    iput v1, v2, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 1005
    iput v4, v2, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 1006
    invoke-virtual {v9, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1007
    invoke-virtual {v9}, Landroid/view/View;->getPaddingTop()I

    move-result v10

    invoke-virtual {v9}, Landroid/view/View;->getPaddingBottom()I

    move-result v11

    invoke-virtual {v9, v12, v10, v12, v11}, Landroid/view/View;->setPadding(IIII)V

    .line 1010
    :cond_2
    const v10, 0x7f0f00c6

    invoke-virtual {p0, v10}, Lcom/android/launcher2/MenuView;->findViewById(I)Landroid/view/View;

    move-result-object v9

    .line 1011
    if-nez v9, :cond_3

    .line 1012
    const v10, 0x7f0f00c5

    invoke-virtual {p0, v10}, Lcom/android/launcher2/MenuView;->findViewById(I)Landroid/view/View;

    move-result-object v9

    .line 1013
    :cond_3
    if-eqz v9, :cond_4

    .line 1014
    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .end local v2    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 1015
    .restart local v2    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    iput v0, v2, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 1016
    iput v1, v2, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 1017
    iput v4, v2, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 1018
    invoke-virtual {v9, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1019
    invoke-virtual {v9}, Landroid/view/View;->getPaddingTop()I

    move-result v10

    invoke-virtual {v9}, Landroid/view/View;->getPaddingBottom()I

    move-result v11

    invoke-virtual {v9, v12, v10, v12, v11}, Landroid/view/View;->setPadding(IIII)V

    .line 1022
    :cond_4
    const v10, 0x7f0f00c8

    invoke-virtual {p0, v10}, Lcom/android/launcher2/MenuView;->findViewById(I)Landroid/view/View;

    move-result-object v9

    .line 1023
    if-nez v9, :cond_5

    .line 1024
    const v10, 0x7f0f00c7

    invoke-virtual {p0, v10}, Lcom/android/launcher2/MenuView;->findViewById(I)Landroid/view/View;

    move-result-object v9

    .line 1025
    :cond_5
    if-eqz v9, :cond_6

    .line 1026
    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .end local v2    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 1027
    .restart local v2    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    iput v0, v2, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 1028
    iput v1, v2, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 1029
    iput v4, v2, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 1030
    invoke-virtual {v9, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1031
    invoke-virtual {v9}, Landroid/view/View;->getPaddingTop()I

    move-result v10

    invoke-virtual {v9}, Landroid/view/View;->getPaddingBottom()I

    move-result v11

    invoke-virtual {v9, v12, v10, v12, v11}, Landroid/view/View;->setPadding(IIII)V

    .line 1035
    :cond_6
    const v10, 0x1020011

    invoke-virtual {p0, v10}, Lcom/android/launcher2/MenuView;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 1036
    .local v5, "tabContentView":Landroid/view/View;
    if-eqz v5, :cond_7

    .line 1037
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .end local v2    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 1038
    .restart local v2    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    iput v0, v2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 1039
    invoke-virtual {v5, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1041
    :cond_7
    return-void
.end method

.method public onExitAllApps()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 609
    invoke-direct {p0}, Lcom/android/launcher2/MenuView;->closeViewTypeDialog()V

    .line 610
    iget-object v2, p0, Lcom/android/launcher2/MenuView;->mTabManager:Lcom/android/launcher2/tabs/TabManager;

    const-string v3, "APPS"

    invoke-virtual {v2, v3, v4}, Lcom/android/launcher2/tabs/TabManager;->getFragmentForTab(Ljava/lang/String;Z)Landroid/app/Fragment;

    move-result-object v0

    .line 611
    .local v0, "appsTab":Landroid/app/Fragment;
    instance-of v2, v0, Lcom/android/launcher2/MenuAppsGridFragment;

    if-eqz v2, :cond_0

    .line 612
    check-cast v0, Lcom/android/launcher2/MenuAppsGridFragment;

    .end local v0    # "appsTab":Landroid/app/Fragment;
    invoke-virtual {v0}, Lcom/android/launcher2/MenuAppsGridFragment;->onExitAllApps()V

    .line 614
    :cond_0
    iget-object v2, p0, Lcom/android/launcher2/MenuView;->mTabManager:Lcom/android/launcher2/tabs/TabManager;

    const-string v3, "WIDGETS"

    invoke-virtual {v2, v3, v4}, Lcom/android/launcher2/tabs/TabManager;->getFragmentForTab(Ljava/lang/String;Z)Landroid/app/Fragment;

    move-result-object v1

    .line 615
    .local v1, "wdgtTab":Landroid/app/Fragment;
    instance-of v2, v1, Lcom/android/launcher2/MenuWidgetsFragment;

    if-eqz v2, :cond_1

    .line 616
    check-cast v1, Lcom/android/launcher2/MenuWidgetsFragment;

    .end local v1    # "wdgtTab":Landroid/app/Fragment;
    invoke-virtual {v1}, Lcom/android/launcher2/MenuWidgetsFragment;->onExitAllApps()V

    .line 618
    :cond_1
    return-void
.end method

.method public onFinishExitAllApps()V
    .locals 0

    .prologue
    .line 683
    return-void
.end method

.method public onFinishInflate()V
    .locals 14

    .prologue
    .line 177
    invoke-super {p0}, Landroid/widget/TabHost;->onFinishInflate()V

    .line 178
    invoke-virtual {p0}, Lcom/android/launcher2/MenuView;->setup()V

    .line 180
    const v8, 0x7f0f00ba

    invoke-virtual {p0, v8}, Lcom/android/launcher2/MenuView;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, p0, Lcom/android/launcher2/MenuView;->mTabTitle:Landroid/widget/TextView;

    .line 181
    const v8, 0x1020013

    invoke-virtual {p0, v8}, Lcom/android/launcher2/MenuView;->findViewById(I)Landroid/view/View;

    move-result-object v8

    iput-object v8, p0, Lcom/android/launcher2/MenuView;->mTabsView:Landroid/view/View;

    .line 182
    const v8, 0x7f0f00bc

    invoke-virtual {p0, v8}, Lcom/android/launcher2/MenuView;->findViewById(I)Landroid/view/View;

    move-result-object v8

    iput-object v8, p0, Lcom/android/launcher2/MenuView;->mTabDivider:Landroid/view/View;

    .line 183
    const v8, 0x7f0f00bd

    invoke-virtual {p0, v8}, Lcom/android/launcher2/MenuView;->findViewById(I)Landroid/view/View;

    move-result-object v8

    iput-object v8, p0, Lcom/android/launcher2/MenuView;->mTabGapView:Landroid/view/View;

    .line 184
    const v8, 0x7f0f00be

    invoke-virtual {p0, v8}, Lcom/android/launcher2/MenuView;->findViewById(I)Landroid/view/View;

    move-result-object v8

    iput-object v8, p0, Lcom/android/launcher2/MenuView;->mDownloadedContainer:Landroid/view/View;

    .line 185
    const v8, 0x7f0f00b6

    invoke-virtual {p0, v8}, Lcom/android/launcher2/MenuView;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, p0, Lcom/android/launcher2/MenuView;->mDownloadedButton:Landroid/widget/TextView;

    .line 186
    iget-object v8, p0, Lcom/android/launcher2/MenuView;->mDownloadedButton:Landroid/widget/TextView;

    if-eqz v8, :cond_0

    .line 187
    iget-object v8, p0, Lcom/android/launcher2/MenuView;->mDownloadedButton:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v8

    iput-object v8, p0, Lcom/android/launcher2/MenuView;->mDownloadedText:Ljava/lang/CharSequence;

    .line 188
    iget-object v8, p0, Lcom/android/launcher2/MenuView;->mDownloadedButton:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getCompoundDrawablePadding()I

    move-result v8

    iput v8, p0, Lcom/android/launcher2/MenuView;->mDownloadedButtonDrawablePadding:I

    .line 191
    :cond_0
    const v8, 0x7f0f00bb

    invoke-virtual {p0, v8}, Lcom/android/launcher2/MenuView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    .line 193
    .local v2, "menuButton":Landroid/widget/FrameLayout;
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->hasMenuKey()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 194
    invoke-static {v2}, Lcom/android/launcher2/MenuView;->removeButton(Landroid/view/View;)V

    .line 195
    const v8, 0x7f0f00c0

    invoke-virtual {p0, v8}, Lcom/android/launcher2/MenuView;->findViewById(I)Landroid/view/View;

    move-result-object v8

    invoke-static {v8}, Lcom/android/launcher2/MenuView;->removeButton(Landroid/view/View;)V

    .line 196
    const v8, 0x7f0f00bf

    invoke-virtual {p0, v8}, Lcom/android/launcher2/MenuView;->findViewById(I)Landroid/view/View;

    move-result-object v8

    iput-object v8, p0, Lcom/android/launcher2/MenuView;->mMenuOrMarket:Landroid/view/View;

    .line 201
    :goto_0
    iget-object v8, p0, Lcom/android/launcher2/MenuView;->mMenuOrMarket:Landroid/view/View;

    if-eqz v8, :cond_1

    .line 202
    iget-object v8, p0, Lcom/android/launcher2/MenuView;->mMenuOrMarket:Landroid/view/View;

    sget-object v9, Lcom/android/launcher2/FocusHelper;->DOWNLOADED_ICON_KEY_LISTENER:Landroid/view/View$OnKeyListener;

    invoke-virtual {v8, v9}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 204
    :cond_1
    iget-object v8, p0, Lcom/android/launcher2/MenuView;->mDownButton:Landroid/view/View;

    if-eqz v8, :cond_2

    .line 205
    iget-object v8, p0, Lcom/android/launcher2/MenuView;->mDownButton:Landroid/view/View;

    sget-object v9, Lcom/android/launcher2/FocusHelper;->DOWNLOADED_ICON_KEY_LISTENER:Landroid/view/View$OnKeyListener;

    invoke-virtual {v8, v9}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 207
    :cond_2
    invoke-direct {p0}, Lcom/android/launcher2/MenuView;->setupTabTitleBar()V

    .line 208
    iget-object v8, p0, Lcom/android/launcher2/MenuView;->mTitleBarManager:Lcom/android/launcher2/MenuTitleBarManager;

    invoke-virtual {v8, p0}, Lcom/android/launcher2/MenuTitleBarManager;->init(Lcom/android/launcher2/MenuView;)V

    .line 215
    const v8, 0x7f0f00cb

    invoke-virtual {p0, v8}, Lcom/android/launcher2/MenuView;->findViewById(I)Landroid/view/View;

    move-result-object v8

    iput-object v8, p0, Lcom/android/launcher2/MenuView;->mMenuViewDarken:Landroid/view/View;

    .line 216
    const v8, 0x7f0f00b8

    invoke-virtual {p0, v8}, Lcom/android/launcher2/MenuView;->findViewById(I)Landroid/view/View;

    move-result-object v8

    iput-object v8, p0, Lcom/android/launcher2/MenuView;->mMenuContainer:Landroid/view/View;

    .line 218
    invoke-virtual {p0}, Lcom/android/launcher2/MenuView;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/Launcher;

    .line 219
    .local v1, "launcher":Lcom/android/launcher2/Launcher;
    new-instance v8, Lcom/android/launcher2/tabs/TabManager;

    const v9, 0x1020011

    invoke-direct {v8, v1, p0, v9}, Lcom/android/launcher2/tabs/TabManager;-><init>(Landroid/app/Activity;Lcom/android/launcher2/MenuView;I)V

    iput-object v8, p0, Lcom/android/launcher2/MenuView;->mTabManager:Lcom/android/launcher2/tabs/TabManager;

    .line 220
    const v8, 0x1020013

    invoke-virtual {p0, v8}, Lcom/android/launcher2/MenuView;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TabWidget;

    .line 222
    .local v6, "tabs":Landroid/widget/TabWidget;
    const-string v8, "layout_inflater"

    invoke-virtual {v1, v8}, Lcom/android/launcher2/Launcher;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 225
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const/4 v4, 0x0

    .line 226
    .local v4, "tabDescription":Ljava/lang/String;
    const v8, 0x7f030055

    const/4 v9, 0x0

    invoke-virtual {v0, v8, v6, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 227
    .local v5, "tabView":Landroid/widget/TextView;
    const v8, 0x7f100021

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setText(I)V

    .line 228
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/launcher2/MenuView;->getContext()Landroid/content/Context;

    move-result-object v9

    const v10, 0x7f1000d9

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p0}, Lcom/android/launcher2/MenuView;->getContext()Landroid/content/Context;

    move-result-object v9

    const v10, 0x7f1000da

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    const/4 v13, 0x1

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x1

    const/4 v13, 0x3

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-virtual {v9, v10, v11}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 229
    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 230
    const/4 v8, 0x0

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setHoverPopupType(I)V

    .line 231
    iput-object v5, p0, Lcom/android/launcher2/MenuView;->mAppsTabTextView:Landroid/widget/TextView;

    .line 232
    iget-object v8, p0, Lcom/android/launcher2/MenuView;->mTabManager:Lcom/android/launcher2/tabs/TabManager;

    const-string v9, "APPS"

    invoke-virtual {p0, v9}, Lcom/android/launcher2/MenuView;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v9

    invoke-virtual {v9, v5}, Landroid/widget/TabHost$TabSpec;->setIndicator(Landroid/view/View;)Landroid/widget/TabHost$TabSpec;

    move-result-object v9

    const-class v10, Lcom/android/launcher2/MenuAppsGridFragment;

    const/4 v11, 0x0

    invoke-virtual {v8, v9, v10, v11}, Lcom/android/launcher2/tabs/TabManager;->addTab(Landroid/widget/TabHost$TabSpec;Ljava/lang/Class;Landroid/os/Bundle;)V

    .line 235
    const v8, 0x7f030055

    const/4 v9, 0x0

    invoke-virtual {v0, v8, v6, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    .end local v5    # "tabView":Landroid/widget/TextView;
    check-cast v5, Landroid/widget/TextView;

    .line 236
    .restart local v5    # "tabView":Landroid/widget/TextView;
    const v8, 0x7f100003

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setText(I)V

    .line 237
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/launcher2/MenuView;->getContext()Landroid/content/Context;

    move-result-object v9

    const v10, 0x7f100003

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p0}, Lcom/android/launcher2/MenuView;->getContext()Landroid/content/Context;

    move-result-object v9

    const v10, 0x7f1000da

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    const/4 v13, 0x2

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x1

    const/4 v13, 0x3

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-virtual {v9, v10, v11}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 238
    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 239
    const/4 v8, 0x0

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setHoverPopupType(I)V

    .line 240
    iput-object v5, p0, Lcom/android/launcher2/MenuView;->mWidgetsTabTextView:Landroid/widget/TextView;

    .line 241
    iget-object v8, p0, Lcom/android/launcher2/MenuView;->mTabManager:Lcom/android/launcher2/tabs/TabManager;

    const-string v9, "WIDGETS"

    invoke-virtual {p0, v9}, Lcom/android/launcher2/MenuView;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v9

    invoke-virtual {v9, v5}, Landroid/widget/TabHost$TabSpec;->setIndicator(Landroid/view/View;)Landroid/widget/TabHost$TabSpec;

    move-result-object v9

    const-class v10, Lcom/android/launcher2/MenuWidgetsFragment;

    const/4 v11, 0x0

    invoke-virtual {v8, v9, v10, v11}, Lcom/android/launcher2/tabs/TabManager;->addTab(Landroid/widget/TabHost$TabSpec;Ljava/lang/Class;Landroid/os/Bundle;)V

    .line 244
    iget-object v8, p0, Lcom/android/launcher2/MenuView;->mTabManager:Lcom/android/launcher2/tabs/TabManager;

    sget-object v9, Lcom/android/launcher2/FocusHelper;->APPS_CUSTOMIZE_TABKEY_LISTENER:Landroid/view/View$OnKeyListener;

    invoke-virtual {v8, v9}, Lcom/android/launcher2/tabs/TabManager;->setLastTabKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 247
    const v8, 0x7f0f00b6

    invoke-virtual {p0, v8}, Lcom/android/launcher2/MenuView;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, p0, Lcom/android/launcher2/MenuView;->mDownloadedButton:Landroid/widget/TextView;

    .line 248
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/launcher2/MenuView;->getContext()Landroid/content/Context;

    move-result-object v9

    const v10, 0x7f10008e

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p0}, Lcom/android/launcher2/MenuView;->getContext()Landroid/content/Context;

    move-result-object v9

    const v10, 0x7f1000da

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    const/4 v13, 0x3

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x1

    const/4 v13, 0x3

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-virtual {v9, v10, v11}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 249
    iget-object v8, p0, Lcom/android/launcher2/MenuView;->mDownloadedButton:Landroid/widget/TextView;

    invoke-virtual {v8, v4}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 250
    invoke-virtual {p0}, Lcom/android/launcher2/MenuView;->setDownloadIconEnabled()V

    .line 252
    const v8, 0x7f0f00d1

    invoke-virtual {v2, v8}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 253
    .local v3, "popUpIconImage":Landroid/widget/ImageView;
    invoke-virtual {p0}, Lcom/android/launcher2/MenuView;->getContext()Landroid/content/Context;

    move-result-object v8

    const v9, 0x7f100028

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    .line 254
    .local v7, "talkback_button":Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/launcher2/MenuView;->getContext()Landroid/content/Context;

    move-result-object v9

    const v10, 0x7f10002f

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 255
    return-void

    .line 198
    .end local v0    # "inflater":Landroid/view/LayoutInflater;
    .end local v1    # "launcher":Lcom/android/launcher2/Launcher;
    .end local v3    # "popUpIconImage":Landroid/widget/ImageView;
    .end local v4    # "tabDescription":Ljava/lang/String;
    .end local v5    # "tabView":Landroid/widget/TextView;
    .end local v6    # "tabs":Landroid/widget/TabWidget;
    .end local v7    # "talkback_button":Ljava/lang/String;
    :cond_3
    iput-object v2, p0, Lcom/android/launcher2/MenuView;->mMenuOrMarket:Landroid/view/View;

    .line 199
    const v8, 0x7f0f00bf

    invoke-virtual {p0, v8}, Lcom/android/launcher2/MenuView;->findViewById(I)Landroid/view/View;

    move-result-object v8

    iput-object v8, p0, Lcom/android/launcher2/MenuView;->mDownButton:Landroid/view/View;

    goto/16 :goto_0
.end method

.method public onHomePressed(Z)Z
    .locals 2
    .param p1, "moveToDefaultScreen"    # Z

    .prologue
    .line 491
    sget-boolean v1, Lcom/android/launcher2/Launcher;->isHelpAppRunning:Z

    if-eqz v1, :cond_0

    .line 492
    const/4 v1, 0x1

    .line 500
    :goto_0
    return v1

    .line 496
    :cond_0
    iget-object v1, p0, Lcom/android/launcher2/MenuView;->mTabManager:Lcom/android/launcher2/tabs/TabManager;

    invoke-virtual {v1}, Lcom/android/launcher2/tabs/TabManager;->getCurrentlyShownFragment()Landroid/app/Fragment;

    move-result-object v0

    .line 497
    .local v0, "currentFragment":Landroid/app/Fragment;
    instance-of v1, v0, Lcom/android/launcher2/Launcher$HardwareKeys;

    if-eqz v1, :cond_1

    .line 498
    check-cast v0, Lcom/android/launcher2/Launcher$HardwareKeys;

    .end local v0    # "currentFragment":Landroid/app/Fragment;
    invoke-interface {v0, p1}, Lcom/android/launcher2/Launcher$HardwareKeys;->onHomePressed(Z)Z

    move-result v1

    goto :goto_0

    .line 500
    .restart local v0    # "currentFragment":Landroid/app/Fragment;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 1115
    const/4 v0, 0x0

    .line 1116
    .local v0, "result":Z
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 1117
    sget-boolean v1, Lcom/android/launcher2/Launcher;->isHelpAppRunning:Z

    if-eqz v1, :cond_0

    .line 1119
    invoke-static {}, Lcom/android/launcher2/guide/HelpAnimatedDialog;->setAlpha()V

    .line 1122
    :cond_0
    return v0
.end method

.method protected onLayout(ZIIII)V
    .locals 9
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    .line 899
    invoke-super/range {p0 .. p5}, Landroid/widget/TabHost;->onLayout(ZIIII)V

    .line 901
    invoke-virtual {p0}, Lcom/android/launcher2/MenuView;->getChildCount()I

    move-result v1

    .line 902
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 903
    invoke-virtual {p0, v2}, Lcom/android/launcher2/MenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 904
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    instance-of v4, v4, Lcom/android/launcher2/HomeView$LayoutParams;

    if-eqz v4, :cond_0

    .line 906
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/HomeView$LayoutParams;

    .line 907
    .local v3, "lp":Lcom/android/launcher2/HomeView$LayoutParams;
    iget v4, v3, Lcom/android/launcher2/HomeView$LayoutParams;->x:I

    iget v5, v3, Lcom/android/launcher2/HomeView$LayoutParams;->y:I

    iget v6, v3, Lcom/android/launcher2/HomeView$LayoutParams;->x:I

    iget v7, v3, Lcom/android/launcher2/HomeView$LayoutParams;->width:I

    add-int/2addr v6, v7

    iget v7, v3, Lcom/android/launcher2/HomeView$LayoutParams;->y:I

    iget v8, v3, Lcom/android/launcher2/HomeView$LayoutParams;->height:I

    add-int/2addr v7, v8

    invoke-virtual {v0, v4, v5, v6, v7}, Landroid/view/View;->layout(IIII)V

    .line 902
    .end local v3    # "lp":Lcom/android/launcher2/HomeView$LayoutParams;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 910
    .end local v0    # "child":Landroid/view/View;
    :cond_1
    return-void
.end method

.method public onMeasure(II)V
    .locals 0
    .param p1, "w"    # I
    .param p2, "h"    # I

    .prologue
    .line 1110
    invoke-super {p0, p1, p2}, Landroid/widget/TabHost;->onMeasure(II)V

    .line 1111
    return-void
.end method

.method public onOptionSelectedDownload()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 532
    sget-boolean v4, Lcom/android/launcher2/Launcher;->isHelpAppRunning:Z

    if-eqz v4, :cond_1

    .line 564
    :cond_0
    :goto_0
    return-void

    .line 536
    :cond_1
    sget-object v4, Lcom/android/launcher2/MenuAppModel;->INSTANCE:Lcom/android/launcher2/MenuAppModel;

    invoke-virtual {v4}, Lcom/android/launcher2/MenuAppModel;->canUninstallApps()Z

    move-result v2

    .line 537
    .local v2, "enabled":Z
    if-nez v2, :cond_2

    .line 538
    invoke-direct {p0}, Lcom/android/launcher2/MenuView;->showNoDownloadedAppsToastMessage()V

    goto :goto_0

    .line 542
    :cond_2
    iget-object v4, p0, Lcom/android/launcher2/MenuView;->mTabManager:Lcom/android/launcher2/tabs/TabManager;

    const-string v5, "APPS"

    invoke-virtual {v4, v5, v6}, Lcom/android/launcher2/tabs/TabManager;->getFragmentForTab(Ljava/lang/String;Z)Landroid/app/Fragment;

    move-result-object v0

    .line 543
    .local v0, "appsTab":Landroid/app/Fragment;
    invoke-virtual {p0}, Lcom/android/launcher2/MenuView;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "com.sec.android.app.launcher.prefs"

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 545
    .local v3, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 546
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v4, "MenuView.ViewType"

    sget-object v5, Lcom/android/launcher2/MenuView$ViewType;->CUSTOM_GRID:Lcom/android/launcher2/MenuView$ViewType;

    invoke-virtual {v5}, Lcom/android/launcher2/MenuView$ViewType;->name()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/launcher2/MenuView$ViewType;->valueOf(Ljava/lang/String;)Lcom/android/launcher2/MenuView$ViewType;

    move-result-object v4

    iput-object v4, p0, Lcom/android/launcher2/MenuView;->mViewType:Lcom/android/launcher2/MenuView$ViewType;

    .line 548
    instance-of v4, v0, Lcom/android/launcher2/MenuAppsGridFragment;

    if-eqz v4, :cond_0

    invoke-virtual {v0}, Landroid/app/Fragment;->isAdded()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 550
    const-string v4, "DONT_CHG_STATE_ON_PREDRAW"

    invoke-interface {v1, v4, v7}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 551
    invoke-virtual {p0}, Lcom/android/launcher2/MenuView;->isCurrentTabWidgets()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 553
    sget-object v4, Lcom/android/launcher2/MenuAppsGridFragment;->DL_APPS_FROM_WIDGET_WITH_GRIDVIEW_MODE:Ljava/lang/String;

    invoke-interface {v1, v4, v7}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 554
    sget-object v4, Lcom/android/launcher2/MenuAppsGridFragment;->WIDGET_TAB_WITH_GRIDVIEW_MODE:Ljava/lang/String;

    invoke-interface {v1, v4, v6}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 555
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 556
    invoke-virtual {p0}, Lcom/android/launcher2/MenuView;->selectAppsTab()V

    .line 557
    iget-object v4, p0, Lcom/android/launcher2/MenuView;->mViewType:Lcom/android/launcher2/MenuView$ViewType;

    invoke-virtual {p0, v4}, Lcom/android/launcher2/MenuView;->setViewType(Lcom/android/launcher2/MenuView$ViewType;)V

    .line 559
    :cond_3
    iget-object v4, p0, Lcom/android/launcher2/MenuView;->mTabManager:Lcom/android/launcher2/tabs/TabManager;

    const-string v5, "APPS"

    invoke-virtual {v4, v5, v6}, Lcom/android/launcher2/tabs/TabManager;->getFragmentForTab(Ljava/lang/String;Z)Landroid/app/Fragment;

    move-result-object v0

    .line 560
    if-eqz v0, :cond_0

    move-object v4, v0

    .line 561
    check-cast v4, Lcom/android/launcher2/MenuAppsGridFragment;

    sget-object v5, Lcom/android/launcher2/MenuAppsGrid$State;->DOWNLOADED_APPS:Lcom/android/launcher2/MenuAppsGrid$State;

    invoke-virtual {v4, v5, v7}, Lcom/android/launcher2/MenuAppsGridFragment;->changeState(Lcom/android/launcher2/MenuAppsGrid$State;Z)V

    goto :goto_0
.end method

.method public onOptionSelectedSearch()V
    .locals 4

    .prologue
    .line 504
    iget-object v1, p0, Lcom/android/launcher2/MenuView;->mTabManager:Lcom/android/launcher2/tabs/TabManager;

    const-string v2, "WIDGETS"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/android/launcher2/tabs/TabManager;->getFragmentForTab(Ljava/lang/String;Z)Landroid/app/Fragment;

    move-result-object v0

    .line 505
    .local v0, "frag":Landroid/app/Fragment;
    instance-of v1, v0, Lcom/android/launcher2/MenuWidgetsFragment;

    if-eqz v1, :cond_0

    .line 506
    check-cast v0, Lcom/android/launcher2/MenuWidgetsFragment;

    .end local v0    # "frag":Landroid/app/Fragment;
    invoke-virtual {v0, p0}, Lcom/android/launcher2/MenuWidgetsFragment;->onOptionSelectedSearch(Lcom/android/launcher2/MenuView;)V

    .line 508
    :cond_0
    return-void
.end method

.method public onOptionSelectedUninstall()V
    .locals 4

    .prologue
    .line 511
    invoke-virtual {p0}, Lcom/android/launcher2/MenuView;->isCurrentTabWidgets()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 512
    iget-object v1, p0, Lcom/android/launcher2/MenuView;->mTabManager:Lcom/android/launcher2/tabs/TabManager;

    const-string v2, "WIDGETS"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/android/launcher2/tabs/TabManager;->getFragmentForTab(Ljava/lang/String;Z)Landroid/app/Fragment;

    move-result-object v0

    .line 513
    .local v0, "frag":Landroid/app/Fragment;
    instance-of v1, v0, Lcom/android/launcher2/MenuWidgetsFragment;

    if-eqz v1, :cond_0

    .line 514
    check-cast v0, Lcom/android/launcher2/MenuWidgetsFragment;

    .end local v0    # "frag":Landroid/app/Fragment;
    invoke-virtual {v0, p0}, Lcom/android/launcher2/MenuWidgetsFragment;->onOptionSelectedUninstall(Lcom/android/launcher2/MenuView;)V

    .line 522
    :cond_0
    :goto_0
    return-void

    .line 517
    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher2/MenuView;->getState()Lcom/android/launcher2/MenuAppsGrid$State;

    move-result-object v1

    sget-object v2, Lcom/android/launcher2/MenuAppsGrid$State;->DOWNLOADED_APPS:Lcom/android/launcher2/MenuAppsGrid$State;

    if-ne v1, v2, :cond_2

    .line 518
    sget-object v1, Lcom/android/launcher2/MenuAppsGrid$State;->DOWNLOADED_UNINSTALL:Lcom/android/launcher2/MenuAppsGrid$State;

    invoke-virtual {p0, v1}, Lcom/android/launcher2/MenuView;->changeState(Lcom/android/launcher2/MenuAppsGrid$State;)V

    goto :goto_0

    .line 520
    :cond_2
    sget-object v1, Lcom/android/launcher2/MenuAppsGrid$State;->UNINSTALL:Lcom/android/launcher2/MenuAppsGrid$State;

    invoke-virtual {p0, v1}, Lcom/android/launcher2/MenuView;->changeState(Lcom/android/launcher2/MenuAppsGrid$State;)V

    goto :goto_0
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 3
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 822
    instance-of v2, p1, Lcom/android/launcher2/MenuView$SavedState;

    if-nez v2, :cond_0

    .line 823
    invoke-super {p0, p1}, Landroid/widget/TabHost;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 841
    :goto_0
    return-void

    :cond_0
    move-object v1, p1

    .line 828
    check-cast v1, Lcom/android/launcher2/MenuView$SavedState;

    .line 829
    .local v1, "ss":Lcom/android/launcher2/MenuView$SavedState;
    invoke-virtual {v1}, Lcom/android/launcher2/MenuView$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v2

    invoke-super {p0, v2}, Landroid/widget/TabHost;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 830
    const/4 v0, 0x0

    .line 832
    .local v0, "prevTag":Ljava/lang/String;
    iget-object v2, v1, Lcom/android/launcher2/MenuView$SavedState;->extraTabTab:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 833
    iget-object v0, v1, Lcom/android/launcher2/MenuView$SavedState;->extraTabTab:Ljava/lang/String;

    .line 836
    :cond_1
    if-nez v0, :cond_2

    .line 837
    const-string v0, "APPS"

    .line 839
    :cond_2
    invoke-virtual {p0, v0}, Lcom/android/launcher2/MenuView;->setCurrentTabByTag(Ljava/lang/String;)V

    .line 840
    const-string v2, "APPS"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/launcher2/MenuView;->setMenuTitle(Z)V

    goto :goto_0
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .prologue
    .line 811
    invoke-super {p0}, Landroid/widget/TabHost;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .line 812
    .local v1, "superState":Landroid/os/Parcelable;
    new-instance v0, Lcom/android/launcher2/MenuView$SavedState;

    invoke-direct {v0, v1}, Lcom/android/launcher2/MenuView$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 814
    .local v0, "ss":Lcom/android/launcher2/MenuView$SavedState;
    invoke-virtual {p0}, Lcom/android/launcher2/MenuView;->getCurrentTabTag()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/android/launcher2/MenuView$SavedState;->extraTabTab:Ljava/lang/String;

    .line 815
    return-object v0
.end method

.method public onShowAllApps()V
    .locals 8

    .prologue
    const/4 v6, 0x0

    .line 571
    sget-boolean v1, Lcom/android/launcher2/Launcher;->isHelpAppRunning:Z

    if-eqz v1, :cond_3

    .line 572
    sget-object v1, Lcom/android/launcher2/guide/GuideFragment;->GMode:Ljava/lang/String;

    const-string v2, "add_widgets"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 573
    const/4 v1, 0x1

    sput-boolean v1, Lcom/android/launcher2/MenuView;->onShowAllAppsClicked:Z

    .line 574
    iget-object v1, p0, Lcom/android/launcher2/MenuView;->mTabManager:Lcom/android/launcher2/tabs/TabManager;

    invoke-virtual {v1}, Lcom/android/launcher2/tabs/TabManager;->getCurrentlyShownFragment()Landroid/app/Fragment;

    move-result-object v0

    .line 575
    .local v0, "currentFragment":Landroid/app/Fragment;
    invoke-virtual {v0}, Landroid/app/Fragment;->getTag()Ljava/lang/String;

    move-result-object v1

    const-string v2, "WIDGETS"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 577
    check-cast v0, Lcom/android/launcher2/MenuWidgetsFragment;

    .end local v0    # "currentFragment":Landroid/app/Fragment;
    sget-object v1, Lcom/android/launcher2/MenuWidgets$WidgetState;->NORMAL:Lcom/android/launcher2/MenuWidgets$WidgetState;

    invoke-virtual {v0, v1}, Lcom/android/launcher2/MenuWidgetsFragment;->changeWidgetState(Lcom/android/launcher2/MenuWidgets$WidgetState;)V

    .line 586
    :goto_0
    const-string v1, "APPS"

    invoke-virtual {p0, v1}, Lcom/android/launcher2/MenuView;->setCurrentTabByTag(Ljava/lang/String;)V

    .line 596
    :goto_1
    iget-object v1, p0, Lcom/android/launcher2/MenuView;->mTabManager:Lcom/android/launcher2/tabs/TabManager;

    invoke-virtual {v1}, Lcom/android/launcher2/tabs/TabManager;->getCurrentlyShownFragment()Landroid/app/Fragment;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Fragment;->getTag()Ljava/lang/String;

    move-result-object v1

    const-string v2, "APPS"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 598
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getInst()Lcom/android/launcher2/LauncherApplication;

    move-result-object v1

    const-string v2, "MENU"

    const/4 v3, 0x0

    const-wide/16 v4, -0x1

    invoke-virtual/range {v1 .. v6}, Lcom/android/launcher2/LauncherApplication;->insertLog(Ljava/lang/String;Ljava/lang/String;JZ)V

    .line 601
    :cond_0
    iget-object v1, p0, Lcom/android/launcher2/MenuView;->mMenuViewDarken:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 602
    invoke-virtual {p0}, Lcom/android/launcher2/MenuView;->enterAllStates()V

    .line 603
    return-void

    .line 584
    .restart local v0    # "currentFragment":Landroid/app/Fragment;
    :cond_1
    sput-boolean v6, Lcom/android/launcher2/MenuView;->onShowAllAppsClicked:Z

    goto :goto_0

    .line 588
    .end local v0    # "currentFragment":Landroid/app/Fragment;
    :cond_2
    const/4 v7, 0x0

    .line 589
    .local v7, "mGuider":Lcom/android/launcher2/guide/GuiderLifecycleListener;
    new-instance v7, Lcom/android/launcher2/guide/AddWidgetsGuider;

    .end local v7    # "mGuider":Lcom/android/launcher2/guide/GuiderLifecycleListener;
    invoke-virtual {p0}, Lcom/android/launcher2/MenuView;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    invoke-direct {v7, v1}, Lcom/android/launcher2/guide/AddWidgetsGuider;-><init>(Landroid/app/Activity;)V

    .line 591
    .restart local v7    # "mGuider":Lcom/android/launcher2/guide/GuiderLifecycleListener;
    check-cast v7, Lcom/android/launcher2/guide/AddWidgetsGuider;

    .end local v7    # "mGuider":Lcom/android/launcher2/guide/GuiderLifecycleListener;
    invoke-virtual {v7}, Lcom/android/launcher2/guide/AddWidgetsGuider;->showHelpDialog_step3()V

    goto :goto_1

    .line 594
    :cond_3
    iget-object v1, p0, Lcom/android/launcher2/MenuView;->mTabManager:Lcom/android/launcher2/tabs/TabManager;

    invoke-virtual {v1}, Lcom/android/launcher2/tabs/TabManager;->attachFragments()V

    goto :goto_1
.end method

.method public onVisibilityChanged(Landroid/view/View;I)V
    .locals 4
    .param p1, "changedView"    # Landroid/view/View;
    .param p2, "visibility"    # I

    .prologue
    const/4 v3, 0x0

    .line 768
    invoke-super {p0, p1, p2}, Landroid/widget/TabHost;->onVisibilityChanged(Landroid/view/View;I)V

    .line 770
    if-eqz p2, :cond_1

    const/4 v0, 0x1

    .line 771
    .local v0, "hidden":Z
    :goto_0
    invoke-virtual {p0}, Lcom/android/launcher2/MenuView;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/Launcher;

    .line 772
    .local v1, "launcher":Lcom/android/launcher2/Launcher;
    if-ne p1, p0, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/MenuView;->getContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher2/Launcher;->getTransitionToAllApps()Z

    move-result v2

    if-eqz v2, :cond_0

    if-eqz v0, :cond_0

    .line 773
    invoke-virtual {v1, v3}, Lcom/android/launcher2/Launcher;->setTransitionToAllApps(Z)V

    .line 775
    :cond_0
    return-void

    .end local v0    # "hidden":Z
    .end local v1    # "launcher":Lcom/android/launcher2/Launcher;
    :cond_1
    move v0, v3

    .line 770
    goto :goto_0
.end method

.method public packagesChanged(Z)V
    .locals 5
    .param p1, "appModelUpdated"    # Z

    .prologue
    .line 378
    invoke-virtual {p0}, Lcom/android/launcher2/MenuView;->getMenuAppsGrid()Lcom/android/launcher2/MenuAppsGrid;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/MenuView;->getMenuAppsGrid()Lcom/android/launcher2/MenuAppsGrid;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher2/MenuAppsGrid;->getWorkerHandler()Landroid/os/Handler;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 379
    invoke-virtual {p0}, Lcom/android/launcher2/MenuView;->getMenuAppsGrid()Lcom/android/launcher2/MenuAppsGrid;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher2/MenuAppsGrid;->getWorkerHandler()Landroid/os/Handler;

    move-result-object v3

    new-instance v4, Lcom/android/launcher2/MenuView$1;

    invoke-direct {v4, p0}, Lcom/android/launcher2/MenuView$1;-><init>(Lcom/android/launcher2/MenuView;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 387
    :cond_0
    iget-object v3, p0, Lcom/android/launcher2/MenuView;->mTabManager:Lcom/android/launcher2/tabs/TabManager;

    invoke-virtual {v3}, Lcom/android/launcher2/tabs/TabManager;->getTabInfo()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/tabs/TabManager$TabInfo;

    .line 388
    .local v2, "info":Lcom/android/launcher2/tabs/TabManager$TabInfo;
    invoke-virtual {v2}, Lcom/android/launcher2/tabs/TabManager$TabInfo;->getFrag()Landroid/app/Fragment;

    move-result-object v0

    .line 389
    .local v0, "frag":Landroid/app/Fragment;
    if-eqz p1, :cond_2

    instance-of v3, v0, Lcom/android/launcher2/MenuView$AppModelNotifications;

    if-eqz v3, :cond_2

    .line 390
    check-cast v0, Lcom/android/launcher2/MenuView$AppModelNotifications;

    .end local v0    # "frag":Landroid/app/Fragment;
    invoke-interface {v0}, Lcom/android/launcher2/MenuView$AppModelNotifications;->appModelUpdated()V

    goto :goto_0

    .line 391
    .restart local v0    # "frag":Landroid/app/Fragment;
    :cond_2
    instance-of v3, v0, Lcom/android/launcher2/MenuView$PackageNotifications;

    if-eqz v3, :cond_1

    .line 392
    check-cast v0, Lcom/android/launcher2/MenuView$PackageNotifications;

    .end local v0    # "frag":Landroid/app/Fragment;
    invoke-interface {v0}, Lcom/android/launcher2/MenuView$PackageNotifications;->packagesChanged()V

    goto :goto_0

    .line 395
    .end local v2    # "info":Lcom/android/launcher2/tabs/TabManager$TabInfo;
    :cond_3
    invoke-virtual {p0}, Lcom/android/launcher2/MenuView;->setDownloadIconEnabled()V

    .line 396
    return-void
.end method

.method public releaseShadows()V
    .locals 4

    .prologue
    .line 440
    iget-object v1, p0, Lcom/android/launcher2/MenuView;->mTabManager:Lcom/android/launcher2/tabs/TabManager;

    const-string v2, "APPS"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/android/launcher2/tabs/TabManager;->getFragmentForTab(Ljava/lang/String;Z)Landroid/app/Fragment;

    move-result-object v0

    .line 441
    .local v0, "frag":Landroid/app/Fragment;
    instance-of v1, v0, Lcom/android/launcher2/MenuAppsGridFragment;

    if-eqz v1, :cond_0

    move-object v1, v0

    .line 442
    check-cast v1, Lcom/android/launcher2/MenuAppsGridFragment;

    invoke-virtual {v1}, Lcom/android/launcher2/MenuAppsGridFragment;->getMenuAppsGrid()Lcom/android/launcher2/MenuAppsGrid;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 443
    check-cast v0, Lcom/android/launcher2/MenuAppsGridFragment;

    .end local v0    # "frag":Landroid/app/Fragment;
    invoke-virtual {v0}, Lcom/android/launcher2/MenuAppsGridFragment;->getMenuAppsGrid()Lcom/android/launcher2/MenuAppsGrid;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher2/MenuAppsGrid;->releaseShadows()V

    .line 445
    :cond_0
    return-void
.end method

.method public selectAppsTab()V
    .locals 1

    .prologue
    .line 317
    const-string v0, "APPS"

    invoke-virtual {p0, v0}, Lcom/android/launcher2/MenuView;->setCurrentTabByTag(Ljava/lang/String;)V

    .line 318
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/launcher2/MenuView;->setMenuTitle(Z)V

    .line 319
    return-void
.end method

.method public selectWidgetsTab()V
    .locals 1

    .prologue
    .line 293
    const-string v0, "WIDGETS"

    invoke-virtual {p0, v0}, Lcom/android/launcher2/MenuView;->setCurrentTabByTag(Ljava/lang/String;)V

    .line 294
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/launcher2/MenuView;->setMenuTitle(Z)V

    .line 295
    return-void
.end method

.method public setAccessibilityEnabled(Z)V
    .locals 4
    .param p1, "enabled"    # Z

    .prologue
    .line 1201
    const/4 v0, 0x0

    .line 1203
    .local v0, "accessibility":I
    if-eqz p1, :cond_5

    .line 1204
    const/4 v0, 0x1

    .line 1208
    :goto_0
    iget-object v3, p0, Lcom/android/launcher2/MenuView;->mTabsView:Landroid/view/View;

    invoke-virtual {v3, v0}, Landroid/view/View;->setImportantForAccessibility(I)V

    .line 1209
    iget-object v3, p0, Lcom/android/launcher2/MenuView;->mAppsTabTextView:Landroid/widget/TextView;

    if-eqz v3, :cond_0

    .line 1210
    iget-object v3, p0, Lcom/android/launcher2/MenuView;->mAppsTabTextView:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setImportantForAccessibility(I)V

    .line 1211
    :cond_0
    iget-object v3, p0, Lcom/android/launcher2/MenuView;->mWidgetsTabTextView:Landroid/widget/TextView;

    if-eqz v3, :cond_1

    .line 1212
    iget-object v3, p0, Lcom/android/launcher2/MenuView;->mWidgetsTabTextView:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setImportantForAccessibility(I)V

    .line 1213
    :cond_1
    iget-object v3, p0, Lcom/android/launcher2/MenuView;->mMenuOrMarket:Landroid/view/View;

    if-eqz v3, :cond_2

    .line 1214
    iget-object v3, p0, Lcom/android/launcher2/MenuView;->mMenuOrMarket:Landroid/view/View;

    invoke-virtual {v3, v0}, Landroid/view/View;->setImportantForAccessibility(I)V

    .line 1215
    :cond_2
    iget-object v3, p0, Lcom/android/launcher2/MenuView;->mDownButton:Landroid/view/View;

    if-eqz v3, :cond_3

    .line 1216
    iget-object v3, p0, Lcom/android/launcher2/MenuView;->mDownButton:Landroid/view/View;

    invoke-virtual {v3, v0}, Landroid/view/View;->setImportantForAccessibility(I)V

    .line 1217
    :cond_3
    iget-object v3, p0, Lcom/android/launcher2/MenuView;->mDownloadedButton:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setImportantForAccessibility(I)V

    .line 1219
    const v3, 0x7f0f00bb

    invoke-virtual {p0, v3}, Lcom/android/launcher2/MenuView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    .line 1220
    .local v1, "menuButton":Landroid/widget/FrameLayout;
    if-eqz v1, :cond_4

    .line 1221
    const v3, 0x7f0f00d1

    invoke-virtual {v1, v3}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 1222
    .local v2, "popUpIconImage":Landroid/widget/ImageView;
    if-eqz v2, :cond_4

    .line 1223
    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImportantForAccessibility(I)V

    .line 1226
    .end local v2    # "popUpIconImage":Landroid/widget/ImageView;
    :cond_4
    return-void

    .line 1206
    .end local v1    # "menuButton":Landroid/widget/FrameLayout;
    :cond_5
    const/4 v0, 0x2

    goto :goto_0
.end method

.method public setDownloadIconEnabled()V
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/4 v5, 0x0

    .line 258
    sget-object v2, Lcom/android/launcher2/MenuAppModel;->INSTANCE:Lcom/android/launcher2/MenuAppModel;

    invoke-virtual {v2}, Lcom/android/launcher2/MenuAppModel;->canUninstallApps()Z

    move-result v1

    .line 259
    .local v1, "enabled":Z
    iget-object v2, p0, Lcom/android/launcher2/MenuView;->mDownloadedContainer:Landroid/view/View;

    if-eqz v2, :cond_0

    .line 260
    iget-object v2, p0, Lcom/android/launcher2/MenuView;->mDownloadedContainer:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->setEnabled(Z)V

    .line 262
    :cond_0
    iget-object v2, p0, Lcom/android/launcher2/MenuView;->mDownloadedButton:Landroid/widget/TextView;

    if-eqz v2, :cond_1

    .line 263
    iget-object v2, p0, Lcom/android/launcher2/MenuView;->mDownloadedButton:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 264
    if-eqz v1, :cond_2

    .line 265
    iget-object v2, p0, Lcom/android/launcher2/MenuView;->mDownloadedButton:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/launcher2/MenuView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f020011

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3, v5, v5, v5}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 268
    :goto_0
    invoke-virtual {p0}, Lcom/android/launcher2/MenuView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    if-eqz v1, :cond_3

    const v2, 0x7f0a0006

    :goto_1
    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 269
    .local v0, "color":I
    iget-object v2, p0, Lcom/android/launcher2/MenuView;->mDownloadedButton:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 271
    .end local v0    # "color":I
    :cond_1
    return-void

    .line 267
    :cond_2
    iget-object v2, p0, Lcom/android/launcher2/MenuView;->mDownloadedButton:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/launcher2/MenuView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f020012

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3, v5, v5, v5}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 268
    :cond_3
    const v2, 0x7f0a0007

    goto :goto_1
.end method

.method public setMenuTitle(Z)V
    .locals 4
    .param p1, "isApps"    # Z

    .prologue
    const v3, 0x7f1000d8

    .line 274
    if-eqz p1, :cond_0

    .line 275
    iget-object v0, p0, Lcom/android/launcher2/MenuView;->mTabTitle:Landroid/widget/TextView;

    const v1, 0x7f100022

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 276
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/launcher2/MenuView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f1000d9

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/launcher2/MenuView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/MenuView;->mTalkbackMenuTitle:Ljava/lang/String;

    .line 281
    :goto_0
    iget-object v0, p0, Lcom/android/launcher2/MenuView;->mTabTitle:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/launcher2/MenuView;->mTalkbackMenuTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 282
    return-void

    .line 278
    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/MenuView;->mTabTitle:Landroid/widget/TextView;

    const v1, 0x7f100003

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 279
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/launcher2/MenuView;->mTabTitle:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/launcher2/MenuView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/MenuView;->mTalkbackMenuTitle:Ljava/lang/String;

    goto :goto_0
.end method

.method public setSecretAvailableWidgets(Ljava/util/List;Z)V
    .locals 8
    .param p2, "isAddList"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 1146
    .local p1, "secretList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v6, p0, Lcom/android/launcher2/MenuView;->mTabManager:Lcom/android/launcher2/tabs/TabManager;

    const-string v7, "WIDGETS"

    invoke-virtual {v6, v7}, Lcom/android/launcher2/tabs/TabManager;->getFragmentForTab(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v5

    .line 1147
    .local v5, "widgetsFrag":Landroid/app/Fragment;
    instance-of v6, v5, Lcom/android/launcher2/MenuWidgetsFragment;

    if-eqz v6, :cond_3

    .line 1148
    check-cast v5, Lcom/android/launcher2/MenuWidgetsFragment;

    .end local v5    # "widgetsFrag":Landroid/app/Fragment;
    invoke-virtual {v5}, Lcom/android/launcher2/MenuWidgetsFragment;->getMenuWidgets()Lcom/android/launcher2/MenuWidgets;

    move-result-object v3

    .line 1149
    .local v3, "mw":Lcom/android/launcher2/MenuWidgets;
    if-nez v3, :cond_2

    .line 1150
    sget-object v6, Lcom/android/launcher2/MenuAppModel;->INSTANCE:Lcom/android/launcher2/MenuAppModel;

    invoke-virtual {v6}, Lcom/android/launcher2/MenuAppModel;->getAvailableWidgets()Ljava/util/List;

    move-result-object v1

    .line 1151
    .local v1, "aw":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher2/AvailableWidget;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/AvailableWidget;

    .line 1152
    .local v0, "a":Lcom/android/launcher2/AvailableWidget;
    invoke-interface {v0}, Lcom/android/launcher2/AvailableWidget;->getWidgetPackageName()Ljava/lang/String;

    move-result-object v4

    .line 1153
    .local v4, "pkgName":Ljava/lang/String;
    invoke-interface {p1, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1154
    if-eqz p2, :cond_1

    const/4 v6, 0x1

    :goto_1
    invoke-interface {v0, v6}, Lcom/android/launcher2/AvailableWidget;->setSecret(Z)V

    goto :goto_0

    :cond_1
    const/4 v6, 0x0

    goto :goto_1

    .line 1157
    .end local v0    # "a":Lcom/android/launcher2/AvailableWidget;
    .end local v1    # "aw":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher2/AvailableWidget;>;"
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v4    # "pkgName":Ljava/lang/String;
    :cond_2
    invoke-virtual {v3, p1, p2}, Lcom/android/launcher2/MenuWidgets;->setSecretAvailableWidget(Ljava/util/List;Z)V

    .line 1160
    .end local v3    # "mw":Lcom/android/launcher2/MenuWidgets;
    :cond_3
    return-void
.end method

.method public setSecretWidgetByFiltering()V
    .locals 4

    .prologue
    .line 1163
    iget-object v2, p0, Lcom/android/launcher2/MenuView;->mTabManager:Lcom/android/launcher2/tabs/TabManager;

    const-string v3, "WIDGETS"

    invoke-virtual {v2, v3}, Lcom/android/launcher2/tabs/TabManager;->getFragmentForTab(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v1

    .line 1164
    .local v1, "widgetsFrag":Landroid/app/Fragment;
    instance-of v2, v1, Lcom/android/launcher2/MenuWidgetsFragment;

    if-eqz v2, :cond_0

    .line 1165
    check-cast v1, Lcom/android/launcher2/MenuWidgetsFragment;

    .end local v1    # "widgetsFrag":Landroid/app/Fragment;
    invoke-virtual {v1}, Lcom/android/launcher2/MenuWidgetsFragment;->getMenuWidgets()Lcom/android/launcher2/MenuWidgets;

    move-result-object v0

    .line 1166
    .local v0, "mw":Lcom/android/launcher2/MenuWidgets;
    if-eqz v0, :cond_0

    .line 1167
    invoke-virtual {v0}, Lcom/android/launcher2/MenuWidgets;->initSecretItemOffset()V

    .line 1168
    invoke-virtual {v0}, Lcom/android/launcher2/MenuWidgets;->updateAvailableWidget()V

    .line 1169
    invoke-virtual {v0}, Lcom/android/launcher2/MenuWidgets;->runFilter()V

    .line 1170
    sget-boolean v2, Lcom/android/launcher2/Launcher;->sIsSecretModeOn:Z

    invoke-virtual {v0, v2}, Lcom/android/launcher2/MenuWidgets;->refreshQuickViewMenuWidget(Z)V

    .line 1173
    .end local v0    # "mw":Lcom/android/launcher2/MenuWidgets;
    :cond_0
    return-void
.end method

.method public setViewType(Lcom/android/launcher2/MenuView$ViewType;)V
    .locals 6
    .param p1, "viewType"    # Lcom/android/launcher2/MenuView$ViewType;

    .prologue
    .line 323
    const-string v3, "MenuView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setViewType. old: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/launcher2/MenuView;->mViewType:Lcom/android/launcher2/MenuView$ViewType;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", new: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    iget-object v3, p0, Lcom/android/launcher2/MenuView;->mViewType:Lcom/android/launcher2/MenuView$ViewType;

    if-ne v3, p1, :cond_1

    .line 353
    :cond_0
    :goto_0
    return-void

    .line 326
    :cond_1
    iput-object p1, p0, Lcom/android/launcher2/MenuView;->mViewType:Lcom/android/launcher2/MenuView$ViewType;

    .line 329
    invoke-virtual {p0}, Lcom/android/launcher2/MenuView;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "com.sec.android.app.launcher.prefs"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 331
    .local v2, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 332
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v3, "MenuView.ViewType"

    iget-object v4, p0, Lcom/android/launcher2/MenuView;->mViewType:Lcom/android/launcher2/MenuView$ViewType;

    invoke-virtual {v4}, Lcom/android/launcher2/MenuView$ViewType;->name()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 333
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 335
    iget-object v3, p0, Lcom/android/launcher2/MenuView;->mViewType:Lcom/android/launcher2/MenuView$ViewType;

    sput-object v3, Lcom/android/launcher2/MenuView;->mOldViewType:Lcom/android/launcher2/MenuView$ViewType;

    .line 337
    invoke-direct {p0}, Lcom/android/launcher2/MenuView;->setAppNormalizer()V

    .line 339
    iget-object v3, p0, Lcom/android/launcher2/MenuView;->mTabManager:Lcom/android/launcher2/tabs/TabManager;

    if-eqz v3, :cond_0

    .line 341
    iget-object v3, p0, Lcom/android/launcher2/MenuView;->mTabManager:Lcom/android/launcher2/tabs/TabManager;

    const-string v4, "APPS"

    invoke-virtual {v3, v4}, Lcom/android/launcher2/tabs/TabManager;->getFragmentForTab(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v1

    .line 342
    .local v1, "frag":Landroid/app/Fragment;
    sget-object v3, Lcom/android/launcher2/MenuView$3;->$SwitchMap$com$android$launcher2$MenuView$ViewType:[I

    iget-object v4, p0, Lcom/android/launcher2/MenuView;->mViewType:Lcom/android/launcher2/MenuView$ViewType;

    invoke-virtual {v4}, Lcom/android/launcher2/MenuView$ViewType;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    goto :goto_0

    .line 345
    :pswitch_0
    instance-of v3, v1, Lcom/android/launcher2/MenuAppsGridFragment;

    if-eqz v3, :cond_2

    .line 346
    check-cast v1, Lcom/android/launcher2/MenuAppsGridFragment;

    .end local v1    # "frag":Landroid/app/Fragment;
    iget-object v3, p0, Lcom/android/launcher2/MenuView;->mViewType:Lcom/android/launcher2/MenuView$ViewType;

    invoke-virtual {v1, v3}, Lcom/android/launcher2/MenuAppsGridFragment;->setViewType(Lcom/android/launcher2/MenuView$ViewType;)V

    goto :goto_0

    .line 348
    .restart local v1    # "frag":Landroid/app/Fragment;
    :cond_2
    iget-object v3, p0, Lcom/android/launcher2/MenuView;->mTabManager:Lcom/android/launcher2/tabs/TabManager;

    const-string v4, "APPS"

    const-class v5, Lcom/android/launcher2/MenuAppsGridFragment;

    invoke-virtual {v3, v4, v5}, Lcom/android/launcher2/tabs/TabManager;->changeTabFragment(Ljava/lang/String;Ljava/lang/Class;)V

    goto :goto_0

    .line 342
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
