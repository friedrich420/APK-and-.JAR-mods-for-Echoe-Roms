.class public Lcom/android/launcher2/guide/ChangeWallpaperGuider;
.super Lcom/android/launcher2/guide/GuiderBase;
.source "ChangeWallpaperGuider.java"

# interfaces
.implements Lcom/android/launcher2/guide/GuiderLifecycleListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "ChangeWallpaperGuider"

.field public static isChangeWallpaperDialog1Visible:Z

.field public static isChangeWallpaperDialog2Visible:Z

.field static layout:Landroid/view/ViewGroup;

.field static menuLayout:Landroid/view/View;


# instance fields
.field private mGoalAnimationView:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 49
    sput-boolean v0, Lcom/android/launcher2/guide/ChangeWallpaperGuider;->isChangeWallpaperDialog1Visible:Z

    .line 50
    sput-boolean v0, Lcom/android/launcher2/guide/ChangeWallpaperGuider;->isChangeWallpaperDialog2Visible:Z

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/android/launcher2/guide/GuiderBase;-><init>(Landroid/app/Activity;)V

    .line 54
    const-string v0, "ChangeWallpaperGuider"

    const-string v1, "ChangeWallpaperGuider"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    return-void
.end method


# virtual methods
.method public dismissHelpDialog()V
    .locals 1

    .prologue
    .line 147
    invoke-virtual {p0}, Lcom/android/launcher2/guide/ChangeWallpaperGuider;->dismissShowHelpDialog_firstStep()V

    .line 148
    invoke-virtual {p0}, Lcom/android/launcher2/guide/ChangeWallpaperGuider;->dismissShowHelpDialog_step1()V

    .line 149
    const/4 v0, 0x0

    sput-object v0, Lcom/android/launcher2/guide/GuideFragment;->mGuider:Lcom/android/launcher2/guide/GuiderLifecycleListener;

    .line 150
    return-void
.end method

.method public dismissShowHelpDialog_firstStep()V
    .locals 5

    .prologue
    .line 153
    sget-boolean v3, Lcom/android/launcher2/guide/ChangeWallpaperGuider;->isChangeWallpaperDialog1Visible:Z

    if-nez v3, :cond_1

    .line 166
    :cond_0
    :goto_0
    return-void

    .line 158
    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher2/guide/ChangeWallpaperGuider;->getActivity()Landroid/app/Activity;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/Launcher;

    invoke-virtual {v3}, Lcom/android/launcher2/Launcher;->getHomeView()Lcom/android/launcher2/HomeView;

    move-result-object v2

    .line 159
    .local v2, "homeView":Lcom/android/launcher2/HomeView;
    invoke-virtual {p0}, Lcom/android/launcher2/guide/ChangeWallpaperGuider;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/Launcher;

    .line 160
    .local v0, "act":Landroid/app/Activity;
    if-eqz v2, :cond_0

    .line 161
    invoke-static {v0}, Lcom/android/launcher2/guide/GuideFragment;->findMainView(Landroid/app/Activity;)Landroid/view/ViewGroup;

    move-result-object v3

    sput-object v3, Lcom/android/launcher2/guide/ChangeWallpaperGuider;->layout:Landroid/view/ViewGroup;

    .line 162
    sget-object v3, Lcom/android/launcher2/guide/ChangeWallpaperGuider;->layout:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 163
    .local v1, "childcount":I
    sget-object v3, Lcom/android/launcher2/guide/ChangeWallpaperGuider;->layout:Landroid/view/ViewGroup;

    add-int/lit8 v4, v1, -0x1

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->removeViewAt(I)V

    .line 164
    const/4 v3, 0x0

    sput-boolean v3, Lcom/android/launcher2/guide/ChangeWallpaperGuider;->isChangeWallpaperDialog1Visible:Z

    goto :goto_0
.end method

.method public dismissShowHelpDialog_step1()V
    .locals 2

    .prologue
    .line 169
    sget-boolean v1, Lcom/android/launcher2/guide/ChangeWallpaperGuider;->isChangeWallpaperDialog2Visible:Z

    if-eqz v1, :cond_0

    .line 170
    const/4 v1, 0x0

    sput-boolean v1, Lcom/android/launcher2/guide/ChangeWallpaperGuider;->isChangeWallpaperDialog2Visible:Z

    .line 171
    const/4 v0, 0x0

    .line 172
    .local v0, "mGuider":Lcom/android/launcher2/guide/GuiderLifecycleListener;
    new-instance v0, Lcom/android/launcher2/guide/ViewAppsGuider;

    .end local v0    # "mGuider":Lcom/android/launcher2/guide/GuiderLifecycleListener;
    invoke-virtual {p0}, Lcom/android/launcher2/guide/ChangeWallpaperGuider;->getActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/Launcher;

    invoke-direct {v0, v1}, Lcom/android/launcher2/guide/ViewAppsGuider;-><init>(Landroid/app/Activity;)V

    .line 173
    .restart local v0    # "mGuider":Lcom/android/launcher2/guide/GuiderLifecycleListener;
    invoke-interface {v0}, Lcom/android/launcher2/guide/GuiderLifecycleListener;->dismissHelpDialog()V

    .line 175
    .end local v0    # "mGuider":Lcom/android/launcher2/guide/GuiderLifecycleListener;
    :cond_0
    return-void
