.class public Lcom/android/launcher2/AppFolderRemoveDialog;
.super Landroid/app/DialogFragment;
.source "AppFolderRemoveDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# static fields
.field private static mFolders:Ljava/util/List; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher2/AppItem;",
            ">;"
        }
    .end annotation
.end field

.field private static mFromDrag:Z = false

.field private static final sFragmentTag:Ljava/lang/String; = "AppFolderRemoveDialog"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/launcher2/AppFolderRemoveDialog;->mFromDrag:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method private animateInItem(Lcom/android/launcher2/BaseItem;Lcom/android/launcher2/CellLayout;I)V
    .locals 6
    .param p1, "a"    # Lcom/android/launcher2/BaseItem;
    .param p2, "cellLayout"    # Lcom/android/launcher2/CellLayout;
    .param p3, "delay"    # I

    .prologue
    .line 213
    sget-boolean v3, Lcom/android/launcher2/AppFolderRemoveDialog;->mFromDrag:Z

    if-nez v3, :cond_1

    .line 248
    :cond_0
    :goto_0
    return-void

    .line 215
    :cond_1
    invoke-virtual {p2}, Lcom/android/launcher2/CellLayout;->getChildrenLayout()Lcom/android/launcher2/CellLayoutChildren;

    move-result-object v1

    .line 216
    .local v1, "l":Lcom/android/launcher2/CellLayoutChildren;
    invoke-virtual {v1, p1}, Lcom/android/launcher2/CellLayoutChildren;->getChildAt(Lcom/android/launcher2/BaseItem;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/AppIconView;

    .line 217
    .local v2, "v":Lcom/android/launcher2/AppIconView;
    if-eqz v2, :cond_0

    .line 218
    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/android/launcher2/AppIconView;->setVisibility(I)V

    .line 220
    invoke-virtual {p0}, Lcom/android/launcher2/AppFolderRemoveDialog;->getActivity()Landroid/app/Activity;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/Launcher;

    invoke-virtual {v3}, Lcom/android/launcher2/Launcher;->getAnimationLayer()Lcom/android/launcher2/AnimationLayer;

    move-result-object v0

    .line 221
    .local v0, "al":Lcom/android/launcher2/AnimationLayer;
    new-instance v3, Lcom/android/launcher2/AppFolderRemoveDialog$1;

    invoke-direct {v3, p0, v0, v2, p2}, Lcom/android/launcher2/AppFolderRemoveDialog$1;-><init>(Lcom/android/launcher2/AppFolderRemoveDialog;Lcom/android/launcher2/AnimationLayer;Lcom/android/launcher2/AppIconView;Lcom/android/launcher2/CellLayout;)V

    int-to-long v4, p3

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/launcher2/AppIconView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method private cancelDeletes()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 191
    sget-object v2, Lcom/android/launcher2/AppFolderRemoveDialog;->mFolders:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 192
    sput-object v3, Lcom/android/launcher2/AppFolderRemoveDialog;->mFolders:Ljava/util/List;

    .line 194
    sget-object v2, Lcom/android/launcher2/MenuAppModel;->INSTANCE:Lcom/android/launcher2/MenuAppModel;

    invoke-virtual {v2, v3}, Lcom/android/launcher2/MenuAppModel;->setFolderToDelete(Lcom/android/launcher2/AppFolderItem;)V

    .line 196
    invoke-virtual {p0}, Lcom/android/launcher2/AppFolderRemoveDialog;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/Launcher;

    .line 197
    .local v0, "launcher":Lcom/android/launcher2/Launcher;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/launcher2/Launcher;->getMenuView()Lcom/android/launcher2/MenuView;

    move-result-object v2

    if-nez v2, :cond_1

    .line 210
    :cond_0
    :goto_0
    return-void

    .line 198
    :cond_1
    invoke-virtual {v0}, Lcom/android/launcher2/Launcher;->getMenuView()Lcom/android/launcher2/MenuView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher2/MenuView;->getMenuAppsGrid()Lcom/android/launcher2/MenuAppsGrid;

    move-result-object v1

    .line 199
    .local v1, "mag":Lcom/android/launcher2/MenuAppsGrid;
    if-eqz v1, :cond_2

    .line 200
    invoke-virtual {v1}, Lcom/android/launcher2/MenuAppsGrid;->syncPages()V

    .line 201
    invoke-virtual {v1}, Lcom/android/launcher2/MenuAppsGrid;->getMenuAppsGridFragment()Lcom/android/launcher2/MenuAppsGridFragment;

    move-result-object v2

    sget-object v3, Lcom/android/launcher2/MenuAppsGrid$State;->NORMAL:Lcom/android/launcher2/MenuAppsGrid$State;

    invoke-virtual {v2, v3}, Lcom/android/launcher2/MenuAppsGridFragment;->changeState(Lcom/android/launcher2/MenuAppsGrid$State;)V

    .line 209
    :cond_2
    sget-object v2, Lcom/android/launcher2/MenuAppModel;->INSTANCE:Lcom/android/launcher2/MenuAppModel;

    invoke-virtual {v2}, Lcom/android/launcher2/MenuAppModel;->editCommit()V

    goto :goto_0
.end method

.method static createAndShow(Lcom/android/launcher2/AppFolderItem;Landroid/app/FragmentManager;)V
    .locals 2
    .param p0, "appFolderItem"    # Lcom/android/launcher2/AppFolderItem;
    .param p1, "manager"    # Landroid/app/FragmentManager;

    .prologue
    .line 51
    invoke-static {p1}, Lcom/android/launcher2/AppFolderRemoveDialog;->isActive(Landroid/app/FragmentManager;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 56
    :goto_0
    return-void

    .line 53
    :cond_0
    sget-object v1, Lcom/android/launcher2/MenuAppModel;->INSTANCE:Lcom/android/launcher2/MenuAppModel;

    invoke-virtual {v1, p0}, Lcom/android/launcher2/MenuAppModel;->setFolderToDelete(Lcom/android/launcher2/AppFolderItem;)V

    .line 54
    new-instance v0, Lcom/android/launcher2/AppFolderRemoveDialog;

    invoke-direct {v0}, Lcom/android/launcher2/AppFolderRemoveDialog;-><init>()V

    .line 55
    .local v0, "df":Lcom/android/launcher2/AppFolderRemoveDialog;
    const-string v1, "AppFolderRemoveDialog"

    invoke-virtual {v0, p1, v1}, Lcom/android/launcher2/AppFolderRemoveDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0
.end method

.method static createAndShow(Lcom/android/launcher2/AppFolderItem;Landroid/app/FragmentManager;Z)V
    .locals 1
    .param p0, "appFolderItem"    # Lcom/android/launcher2/AppFolderItem;
    .param p1, "manager"    # Landroid/app/FragmentManager;
    .param p2, "fromDrag"    # Z

    .prologue
    .line 47
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/launcher2/AppFolderRemoveDialog;->mFromDrag:Z

    .line 48
    invoke-static {p0, p1}, Lcom/android/launcher2/AppFolderRemoveDialog;->createAndShow(Lcom/android/launcher2/AppFolderItem;Landroid/app/FragmentManager;)V

    .line 49
    return-void
.end method

.method static createAndShow(Ljava/util/List;Landroid/app/FragmentManager;)V
    .locals 2
    .param p1, "manager"    # Landroid/app/FragmentManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher2/AppItem;",
            ">;",
            "Landroid/app/FragmentManager;",
            ")V"
        }
    .end annotation

    .prologue
    .line 59
    .local p0, "appFolderItem":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher2/AppItem;>;"
    const/4 v1, 0x0

    sput-boolean v1, Lcom/android/launcher2/AppFolderRemoveDialog;->mFromDrag:Z

    .line 61
    invoke-static {p1}, Lcom/android/launcher2/AppFolderRemoveDialog;->isActive(Landroid/app/FragmentManager;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 69
    :goto_0
    return-void

    .line 64
    :cond_0
    sput-object p0, Lcom/android/launcher2/AppFolderRemoveDialog;->mFolders:Ljava/util/List;

    .line 65
    new-instance v0, Lcom/android/launcher2/AppFolderRemoveDialog;

    invoke-direct {v0}, Lcom/android/launcher2/AppFolderRemoveDialog;-><init>()V

    .line 66
    .local v0, "df":Lcom/android/launcher2/AppFolderRemoveDialog;
    const-string v1, "AppFolderRemoveDialog"

    invoke-virtual {v0, p1, v1}, Lcom/android/launcher2/AppFolderRemoveDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 68
    sget-object v1, Lcom/android/launcher2/MenuAppModel;->INSTANCE:Lcom/android/launcher2/MenuAppModel;

    invoke-virtual {v1}, Lcom/android/launcher2/MenuAppModel;->editBegin()V

    goto :goto_0
.end method

.method static dismiss(Landroid/app/FragmentTransaction;Landroid/app/FragmentManager;)V
    .locals 2
    .param p0, "ft"    # Landroid/app/FragmentTransaction;
    .param p1, "manager"    # Landroid/app/FragmentManager;

    .prologue
    .line 80
    const-string v1, "AppFolderRemoveDialog"

    invoke-virtual {p1, v1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Landroid/app/DialogFragment;

    .line 81
    .local v0, "dialog":Landroid/app/DialogFragment;
    if-eqz v0, :cond_0

    .line 82
    invoke-virtual {v0}, Landroid/app/DialogFragment;->dismiss()V

    .line 83
    invoke-virtual {p0, v0}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 85
    :cond_0
    return-void
.end method

.method static getCurrentInstance(Landroid/app/FragmentManager;)Lcom/android/launcher2/AppFolderRemoveDialog;
    .locals 1
    .param p0, "manager"    # Landroid/app/FragmentManager;

    .prologue
    .line 76
    const-string v0, "AppFolderRemoveDialog"

    invoke-virtual {p0, v0}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/AppFolderRemoveDialog;

    return-object v0
.end method

.method static isActive(Landroid/app/FragmentManager;)Z
    .locals 1
    .param p0, "manager"    # Landroid/app/FragmentManager;

    .prologue
    .line 72
    const-string v0, "AppFolderRemoveDialog"

    invoke-virtual {p0, v0}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private removeFolder()V
    .locals 18

    .prologue
    .line 110
    sget-object v12, Lcom/android/launcher2/MenuAppModel;->INSTANCE:Lcom/android/launcher2/MenuAppModel;

    invoke-virtual {v12}, Lcom/android/launcher2/MenuAppModel;->getFolderToDelete()Lcom/android/launcher2/AppFolderItem;

    move-result-object v5

    .line 111
    .local v5, "f":Lcom/android/launcher2/AppFolderItem;
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/AppFolderRemoveDialog;->getActivity()Landroid/app/Activity;

    move-result-object v12

    check-cast v12, Lcom/android/launcher2/Launcher;

    invoke-virtual {v12}, Lcom/android/launcher2/Launcher;->getMenuView()Lcom/android/launcher2/MenuView;

    move-result-object v10

    .line 112
    .local v10, "mv":Lcom/android/launcher2/MenuView;
    invoke-virtual {v10}, Lcom/android/launcher2/MenuView;->getMenuAppsGrid()Lcom/android/launcher2/MenuAppsGrid;

    move-result-object v8

    .line 113
    .local v8, "mag":Lcom/android/launcher2/MenuAppsGrid;
    invoke-virtual {v5}, Lcom/android/launcher2/AppFolderItem;->getAllItems()Ljava/util/List;

    move-result-object v7

    .line 115
    .local v7, "items":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher2/AppItem;>;"
    sget-object v12, Lcom/android/launcher2/MenuAppModel;->INSTANCE:Lcom/android/launcher2/MenuAppModel;

    invoke-virtual {v12}, Lcom/android/launcher2/MenuAppModel;->editRemoveFolder()V

    .line 116
    invoke-virtual {v10}, Lcom/android/launcher2/MenuView;->appModelUpdated()V

    .line 120
    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_1

    if-eqz v8, :cond_1

    .line 122
    invoke-virtual {v8}, Lcom/android/launcher2/MenuAppsGrid;->getCurrentPage()I

    move-result v11

    .line 123
    .local v11, "pageIndex":I
    invoke-virtual {v10}, Lcom/android/launcher2/MenuView;->getViewType()Lcom/android/launcher2/MenuView$ViewType;

    move-result-object v9

    .line 124
    .local v9, "mode":Lcom/android/launcher2/MenuView$ViewType;
    sget-object v12, Lcom/android/launcher2/MenuView$ViewType;->ALPHABETIC_GRID:Lcom/android/launcher2/MenuView$ViewType;

    if-ne v12, v9, :cond_2

    .line 125
    const/4 v12, 0x0

    invoke-interface {v7, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/launcher2/AppItem;

    iget-wide v12, v12, Lcom/android/launcher2/AppItem;->mId:J

    invoke-virtual {v8, v12, v13}, Lcom/android/launcher2/MenuAppsGrid;->getPageIndexForItemId(J)I

    move-result v11

    .line 130
    :goto_0
    const/4 v4, 0x0

    .line 131
    .local v4, "delay":I
    invoke-virtual {v8}, Lcom/android/launcher2/MenuAppsGrid;->getCurrentPage()I

    move-result v12

    if-eq v12, v11, :cond_0

    .line 132
    invoke-virtual {v8, v11}, Lcom/android/launcher2/MenuAppsGrid;->snapToPage(I)V

    .line 133
    iget v12, v8, Lcom/android/launcher2/MenuAppsGrid;->PAGE_SNAP_ANIMATION_DURATION:I

    add-int/lit8 v4, v12, 0xa

    .line 136
    :cond_0
    invoke-virtual {v8, v11}, Lcom/android/launcher2/MenuAppsGrid;->getPageAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/CellLayout;

    .line 137
    .local v3, "cellLayout":Lcom/android/launcher2/CellLayout;
    if-nez v3, :cond_3

    .line 138
    const-string v13, "AppFolderRemoveDialog"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "cellLayout is null. index : "

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v14, ", item 0 :"

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const/4 v12, 0x0

    invoke-interface {v7, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/launcher2/AppItem;

    iget-wide v0, v12, Lcom/android/launcher2/AppItem;->mId:J

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    invoke-virtual {v14, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v14, "/"

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const/4 v12, 0x0

    invoke-interface {v7, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/launcher2/AppItem;

    iget-object v12, v12, Lcom/android/launcher2/AppItem;->mTitle:Ljava/lang/String;

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v13, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    .end local v3    # "cellLayout":Lcom/android/launcher2/CellLayout;
    .end local v4    # "delay":I
    .end local v9    # "mode":Lcom/android/launcher2/MenuView$ViewType;
    .end local v11    # "pageIndex":I
    :cond_1
    return-void

    .line 127
    .restart local v9    # "mode":Lcom/android/launcher2/MenuView$ViewType;
    .restart local v11    # "pageIndex":I
    :cond_2
    invoke-virtual {v8}, Lcom/android/launcher2/MenuAppsGrid;->getPageCount()I

    move-result v12

    add-int/lit8 v11, v12, -0x1

    goto :goto_0

    .line 142
    .restart local v3    # "cellLayout":Lcom/android/launcher2/CellLayout;
    .restart local v4    # "delay":I
    :cond_3
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/AppItem;

    .line 144
    .local v2, "a":Lcom/android/launcher2/AppItem;
    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v4}, Lcom/android/launcher2/AppFolderRemoveDialog;->animateInItem(Lcom/android/launcher2/BaseItem;Lcom/android/launcher2/CellLayout;I)V

    goto :goto_1
.end method

.method private removeFolders()V
    .locals 4

    .prologue
    .line 150
    sget-object v3, Lcom/android/launcher2/AppFolderRemoveDialog;->mFolders:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/AppItem;

    .line 151
    .local v1, "item":Lcom/android/launcher2/AppItem;
    sget-object v3, Lcom/android/launcher2/MenuAppModel;->INSTANCE:Lcom/android/launcher2/MenuAppModel;

    check-cast v1, Lcom/android/launcher2/AppFolderItem;

    .end local v1    # "item":Lcom/android/launcher2/AppItem;
    invoke-virtual {v3, v1}, Lcom/android/launcher2/MenuAppModel;->setFolderToDelete(Lcom/android/launcher2/AppFolderItem;)V

    .line 152
    sget-object v3, Lcom/android/launcher2/MenuAppModel;->INSTANCE:Lcom/android/launcher2/MenuAppModel;

    invoke-virtual {v3}, Lcom/android/launcher2/MenuAppModel;->editRemoveFolder()V

    goto :goto_0

    .line 154
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher2/AppFolderRemoveDialog;->getActivity()Landroid/app/Activity;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/Launcher;

    invoke-virtual {v3}, Lcom/android/launcher2/Launcher;->getMenuView()Lcom/android/launcher2/MenuView;

    move-result-object v2

    .line 155
    .local v2, "mv":Lcom/android/launcher2/MenuView;
    invoke-virtual {v2}, Lcom/android/launcher2/MenuView;->appModelUpdated()V

    .line 156
    return-void
.end method


# virtual methods
.method public cancelDelete()V
    .locals 6

    .prologue
    .line 168
    sget-object v4, Lcom/android/launcher2/MenuAppModel;->INSTANCE:Lcom/android/launcher2/MenuAppModel;

    invoke-virtual {v4}, Lcom/android/launcher2/MenuAppModel;->getFolderToDelete()Lcom/android/launcher2/AppFolderItem;

    move-result-object v1

    .line 169
    .local v1, "f":Lcom/android/launcher2/AppFolderItem;
    if-nez v1, :cond_1

    .line 188
    :cond_0
    :goto_0
    return-void

    .line 172
    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher2/AppFolderRemoveDialog;->getActivity()Landroid/app/Activity;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/Launcher;

    .line 173
    .local v2, "launcher":Lcom/android/launcher2/Launcher;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/android/launcher2/Launcher;->getMenuView()Lcom/android/launcher2/MenuView;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 174
    invoke-virtual {v2}, Lcom/android/launcher2/Launcher;->getMenuView()Lcom/android/launcher2/MenuView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/launcher2/MenuView;->getMenuAppsGrid()Lcom/android/launcher2/MenuAppsGrid;

    move-result-object v3

    .line 175
    .local v3, "mag":Lcom/android/launcher2/MenuAppsGrid;
    sget-object v4, Lcom/android/launcher2/MenuAppModel;->INSTANCE:Lcom/android/launcher2/MenuAppModel;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/android/launcher2/MenuAppModel;->setFolderToDelete(Lcom/android/launcher2/AppFolderItem;)V

    .line 176
    if-eqz v3, :cond_0

    .line 177
    invoke-virtual {v3}, Lcom/android/launcher2/MenuAppsGrid;->allowCustomOrdering()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 178
    iget v4, v1, Lcom/android/launcher2/AppFolderItem;->mScreen:I

    invoke-virtual {v3, v4}, Lcom/android/launcher2/MenuAppsGrid;->getPageAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/CellLayout;

    .line 179
    .local v0, "cellLayout":Lcom/android/launcher2/CellLayout;
    invoke-virtual {v0, v1}, Lcom/android/launcher2/CellLayout;->addItem(Lcom/android/launcher2/BaseItem;)Z

    .line 180
    invoke-virtual {v3}, Lcom/android/launcher2/MenuAppsGrid;->getCurrentPage()I

    move-result v4

    iget v5, v1, Lcom/android/launcher2/AppFolderItem;->mScreen:I

    if-ne v4, v5, :cond_0

    .line 181
    const/4 v4, 0x0

    invoke-direct {p0, v1, v0, v4}, Lcom/android/launcher2/AppFolderRemoveDialog;->animateInItem(Lcom/android/launcher2/BaseItem;Lcom/android/launcher2/CellLayout;I)V

    goto :goto_0

    .line 185
    .end local v0    # "cellLayout":Lcom/android/launcher2/CellLayout;
    :cond_2
    invoke-virtual {v3}, Lcom/android/launcher2/MenuAppsGrid;->syncPages()V

    goto :goto_0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "whichButton"    # I

    .prologue
    .line 100
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 101
    sget-object v0, Lcom/android/launcher2/AppFolderRemoveDialog;->mFolders:Ljava/util/List;

    if-nez v0, :cond_1

    .line 102
    invoke-direct {p0}, Lcom/android/launcher2/AppFolderRemoveDialog;->removeFolder()V

    .line 107
    :cond_0
    :goto_0
    return-void

    .line 104
    :cond_1
    invoke-direct {p0}, Lcom/android/launcher2/AppFolderRemoveDialog;->removeFolders()V

    goto :goto_0
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 89
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/launcher2/AppFolderRemoveDialog;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f10000b

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f10000c

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f10000d

    invoke-virtual {v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f10000e

    invoke-virtual {v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 160
    sget-object v0, Lcom/android/launcher2/AppFolderRemoveDialog;->mFolders:Ljava/util/List;

    if-nez v0, :cond_0

    .line 161
    invoke-virtual {p0}, Lcom/android/launcher2/AppFolderRemoveDialog;->cancelDelete()V

    .line 164
    :goto_0
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    .line 165
    return-void

    .line 163
    :cond_0
    invoke-direct {p0}, Lcom/android/launcher2/AppFolderRemoveDialog;->cancelDeletes()V

    goto :goto_0
.end method
