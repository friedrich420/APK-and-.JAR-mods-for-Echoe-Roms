.class abstract Lcom/android/launcher2/MenuAppsGrid$SelectableItemStateObj;
.super Lcom/android/launcher2/MenuAppsGrid$StateObj;
.source "MenuAppsGrid.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/MenuAppsGrid;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "SelectableItemStateObj"
.end annotation


# static fields
.field private static final CHECKED_APPS:Ljava/lang/String; = "CHECKED_APPS"


# instance fields
.field private mBackButton:Landroid/view/View;

.field private mCheckedState:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mDoneButton:Landroid/view/View;

.field private mNumSelected:Landroid/widget/TextView;

.field private mSelectedCnt:I

.field final synthetic this$0:Lcom/android/launcher2/MenuAppsGrid;


# direct methods
.method private constructor <init>(Lcom/android/launcher2/MenuAppsGrid;)V
    .locals 1

    .prologue
    .line 1719
    iput-object p1, p0, Lcom/android/launcher2/MenuAppsGrid$SelectableItemStateObj;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    invoke-direct {p0, p1}, Lcom/android/launcher2/MenuAppsGrid$StateObj;-><init>(Lcom/android/launcher2/MenuAppsGrid;)V

    .line 1720
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/MenuAppsGrid$SelectableItemStateObj;->mCheckedState:Ljava/util/List;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/launcher2/MenuAppsGrid;Lcom/android/launcher2/MenuAppsGrid$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/launcher2/MenuAppsGrid;
    .param p2, "x1"    # Lcom/android/launcher2/MenuAppsGrid$1;

    .prologue
    .line 1719
    invoke-direct {p0, p1}, Lcom/android/launcher2/MenuAppsGrid$SelectableItemStateObj;-><init>(Lcom/android/launcher2/MenuAppsGrid;)V

    return-void
.end method


# virtual methods
.method protected abstract complete()V
.end method

