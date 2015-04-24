.class public Lcom/android/launcher2/guide/MoveAppsGuider;
.super Lcom/android/launcher2/guide/GuiderBase;
.source "MoveAppsGuider.java"

# interfaces
.implements Lcom/android/launcher2/guide/GuiderLifecycleListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "NavigationGuider"

.field private static isMoveAppsDialog_Visible:Z

.field static layout:Landroid/view/ViewGroup;

.field static menuLayout:Landroid/view/View;


# instance fields
.field private mGoalAnimationView:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 44
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/launcher2/guide/MoveAppsGuider;->isMoveAppsDialog_Visible:Z

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/android/launcher2/guide/GuiderBase;-><init>(Landroid/app/Activity;)V

    .line 49
    const-string v0, "NavigationGuider"

    const-string v1, "MoveAppsGuider"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    return-void
.end method


# virtual methods
.method public dismissHelpDialog()V
    .locals 0

    .prologue
    .line 128
    invoke-virtual {p0}, Lcom/android/launcher2/guide/MoveAppsGuider;->dismissHelpDialog_step1()V

    .line 129
    return-void
.end method

.method public dismissHelpDialog_step1()V
    .locals 5

    .prologue
    .line 55
    sget-boolean v3, Lcom/android/launcher2/guide/MoveAppsGuider;->isMoveAppsDialog_Visible:Z

    if-nez v3, :cond_1

    .line 72
    :cond_0
    :goto_0
    return-void

    .line 60
    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher2/guide/MoveAppsGuider;->getActivity()Landroid/app/Activity;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/Launcher;

    invoke-virtual {v3}, Lcom/android/launcher2/Launcher;->getHomeView()Lcom/android/launcher2/HomeView;

    move-result-object v2

    .line 61
    .local v2, "homeView":Lcom/android/launcher2/HomeView;
    invoke-virtual {p0}, Lcom/android/launcher2/guide/MoveAppsGuider;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/Launcher;

    .line 62
    .local v0, "act":Landroid/app/Activity;
    if-eqz v2, :cond_0

    .line 63
    const-string v3, "NavigationGuider"

    const-string v4, " frag!=null"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    invoke-static {v0}, Lcom/android/launcher2/guide/GuideFragment;->findMainView(Landroid/app/Activity;)Landroid/view/ViewGroup;

    move-result-object v3

    sput-object v3, Lcom/android/launcher2/guide/MoveAppsGuider;->layout:Landroid/view/ViewGroup;

    .line 65
    sget-object v3, Lcom/android/launcher2/guide/MoveAppsGuider;->layout:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 66
    .local v1, "childcount":I
    if-eqz v1, :cond_2

    .line 67
    sget-object v3, Lcom/android/launcher2/guide/MoveAppsGuider;->layout:Landroid/view/ViewGroup;

    add-int/lit8 v4, v1, -0x1

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->removeViewAt(I)V

    .line 68
    const/4 v3, 0x0

    sput-boolean v3, Lcom/android/launcher2/guide/MoveAppsGuider;->isMoveAppsDialog_Visible:Z

    .line 70
    :cond_2
    const/4 v3, 0x0

    sput-object v3, Lcom/android/launcher2/guide/GuideFragment;->mGuider:Lcom/android/launcher2/guide/GuiderLifecycleListener;

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
    .line 142
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 163
    invoke-virtual {p0}, Lcom/android/launcher2/guide/MoveAppsGuider;->dismissHelpDialog()V

    .line 164
    sget v0, Lcom/android/launcher2/guide/GuideFragment;->sHelpHubStepNumber:I

    packed-switch v0, :pswitch_data_0

    .line 174
    :goto_0
    return-void

    .line 166
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/launcher2/guide/MoveAppsGuider;->showHelpDialog_step1()V

    goto :goto_0

    .line 169
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/launcher2/guide/MoveAppsGuider;->showHelpDialog_step2()V

    goto :goto_0

    .line 164
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
    .line 135
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 148
    return-void
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 160
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 154
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
    .locals 0

    .prologue
    .line 76
    invoke-virtual {p0}, Lcom/android/launcher2/guide/MoveAppsGuider;->showHelpDialog_step1()V

    .line 78
    return-void
.end method

