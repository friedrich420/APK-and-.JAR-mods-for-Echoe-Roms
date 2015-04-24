.class public Lcom/android/launcher2/MenuAppsGrid$StateFolderSelect;
.super Lcom/android/launcher2/MenuAppsGrid$SelectableItemStateObj;
.source "MenuAppsGrid.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/MenuAppsGrid;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "StateFolderSelect"
.end annotation


# static fields
.field private static final SELECTED_FOLDER_ID:Ljava/lang/String; = "SELECTED_FOLDER_ID"

.field private static final UNSPECIFIED:J = -0x1L


# instance fields
.field private ModifyAppsList:Z

.field public mActionCancel:Z

.field public mEnterPage:I

.field private mOriginPage:I

.field private mPageZoom:F

.field private mTargetFolderId:J

.field private needToSyncAppsList:Z

.field private prevState:Lcom/android/launcher2/MenuAppsGrid$State;

.field final synthetic this$0:Lcom/android/launcher2/MenuAppsGrid;


# direct methods
.method public constructor <init>(Lcom/android/launcher2/MenuAppsGrid;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 2744
    iput-object p1, p0, Lcom/android/launcher2/MenuAppsGrid$StateFolderSelect;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/launcher2/MenuAppsGrid$SelectableItemStateObj;-><init>(Lcom/android/launcher2/MenuAppsGrid;Lcom/android/launcher2/MenuAppsGrid$1;)V

    .line 2746
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/launcher2/MenuAppsGrid$StateFolderSelect;->mTargetFolderId:J

    .line 2747
    sget-object v0, Lcom/android/launcher2/MenuAppsGrid$State;->UNKNOWN:Lcom/android/launcher2/MenuAppsGrid$State;

    iput-object v0, p0, Lcom/android/launcher2/MenuAppsGrid$StateFolderSelect;->prevState:Lcom/android/launcher2/MenuAppsGrid$State;

    .line 2748
    iput-boolean v2, p0, Lcom/android/launcher2/MenuAppsGrid$StateFolderSelect;->ModifyAppsList:Z

    .line 2750
    iput-boolean v2, p0, Lcom/android/launcher2/MenuAppsGrid$StateFolderSelect;->needToSyncAppsList:Z

    .line 2757
    iput-boolean v2, p0, Lcom/android/launcher2/MenuAppsGrid$StateFolderSelect;->mActionCancel:Z

    .line 2759
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/android/launcher2/MenuAppsGrid$StateFolderSelect;->mPageZoom:F

    return-void
.end method

.method static synthetic access$5602(Lcom/android/launcher2/MenuAppsGrid$StateFolderSelect;J)J
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher2/MenuAppsGrid$StateFolderSelect;
    .param p1, "x1"    # J

    .prologue
    .line 2744
    iput-wide p1, p0, Lcom/android/launcher2/MenuAppsGrid$StateFolderSelect;->mTargetFolderId:J

    return-wide p1
.end method


# virtual methods
.method public bridge synthetic allowCustomizeGrid()Z
    .locals 1

    .prologue
    .line 2744
    invoke-super {p0}, Lcom/android/launcher2/MenuAppsGrid$SelectableItemStateObj;->allowCustomizeGrid()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic appBadgeUpdated(Ljava/util/List;)V
    .locals 0
    .param p1, "x0"    # Ljava/util/List;

    .prologue
    .line 2744
    invoke-super {p0, p1}, Lcom/android/launcher2/MenuAppsGrid$SelectableItemStateObj;->appBadgeUpdated(Ljava/util/List;)V

    return-void
.end method

.method public backState()V
    .locals 1

    .prologue
    .line 2850
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher2/MenuAppsGrid$StateFolderSelect;->mActionCancel:Z

    .line 2851
    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid$StateFolderSelect;->complete()V

    .line 2852
    return-void
.end method

.method protected complete()V
    .locals 15

    .prologue
    .line 2870
    iget-object v11, p0, Lcom/android/launcher2/MenuAppsGrid$StateFolderSelect;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    iget-boolean v11, v11, Lcom/android/launcher2/MenuAppsGrid;->mIsFromHomeView:Z

    if-eqz v11, :cond_6

    .line 2872
    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid$StateFolderSelect;->getCheckedItems()Ljava/util/List;

    move-result-object v7

    .line 2873
    .local v7, "items":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher2/AppItem;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 2874
    .local v3, "homeItems":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher2/HomeShortcutItem;>;"
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/launcher2/AppItem;

    .line 2875
    .local v6, "item":Lcom/android/launcher2/AppItem;
    const/4 v1, 0x0

    .line 2876
    .local v1, "existingItem":Z
    iget-object v11, p0, Lcom/android/launcher2/MenuAppsGrid$StateFolderSelect;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    # getter for: Lcom/android/launcher2/MenuAppsGrid;->preCheckedItems:Ljava/util/List;
    invoke-static {v11}, Lcom/android/launcher2/MenuAppsGrid;->access$4200(Lcom/android/launcher2/MenuAppsGrid;)Ljava/util/List;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/launcher2/AppItem;

    .line 2877
    .local v9, "preCheckedItem":Lcom/android/launcher2/AppItem;
    invoke-virtual {v6, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 2878
    const/4 v1, 0x1

    goto :goto_1

    .line 2882
    .end local v9    # "preCheckedItem":Lcom/android/launcher2/AppItem;
    :cond_2
    iget-boolean v11, p0, Lcom/android/launcher2/MenuAppsGrid$StateFolderSelect;->mActionCancel:Z

    if-nez v11, :cond_0

    .line 2883
    if-nez v1, :cond_0

    .line 2884
    invoke-virtual {v6}, Lcom/android/launcher2/AppItem;->makeHomeItem()Lcom/android/launcher2/HomeShortcutItem;

    move-result-object v2

    .line 2885
    .local v2, "homeItem":Lcom/android/launcher2/HomeShortcutItem;
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2889
    .end local v1    # "existingItem":Z
    .end local v2    # "homeItem":Lcom/android/launcher2/HomeShortcutItem;
    .end local v5    # "i$":Ljava/util/Iterator;
    .end local v6    # "item":Lcom/android/launcher2/AppItem;
    :cond_3
    iget-object v11, p0, Lcom/android/launcher2/MenuAppsGrid$StateFolderSelect;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    # getter for: Lcom/android/launcher2/MenuAppsGrid;->mMenuAppsGridFragment:Lcom/android/launcher2/MenuAppsGridFragment;
    invoke-static {v11}, Lcom/android/launcher2/MenuAppsGrid;->access$3200(Lcom/android/launcher2/MenuAppsGrid;)Lcom/android/launcher2/MenuAppsGridFragment;

    move-result-object v11

    sget-object v12, Lcom/android/launcher2/MenuAppsGrid$State;->NORMAL:Lcom/android/launcher2/MenuAppsGrid$State;

    invoke-virtual {v11, v12}, Lcom/android/launcher2/MenuAppsGridFragment;->changeState(Lcom/android/launcher2/MenuAppsGrid$State;)V

    .line 2890
    sget-boolean v11, Lcom/android/launcher2/MenuAppsGrid;->mCreateFoldertoAddButton:Z

    if-eqz v11, :cond_5

    .line 2891
    iget-object v11, p0, Lcom/android/launcher2/MenuAppsGrid$StateFolderSelect;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v11}, Lcom/android/launcher2/MenuAppsGrid;->getContext()Landroid/content/Context;

    move-result-object v11

    check-cast v11, Lcom/android/launcher2/Launcher;

    iget-object v11, v11, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v11, v3}, Lcom/android/launcher2/HomeView;->addShortcutItemsIntoNewFolder(Ljava/util/List;)V

    .line 2895
    :goto_2
    const/4 v11, 0x0

    sput-boolean v11, Lcom/android/launcher2/MenuAppsGrid;->mCreateFoldertoAddButton:Z

    .line 2896
    iget-object v11, p0, Lcom/android/launcher2/MenuAppsGrid$StateFolderSelect;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    const/4 v12, 0x0

    iput-boolean v12, v11, Lcom/android/launcher2/MenuAppsGrid;->mIsFromHomeView:Z

    .line 2897
    invoke-static {}, Lcom/android/launcher2/Launcher;->getInstance()Lcom/android/launcher2/Launcher;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/launcher2/Launcher;->getMenuView()Lcom/android/launcher2/MenuView;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/launcher2/MenuView;->getMenuAppsGrid()Lcom/android/launcher2/MenuAppsGrid;

    move-result-object v11

    # getter for: Lcom/android/launcher2/MenuAppsGrid;->preCheckedItems:Ljava/util/List;
    invoke-static {v11}, Lcom/android/launcher2/MenuAppsGrid;->access$4200(Lcom/android/launcher2/MenuAppsGrid;)Ljava/util/List;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/List;->clear()V

    .line 2899
    const/4 v11, 0x0

    iput-boolean v11, p0, Lcom/android/launcher2/MenuAppsGrid$StateFolderSelect;->mActionCancel:Z

    .line 2971
    .end local v3    # "homeItems":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher2/HomeShortcutItem;>;"
    .end local v7    # "items":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher2/AppItem;>;"
    :cond_4
    :goto_3
    return-void

    .line 2893
    .restart local v3    # "homeItems":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher2/HomeShortcutItem;>;"
    .restart local v7    # "items":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher2/AppItem;>;"
    :cond_5
    iget-object v11, p0, Lcom/android/launcher2/MenuAppsGrid$StateFolderSelect;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v11}, Lcom/android/launcher2/MenuAppsGrid;->getContext()Landroid/content/Context;

    move-result-object v11

    check-cast v11, Lcom/android/launcher2/Launcher;

    iget-object v11, v11, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v11, v3}, Lcom/android/launcher2/HomeView;->addShortcutItemsIntoExistingFolder(Ljava/util/List;)V

    goto :goto_2

    .line 2903
    .end local v3    # "homeItems":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher2/HomeShortcutItem;>;"
    .end local v7    # "items":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher2/AppItem;>;"
    :cond_6
    sget-boolean v11, Lcom/android/launcher2/MenuAppsGrid;->mCreateFoldertoAddButton:Z

    if-eqz v11, :cond_7

    .line 2904
    iget-object v11, p0, Lcom/android/launcher2/MenuAppsGrid$StateFolderSelect;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    iget-object v12, p0, Lcom/android/launcher2/MenuAppsGrid$StateFolderSelect;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v12}, Lcom/android/launcher2/MenuAppsGrid;->getFolderTitletoAddButton()Ljava/lang/String;

    move-result-object v12

    iget-object v13, p0, Lcom/android/launcher2/MenuAppsGrid$StateFolderSelect;->prevState:Lcom/android/launcher2/MenuAppsGrid$State;

    iget-object v14, p0, Lcom/android/launcher2/MenuAppsGrid$StateFolderSelect;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v14}, Lcom/android/launcher2/MenuAppsGrid;->getFolderColorToAddButton()I

    move-result v14

    invoke-virtual {v11, v12, v13, v14}, Lcom/android/launcher2/MenuAppsGrid;->preCreateFolder(Ljava/lang/String;Lcom/android/launcher2/MenuAppsGrid$State;I)V

    .line 2906
    :cond_7
    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid$StateFolderSelect;->getTargetFolder()Lcom/android/launcher2/FolderItem;

    move-result-object v10

    .line 2908
    .local v10, "targetFolder":Lcom/android/launcher2/FolderItem;
    if-eqz v10, :cond_4

    .line 2910
    const/4 v7, 0x0

    .line 2912
    .restart local v7    # "items":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher2/AppItem;>;"
    iget-boolean v11, p0, Lcom/android/launcher2/MenuAppsGrid$StateFolderSelect;->mActionCancel:Z

    if-eqz v11, :cond_a

    .line 2913
    iget-object v11, p0, Lcom/android/launcher2/MenuAppsGrid$StateFolderSelect;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    # getter for: Lcom/android/launcher2/MenuAppsGrid;->preCheckedItems:Ljava/util/List;
    invoke-static {v11}, Lcom/android/launcher2/MenuAppsGrid;->access$4200(Lcom/android/launcher2/MenuAppsGrid;)Ljava/util/List;

    move-result-object v7

    .line 2918
    :goto_4
    const/4 v11, 0x1

    invoke-interface {v10, v11}, Lcom/android/launcher2/FolderItem;->setEnabled(Z)V

    .line 2922
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :cond_8
    :goto_5
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_b

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/launcher2/AppItem;

    .line 2924
    .restart local v6    # "item":Lcom/android/launcher2/AppItem;
    invoke-interface {v10, v6}, Lcom/android/launcher2/FolderItem;->addItem(Lcom/android/launcher2/BaseItem;)V

    .line 2925
    iget-object v11, p0, Lcom/android/launcher2/MenuAppsGrid$StateFolderSelect;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    # getter for: Lcom/android/launcher2/MenuAppsGrid;->mViewType:Lcom/android/launcher2/MenuView$ViewType;
    invoke-static {v11}, Lcom/android/launcher2/MenuAppsGrid;->access$5200(Lcom/android/launcher2/MenuAppsGrid;)Lcom/android/launcher2/MenuView$ViewType;

    move-result-object v11

    sget-object v12, Lcom/android/launcher2/MenuView$ViewType;->ALPHABETIC_GRID:Lcom/android/launcher2/MenuView$ViewType;

    if-ne v11, v12, :cond_8

    sget-boolean v11, Lcom/android/launcher2/MenuAppsGrid;->mCreateFoldertoAddButton:Z

    if-nez v11, :cond_9

    # getter for: Lcom/android/launcher2/MenuAppsGrid;->mEmptyFoldertoAddButton:Z
    invoke-static {}, Lcom/android/launcher2/MenuAppsGrid;->access$3300()Z

    move-result v11

    if-eqz v11, :cond_8

    .line 2927
    :cond_9
    const/4 v11, 0x1

    iput-boolean v11, v6, Lcom/android/launcher2/AppItem;->mDirty:Z

    goto :goto_5

    .line 2915
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v6    # "item":Lcom/android/launcher2/AppItem;
    :cond_a
    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid$StateFolderSelect;->getCheckedItems()Ljava/util/List;

    move-result-object v7

    goto :goto_4

    .line 2932
    .restart local v4    # "i$":Ljava/util/Iterator;
    :cond_b
    const/4 v11, 0x0

    iput-boolean v11, p0, Lcom/android/launcher2/MenuAppsGrid$StateFolderSelect;->mActionCancel:Z

    .line 2934
    const-wide/16 v12, -0x1

    iput-wide v12, p0, Lcom/android/launcher2/MenuAppsGrid$StateFolderSelect;->mTargetFolderId:J

    .line 2936
    sget-object v11, Lcom/android/launcher2/MenuAppModel;->INSTANCE:Lcom/android/launcher2/MenuAppModel;

    invoke-virtual {v11}, Lcom/android/launcher2/MenuAppModel;->editBegin()V

    move-object v6, v10

    .line 2937
    check-cast v6, Lcom/android/launcher2/AppItem;

    .line 2938
    .restart local v6    # "item":Lcom/android/launcher2/AppItem;
    iget-object v11, p0, Lcom/android/launcher2/MenuAppsGrid$StateFolderSelect;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v11}, Lcom/android/launcher2/MenuAppsGrid;->getCurrentPage()I

    move-result v0

    .line 2943
    .local v0, "currentScreen":I
    const/4 v11, 0x0

    iput-boolean v11, p0, Lcom/android/launcher2/MenuAppsGrid$StateFolderSelect;->ModifyAppsList:Z

    .line 2945
    iget-object v11, p0, Lcom/android/launcher2/MenuAppsGrid$StateFolderSelect;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v11}, Lcom/android/launcher2/MenuAppsGrid;->appModelUpdated()V

    .line 2947
    sget-object v11, Lcom/android/launcher2/MenuAppModel;->INSTANCE:Lcom/android/launcher2/MenuAppModel;

    invoke-virtual {v11}, Lcom/android/launcher2/MenuAppModel;->editCommit()V

    .line 2949
    iget-object v11, p0, Lcom/android/launcher2/MenuAppsGrid$StateFolderSelect;->prevState:Lcom/android/launcher2/MenuAppsGrid$State;

    sget-object v12, Lcom/android/launcher2/MenuAppsGrid$State;->EDIT:Lcom/android/launcher2/MenuAppsGrid$State;

    if-ne v11, v12, :cond_c

    .line 2950
    iget-object v11, p0, Lcom/android/launcher2/MenuAppsGrid$StateFolderSelect;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    # getter for: Lcom/android/launcher2/MenuAppsGrid;->mMenuAppsGridFragment:Lcom/android/launcher2/MenuAppsGridFragment;
    invoke-static {v11}, Lcom/android/launcher2/MenuAppsGrid;->access$3200(Lcom/android/launcher2/MenuAppsGrid;)Lcom/android/launcher2/MenuAppsGridFragment;

    move-result-object v11

    sget-object v12, Lcom/android/launcher2/MenuAppsGrid$State;->EDIT:Lcom/android/launcher2/MenuAppsGrid$State;

    invoke-virtual {v11, v12}, Lcom/android/launcher2/MenuAppsGridFragment;->changeState(Lcom/android/launcher2/MenuAppsGrid$State;)V

    .line 2951
    sget-object v11, Lcom/android/launcher2/MenuAppModel;->INSTANCE:Lcom/android/launcher2/MenuAppModel;

    invoke-virtual {v11}, Lcom/android/launcher2/MenuAppModel;->editBegin()V

    .line 2956
    :goto_6
    iget-object v11, p0, Lcom/android/launcher2/MenuAppsGrid$StateFolderSelect;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    # getter for: Lcom/android/launcher2/MenuAppsGrid;->mViewType:Lcom/android/launcher2/MenuView$ViewType;
    invoke-static {v11}, Lcom/android/launcher2/MenuAppsGrid;->access$5200(Lcom/android/launcher2/MenuAppsGrid;)Lcom/android/launcher2/MenuView$ViewType;

    move-result-object v11

    sget-object v12, Lcom/android/launcher2/MenuView$ViewType;->ALPHABETIC_GRID:Lcom/android/launcher2/MenuView$ViewType;

    if-ne v11, v12, :cond_d

    .line 2958
    iget-object v11, p0, Lcom/android/launcher2/MenuAppsGrid$StateFolderSelect;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    iget-wide v12, v6, Lcom/android/launcher2/AppItem;->mId:J

    invoke-virtual {v11, v12, v13}, Lcom/android/launcher2/MenuAppsGrid;->getPageIndexForItemId(J)I

    move-result v8

    .line 2959
    .local v8, "pageIndex":I
    const/4 v11, -0x1

    if-eq v8, v11, :cond_4

    iget-object v11, p0, Lcom/android/launcher2/MenuAppsGrid$StateFolderSelect;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v11}, Lcom/android/launcher2/MenuAppsGrid;->getCurrentPage()I

    move-result v11

    if-eq v8, v11, :cond_4

    .line 2960
    iget-object v11, p0, Lcom/android/launcher2/MenuAppsGrid$StateFolderSelect;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v11, v8}, Lcom/android/launcher2/MenuAppsGrid;->snapToPage(I)V

    goto/16 :goto_3

    .line 2953
    .end local v8    # "pageIndex":I
    :cond_c
    iget-object v11, p0, Lcom/android/launcher2/MenuAppsGrid$StateFolderSelect;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    # getter for: Lcom/android/launcher2/MenuAppsGrid;->mMenuAppsGridFragment:Lcom/android/launcher2/MenuAppsGridFragment;
    invoke-static {v11}, Lcom/android/launcher2/MenuAppsGrid;->access$3200(Lcom/android/launcher2/MenuAppsGrid;)Lcom/android/launcher2/MenuAppsGridFragment;

    move-result-object v11

    sget-object v12, Lcom/android/launcher2/MenuAppsGrid$State;->NORMAL:Lcom/android/launcher2/MenuAppsGrid$State;

    invoke-virtual {v11, v12}, Lcom/android/launcher2/MenuAppsGridFragment;->changeState(Lcom/android/launcher2/MenuAppsGrid$State;)V

    goto :goto_6

    .line 2963
    :cond_d
    iget v11, v6, Lcom/android/launcher2/AppItem;->mScreen:I

    iget v12, p0, Lcom/android/launcher2/MenuAppsGrid$StateFolderSelect;->mOriginPage:I

    if-ne v11, v12, :cond_e

    .line 2964
    iget-object v11, p0, Lcom/android/launcher2/MenuAppsGrid$StateFolderSelect;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    iget v12, v6, Lcom/android/launcher2/AppItem;->mScreen:I

    invoke-virtual {v11, v12}, Lcom/android/launcher2/MenuAppsGrid;->loadAssociatedPages(I)V

    .line 2965
    iget-object v11, p0, Lcom/android/launcher2/MenuAppsGrid$StateFolderSelect;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    iget v12, v6, Lcom/android/launcher2/AppItem;->mScreen:I

    invoke-virtual {v11, v12}, Lcom/android/launcher2/MenuAppsGrid;->setCurrentPage(I)V

    goto/16 :goto_3

    .line 2967
    :cond_e
    iget-object v11, p0, Lcom/android/launcher2/MenuAppsGrid$StateFolderSelect;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    iget v12, v6, Lcom/android/launcher2/AppItem;->mScreen:I

    invoke-virtual {v11, v12}, Lcom/android/launcher2/MenuAppsGrid;->snapToPage(I)V

    goto/16 :goto_3
