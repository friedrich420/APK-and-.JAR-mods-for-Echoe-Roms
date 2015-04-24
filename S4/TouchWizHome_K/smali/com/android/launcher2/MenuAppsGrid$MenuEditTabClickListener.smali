.class public Lcom/android/launcher2/MenuAppsGrid$MenuEditTabClickListener;
.super Ljava/lang/Object;
.source "MenuAppsGrid.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/MenuAppsGrid;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MenuEditTabClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/MenuAppsGrid;


# direct methods
.method public constructor <init>(Lcom/android/launcher2/MenuAppsGrid;)V
    .locals 0

    .prologue
    .line 3974
    iput-object p1, p0, Lcom/android/launcher2/MenuAppsGrid$MenuEditTabClickListener;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 3977
    iget-object v3, p0, Lcom/android/launcher2/MenuAppsGrid$MenuEditTabClickListener;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v3}, Lcom/android/launcher2/MenuAppsGrid;->getState()Lcom/android/launcher2/MenuAppsGrid$State;

    move-result-object v3

    sget-object v4, Lcom/android/launcher2/MenuAppsGrid$State;->EDIT:Lcom/android/launcher2/MenuAppsGrid$State;

    if-ne v3, v4, :cond_1

    iget-object v3, p0, Lcom/android/launcher2/MenuAppsGrid$MenuEditTabClickListener;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    # invokes: Lcom/android/launcher2/MenuAppsGrid;->isConfirmDialogOpen()Z
    invoke-static {v3}, Lcom/android/launcher2/MenuAppsGrid;->access$5700(Lcom/android/launcher2/MenuAppsGrid;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 3978
    iget-object v3, p0, Lcom/android/launcher2/MenuAppsGrid$MenuEditTabClickListener;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v3}, Lcom/android/launcher2/MenuAppsGrid;->getContext()Landroid/content/Context;

    move-result-object v3

    check-cast v3, Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    .line 3979
    .local v2, "fragMgr":Landroid/app/FragmentManager;
    iget-object v3, p0, Lcom/android/launcher2/MenuAppsGrid$MenuEditTabClickListener;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    # getter for: Lcom/android/launcher2/MenuAppsGrid;->mTabHost:Lcom/android/launcher2/MenuView;
    invoke-static {v3}, Lcom/android/launcher2/MenuAppsGrid;->access$100(Lcom/android/launcher2/MenuAppsGrid;)Lcom/android/launcher2/MenuView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher2/MenuView;->getTitleBarManager()Lcom/android/launcher2/MenuTitleBarManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher2/MenuTitleBarManager;->getEditTitleBar()Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 3980
    .local v1, "editTitleBar":Landroid/view/ViewGroup;
    const v3, 0x7f0f00ad

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 3981
    .local v0, "editBackContainer":Landroid/view/View;
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3983
    invoke-static {v2}, Lcom/android/launcher2/MenuAppsGrid$MenuEditCancelDialogFragment;->isActive(Landroid/app/FragmentManager;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 3984
    iget-object v3, p0, Lcom/android/launcher2/MenuAppsGrid$MenuEditTabClickListener;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v3}, Lcom/android/launcher2/MenuAppsGrid;->saveEditChanges()V

    .line 3985
    iget-object v3, p0, Lcom/android/launcher2/MenuAppsGrid$MenuEditTabClickListener;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    # getter for: Lcom/android/launcher2/MenuAppsGrid;->mMenuAppsGridFragment:Lcom/android/launcher2/MenuAppsGridFragment;
    invoke-static {v3}, Lcom/android/launcher2/MenuAppsGrid;->access$3200(Lcom/android/launcher2/MenuAppsGrid;)Lcom/android/launcher2/MenuAppsGridFragment;

    move-result-object v3

    sget-object v4, Lcom/android/launcher2/MenuAppsGrid$State;->NORMAL:Lcom/android/launcher2/MenuAppsGrid$State;

    invoke-virtual {v3, v4}, Lcom/android/launcher2/MenuAppsGridFragment;->changeState(Lcom/android/launcher2/MenuAppsGrid$State;)V

    .line 3989
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    .line 4007
    .end local v0    # "editBackContainer":Landroid/view/View;
    .end local v1    # "editTitleBar":Landroid/view/ViewGroup;
    .end local v2    # "fragMgr":Landroid/app/FragmentManager;
    :cond_1
    :goto_0
    return-void

    .line 3992
    .restart local v0    # "editBackContainer":Landroid/view/View;
    .restart local v1    # "editTitleBar":Landroid/view/ViewGroup;
    .restart local v2    # "fragMgr":Landroid/app/FragmentManager;
    :sswitch_0
    invoke-static {v2}, Lcom/android/launcher2/MenuAppsGrid$MenuEditCancelDialogFragment;->isActive(Landroid/app/FragmentManager;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 3993
    iget-object v3, p0, Lcom/android/launcher2/MenuAppsGrid$MenuEditTabClickListener;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v3}, Lcom/android/launcher2/MenuAppsGrid;->saveEditChanges()V

    .line 3994
    iget-object v3, p0, Lcom/android/launcher2/MenuAppsGrid$MenuEditTabClickListener;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    # getter for: Lcom/android/launcher2/MenuAppsGrid;->mMenuAppsGridFragment:Lcom/android/launcher2/MenuAppsGridFragment;
    invoke-static {v3}, Lcom/android/launcher2/MenuAppsGrid;->access$3200(Lcom/android/launcher2/MenuAppsGrid;)Lcom/android/launcher2/MenuAppsGridFragment;

    move-result-object v3

    sget-object v4, Lcom/android/launcher2/MenuAppsGrid$State;->NORMAL:Lcom/android/launcher2/MenuAppsGrid$State;

    invoke-virtual {v3, v4}, Lcom/android/launcher2/MenuAppsGridFragment;->changeState(Lcom/android/launcher2/MenuAppsGrid$State;)V

    goto :goto_0

    .line 3998
    :sswitch_1
    sget-object v4, Lcom/android/launcher2/MenuAppModel;->INSTANCE:Lcom/android/launcher2/MenuAppModel;

    iget-object v3, p0, Lcom/android/launcher2/MenuAppsGrid$MenuEditTabClickListener;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    # getter for: Lcom/android/launcher2/MenuAppsGrid;->mViewType:Lcom/android/launcher2/MenuView$ViewType;
    invoke-static {v3}, Lcom/android/launcher2/MenuAppsGrid;->access$5200(Lcom/android/launcher2/MenuAppsGrid;)Lcom/android/launcher2/MenuView$ViewType;

    move-result-object v3

    sget-object v5, Lcom/android/launcher2/MenuView$ViewType;->ALPHABETIC_GRID:Lcom/android/launcher2/MenuView$ViewType;

    if-ne v3, v5, :cond_2

    const/4 v3, 0x1

    :goto_1
    invoke-virtual {v4, v3}, Lcom/android/launcher2/MenuAppModel;->editIsDirty(Z)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 3999
    invoke-static {v2}, Lcom/android/launcher2/MenuAppsGrid$MenuEditCancelDialogFragment;->createAndShow(Landroid/app/FragmentManager;)V

    goto :goto_0

    .line 3998
    :cond_2
    const/4 v3, 0x0

    goto :goto_1

    .line 4001
    :cond_3
    iget-object v3, p0, Lcom/android/launcher2/MenuAppsGrid$MenuEditTabClickListener;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v3}, Lcom/android/launcher2/MenuAppsGrid;->revertEditChanges()V

    .line 4002
    iget-object v3, p0, Lcom/android/launcher2/MenuAppsGrid$MenuEditTabClickListener;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    # getter for: Lcom/android/launcher2/MenuAppsGrid;->mMenuAppsGridFragment:Lcom/android/launcher2/MenuAppsGridFragment;
    invoke-static {v3}, Lcom/android/launcher2/MenuAppsGrid;->access$3200(Lcom/android/launcher2/MenuAppsGrid;)Lcom/android/launcher2/MenuAppsGridFragment;

    move-result-object v3

    sget-object v4, Lcom/android/launcher2/MenuAppsGrid$State;->NORMAL:Lcom/android/launcher2/MenuAppsGrid$State;

    invoke-virtual {v3, v4}, Lcom/android/launcher2/MenuAppsGridFragment;->changeState(Lcom/android/launcher2/MenuAppsGrid$State;)V

    goto :goto_0

    .line 3989
    :sswitch_data_0
    .sparse-switch
        0x7f0f0076 -> :sswitch_0
        0x7f0f00ad -> :sswitch_0
        0x7f0f00b3 -> :sswitch_1
    .end sparse-switch
.end method
