.class public Lcom/android/launcher2/SecretPageManager;
.super Ljava/lang/Object;
.source "SecretPageManager.java"


# static fields
.field public static final DEBUG:Z = false

.field private static final DEBUGGABLE:Z

.field public static final TAG:Ljava/lang/String; = "SecretPageManager"


# instance fields
.field private mCompleteShowHidedPage:Z

.field private mHidedPage:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/android/launcher2/CellLayout;",
            ">;"
        }
    .end annotation
.end field

.field private mHomeView:Lcom/android/launcher2/HomeView;

.field private mLauncher:Lcom/android/launcher2/Launcher;

.field private mPageSwitchBySecretMode:Z

.field private mWorkspace:Lcom/android/launcher2/Workspace;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    invoke-static {}, Lcom/android/launcher2/Utilities;->DEBUGGABLE()Z

    move-result v0

    sput-boolean v0, Lcom/android/launcher2/SecretPageManager;->DEBUGGABLE:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/launcher2/Launcher;)V
    .locals 1
    .param p1, "launcher"    # Lcom/android/launcher2/Launcher;

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher2/SecretPageManager;->mPageSwitchBySecretMode:Z

    .line 35
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/SecretPageManager;->mHidedPage:Ljava/util/HashMap;

    .line 38
    iput-object p1, p0, Lcom/android/launcher2/SecretPageManager;->mLauncher:Lcom/android/launcher2/Launcher;

    .line 39
    return-void
.end method