.end method

.method public enter(Ljava/util/List;Lcom/android/launcher2/MenuAppsGrid$State;)V
    .locals 4
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
    .line 2763
    .local p1, "animators":Ljava/util/List;, "Ljava/util/List<Landroid/animation/Animator;>;"
    invoke-super {p0, p1, p2}, Lcom/android/launcher2/MenuAppsGrid$SelectableItemStateObj;->enter(Ljava/util/List;Lcom/android/launcher2/MenuAppsGrid$State;)V

    .line 2764
    iput-object p2, p0, Lcom/android/launcher2/MenuAppsGrid$StateFolderSelect;->prevState:Lcom/android/launcher2/MenuAppsGrid$State;

    .line 2765
    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid$StateFolderSelect;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v0}, Lcom/android/launcher2/MenuAppsGrid;->getCurrentPage()I

    move-result v0

    iput v0, p0, Lcom/android/launcher2/MenuAppsGrid$StateFolderSelect;->mEnterPage:I

    iput v0, p0, Lcom/android/launcher2/MenuAppsGrid$StateFolderSelect;->mOriginPage:I

    .line 2767
    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid$StateFolderSelect;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v0}, Lcom/android/launcher2/MenuAppsGrid;->getPageZoom()F

    move-result v0

    iput v0, p0, Lcom/android/launcher2/MenuAppsGrid$StateFolderSelect;->mPageZoom:F

    .line 2768
    iget v0, p0, Lcom/android/launcher2/MenuAppsGrid$StateFolderSelect;->mPageZoom:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    .line 2769
    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid$StateFolderSelect;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    const/4 v1, 0x2

    new-array v1, v1, [Landroid/animation/PropertyValuesHolder;

    const/4 v2, 0x0

    # getter for: Lcom/android/launcher2/MenuAppsGrid;->PAGE_ZOOM_NONE:Landroid/animation/PropertyValuesHolder;
    invoke-static {}, Lcom/android/launcher2/MenuAppsGrid;->access$3900()Landroid/animation/PropertyValuesHolder;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    # getter for: Lcom/android/launcher2/MenuAppsGrid;->PAGE_BG_ALPHA_NONE:Landroid/animation/PropertyValuesHolder;
    invoke-static {}, Lcom/android/launcher2/MenuAppsGrid;->access$4000()Landroid/animation/PropertyValuesHolder;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2795
    :cond_0
    return-void
.end method

.method public bridge synthetic enterItemViews(Ljava/lang/Iterable;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Iterable;

    .prologue
    .line 2744
    invoke-super {p0, p1}, Lcom/android/launcher2/MenuAppsGrid$SelectableItemStateObj;->enterItemViews(Ljava/lang/Iterable;)V

    return-void
.end method

.method public exit(Ljava/util/List;Lcom/android/launcher2/MenuAppsGrid$State;)V
    .locals 4
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
    .local p1, "animators":Ljava/util/List;, "Ljava/util/List<Landroid/animation/Animator;>;"
    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    .line 2819
    invoke-super {p0, p1, p2}, Lcom/android/launcher2/MenuAppsGrid$SelectableItemStateObj;->exit(Ljava/util/List;Lcom/android/launcher2/MenuAppsGrid$State;)V

    .line 2820
    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid$StateFolderSelect;->getTargetFolder()Lcom/android/launcher2/FolderItem;

    move-result-object v0

    .line 2822
    .local v0, "targetFolder":Lcom/android/launcher2/FolderItem;
    iput-boolean v2, p0, Lcom/android/launcher2/MenuAppsGrid$StateFolderSelect;->mActionCancel:Z

    .line 2824
    if-eqz v0, :cond_0

    .line 2825
    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/android/launcher2/FolderItem;->setEnabled(Z)V

    .line 2828
    :cond_0
    iget v1, p0, Lcom/android/launcher2/MenuAppsGrid$StateFolderSelect;->mPageZoom:F

    cmpg-float v1, v1, v3

    if-gez v1, :cond_1

    .line 2829
    iget-object v1, p0, Lcom/android/launcher2/MenuAppsGrid$StateFolderSelect;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    # invokes: Lcom/android/launcher2/MenuAppsGrid;->animatePageZoomOut(Ljava/util/List;Z)V
    invoke-static {v1, p1, v2}, Lcom/android/launcher2/MenuAppsGrid;->access$3700(Lcom/android/launcher2/MenuAppsGrid;Ljava/util/List;Z)V

    .line 2830
    iput v3, p0, Lcom/android/launcher2/MenuAppsGrid$StateFolderSelect;->mPageZoom:F

    .line 2837
    :cond_1
    iput-boolean v2, p0, Lcom/android/launcher2/MenuAppsGrid$StateFolderSelect;->ModifyAppsList:Z

    .line 2838
    iget-object v1, p0, Lcom/android/launcher2/MenuAppsGrid$StateFolderSelect;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    iget-boolean v1, v1, Lcom/android/launcher2/MenuAppsGrid;->mIsFromHomeView:Z

    if-nez v1, :cond_2

    .line 2839
    sput-boolean v2, Lcom/android/launcher2/MenuAppsGrid;->mCreateFoldertoAddButton:Z

    .line 2841
    :cond_2
    # setter for: Lcom/android/launcher2/MenuAppsGrid;->mEmptyFoldertoAddButton:Z
    invoke-static {v2}, Lcom/android/launcher2/MenuAppsGrid;->access$3302(Z)Z

    .line 2843
    iget-object v1, p0, Lcom/android/launcher2/MenuAppsGrid$StateFolderSelect;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    iget-boolean v1, v1, Lcom/android/launcher2/MenuAppsGrid;->mIsFromHomeView:Z

    if-eqz v1, :cond_3

    .line 2844
    iget-object v1, p0, Lcom/android/launcher2/MenuAppsGrid$StateFolderSelect;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v1}, Lcom/android/launcher2/MenuAppsGrid;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/Launcher;

    invoke-virtual {v1, v2, v2}, Lcom/android/launcher2/Launcher;->exitAllApps(ZZ)V

    .line 2846
    :cond_3
    iget-object v1, p0, Lcom/android/launcher2/MenuAppsGrid$StateFolderSelect;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v1}, Lcom/android/launcher2/MenuAppsGrid;->invalidatePageData()V

    .line 2847
    return-void
