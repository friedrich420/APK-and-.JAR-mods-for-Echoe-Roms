.class public Lcom/android/launcher2/guide/RemoveItemsGuider;
.super Lcom/android/launcher2/guide/GuiderBase;
.source "RemoveItemsGuider.java"

# interfaces
.implements Lcom/android/launcher2/guide/GuiderLifecycleListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "RemoveitemsGuider"

.field private static isRemoveItemsHelpDialogVisible:Z

.field public static isViewApps:Z


# instance fields
.field private mGoalAnimationView:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 41
    sput-boolean v0, Lcom/android/launcher2/guide/RemoveItemsGuider;->isViewApps:Z

    .line 43
    sput-boolean v0, Lcom/android/launcher2/guide/RemoveItemsGuider;->isRemoveItemsHelpDialogVisible:Z

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/android/launcher2/guide/GuiderBase;-><init>(Landroid/app/Activity;)V

    .line 49
    const-string v0, "RemoveitemsGuider"

    const-string v1, "removeitemsguider"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    return-void
.end method


# virtual methods
.method public dismissHelpDialog()V
    .locals 7

    .prologue
    .line 95
    sget-boolean v4, Lcom/android/launcher2/guide/RemoveItemsGuider;->isRemoveItemsHelpDialogVisible:Z

    if-nez v4, :cond_1

    .line 112
    :cond_0
    :goto_0
    return-void

    .line 99
    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher2/guide/RemoveItemsGuider;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 100
    .local v0, "act":Landroid/app/Activity;
    if-eqz v0, :cond_0

    move-object v4, v0

    .line 101
    check-cast v4, Lcom/android/launcher2/Launcher;

    invoke-virtual {v4}, Lcom/android/launcher2/Launcher;->getHomeView()Lcom/android/launcher2/HomeView;

    move-result-object v2

    .line 102
    .local v2, "homeView":Lcom/android/launcher2/HomeView;
    if-eqz v2, :cond_0

    .line 103
    invoke-static {v0}, Lcom/android/launcher2/guide/GuideFragment;->findMainView(Landroid/app/Activity;)Landroid/view/ViewGroup;

    move-result-object v3

    .line 104
    .local v3, "layout":Landroid/view/ViewGroup;
    const-string v4, "RemoveitemsGuider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "dismissHelpDialog.layout="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 106
    .local v1, "childcount":I
    add-int/lit8 v4, v1, -0x1

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->removeViewAt(I)V

    .line 107
    const/4 v4, 0x0

    sput-boolean v4, Lcom/android/launcher2/guide/RemoveItemsGuider;->isRemoveItemsHelpDialogVisible:Z

    .line 108
    const/4 v4, 0x0

    sput-object v4, Lcom/android/launcher2/guide/GuideFragment;->mGuider:Lcom/android/launcher2/guide/GuiderLifecycleListener;

    goto :goto_0
.end method

.method public bridge synthetic finish()V
    .locals 0

    .prologue
    .line 39
    invoke-super {p0}, Lcom/android/launcher2/guide/GuiderBase;->finish()V

    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 118
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 80
    invoke-virtual {p0}, Lcom/android/launcher2/guide/RemoveItemsGuider;->dismissHelpDialog()V

    .line 81
    sget v0, Lcom/android/launcher2/guide/GuideFragment;->sHelpHubStepNumber:I

    packed-switch v0, :pswitch_data_0

    .line 91
    :goto_0
    return-void

    .line 83
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/launcher2/guide/RemoveItemsGuider;->showHelpDialog()V

    goto :goto_0

    .line 86
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/launcher2/guide/RemoveItemsGuider;->showHelpDialog2()V

    goto :goto_0

    .line 81
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 58
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 64
    return-void
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 76
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 70
    return-void
.end method

.method public bridge synthetic onSwitcherChanged(Landroid/widget/CompoundButton;Z)Z
    .locals 1
    .param p1, "x0"    # Landroid/widget/CompoundButton;
    .param p2, "x1"    # Z

    .prologue
    .line 39
    invoke-super {p0, p1, p2}, Lcom/android/launcher2/guide/GuiderBase;->onSwitcherChanged(Landroid/widget/CompoundButton;Z)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic showCompleteDialog()V
    .locals 0

    .prologue
    .line 39
    invoke-super {p0}, Lcom/android/launcher2/guide/GuiderBase;->showCompleteDialog()V

    return-void
.end method