.method private checkHomeViewItemListByPageName(Lcom/android/launcher2/CellLayout;Ljava/util/List;Ljava/lang/String;)V
    .locals 8
    .param p1, "cl"    # Lcom/android/launcher2/CellLayout;
    .param p3, "pkName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher2/CellLayout;",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher2/HomeItem;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 186
    .local p2, "hItemList":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher2/HomeItem;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-virtual {p1}, Lcom/android/launcher2/CellLayout;->getPageChildCount()I

    move-result v7

    if-ge v3, v7, :cond_3

    .line 188
    invoke-virtual {p1, v3}, Lcom/android/launcher2/CellLayout;->getChildOnPageAt(I)Landroid/view/View;

    move-result-object v1

    .line 189
    .local v1, "childView":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v6

    .line 191
    .local v6, "tag":Ljava/lang/Object;
    instance-of v7, v6, Lcom/android/launcher2/HomeFolderItem;

    if-eqz v7, :cond_1

    move-object v2, v6

    .line 192
    check-cast v2, Lcom/android/launcher2/HomeFolderItem;

    .line 194
    .local v2, "folder":Lcom/android/launcher2/HomeFolderItem;
    const/4 v5, 0x0

    .local v5, "k":I
    :goto_1
    invoke-virtual {v2}, Lcom/android/launcher2/HomeFolderItem;->getItemCount()I

    move-result v7

    if-ge v5, v7, :cond_2

    .line 195
    invoke-virtual {v2, v5}, Lcom/android/launcher2/HomeFolderItem;->getItemAt(I)Lcom/android/launcher2/BaseItem;

    move-result-object v0

    .line 196
    .local v0, "childItem":Lcom/android/launcher2/BaseItem;
    invoke-virtual {v0}, Lcom/android/launcher2/BaseItem;->getPackageName()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_0

    invoke-virtual {v0}, Lcom/android/launcher2/BaseItem;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, p3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 197
    check-cast v0, Lcom/android/launcher2/HomeItem;

    .end local v0    # "childItem":Lcom/android/launcher2/BaseItem;
    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 194
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 199
    .end local v2    # "folder":Lcom/android/launcher2/HomeFolderItem;
    .end local v5    # "k":I
    :cond_1
    instance-of v7, v6, Lcom/android/launcher2/HomeItem;

    if-eqz v7, :cond_2

    move-object v4, v6

    .line 200
    check-cast v4, Lcom/android/launcher2/HomeItem;

    .line 201
    .local v4, "item":Lcom/android/launcher2/HomeItem;
    invoke-virtual {v4}, Lcom/android/launcher2/HomeItem;->getPackageName()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_2

    invoke-virtual {v4}, Lcom/android/launcher2/HomeItem;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, p3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 202
    invoke-interface {p2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 186
    .end local v4    # "item":Lcom/android/launcher2/HomeItem;
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 205
    .end local v1    # "childView":Landroid/view/View;
    .end local v6    # "tag":Ljava/lang/Object;
    :cond_3
    return-void
.end method


# virtual methods
.method public ShowEqualPageWithItem(Lcom/android/launcher2/BaseItem;Lcom/android/launcher2/Workspace$State;)V
    .locals 11
    .param p1, "item"    # Lcom/android/launcher2/BaseItem;
    .param p2, "state"    # Lcom/android/launcher2/Workspace$State;

    .prologue
    const/4 v10, 0x1

    .line 56
    if-nez p1, :cond_1

    .line 116
    :cond_0
    :goto_0
    return-void

    .line 59
    :cond_1
    sget-boolean v8, Lcom/android/launcher2/Launcher;->sIsSecretModeOn:Z

    if-eqz v8, :cond_0

    .line 60
    const/4 v0, 0x0

    .line 62
    .local v0, "c":Lcom/android/launcher2/CellLayout;
    const/4 v8, 0x0

    invoke-virtual {p0, v8}, Lcom/android/launcher2/SecretPageManager;->setCompleteShowHidedPage(Z)V

    .line 64
    iget-object v8, p0, Lcom/android/launcher2/SecretPageManager;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v8}, Lcom/android/launcher2/Workspace;->getCurrentPage()I

    move-result v6

    .line 65
    .local v6, "previousPageIndex":I
    iget-object v8, p0, Lcom/android/launcher2/SecretPageManager;->mHidedPage:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->clear()V

    .line 66
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget-object v8, p0, Lcom/android/launcher2/SecretPageManager;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v8}, Lcom/android/launcher2/Workspace;->getChildCount()I

    move-result v8

    if-ge v1, v8, :cond_5

    .line 67
    iget-object v8, p0, Lcom/android/launcher2/SecretPageManager;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v8, v1}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .end local v0    # "c":Lcom/android/launcher2/CellLayout;
    check-cast v0, Lcom/android/launcher2/CellLayout;

    .line 68
    .restart local v0    # "c":Lcom/android/launcher2/CellLayout;
    invoke-virtual {v0}, Lcom/android/launcher2/CellLayout;->getPageType()I

    move-result v8

    if-ne v8, v10, :cond_2

    iget-boolean v8, p1, Lcom/android/launcher2/BaseItem;->mSecretItem:Z

    if-eqz v8, :cond_3

    :cond_2
    invoke-virtual {v0}, Lcom/android/launcher2/CellLayout;->getPageType()I

    move-result v8

    if-eq v8, v10, :cond_4

    iget-boolean v8, p1, Lcom/android/launcher2/BaseItem;->mSecretItem:Z

    if-eqz v8, :cond_4

    .line 71
    :cond_3
    iget-object v8, p0, Lcom/android/launcher2/SecretPageManager;->mHidedPage:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 76
    :cond_5
    const/4 v1, 0x0

    :goto_2
    iget-object v8, p0, Lcom/android/launcher2/SecretPageManager;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v8}, Lcom/android/launcher2/Workspace;->getChildCount()I

    move-result v8

    if-ge v1, v8, :cond_9

    .line 77
    iget-object v8, p0, Lcom/android/launcher2/SecretPageManager;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v8, v1}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .end local v0    # "c":Lcom/android/launcher2/CellLayout;
    check-cast v0, Lcom/android/launcher2/CellLayout;

    .line 79
    .restart local v0    # "c":Lcom/android/launcher2/CellLayout;
    invoke-virtual {v0}, Lcom/android/launcher2/CellLayout;->getPageType()I

    move-result v8

    if-ne v8, v10, :cond_6

    iget-boolean v8, p1, Lcom/android/launcher2/BaseItem;->mSecretItem:Z

    if-eqz v8, :cond_7

    :cond_6
    invoke-virtual {v0}, Lcom/android/launcher2/CellLayout;->getPageType()I

    move-result v8

    if-eq v8, v10, :cond_8

    iget-boolean v8, p1, Lcom/android/launcher2/BaseItem;->mSecretItem:Z

    if-eqz v8, :cond_8

    .line 82
    :cond_7
    iget-object v8, p0, Lcom/android/launcher2/SecretPageManager;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v8, v1}, Lcom/android/launcher2/Workspace;->removeViewAt(I)V

    .line 83
    add-int/lit8 v1, v1, -0x1

    .line 85
    iput-boolean v10, p0, Lcom/android/launcher2/SecretPageManager;->mPageSwitchBySecretMode:Z

    .line 76
    :cond_8
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 89
    :cond_9
    const-string v8, "SecretPageManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "ShowEqualPageWithItem - (isSecret:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-boolean v10, p1, Lcom/android/launcher2/BaseItem;->mSecretItem:Z

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ") "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/launcher2/SecretPageManager;->mHidedPage:Ljava/util/HashMap;

    invoke-virtual {v10}, Ljava/util/HashMap;->size()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " pages removed"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    const/4 v4, 0x0

    .line 95
    .local v4, "leftSidePageCount":I
    iget-object v8, p0, Lcom/android/launcher2/SecretPageManager;->mHidedPage:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_a
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 96
    .local v3, "key":I
    if-le v6, v3, :cond_a

    .line 97
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 100
    .end local v3    # "key":I
    :cond_b
    iget-object v8, p0, Lcom/android/launcher2/SecretPageManager;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v8}, Lcom/android/launcher2/Workspace;->getPendingSnapToPage()I

    move-result v7

    .line 101
    .local v7, "whichPage":I
    sget-object v8, Lcom/android/launcher2/Workspace$State;->RESIZE:Lcom/android/launcher2/Workspace$State;

    if-ne p2, v8, :cond_d

    if-ltz v7, :cond_d

    .line 102
    iget-boolean v8, p1, Lcom/android/launcher2/BaseItem;->mSecretItem:Z

    if-eqz v8, :cond_c

    .line 103
    iget-object v8, p0, Lcom/android/launcher2/SecretPageManager;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v8, v7}, Lcom/android/launcher2/Workspace;->snapToPage(I)V

    .line 114
    :goto_4
    iget-object v8, p0, Lcom/android/launcher2/SecretPageManager;->mWorkspace:Lcom/android/launcher2/Workspace;

    const/4 v9, -0x1

    invoke-virtual {v8, v9}, Lcom/android/launcher2/Workspace;->setPendingSnapToPage(I)V

    goto/16 :goto_0

    .line 105
    :cond_c
    iget-object v8, p0, Lcom/android/launcher2/SecretPageManager;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getSecretScreenCount()I

    move-result v9

    sub-int v9, v7, v9

    invoke-virtual {v8, v9}, Lcom/android/launcher2/Workspace;->snapToPage(I)V

    goto :goto_4

    .line 108
    :cond_d
    sub-int v5, v6, v4

    .line 109
    .local v5, "newScreenIdx":I
    iget-object v8, p0, Lcom/android/launcher2/SecretPageManager;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v8}, Lcom/android/launcher2/Workspace;->getChildCount()I

    move-result v8

    if-lt v5, v8, :cond_e

    .line 110
    const/4 v5, 0x0

    .line 112
    :cond_e
    iget-object v8, p0, Lcom/android/launcher2/SecretPageManager;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v8, v5}, Lcom/android/launcher2/Workspace;->setCurrentPage(I)V

    goto :goto_4