.method public enter(Ljava/util/List;Lcom/android/launcher2/MenuAppsGrid$State;)V
    .locals 14
    .param p2, "oldState"    # Lcom/android/launcher2/MenuAppsGrid$State;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/animation/Animator;",
            ">;",
            "Lcom/android/launcher2/MenuAppsGrid$State;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1809
    .local p1, "animators":Ljava/util/List;, "Ljava/util/List<Landroid/animation/Animator;>;"
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/android/launcher2/MenuAppsGrid$SelectableItemStateObj;->mHasEntered:Z

    .line 1810
    iget-object v9, p0, Lcom/android/launcher2/MenuAppsGrid$SelectableItemStateObj;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    # getter for: Lcom/android/launcher2/MenuAppsGrid;->mTitleBarManager:Lcom/android/launcher2/MenuTitleBarManager;
    invoke-static {v9}, Lcom/android/launcher2/MenuAppsGrid;->access$3400(Lcom/android/launcher2/MenuAppsGrid;)Lcom/android/launcher2/MenuTitleBarManager;

    move-result-object v9

    iget-object v10, p0, Lcom/android/launcher2/MenuAppsGrid$SelectableItemStateObj;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v10}, Lcom/android/launcher2/MenuAppsGrid;->getState()Lcom/android/launcher2/MenuAppsGrid$State;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/android/launcher2/MenuTitleBarManager;->getActiveTitleBarForState(Lcom/android/launcher2/MenuAppsGrid$State;)Landroid/view/ViewGroup;

    move-result-object v6

    .line 1811
    .local v6, "selectTitleBar":Landroid/view/ViewGroup;
    if-eqz v6, :cond_1

    .line 1812
    iget-object v9, p0, Lcom/android/launcher2/MenuAppsGrid$SelectableItemStateObj;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    # getter for: Lcom/android/launcher2/MenuAppsGrid;->mTitleBarManager:Lcom/android/launcher2/MenuTitleBarManager;
    invoke-static {v9}, Lcom/android/launcher2/MenuAppsGrid;->access$3400(Lcom/android/launcher2/MenuAppsGrid;)Lcom/android/launcher2/MenuTitleBarManager;

    move-result-object v9

    iget-object v10, p0, Lcom/android/launcher2/MenuAppsGrid$SelectableItemStateObj;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    iget-boolean v10, v10, Lcom/android/launcher2/MenuAppsGrid;->mIsFromHomeView:Z

    invoke-virtual {v9, p1, v6, v10}, Lcom/android/launcher2/MenuTitleBarManager;->changeTitleBar(Ljava/util/List;Landroid/view/View;Z)V

    .line 1814
    const/4 v9, 0x0

    invoke-virtual {v6, v9}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/view/ViewGroup;

    .line 1815
    .local v7, "selectedTitleBar":Landroid/view/ViewGroup;
    if-eqz v7, :cond_0

    .line 1816
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-virtual {v7}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v9

    if-ge v3, v9, :cond_0

    .line 1817
    invoke-virtual {v7, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    sget-object v10, Lcom/android/launcher2/FocusHelper;->TITLEBAR_KEY_LISTENER:Landroid/view/View$OnKeyListener;

    invoke-virtual {v9, v10}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 1816
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1821
    .end local v3    # "i":I
    :cond_0
    iget-object v9, p0, Lcom/android/launcher2/MenuAppsGrid$SelectableItemStateObj;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v9}, Lcom/android/launcher2/MenuAppsGrid;->getState()Lcom/android/launcher2/MenuAppsGrid$State;

    move-result-object v8

    .line 1822
    .local v8, "state":Lcom/android/launcher2/MenuAppsGrid$State;
    move-object/from16 v5, p2

    .line 1826
    .local v5, "prevState":Lcom/android/launcher2/MenuAppsGrid$State;
    iget-object v9, p0, Lcom/android/launcher2/MenuAppsGrid$SelectableItemStateObj;->mCheckedState:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    iput v9, p0, Lcom/android/launcher2/MenuAppsGrid$SelectableItemStateObj;->mSelectedCnt:I

    .line 1827
    const v9, 0x7f0f00af

    invoke-virtual {v6, v9}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v9

    iput-object v9, p0, Lcom/android/launcher2/MenuAppsGrid$SelectableItemStateObj;->mBackButton:Landroid/view/View;

    .line 1829
    const v9, 0x7f0f00b0

    invoke-virtual {v6, v9}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    iput-object v9, p0, Lcom/android/launcher2/MenuAppsGrid$SelectableItemStateObj;->mNumSelected:Landroid/widget/TextView;

    .line 1830
    iget-object v9, p0, Lcom/android/launcher2/MenuAppsGrid$SelectableItemStateObj;->mNumSelected:Landroid/widget/TextView;

    iget-object v10, p0, Lcom/android/launcher2/MenuAppsGrid$SelectableItemStateObj;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v10}, Lcom/android/launcher2/MenuAppsGrid;->getContext()Landroid/content/Context;

    move-result-object v10

    const v11, 0x7f100055

    invoke-virtual {v10, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    iget v13, p0, Lcom/android/launcher2/MenuAppsGrid$SelectableItemStateObj;->mSelectedCnt:I

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1832
    iget-object v9, p0, Lcom/android/launcher2/MenuAppsGrid$SelectableItemStateObj;->mBackButton:Landroid/view/View;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, p0, Lcom/android/launcher2/MenuAppsGrid$SelectableItemStateObj;->mNumSelected:Landroid/widget/TextView;

    invoke-virtual {v11}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/launcher2/MenuAppsGrid$SelectableItemStateObj;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v11}, Lcom/android/launcher2/MenuAppsGrid;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f100057

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1833
    const v9, 0x7f0f0076

    invoke-virtual {v6, v9}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v9

    iput-object v9, p0, Lcom/android/launcher2/MenuAppsGrid$SelectableItemStateObj;->mDoneButton:Landroid/view/View;

    .line 1834
    iget-object v10, p0, Lcom/android/launcher2/MenuAppsGrid$SelectableItemStateObj;->mDoneButton:Landroid/view/View;

    iget v9, p0, Lcom/android/launcher2/MenuAppsGrid$SelectableItemStateObj;->mSelectedCnt:I

    if-nez v9, :cond_2

    const/4 v9, 0x0

    :goto_1
    invoke-virtual {v10, v9}, Landroid/view/View;->setEnabled(Z)V

    .line 1835
    iget-object v9, p0, Lcom/android/launcher2/MenuAppsGrid$SelectableItemStateObj;->mDoneButton:Landroid/view/View;

    new-instance v10, Lcom/android/launcher2/MenuAppsGrid$SelectableItemStateObj$1;

    invoke-direct {v10, p0}, Lcom/android/launcher2/MenuAppsGrid$SelectableItemStateObj$1;-><init>(Lcom/android/launcher2/MenuAppsGrid$SelectableItemStateObj;)V

    invoke-virtual {v9, v10}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1843
    new-instance v2, Lcom/android/launcher2/MenuAppsGrid$SelectableItemStateObj$2;

    invoke-direct {v2, p0, v8}, Lcom/android/launcher2/MenuAppsGrid$SelectableItemStateObj$2;-><init>(Lcom/android/launcher2/MenuAppsGrid$SelectableItemStateObj;Lcom/android/launcher2/MenuAppsGrid$State;)V

    .line 1863
    .local v2, "cancelListener":Landroid/view/View$OnClickListener;
    const v9, 0x7f0f00b0

    invoke-virtual {v6, v9}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v9

    check-cast v9, Landroid/view/ViewGroup;

    check-cast v9, Landroid/view/ViewGroup;

    invoke-virtual {v9, v2}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1866
    sget-boolean v9, Lcom/android/launcher2/Launcher;->CSCFEATURE_LAUNCHER_THEME_ENABLE:Z

    if-eqz v9, :cond_1

    .line 1867
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getInst()Lcom/android/launcher2/LauncherApplication;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/launcher2/LauncherApplication;->getThemeLoader()Lcom/android/launcher2/ThemeLoader;

    move-result-object v4

    .line 1868
    .local v4, "loader":Lcom/android/launcher2/ThemeLoader;
    invoke-virtual {v4}, Lcom/android/launcher2/ThemeLoader;->isUseDefaultTheme()Z

    move-result v9

    if-nez v9, :cond_1

    .line 1869
    const v9, 0x7f0f00b2

    invoke-virtual {v6, v9}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 1870
    .local v0, "allAppsButton":Landroid/widget/ImageView;
    const-string v9, "all_apps_button_icon"

    invoke-virtual {v4, v9}, Lcom/android/launcher2/ThemeLoader;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 1871
    .local v1, "allAppsIcon":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    .line 1872
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1878
    .end local v0    # "allAppsButton":Landroid/widget/ImageView;
    .end local v1    # "allAppsIcon":Landroid/graphics/drawable/Drawable;
    .end local v2    # "cancelListener":Landroid/view/View$OnClickListener;
    .end local v4    # "loader":Lcom/android/launcher2/ThemeLoader;
    .end local v5    # "prevState":Lcom/android/launcher2/MenuAppsGrid$State;
    .end local v7    # "selectedTitleBar":Landroid/view/ViewGroup;
    .end local v8    # "state":Lcom/android/launcher2/MenuAppsGrid$State;
    :cond_1
    return-void

    .line 1834
    .restart local v5    # "prevState":Lcom/android/launcher2/MenuAppsGrid$State;
    .restart local v7    # "selectedTitleBar":Landroid/view/ViewGroup;
    .restart local v8    # "state":Lcom/android/launcher2/MenuAppsGrid$State;
    :cond_2
    const/4 v9, 0x1

    goto :goto_1