.end method

.method public exitItemViews(Ljava/lang/Iterable;)V
    .locals 4
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
    .line 2856
    .local p1, "views":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Lcom/android/launcher2/AppIconView;>;"
    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid$StateFolderSelect;->getTargetFolder()Lcom/android/launcher2/FolderItem;

    move-result-object v1

    .line 2858
    .local v1, "targetFolder":Lcom/android/launcher2/FolderItem;
    if-eqz v1, :cond_1

    .line 2859
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/AppIconView;

    .line 2860
    .local v2, "v":Lcom/android/launcher2/AppIconView;
    invoke-virtual {v2}, Lcom/android/launcher2/AppIconView;->getTag()Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v1, :cond_0

    .line 2861
    invoke-virtual {v2}, Lcom/android/launcher2/AppIconView;->invalidate()V

    goto :goto_0

    .line 2865
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v2    # "v":Lcom/android/launcher2/AppIconView;
    :cond_1
    invoke-super {p0, p1}, Lcom/android/launcher2/MenuAppsGrid$SelectableItemStateObj;->exitItemViews(Ljava/lang/Iterable;)V

    .line 2866
    return-void
.end method

.method public getAppsList()Ljava/util/List;
    .locals 2
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
    .line 2813
    sget-object v1, Lcom/android/launcher2/MenuAppModel;->INSTANCE:Lcom/android/launcher2/MenuAppModel;

    invoke-virtual {v1}, Lcom/android/launcher2/MenuAppModel;->getTopLevelItems()Ljava/util/List;

    move-result-object v0

    .line 2814
    .local v0, "items":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher2/AppItem;>;"
    return-object v0