.end method

.method public ShowHidedPage()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    .line 119
    iget-object v5, p0, Lcom/android/launcher2/SecretPageManager;->mHidedPage:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->size()I

    move-result v5

    if-lez v5, :cond_6

    .line 120
    const-string v5, "SecretPageManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ShowHidedPage - "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/launcher2/SecretPageManager;->mHidedPage:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " pages will be added"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getScreenCount()I

    move-result v5

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getSecretScreenCount()I

    move-result v6

    add-int v3, v5, v6

    .line 123
    .local v3, "totalPageCount":I
    const/4 v2, -0x1

    .line 125
    .local v2, "restoredPageIndex":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_2

    .line 126
    iget-object v5, p0, Lcom/android/launcher2/SecretPageManager;->mHidedPage:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 125
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 127
    :cond_0
    if-gez v2, :cond_1

    .line 128
    iget-object v5, p0, Lcom/android/launcher2/SecretPageManager;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v5}, Lcom/android/launcher2/Workspace;->getCurrentPage()I

    move-result v2

    .line 129
    iget-object v5, p0, Lcom/android/launcher2/SecretPageManager;->mHidedPage:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/launcher2/CellLayout;

    invoke-virtual {v5}, Lcom/android/launcher2/CellLayout;->getPageType()I

    move-result v5

    if-ne v5, v8, :cond_1

    .line 130
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getSecretScreenCount()I

    move-result v5

    add-int/2addr v2, v5

    .line 132
    :cond_1
    iget-object v6, p0, Lcom/android/launcher2/SecretPageManager;->mWorkspace:Lcom/android/launcher2/Workspace;

    iget-object v5, p0, Lcom/android/launcher2/SecretPageManager;->mHidedPage:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    invoke-virtual {v6, v5, v1}, Lcom/android/launcher2/Workspace;->addView(Landroid/view/View;I)V

    .line 133
    iput-boolean v8, p0, Lcom/android/launcher2/SecretPageManager;->mPageSwitchBySecretMode:Z

    goto :goto_1

    .line 137
    :cond_2
    const/4 v1, 0x0

    :goto_2
    iget-object v5, p0, Lcom/android/launcher2/SecretPageManager;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v5}, Lcom/android/launcher2/Workspace;->getChildCount()I

    move-result v5

    if-ge v1, v5, :cond_4

    .line 138
    iget-object v5, p0, Lcom/android/launcher2/SecretPageManager;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v5, v1}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/CellLayout;

    .line 139
    .local v0, "cl":Lcom/android/launcher2/CellLayout;
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/android/launcher2/CellLayout;->destroyDummyPanel()V

    .line 137
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 142
    .end local v0    # "cl":Lcom/android/launcher2/CellLayout;
    :cond_4
    iget-object v5, p0, Lcom/android/launcher2/SecretPageManager;->mWorkspace:Lcom/android/launcher2/Workspace;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/android/launcher2/Workspace;->setAllEmptyMessageVisibility(Z)V

    .line 143
    iget-object v5, p0, Lcom/android/launcher2/SecretPageManager;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v5, v2}, Lcom/android/launcher2/Workspace;->setCurrentPage(I)V

    .line 144
    iget-object v5, p0, Lcom/android/launcher2/SecretPageManager;->mHidedPage:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->clear()V

    .line 146
    invoke-virtual {p0, v8}, Lcom/android/launcher2/SecretPageManager;->setCompleteShowHidedPage(Z)V

    .line 150
    iget-object v5, p0, Lcom/android/launcher2/SecretPageManager;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v5}, Lcom/android/launcher2/Workspace;->getCreatedPageForDrag()Lcom/android/launcher2/CellLayout;

    move-result-object v5

    if-eqz v5, :cond_5

    .line 151
    iget-object v5, p0, Lcom/android/launcher2/SecretPageManager;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v5}, Lcom/android/launcher2/Workspace;->removeCreatedPageForDrag()V

    .line 154
    :cond_5
    iget-object v5, p0, Lcom/android/launcher2/SecretPageManager;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v5}, Lcom/android/launcher2/Workspace;->getPendingSnapToPage()I

    move-result v4

    .line 155
    .local v4, "whichPage":I
    if-ltz v4, :cond_6

    .line 156
    iget-object v5, p0, Lcom/android/launcher2/SecretPageManager;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v5, v4}, Lcom/android/launcher2/Workspace;->snapToPage(I)V

    .line 161
    .end local v1    # "i":I
    .end local v2    # "restoredPageIndex":I
    .end local v3    # "totalPageCount":I
    .end local v4    # "whichPage":I
    :cond_6
    return-void