.end method

.method public bridge synthetic finish()V
    .locals 0

    .prologue
    .line 42
    invoke-super {p0}, Lcom/android/launcher2/guide/GuiderBase;->finish()V

    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 181
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 131
    invoke-virtual {p0}, Lcom/android/launcher2/guide/ChangeWallpaperGuider;->dismissHelpDialog()V

    .line 132
    sget v0, Lcom/android/launcher2/guide/GuideFragment;->sHelpHubStepNumber:I

    packed-switch v0, :pswitch_data_0

    .line 143
    :goto_0
    return-void

    .line 135
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/launcher2/guide/ChangeWallpaperGuider;->showHelpDialog()V

    goto :goto_0

    .line 138
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/launcher2/guide/ChangeWallpaperGuider;->showHelpDialog_step1()V

    goto :goto_0

    .line 132
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
    .line 109
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 115
    return-void
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 127
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 121
    return-void
.end method

.method public bridge synthetic onSwitcherChanged(Landroid/widget/CompoundButton;Z)Z
    .locals 1
    .param p1, "x0"    # Landroid/widget/CompoundButton;
    .param p2, "x1"    # Z

    .prologue
    .line 42
    invoke-super {p0, p1, p2}, Lcom/android/launcher2/guide/GuiderBase;->onSwitcherChanged(Landroid/widget/CompoundButton;Z)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic showCompleteDialog()V
    .locals 0

    .prologue
    .line 42
    invoke-super {p0}, Lcom/android/launcher2/guide/GuiderBase;->showCompleteDialog()V

    return-void
.end method