.end method

.method public getTargetFolder()Lcom/android/launcher2/FolderItem;
    .locals 6

    .prologue
    .line 3012
    sget-object v2, Lcom/android/launcher2/MenuAppModel;->INSTANCE:Lcom/android/launcher2/MenuAppModel;

    iget-wide v4, p0, Lcom/android/launcher2/MenuAppsGrid$StateFolderSelect;->mTargetFolderId:J

    invoke-virtual {v2, v4, v5}, Lcom/android/launcher2/MenuAppModel;->findItemById(J)Lcom/android/launcher2/AppItem;

    move-result-object v0

    .line 3014
    .local v0, "item":Lcom/android/launcher2/AppItem;
    const/4 v1, 0x0

    .line 3015
    .local v1, "targetFolder":Lcom/android/launcher2/FolderItem;
    if-eqz v0, :cond_0

    move-object v1, v0

    .line 3016
    check-cast v1, Lcom/android/launcher2/FolderItem;

    .line 3019
    :cond_0
    return-object v1
.end method

.method public onAppModelUpdated()V
    .locals 6

    .prologue
    .line 2999
    iget-wide v2, p0, Lcom/android/launcher2/MenuAppsGrid$StateFolderSelect;->mTargetFolderId:J

    const-wide/16 v4, -0x1

    cmp-long v1, v2, v4

    if-nez v1, :cond_1

    .line 3009
    :cond_0
    :goto_0
    return-void

    .line 3004
    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid$StateFolderSelect;->getTargetFolder()Lcom/android/launcher2/FolderItem;

    move-result-object v0

    .line 3006
    .local v0, "targetFolder":Lcom/android/launcher2/FolderItem;
    if-eqz v0, :cond_0

    .line 3007
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/android/launcher2/FolderItem;->setEnabled(Z)V

    goto :goto_0