.end method

.method public getCompleteShowHidedPage()Z
    .locals 1

    .prologue
    .line 168
    iget-boolean v0, p0, Lcom/android/launcher2/SecretPageManager;->mCompleteShowHidedPage:Z

    return v0
.end method

.method public getHomeViewItemListByPackageName(Ljava/util/List;Ljava/lang/String;)V
    .locals 3
    .param p2, "pkName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher2/HomeItem;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 173
    .local p1, "hItemList":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher2/HomeItem;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/launcher2/SecretPageManager;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v2}, Lcom/android/launcher2/Workspace;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 174
    iget-object v2, p0, Lcom/android/launcher2/SecretPageManager;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v2, v1}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/CellLayout;

    .line 175
    .local v0, "cl":Lcom/android/launcher2/CellLayout;
    if-eqz v0, :cond_0

    invoke-direct {p0, v0, p1, p2}, Lcom/android/launcher2/SecretPageManager;->checkHomeViewItemListByPageName(Lcom/android/launcher2/CellLayout;Ljava/util/List;Ljava/lang/String;)V

    .line 173
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 178
    .end local v0    # "cl":Lcom/android/launcher2/CellLayout;
    :cond_1
    iget-object v2, p0, Lcom/android/launcher2/SecretPageManager;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v2}, Lcom/android/launcher2/HomeView;->getHotseat()Lcom/android/launcher2/Hotseat;

    move-result-object v2

    if-nez v2, :cond_3

    .line 182
    :cond_2
    :goto_1
    return-void

    .line 179
    :cond_3
    iget-object v2, p0, Lcom/android/launcher2/SecretPageManager;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v2}, Lcom/android/launcher2/HomeView;->getHotseat()Lcom/android/launcher2/Hotseat;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher2/Hotseat;->getLayout()Lcom/android/launcher2/CellLayout;

    move-result-object v0

    .line 180
    .restart local v0    # "cl":Lcom/android/launcher2/CellLayout;
    if-eqz v0, :cond_2

    invoke-direct {p0, v0, p1, p2}, Lcom/android/launcher2/SecretPageManager;->checkHomeViewItemListByPageName(Lcom/android/launcher2/CellLayout;Ljava/util/List;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public getPageSwitchBySecretMode()Z
    .locals 1

    .prologue
    .line 46
    iget-boolean v0, p0, Lcom/android/launcher2/SecretPageManager;->mPageSwitchBySecretMode:Z

    return v0
.end method

.method public getSecretPageCount()I
    .locals 5

    .prologue
    .line 225
    const/4 v2, 0x0

    .line 226
    .local v2, "returnCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lcom/android/launcher2/SecretPageManager;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v3}, Lcom/android/launcher2/Workspace;->getChildCount()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 227
    iget-object v3, p0, Lcom/android/launcher2/SecretPageManager;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v3, v1}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/CellLayout;

    .line 228
    .local v0, "c":Lcom/android/launcher2/CellLayout;
    invoke-virtual {v0}, Lcom/android/launcher2/CellLayout;->getPageType()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 229
    add-int/lit8 v2, v2, 0x1

    .line 226
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 231
    .end local v0    # "c":Lcom/android/launcher2/CellLayout;
    :cond_1
    return v2