.method public showHelpDialog()V
    .locals 11

    .prologue
    const/4 v10, 0x1

    .line 123
    sget-boolean v8, Lcom/android/launcher2/guide/RemoveItemsGuider;->isRemoveItemsHelpDialogVisible:Z

    if-eqz v8, :cond_1

    .line 152
    :cond_0
    :goto_0
    return-void

    .line 128
    :cond_1
    sput v10, Lcom/android/launcher2/guide/GuideFragment;->sHelpHubStepNumber:I

    .line 129
    invoke-virtual {p0}, Lcom/android/launcher2/guide/RemoveItemsGuider;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 130
    .local v0, "act":Landroid/app/Activity;
    if-eqz v0, :cond_0

    move-object v8, v0

    .line 131
    check-cast v8, Lcom/android/launcher2/Launcher;

    invoke-virtual {v8}, Lcom/android/launcher2/Launcher;->getHomeView()Lcom/android/launcher2/HomeView;

    move-result-object v2

    .line 132
    .local v2, "homeView":Lcom/android/launcher2/HomeView;
    if-eqz v2, :cond_0

    .line 133
    const-string v8, "RemoveitemsGuider"

    const-string v9, " frag!=null"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    invoke-static {v0}, Lcom/android/launcher2/guide/GuideFragment;->findMainView(Landroid/app/Activity;)Landroid/view/ViewGroup;

    move-result-object v4

    .line 135
    .local v4, "layout":Landroid/view/ViewGroup;
    const-string v8, "layout_inflater"

    invoke-virtual {v0, v8}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/LayoutInflater;

    .line 137
    .local v3, "inflater":Landroid/view/LayoutInflater;
    invoke-virtual {v2}, Lcom/android/launcher2/HomeView;->addItemToHomeScreen()V

    .line 138
    const v8, 0x7f030014

    invoke-virtual {v3, v8, v4, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    .line 139
    .local v5, "menuLayout":Landroid/view/View;
    const v8, 0x7f0f001e

    invoke-virtual {v5, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    .line 140
    .local v7, "up_pointer":Landroid/widget/ImageView;
    invoke-virtual {v7}, Landroid/widget/ImageView;->bringToFront()V

    .line 141
    const v8, 0x7f0f003e

    invoke-virtual {v5, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    iput-object v8, p0, Lcom/android/launcher2/guide/RemoveItemsGuider;->mGoalAnimationView:Landroid/view/View;

    .line 142
    new-instance v1, Lcom/android/launcher2/guide/HelpAnimatedDialog;

    iget-object v8, p0, Lcom/android/launcher2/guide/RemoveItemsGuider;->mGoalAnimationView:Landroid/view/View;

    invoke-direct {v1, v0, v8}, Lcom/android/launcher2/guide/HelpAnimatedDialog;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 144
    .local v1, "animdialog":Lcom/android/launcher2/guide/HelpAnimatedDialog;
    sput-boolean v10, Lcom/android/launcher2/guide/RemoveItemsGuider;->isRemoveItemsHelpDialogVisible:Z

    .line 147
    const v8, 0x7f0f001d

    invoke-virtual {v5, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/RelativeLayout;

    .line 148
    .local v6, "textBox":Landroid/widget/RelativeLayout;
    invoke-virtual {v1}, Lcom/android/launcher2/guide/HelpAnimatedDialog;->start()V

    .line 149
    const v8, 0x3f19999a    # 0.6f

    const v9, 0x3dcccccd    # 0.1f

    invoke-virtual {v1, v8, v9, v6}, Lcom/android/launcher2/guide/HelpAnimatedDialog;->startZoom(FFLandroid/view/View;)V

    goto :goto_0
.end method

.method public showHelpDialog2()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    .line 157
    sget-boolean v7, Lcom/android/launcher2/guide/RemoveItemsGuider;->isRemoveItemsHelpDialogVisible:Z

    if-eqz v7, :cond_1

    .line 183
    :cond_0
    :goto_0
    return-void

    .line 162
    :cond_1
    const/4 v7, 0x2

    sput v7, Lcom/android/launcher2/guide/GuideFragment;->sHelpHubStepNumber:I

    .line 163
    invoke-virtual {p0}, Lcom/android/launcher2/guide/RemoveItemsGuider;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 164
    .local v0, "act":Landroid/app/Activity;
    if-eqz v0, :cond_0

    move-object v7, v0

    .line 165
    check-cast v7, Lcom/android/launcher2/Launcher;

    invoke-virtual {v7}, Lcom/android/launcher2/Launcher;->getHomeView()Lcom/android/launcher2/HomeView;

    move-result-object v2

    .line 166
    .local v2, "homeView":Lcom/android/launcher2/HomeView;
    if-eqz v2, :cond_0

    .line 167
    const-string v7, "RemoveitemsGuider"

    const-string v8, " frag!=null"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    invoke-static {v0}, Lcom/android/launcher2/guide/GuideFragment;->findMainView(Landroid/app/Activity;)Landroid/view/ViewGroup;

    move-result-object v4

    .line 169
    .local v4, "layout":Landroid/view/ViewGroup;
    const-string v7, "layout_inflater"

    invoke-virtual {v0, v7}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/LayoutInflater;

    .line 171
    .local v3, "inflater":Landroid/view/LayoutInflater;
    const v7, 0x7f030015

    invoke-virtual {v3, v7, v4, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    .line 172
    .local v5, "menuLayout":Landroid/view/View;
    const v7, 0x7f0f003e

    invoke-virtual {v5, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    iput-object v7, p0, Lcom/android/launcher2/guide/RemoveItemsGuider;->mGoalAnimationView:Landroid/view/View;

    .line 173
    const v7, 0x7f0f003c

    invoke-virtual {v5, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/RelativeLayout;

    .line 174
    .local v6, "textBox":Landroid/widget/RelativeLayout;
    new-instance v1, Lcom/android/launcher2/guide/HelpAnimatedDialog;

    iget-object v7, p0, Lcom/android/launcher2/guide/RemoveItemsGuider;->mGoalAnimationView:Landroid/view/View;

    invoke-direct {v1, v0, v7}, Lcom/android/launcher2/guide/HelpAnimatedDialog;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 175
    .local v1, "animdialog":Lcom/android/launcher2/guide/HelpAnimatedDialog;
    sput-boolean v9, Lcom/android/launcher2/guide/RemoveItemsGuider;->isRemoveItemsHelpDialogVisible:Z

    .line 176
    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v7

    iget v7, v7, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    const/16 v8, 0x320

    if-ge v7, v8, :cond_2

    .line 177
    invoke-virtual {v1}, Lcom/android/launcher2/guide/HelpAnimatedDialog;->start()V

    goto :goto_0

    .line 179
    :cond_2
    const v7, 0x3f19999a    # 0.6f

    const v8, 0x3dcccccd    # 0.1f

    invoke-virtual {v1, v7, v8, v6}, Lcom/android/launcher2/guide/HelpAnimatedDialog;->startZoom(FFLandroid/view/View;)V

    goto :goto_0
.end method