.end method

.method public enterItemViews(Ljava/lang/Iterable;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<",
            "Lcom/android/launcher2/AppIconView;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "views":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Lcom/android/launcher2/AppIconView;>;"
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 1896
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/AppIconView;

    .line 1897
    .local v2, "v":Lcom/android/launcher2/AppIconView;
    iget-object v3, p0, Lcom/android/launcher2/MenuAppsGrid$SelectableItemStateObj;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    # invokes: Lcom/android/launcher2/MenuAppsGrid;->setIconTextAndShadowVisibilityOnItem(ZLcom/android/launcher2/AppIconView;)V
    invoke-static {v3, v6, v2}, Lcom/android/launcher2/MenuAppsGrid;->access$3500(Lcom/android/launcher2/MenuAppsGrid;ZLcom/android/launcher2/AppIconView;)V

    .line 1898
    invoke-virtual {v2}, Lcom/android/launcher2/AppIconView;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/BaseItem;

    .line 1899
    .local v1, "item":Lcom/android/launcher2/BaseItem;
    iget-object v3, v1, Lcom/android/launcher2/BaseItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    sget-object v4, Lcom/android/launcher2/BaseItem$Type;->MENU_APP:Lcom/android/launcher2/BaseItem$Type;

    if-ne v3, v4, :cond_1

    .line 1900
    invoke-virtual {v2, v6}, Lcom/android/launcher2/AppIconView;->setCheckingEnabled(Z)V

    .line 1901
    iget-object v3, p0, Lcom/android/launcher2/MenuAppsGrid$SelectableItemStateObj;->mCheckedState:Ljava/util/List;

    iget-wide v4, v1, Lcom/android/launcher2/BaseItem;->mId:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1902
    invoke-virtual {v2, v6}, Lcom/android/launcher2/AppIconView;->setChecked(Z)V

    .line 1903
    iget-object v3, p0, Lcom/android/launcher2/MenuAppsGrid$SelectableItemStateObj;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    iget-boolean v3, v3, Lcom/android/launcher2/MenuAppsGrid;->mIsFromHomeView:Z

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/launcher2/MenuAppsGrid$SelectableItemStateObj;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    # getter for: Lcom/android/launcher2/MenuAppsGrid;->preCheckedItems:Ljava/util/List;
    invoke-static {v3}, Lcom/android/launcher2/MenuAppsGrid;->access$4200(Lcom/android/launcher2/MenuAppsGrid;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1904
    invoke-virtual {v2, v7}, Lcom/android/launcher2/AppIconView;->setEnabled(Z)V

    .line 1905
    invoke-virtual {v2, v7}, Lcom/android/launcher2/AppIconView;->setClickable(Z)V

    goto :goto_0

    .line 1909
    :cond_1
    iget-object v3, v1, Lcom/android/launcher2/BaseItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    sget-object v4, Lcom/android/launcher2/BaseItem$Type;->MENU_FOLDER:Lcom/android/launcher2/BaseItem$Type;

    if-ne v3, v4, :cond_0

    instance-of v3, p0, Lcom/android/launcher2/MenuAppsGrid$StateRemoveFolder;

    if-eqz v3, :cond_0

    .line 1910
    invoke-virtual {v2, v6}, Lcom/android/launcher2/AppIconView;->setCheckingEnabled(Z)V

    .line 1911
    iget-object v3, p0, Lcom/android/launcher2/MenuAppsGrid$SelectableItemStateObj;->mCheckedState:Ljava/util/List;

    iget-wide v4, v1, Lcom/android/launcher2/BaseItem;->mId:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1912
    invoke-virtual {v2, v6}, Lcom/android/launcher2/AppIconView;->setChecked(Z)V

    goto :goto_0

    .line 1915
    .end local v1    # "item":Lcom/android/launcher2/BaseItem;
    .end local v2    # "v":Lcom/android/launcher2/AppIconView;
    :cond_2
    return-void
.end method

.method public exit(Ljava/util/List;Lcom/android/launcher2/MenuAppsGrid$State;)V
    .locals 2
    .param p2, "newState"    # Lcom/android/launcher2/MenuAppsGrid$State;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/animation/Animator;",
            ">;",
            "Lcom/android/launcher2/MenuAppsGrid$State;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1882
    .local p1, "animators":Ljava/util/List;, "Ljava/util/List<Landroid/animation/Animator;>;"
    iget-boolean v0, p0, Lcom/android/launcher2/MenuAppsGrid$SelectableItemStateObj;->mHasEntered:Z

    if-nez v0, :cond_0

    .line 1883
    const-string v0, "Launcher.MenuAppsGrid"

    const-string v1, "Trying to exit a state that hasn\'t been entered"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1891
    :goto_0
    return-void

    .line 1888
    :cond_0
    sget-object v0, Lcom/android/launcher2/MenuAppsGrid$State;->UNKNOWN:Lcom/android/launcher2/MenuAppsGrid$State;

    if-eq p2, v0, :cond_1

    .line 1889
    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid$SelectableItemStateObj;->mCheckedState:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1890
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher2/MenuAppsGrid$SelectableItemStateObj;->mHasEntered:Z

    goto :goto_0
.end method

.method public exitItemViews(Ljava/lang/Iterable;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<",
            "Lcom/android/launcher2/AppIconView;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "views":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Lcom/android/launcher2/AppIconView;>;"
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1919
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/AppIconView;

    .line 1922
    .local v1, "v":Lcom/android/launcher2/AppIconView;
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lcom/android/launcher2/AppIconView;

    if-ne v2, v3, :cond_0

    .line 1923
    invoke-virtual {v1, v4}, Lcom/android/launcher2/AppIconView;->setCheckingEnabled(Z)V

    .line 1924
    sput-boolean v5, Lcom/android/launcher2/MenuAppsGrid;->mExitingSelectableState:Z

    .line 1925
    invoke-virtual {v1, v4}, Lcom/android/launcher2/AppIconView;->setChecked(Z)V

    .line 1926
    invoke-virtual {v1, v5}, Lcom/android/launcher2/AppIconView;->setEnabled(Z)V

    .line 1927
    invoke-virtual {v1, v4, v4}, Lcom/android/launcher2/AppIconView;->setDimmed(ZZ)V

    .line 1928
    invoke-virtual {v1, v5}, Lcom/android/launcher2/AppIconView;->setClickable(Z)V

    goto :goto_0

    .line 1931
    .end local v1    # "v":Lcom/android/launcher2/AppIconView;
    :cond_1
    return-void
.end method

.method getAppIconViewWithId(J)Lcom/android/launcher2/AppIconView;
    .locals 7
    .param p1, "itemId"    # J

    .prologue
    .line 1760
    iget-object v4, p0, Lcom/android/launcher2/MenuAppsGrid$SelectableItemStateObj;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    # invokes: Lcom/android/launcher2/MenuAppsGrid;->getConstructedViews()Ljava/util/List;
    invoke-static {v4}, Lcom/android/launcher2/MenuAppsGrid;->access$4100(Lcom/android/launcher2/MenuAppsGrid;)Ljava/util/List;

    move-result-object v3

    .line 1761
    .local v3, "views":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher2/AppIconView;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/AppIconView;

    .line 1762
    .local v2, "v":Lcom/android/launcher2/AppIconView;
    invoke-virtual {v2}, Lcom/android/launcher2/AppIconView;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/BaseItem;

    .line 1763
    .local v1, "item":Lcom/android/launcher2/BaseItem;
    iget-object v4, v1, Lcom/android/launcher2/BaseItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    sget-object v5, Lcom/android/launcher2/BaseItem$Type;->MENU_APP:Lcom/android/launcher2/BaseItem$Type;

    if-ne v4, v5, :cond_0

    .line 1764
    iget-wide v4, v1, Lcom/android/launcher2/BaseItem;->mId:J

    cmp-long v4, v4, p1

    if-nez v4, :cond_0

    .line 1769
    .end local v1    # "item":Lcom/android/launcher2/BaseItem;
    .end local v2    # "v":Lcom/android/launcher2/AppIconView;
    :goto_0
    return-object v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method protected getCheckedDisabledItems()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher2/AppItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1963
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1964
    .local v2, "items":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher2/AppItem;>;"
    iget-object v3, p0, Lcom/android/launcher2/MenuAppsGrid$SelectableItemStateObj;->mCheckedState:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    .line 1967
    .local v1, "id":Ljava/lang/Long;
    sget-object v3, Lcom/android/launcher2/MenuAppModel;->INSTANCE:Lcom/android/launcher2/MenuAppModel;

    invoke-virtual {v3, v1}, Lcom/android/launcher2/MenuAppModel;->findDisabledItemById(Ljava/lang/Long;)Lcom/android/launcher2/AppItem;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1968
    sget-object v3, Lcom/android/launcher2/MenuAppModel;->INSTANCE:Lcom/android/launcher2/MenuAppModel;

    invoke-virtual {v3, v1}, Lcom/android/launcher2/MenuAppModel;->findDisabledItemById(Ljava/lang/Long;)Lcom/android/launcher2/AppItem;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1971
    .end local v1    # "id":Ljava/lang/Long;
    :cond_1
    return-object v2
.end method

.method protected getCheckedItems()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher2/AppItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1954
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1955
    .local v2, "items":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher2/AppItem;>;"
    iget-object v3, p0, Lcom/android/launcher2/MenuAppsGrid$SelectableItemStateObj;->mCheckedState:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    .line 1956
    .local v1, "id":Ljava/lang/Long;
    sget-object v3, Lcom/android/launcher2/MenuAppModel;->INSTANCE:Lcom/android/launcher2/MenuAppModel;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/android/launcher2/MenuAppModel;->findItemById(J)Lcom/android/launcher2/AppItem;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1957
    sget-object v3, Lcom/android/launcher2/MenuAppModel;->INSTANCE:Lcom/android/launcher2/MenuAppModel;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/android/launcher2/MenuAppModel;->findItemById(J)Lcom/android/launcher2/AppItem;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1959
    .end local v1    # "id":Ljava/lang/Long;
    :cond_1
    return-object v2
.end method

.method protected getCheckedViews()Ljava/util/List;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1979
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 1980
    .local v9, "views":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    iget-object v10, p0, Lcom/android/launcher2/MenuAppsGrid$SelectableItemStateObj;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v10}, Lcom/android/launcher2/MenuAppsGrid;->getPageCount()I

    move-result v0

    .line 1981
    .local v0, "count":I
    move v5, v0

    .line 1982
    .local v5, "l":I
    const/4 v7, 0x0

    .line 1983
    .local v7, "r":I
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_0
    if-gt v4, v0, :cond_1

    .line 1984
    iget-object v10, p0, Lcom/android/launcher2/MenuAppsGrid$SelectableItemStateObj;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v10, v4}, Lcom/android/launcher2/MenuAppsGrid;->isPageConstructed(I)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 1985
    invoke-static {v5, v4}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 1986
    invoke-static {v7, v4}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 1983
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1990
    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid$SelectableItemStateObj;->getCheckedItems()Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/AppItem;

    .line 1991
    .local v2, "i":Lcom/android/launcher2/AppItem;
    const/4 v1, 0x0

    .line 1992
    .local v1, "found":Z
    move v4, v5

    :goto_2
    if-gt v4, v7, :cond_3

    .line 1993
    iget-object v10, p0, Lcom/android/launcher2/MenuAppsGrid$SelectableItemStateObj;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v10, v4}, Lcom/android/launcher2/MenuAppsGrid;->getPageAt(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/android/launcher2/CellLayout;

    .line 1994
    .local v6, "page":Lcom/android/launcher2/CellLayout;
    invoke-virtual {v6}, Lcom/android/launcher2/CellLayout;->getChildrenLayout()Lcom/android/launcher2/CellLayoutChildren;

    move-result-object v10

    invoke-virtual {v10, v2}, Lcom/android/launcher2/CellLayoutChildren;->getChildAt(Lcom/android/launcher2/BaseItem;)Landroid/view/View;

    move-result-object v8

    .line 1995
    .local v8, "v":Landroid/view/View;
    if-eqz v8, :cond_4

    .line 1996
    invoke-interface {v9, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1997
    const/4 v1, 0x1

    .line 2001
    .end local v6    # "page":Lcom/android/launcher2/CellLayout;
    .end local v8    # "v":Landroid/view/View;
    :cond_3
    if-nez v1, :cond_2

    .line 2002
    iget-object v10, p0, Lcom/android/launcher2/MenuAppsGrid$SelectableItemStateObj;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    # getter for: Lcom/android/launcher2/MenuAppsGrid;->mItemViewBuilder:Lcom/android/launcher2/ItemViewBuilder;
    invoke-static {v10}, Lcom/android/launcher2/MenuAppsGrid;->access$4300(Lcom/android/launcher2/MenuAppsGrid;)Lcom/android/launcher2/ItemViewBuilder;

    move-result-object v11

    iget-object v10, p0, Lcom/android/launcher2/MenuAppsGrid$SelectableItemStateObj;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    iget v12, v2, Lcom/android/launcher2/AppItem;->mScreen:I

    invoke-virtual {v10, v12}, Lcom/android/launcher2/MenuAppsGrid;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Lcom/android/launcher2/CellLayout;

    invoke-interface {v11, v2, v10}, Lcom/android/launcher2/ItemViewBuilder;->buildView(Lcom/android/launcher2/BaseItem;Lcom/android/launcher2/CellLayout;)Landroid/view/View;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1992
    .restart local v6    # "page":Lcom/android/launcher2/CellLayout;
    .restart local v8    # "v":Landroid/view/View;
    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 2004
    .end local v1    # "found":Z
    .end local v2    # "i":Lcom/android/launcher2/AppItem;
    .end local v6    # "page":Lcom/android/launcher2/CellLayout;
    .end local v8    # "v":Landroid/view/View;
    :cond_5
    return-object v9
.end method

.method protected hasCheckedItems()Z
    .locals 1

    .prologue
    .line 1975
    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid$SelectableItemStateObj;->mCheckedState:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onAppModelUpdated()V
    .locals 9

    .prologue
    .line 1935
    const/4 v2, 0x0

    .line 1936
    .local v2, "needupdate":Z
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 1937
    .local v3, "removeId":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Long;>;"
    iget-object v4, p0, Lcom/android/launcher2/MenuAppsGrid$SelectableItemStateObj;->mCheckedState:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    .line 1938
    .local v1, "id":Ljava/lang/Long;
    sget-object v4, Lcom/android/launcher2/MenuAppModel;->INSTANCE:Lcom/android/launcher2/MenuAppModel;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Lcom/android/launcher2/MenuAppModel;->findItemById(J)Lcom/android/launcher2/AppItem;

    move-result-object v4

    if-nez v4, :cond_0

    .line 1939
    iget v4, p0, Lcom/android/launcher2/MenuAppsGrid$SelectableItemStateObj;->mSelectedCnt:I

    if-lez v4, :cond_1

    iget v4, p0, Lcom/android/launcher2/MenuAppsGrid$SelectableItemStateObj;->mSelectedCnt:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Lcom/android/launcher2/MenuAppsGrid$SelectableItemStateObj;->mSelectedCnt:I

    .line 1940
    :cond_1
    invoke-virtual {v3, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1941
    const/4 v2, 0x1

    goto :goto_0

    .line 1944
    .end local v1    # "id":Ljava/lang/Long;
    :cond_2
    iget-object v4, p0, Lcom/android/launcher2/MenuAppsGrid$SelectableItemStateObj;->mCheckedState:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 1945
    if-eqz v2, :cond_3

    .line 1946
    iget-object v4, p0, Lcom/android/launcher2/MenuAppsGrid$SelectableItemStateObj;->mNumSelected:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/android/launcher2/MenuAppsGrid$SelectableItemStateObj;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v5}, Lcom/android/launcher2/MenuAppsGrid;->getContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f100055

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    iget v8, p0, Lcom/android/launcher2/MenuAppsGrid$SelectableItemStateObj;->mSelectedCnt:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1948
    iget-object v4, p0, Lcom/android/launcher2/MenuAppsGrid$SelectableItemStateObj;->mBackButton:Landroid/view/View;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/android/launcher2/MenuAppsGrid$SelectableItemStateObj;->mNumSelected:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/launcher2/MenuAppsGrid$SelectableItemStateObj;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v6}, Lcom/android/launcher2/MenuAppsGrid;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f100057

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1951
    :cond_3
    return-void
.end method

.method public onClickAppItem(Lcom/android/launcher2/AppItem;Landroid/view/View;)Z
    .locals 8
    .param p1, "item"    # Lcom/android/launcher2/AppItem;
    .param p2, "view"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1729
    instance-of v2, p1, Lcom/android/launcher2/AppFolderItem;

    if-eqz v2, :cond_1

    instance-of v2, p0, Lcom/android/launcher2/MenuAppsGrid$StateRemoveFolder;

    if-nez v2, :cond_1

    .line 1756
    :cond_0
    :goto_0
    return v3

    .line 1731
    :cond_1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v5, Lcom/android/launcher2/AppIconView;

    if-eq v2, v5, :cond_2

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v5, Lcom/android/launcher2/FolderIconView;

    if-ne v2, v5, :cond_3

    :cond_2
    move-object v1, p2

    .line 1732
    check-cast v1, Lcom/android/launcher2/AppIconView;

    .line 1733
    .local v1, "chkable":Lcom/android/launcher2/AppIconView;
    invoke-virtual {v1}, Lcom/android/launcher2/AppIconView;->toggle()V

    .line 1735
    invoke-virtual {v1}, Lcom/android/launcher2/AppIconView;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1736
    iget v2, p0, Lcom/android/launcher2/MenuAppsGrid$SelectableItemStateObj;->mSelectedCnt:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/launcher2/MenuAppsGrid$SelectableItemStateObj;->mSelectedCnt:I

    .line 1737
    iget-object v2, p0, Lcom/android/launcher2/MenuAppsGrid$SelectableItemStateObj;->mCheckedState:Ljava/util/List;

    iget-wide v6, p1, Lcom/android/launcher2/AppItem;->mId:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1738
    iget-object v2, p1, Lcom/android/launcher2/AppItem;->mScreenLocation:[I

    invoke-virtual {p2, v2}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 1744
    :goto_1
    iget-object v5, p0, Lcom/android/launcher2/MenuAppsGrid$SelectableItemStateObj;->mDoneButton:Landroid/view/View;

    iget v2, p0, Lcom/android/launcher2/MenuAppsGrid$SelectableItemStateObj;->mSelectedCnt:I

    if-nez v2, :cond_6

    move v2, v3

    :goto_2
    invoke-virtual {v5, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 1745
    iget-object v2, p0, Lcom/android/launcher2/MenuAppsGrid$SelectableItemStateObj;->mNumSelected:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/android/launcher2/MenuAppsGrid$SelectableItemStateObj;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v5}, Lcom/android/launcher2/MenuAppsGrid;->getContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f100055

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-array v6, v4, [Ljava/lang/Object;

    iget v7, p0, Lcom/android/launcher2/MenuAppsGrid$SelectableItemStateObj;->mSelectedCnt:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v3

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1746
    iget-object v2, p0, Lcom/android/launcher2/MenuAppsGrid$SelectableItemStateObj;->mBackButton:Landroid/view/View;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/android/launcher2/MenuAppsGrid$SelectableItemStateObj;->mNumSelected:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/launcher2/MenuAppsGrid$SelectableItemStateObj;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v6}, Lcom/android/launcher2/MenuAppsGrid;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f100057

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1751
    iget-object v2, p0, Lcom/android/launcher2/MenuAppsGrid$SelectableItemStateObj;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v2}, Lcom/android/launcher2/MenuAppsGrid;->getContext()Landroid/content/Context;

    move-result-object v2

    const v5, 0x7f04000b

    invoke-static {v2, v5}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v0

    check-cast v0, Landroid/animation/ObjectAnimator;

    .line 1753
    .local v0, "anim":Landroid/animation/ObjectAnimator;
    invoke-virtual {v0, p2}, Landroid/animation/ObjectAnimator;->setTarget(Ljava/lang/Object;)V

    .line 1754
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 1756
    .end local v0    # "anim":Landroid/animation/ObjectAnimator;
    .end local v1    # "chkable":Lcom/android/launcher2/AppIconView;
    :cond_3
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v5, Lcom/android/launcher2/FolderIconView;

    if-eq v2, v5, :cond_0

    move v3, v4

    goto/16 :goto_0

    .line 1740
    .restart local v1    # "chkable":Lcom/android/launcher2/AppIconView;
    :cond_4
    iget v2, p0, Lcom/android/launcher2/MenuAppsGrid$SelectableItemStateObj;->mSelectedCnt:I

    if-lez v2, :cond_5

    iget v2, p0, Lcom/android/launcher2/MenuAppsGrid$SelectableItemStateObj;->mSelectedCnt:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/android/launcher2/MenuAppsGrid$SelectableItemStateObj;->mSelectedCnt:I

    .line 1741
    :cond_5
    iget-object v2, p0, Lcom/android/launcher2/MenuAppsGrid$SelectableItemStateObj;->mCheckedState:Ljava/util/List;

    iget-wide v6, p1, Lcom/android/launcher2/AppItem;->mId:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_6
    move v2, v4

    .line 1744
    goto/16 :goto_2
.end method

.method public preCheckAppItem(Lcom/android/launcher2/AppItem;Landroid/view/View;)V
    .locals 9
    .param p1, "item"    # Lcom/android/launcher2/AppItem;
    .param p2, "view"    # Landroid/view/View;

    .prologue
    const v8, 0x7f100055

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 1773
    if-eqz p1, :cond_1

    if-nez p2, :cond_1

    .line 1775
    iput v6, p0, Lcom/android/launcher2/MenuAppsGrid$SelectableItemStateObj;->mSelectedCnt:I

    .line 1776
    iget-object v2, p0, Lcom/android/launcher2/MenuAppsGrid$SelectableItemStateObj;->mCheckedState:Ljava/util/List;

    iget-wide v4, p1, Lcom/android/launcher2/AppItem;->mId:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1777
    iget-object v2, p0, Lcom/android/launcher2/MenuAppsGrid$SelectableItemStateObj;->mDoneButton:Landroid/view/View;

    invoke-virtual {v2, v6}, Landroid/view/View;->setEnabled(Z)V

    .line 1778
    iget-object v2, p0, Lcom/android/launcher2/MenuAppsGrid$SelectableItemStateObj;->mNumSelected:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/launcher2/MenuAppsGrid$SelectableItemStateObj;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v3}, Lcom/android/launcher2/MenuAppsGrid;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-array v4, v6, [Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1781
    iget-wide v2, p1, Lcom/android/launcher2/AppItem;->mId:J

    invoke-virtual {p0, v2, v3}, Lcom/android/launcher2/MenuAppsGrid$SelectableItemStateObj;->getAppIconViewWithId(J)Lcom/android/launcher2/AppIconView;

    move-result-object v1

    .line 1782
    .local v1, "itemView":Lcom/android/launcher2/AppIconView;
    if-eqz v1, :cond_0

    .line 1783
    invoke-virtual {v1, v7}, Lcom/android/launcher2/AppIconView;->setEnabled(Z)V

    .line 1784
    invoke-virtual {v1, v7}, Lcom/android/launcher2/AppIconView;->setClickable(Z)V

    .line 1785
    invoke-virtual {v1, v6}, Lcom/android/launcher2/AppIconView;->setChecked(Z)V

    .line 1805
    .end local v1    # "itemView":Lcom/android/launcher2/AppIconView;
    :cond_0
    :goto_0
    return-void

    .line 1787
    :cond_1
    if-eqz p1, :cond_3

    if-eqz p2, :cond_3

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lcom/android/launcher2/AppIconView;

    if-ne v2, v3, :cond_3

    move-object v0, p2

    .line 1788
    check-cast v0, Lcom/android/launcher2/AppIconView;

    .line 1789
    .local v0, "chkable":Lcom/android/launcher2/AppIconView;
    invoke-virtual {v0}, Lcom/android/launcher2/AppIconView;->toggle()V

    .line 1790
    iget-object v2, p0, Lcom/android/launcher2/MenuAppsGrid$SelectableItemStateObj;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    iget-boolean v2, v2, Lcom/android/launcher2/MenuAppsGrid;->mIsFromHomeView:Z

    if-eqz v2, :cond_2

    .line 1791
    invoke-virtual {v0, v7}, Lcom/android/launcher2/AppIconView;->setEnabled(Z)V

    .line 1792
    invoke-virtual {v0, v7}, Lcom/android/launcher2/AppIconView;->setClickable(Z)V

    .line 1793
    invoke-virtual {v0, v6}, Lcom/android/launcher2/AppIconView;->setChecked(Z)V

    .line 1796
    :cond_2
    iput v6, p0, Lcom/android/launcher2/MenuAppsGrid$SelectableItemStateObj;->mSelectedCnt:I

    .line 1797
    iget-object v2, p0, Lcom/android/launcher2/MenuAppsGrid$SelectableItemStateObj;->mCheckedState:Ljava/util/List;

    iget-wide v4, p1, Lcom/android/launcher2/AppItem;->mId:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1798
    iget-object v2, p1, Lcom/android/launcher2/AppItem;->mScreenLocation:[I

    invoke-virtual {p2, v2}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 1800
    iget-object v2, p0, Lcom/android/launcher2/MenuAppsGrid$SelectableItemStateObj;->mDoneButton:Landroid/view/View;

    invoke-virtual {v2, v6}, Landroid/view/View;->setEnabled(Z)V

    .line 1801
    iget-object v2, p0, Lcom/android/launcher2/MenuAppsGrid$SelectableItemStateObj;->mNumSelected:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/launcher2/MenuAppsGrid$SelectableItemStateObj;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v3}, Lcom/android/launcher2/MenuAppsGrid;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-array v4, v6, [Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1803
    .end local v0    # "chkable":Lcom/android/launcher2/AppIconView;
    :cond_3
    iget-object v2, p0, Lcom/android/launcher2/MenuAppsGrid$SelectableItemStateObj;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    # getter for: Lcom/android/launcher2/MenuAppsGrid;->preCheckedItems:Ljava/util/List;
    invoke-static {v2}, Lcom/android/launcher2/MenuAppsGrid;->access$4200(Lcom/android/launcher2/MenuAppsGrid;)Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public restore(Landroid/os/Bundle;)Z
    .locals 6
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 2024
    if-eqz p1, :cond_0

    .line 2025
    const-string v2, "CHECKED_APPS"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getLongArray(Ljava/lang/String;)[J

    move-result-object v0

    .line 2026
    .local v0, "checkedAppIds":[J
    if-eqz v0, :cond_0

    .line 2027
    iget-object v2, p0, Lcom/android/launcher2/MenuAppsGrid$SelectableItemStateObj;->mCheckedState:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 2028
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 2029
    iget-object v2, p0, Lcom/android/launcher2/MenuAppsGrid$SelectableItemStateObj;->mCheckedState:Ljava/util/List;

    aget-wide v4, v0, v1

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2028
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2033
    .end local v0    # "checkedAppIds":[J
    .end local v1    # "i":I
    :cond_0
    const/4 v2, 0x1

    return v2
.end method

.method public save(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 2011
    if-eqz p1, :cond_0

    iget-object v5, p0, Lcom/android/launcher2/MenuAppsGrid$SelectableItemStateObj;->mCheckedState:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    const/4 v6, 0x1

    if-ge v5, v6, :cond_1

    .line 2020
    :cond_0
    :goto_0
    return-void

    .line 2013
    :cond_1
    iget-object v5, p0, Lcom/android/launcher2/MenuAppsGrid$SelectableItemStateObj;->mCheckedState:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    new-array v0, v5, [J

    .line 2014
    .local v0, "checkedAppIds":[J
    const/4 v1, 0x0

    .line 2015
    .local v1, "counter":I
    iget-object v5, p0, Lcom/android/launcher2/MenuAppsGrid$SelectableItemStateObj;->mCheckedState:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    .line 2016
    .local v4, "id":Ljava/lang/Long;
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "counter":I
    .local v2, "counter":I
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    aput-wide v6, v0, v1

    move v1, v2

    .line 2017
    .end local v2    # "counter":I
    .restart local v1    # "counter":I
    goto :goto_1

    .line 2019
    .end local v4    # "id":Ljava/lang/Long;
    :cond_2
    const-string v5, "CHECKED_APPS"

    invoke-virtual {p1, v5, v0}, Landroid/os/Bundle;->putLongArray(Ljava/lang/String;[J)V

    goto :goto_0
.end method