.method public showHelpDialog_step1()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    .line 82
    sget-boolean v6, Lcom/android/launcher2/guide/MoveAppsGuider;->isMoveAppsDialog_Visible:Z

    if-eqz v6, :cond_1

    .line 107
    :cond_0
    :goto_0
    return-void

    .line 86
    :cond_1
    sput v8, Lcom/android/launcher2/guide/GuideFragment;->sHelpHubStepNumber:I

    .line 87
    invoke-virtual {p0}, Lcom/android/launcher2/guide/MoveAppsGuider;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/Launcher;

    .line 88
    .local v0, "act":Landroid/app/Activity;
    invoke-virtual {p0}, Lcom/android/launcher2/guide/MoveAppsGuider;->getActivity()Landroid/app/Activity;

    move-result-object v6

    check-cast v6, Lcom/android/launcher2/Launcher;

    invoke-virtual {v6}, Lcom/android/launcher2/Launcher;->getHomeView()Lcom/android/launcher2/HomeView;

    move-result-object v2

    .line 89
    .local v2, "homeView":Lcom/android/launcher2/HomeView;
    if-eqz v2, :cond_0

    .line 90
    invoke-virtual {v2}, Lcom/android/launcher2/HomeView;->addHelpAppPage()V

    .line 91
    invoke-virtual {v2}, Lcom/android/launcher2/HomeView;->addItemToHomeScreen()V

    .line 92
    invoke-static {v0}, Lcom/android/launcher2/guide/GuideFragment;->findMainView(Landroid/app/Activity;)Landroid/view/ViewGroup;

    move-result-object v6

    sput-object v6, Lcom/android/launcher2/guide/MoveAppsGuider;->layout:Landroid/view/ViewGroup;

    .line 93
    const-string v6, "layout_inflater"

    invoke-virtual {v0, v6}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/LayoutInflater;

    .line 94
    .local v3, "inflater":Landroid/view/LayoutInflater;
    const v6, 0x7f030011

    sget-object v7, Lcom/android/launcher2/guide/MoveAppsGuider;->layout:Landroid/view/ViewGroup;

    invoke-virtual {v3, v6, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v6

    sput-object v6, Lcom/android/launcher2/guide/MoveAppsGuider;->menuLayout:Landroid/view/View;

    .line 96
    sget-object v6, Lcom/android/launcher2/guide/MoveAppsGuider;->menuLayout:Landroid/view/View;

    const v7, 0x7f0f001e

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    .line 97
    .local v5, "up_pointer":Landroid/widget/ImageView;
    invoke-virtual {v5}, Landroid/widget/ImageView;->bringToFront()V

    .line 99
    sget-object v6, Lcom/android/launcher2/guide/MoveAppsGuider;->menuLayout:Landroid/view/View;

    const v7, 0x7f0f003e

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    iput-object v6, p0, Lcom/android/launcher2/guide/MoveAppsGuider;->mGoalAnimationView:Landroid/view/View;

    .line 100
    new-instance v1, Lcom/android/launcher2/guide/HelpAnimatedDialog;

    iget-object v6, p0, Lcom/android/launcher2/guide/MoveAppsGuider;->mGoalAnimationView:Landroid/view/View;

    invoke-direct {v1, v0, v6}, Lcom/android/launcher2/guide/HelpAnimatedDialog;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 101
    .local v1, "animdialog":Lcom/android/launcher2/guide/HelpAnimatedDialog;
    sput-boolean v8, Lcom/android/launcher2/guide/MoveAppsGuider;->isMoveAppsDialog_Visible:Z

    .line 103
    sget-object v6, Lcom/android/launcher2/guide/MoveAppsGuider;->menuLayout:Landroid/view/View;

    const v7, 0x7f0f001d

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/RelativeLayout;

    .line 104
    .local v4, "textBox":Landroid/widget/RelativeLayout;
    invoke-virtual {v1}, Lcom/android/launcher2/guide/HelpAnimatedDialog;->start()V

    .line 105
    const v6, 0x3f19999a    # 0.6f

    const v7, 0x3dcccccd    # 0.1f

    invoke-virtual {v1, v6, v7, v4}, Lcom/android/launcher2/guide/HelpAnimatedDialog;->startZoom(FFLandroid/view/View;)V

    goto :goto_0
.end method

.method public showHelpDialog_step2()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 110
    sget-boolean v3, Lcom/android/launcher2/guide/MoveAppsGuider;->isMoveAppsDialog_Visible:Z

    if-eqz v3, :cond_1

    .line 123
    :cond_0
    :goto_0
    return-void

    .line 114
    :cond_1
    const/4 v3, 0x2

    sput v3, Lcom/android/launcher2/guide/GuideFragment;->sHelpHubStepNumber:I

    .line 115
    invoke-virtual {p0}, Lcom/android/launcher2/guide/MoveAppsGuider;->getActivity()Landroid/app/Activity;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/Launcher;

    invoke-virtual {v3}, Lcom/android/launcher2/Launcher;->getHomeView()Lcom/android/launcher2/HomeView;

    move-result-object v1

    .line 116
    .local v1, "homeView":Lcom/android/launcher2/HomeView;
    invoke-virtual {p0}, Lcom/android/launcher2/guide/MoveAppsGuider;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/Launcher;

    .line 117
    .local v0, "act":Landroid/app/Activity;
    if-eqz v1, :cond_0

    .line 118
    invoke-static {v0}, Lcom/android/launcher2/guide/GuideFragment;->findMainView(Landroid/app/Activity;)Landroid/view/ViewGroup;

    move-result-object v3

    sput-object v3, Lcom/android/launcher2/guide/MoveAppsGuider;->layout:Landroid/view/ViewGroup;

    .line 119
    const-string v3, "layout_inflater"

    invoke-virtual {v0, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    .line 120
    .local v2, "inflater":Landroid/view/LayoutInflater;
    const v3, 0x7f030012

    sget-object v4, Lcom/android/launcher2/guide/MoveAppsGuider;->layout:Landroid/view/ViewGroup;

    invoke-virtual {v2, v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    sput-object v3, Lcom/android/launcher2/guide/MoveAppsGuider;->menuLayout:Landroid/view/View;

    .line 121
    sput-boolean v5, Lcom/android/launcher2/guide/MoveAppsGuider;->isMoveAppsDialog_Visible:Z

    goto :goto_0
.end method