.method public showHelpDialog()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    .line 59
    sget-boolean v6, Lcom/android/launcher2/guide/ChangeWallpaperGuider;->isChangeWallpaperDialog1Visible:Z

    if-eqz v6, :cond_1

    .line 89
    :cond_0
    :goto_0
    return-void

    .line 63
    :cond_1
    sput v8, Lcom/android/launcher2/guide/GuideFragment;->sHelpHubStepNumber:I

    .line 64
    invoke-virtual {p0}, Lcom/android/launcher2/guide/ChangeWallpaperGuider;->getActivity()Landroid/app/Activity;

    move-result-object v6

    check-cast v6, Lcom/android/launcher2/Launcher;

    invoke-virtual {v6}, Lcom/android/launcher2/Launcher;->getHomeView()Lcom/android/launcher2/HomeView;

    move-result-object v2

    .line 65
    .local v2, "homeView":Lcom/android/launcher2/HomeView;
    invoke-virtual {p0}, Lcom/android/launcher2/guide/ChangeWallpaperGuider;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/Launcher;

    .line 66
    .local v0, "act":Landroid/app/Activity;
    if-eqz v2, :cond_0

    .line 67
    invoke-static {v0}, Lcom/android/launcher2/guide/GuideFragment;->findMainView(Landroid/app/Activity;)Landroid/view/ViewGroup;

    move-result-object v6

    sput-object v6, Lcom/android/launcher2/guide/ChangeWallpaperGuider;->layout:Landroid/view/ViewGroup;

    .line 68
    const-string v6, "layout_inflater"

    invoke-virtual {v0, v6}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/LayoutInflater;

    .line 69
    .local v3, "inflater":Landroid/view/LayoutInflater;
    const v6, 0x7f03000f

    sget-object v7, Lcom/android/launcher2/guide/ChangeWallpaperGuider;->layout:Landroid/view/ViewGroup;

    invoke-virtual {v3, v6, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v6

    sput-object v6, Lcom/android/launcher2/guide/ChangeWallpaperGuider;->menuLayout:Landroid/view/View;

    .line 70
    sput v8, Lcom/android/launcher2/Launcher;->changeWallpaperStatus:I

    .line 71
    sget-object v6, Lcom/android/launcher2/guide/ChangeWallpaperGuider;->menuLayout:Landroid/view/View;

    const v7, 0x7f0f001e

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    .line 72
    .local v5, "up_pointer":Landroid/widget/ImageView;
    invoke-virtual {v5}, Landroid/widget/ImageView;->bringToFront()V

    .line 74
    sget-object v6, Lcom/android/launcher2/guide/ChangeWallpaperGuider;->menuLayout:Landroid/view/View;

    const v7, 0x7f0f003d

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    iput-object v6, p0, Lcom/android/launcher2/guide/ChangeWallpaperGuider;->mGoalAnimationView:Landroid/view/View;

    .line 75
    new-instance v1, Lcom/android/launcher2/guide/HelpAnimatedDialog;

    iget-object v6, p0, Lcom/android/launcher2/guide/ChangeWallpaperGuider;->mGoalAnimationView:Landroid/view/View;

    invoke-direct {v1, v0, v6}, Lcom/android/launcher2/guide/HelpAnimatedDialog;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 76
    .local v1, "animdialog":Lcom/android/launcher2/guide/HelpAnimatedDialog;
    invoke-virtual {v2}, Lcom/android/launcher2/HomeView;->addHelpAppPage()V

    .line 77
    sput-boolean v8, Lcom/android/launcher2/guide/ChangeWallpaperGuider;->isChangeWallpaperDialog1Visible:Z

    .line 78
    sget-object v6, Lcom/android/launcher2/guide/ChangeWallpaperGuider;->menuLayout:Landroid/view/View;

    const v7, 0x7f0f001d

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/RelativeLayout;

    .line 79
    .local v4, "textBox":Landroid/widget/RelativeLayout;
    new-instance v6, Lcom/android/launcher2/guide/ChangeWallpaperGuider$1;

    invoke-direct {v6, p0, v4}, Lcom/android/launcher2/guide/ChangeWallpaperGuider$1;-><init>(Lcom/android/launcher2/guide/ChangeWallpaperGuider;Landroid/widget/RelativeLayout;)V

    invoke-virtual {v4, v6}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 85
    sget-object v6, Lcom/android/launcher2/guide/ChangeWallpaperGuider;->layout:Landroid/view/ViewGroup;

    invoke-virtual {v6}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v6

    const v7, 0x7f1000b2

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/widget/RelativeLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 86
    invoke-virtual {v1}, Lcom/android/launcher2/guide/HelpAnimatedDialog;->start()V

    .line 87
    const v6, 0x3f19999a    # 0.6f

    const v7, 0x3dcccccd    # 0.1f

    invoke-virtual {v1, v6, v7, v4}, Lcom/android/launcher2/guide/HelpAnimatedDialog;->startZoom(FFLandroid/view/View;)V

    goto/16 :goto_0
.end method

.method public showHelpDialog_step1()V
    .locals 4

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 93
    sget-boolean v1, Lcom/android/launcher2/guide/ChangeWallpaperGuider;->isChangeWallpaperDialog2Visible:Z

    if-nez v1, :cond_0

    sget v1, Lcom/android/launcher2/Launcher;->changeWallpaperStatus:I

    if-le v1, v3, :cond_1

    .line 103
    :cond_0
    :goto_0
    return-void

    .line 96
    :cond_1
    sput v3, Lcom/android/launcher2/guide/GuideFragment;->sHelpHubStepNumber:I

    .line 98
    sput-boolean v2, Lcom/android/launcher2/guide/ChangeWallpaperGuider;->isChangeWallpaperDialog2Visible:Z

    .line 99
    sput-boolean v2, Lcom/android/launcher2/guide/GuideFragment;->isViewApps:Z

    .line 100
    const/4 v0, 0x0

    .line 101
    .local v0, "mGuider":Lcom/android/launcher2/guide/GuiderLifecycleListener;
    new-instance v0, Lcom/android/launcher2/guide/ViewAppsGuider;

    .end local v0    # "mGuider":Lcom/android/launcher2/guide/GuiderLifecycleListener;
    invoke-virtual {p0}, Lcom/android/launcher2/guide/ChangeWallpaperGuider;->getActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/Launcher;

    invoke-direct {v0, v1}, Lcom/android/launcher2/guide/ViewAppsGuider;-><init>(Landroid/app/Activity;)V

    .line 102
    .restart local v0    # "mGuider":Lcom/android/launcher2/guide/GuiderLifecycleListener;
    invoke-interface {v0}, Lcom/android/launcher2/guide/GuiderLifecycleListener;->showHelpDialog()V

    goto :goto_0
.end method