.end method

.method public bridge synthetic onClickAppItem(Lcom/android/launcher2/AppItem;Landroid/view/View;)Z
    .locals 1
    .param p1, "x0"    # Lcom/android/launcher2/AppItem;
    .param p2, "x1"    # Landroid/view/View;

    .prologue
    .line 2744
    invoke-super {p0, p1, p2}, Lcom/android/launcher2/MenuAppsGrid$SelectableItemStateObj;->onClickAppItem(Lcom/android/launcher2/AppItem;Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic onResume()V
    .locals 0

    .prologue
    .line 2744
    invoke-super {p0}, Lcom/android/launcher2/MenuAppsGrid$SelectableItemStateObj;->onResume()V

    return-void
.end method

.method public bridge synthetic preCheckAppItem(Lcom/android/launcher2/AppItem;Landroid/view/View;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/launcher2/AppItem;
    .param p2, "x1"    # Landroid/view/View;

    .prologue
    .line 2744
    invoke-super {p0, p1, p2}, Lcom/android/launcher2/MenuAppsGrid$SelectableItemStateObj;->preCheckAppItem(Lcom/android/launcher2/AppItem;Landroid/view/View;)V

    return-void
.end method

.method public bridge synthetic preOpenFolder(Lcom/android/launcher2/FolderItem;Lcom/android/launcher2/Folder;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/launcher2/FolderItem;
    .param p2, "x1"    # Lcom/android/launcher2/Folder;

    .prologue
    .line 2744
    invoke-super {p0, p1, p2}, Lcom/android/launcher2/MenuAppsGrid$SelectableItemStateObj;->preOpenFolder(Lcom/android/launcher2/FolderItem;Lcom/android/launcher2/Folder;)V

    return-void
.end method

.method public restore(Landroid/os/Bundle;)Z
    .locals 6
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 2983
    const/4 v0, 0x0

    .line 2984
    .local v0, "rc":Z
    if-eqz p1, :cond_0

    .line 2985
    const-string v2, "SELECTED_FOLDER_ID"

    const-wide/16 v4, -0x1

    invoke-virtual {p1, v2, v4, v5}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/launcher2/MenuAppsGrid$StateFolderSelect;->mTargetFolderId:J

    .line 2986
    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid$StateFolderSelect;->getTargetFolder()Lcom/android/launcher2/FolderItem;

    move-result-object v1

    .line 2987
    .local v1, "targetFolder":Lcom/android/launcher2/FolderItem;
    if-eqz v1, :cond_0

    .line 2988
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/android/launcher2/FolderItem;->setEnabled(Z)V

    .line 2989
    invoke-super {p0, p1}, Lcom/android/launcher2/MenuAppsGrid$SelectableItemStateObj;->restore(Landroid/os/Bundle;)Z

    .line 2990
    sget-object v2, Lcom/android/launcher2/MenuAppModel;->INSTANCE:Lcom/android/launcher2/MenuAppModel;

    invoke-virtual {v2}, Lcom/android/launcher2/MenuAppModel;->editBegin()V

    .line 2991
    const/4 v0, 0x1

    .line 2994
    .end local v1    # "targetFolder":Lcom/android/launcher2/FolderItem;
    :cond_0
    return v0
.end method

.method public save(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 2975
    invoke-super {p0, p1}, Lcom/android/launcher2/MenuAppsGrid$SelectableItemStateObj;->save(Landroid/os/Bundle;)V

    .line 2976
    if-eqz p1, :cond_0

    .line 2977
    const-string v0, "SELECTED_FOLDER_ID"

    iget-wide v2, p0, Lcom/android/launcher2/MenuAppsGrid$StateFolderSelect;->mTargetFolderId:J

    invoke-virtual {p1, v0, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 2979
    :cond_0
    return-void
.end method