.end method

.method public initSecretPage(Lcom/android/launcher2/HomeView;)V
    .locals 1
    .param p1, "homeView"    # Lcom/android/launcher2/HomeView;

    .prologue
    .line 51
    iput-object p1, p0, Lcom/android/launcher2/SecretPageManager;->mHomeView:Lcom/android/launcher2/HomeView;

    .line 52
    iget-object v0, p0, Lcom/android/launcher2/SecretPageManager;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v0}, Lcom/android/launcher2/HomeView;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/SecretPageManager;->mWorkspace:Lcom/android/launcher2/Workspace;

    .line 53
    return-void
.end method

.method public printWorkspaceInfo()V
    .locals 6

    .prologue
    .line 208
    const-string v2, "|"

    .line 209
    .local v2, "sinfo":Ljava/lang/String;
    const/4 v0, 0x0

    .line 211
    .local v0, "c":Lcom/android/launcher2/CellLayout;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lcom/android/launcher2/SecretPageManager;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v3}, Lcom/android/launcher2/Workspace;->getChildCount()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 212
    iget-object v3, p0, Lcom/android/launcher2/SecretPageManager;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v3, v1}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .end local v0    # "c":Lcom/android/launcher2/CellLayout;
    check-cast v0, Lcom/android/launcher2/CellLayout;

    .line 213
    .restart local v0    # "c":Lcom/android/launcher2/CellLayout;
    invoke-virtual {v0}, Lcom/android/launcher2/CellLayout;->getPageType()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 214
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "S|"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 211
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 216
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "N|"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 219
    :cond_1
    const-string v3, "SecretPageManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "WorkspaceInfo - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    const-string v3, "SecretPageManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "HidedPage size - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/launcher2/SecretPageManager;->mHidedPage:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    return-void
.end method

.method public setCompleteShowHidedPage(Z)V
    .locals 0
    .param p1, "isComplete"    # Z

    .prologue
    .line 164
    iput-boolean p1, p0, Lcom/android/launcher2/SecretPageManager;->mCompleteShowHidedPage:Z

    .line 165
    return-void
.end method

.method public setPageSwitchBySecretMode(Z)V
    .locals 0
    .param p1, "b"    # Z

    .prologue
    .line 42
    iput-boolean p1, p0, Lcom/android/launcher2/SecretPageManager;->mPageSwitchBySecretMode:Z

    .line 43
    return-void
.end method
