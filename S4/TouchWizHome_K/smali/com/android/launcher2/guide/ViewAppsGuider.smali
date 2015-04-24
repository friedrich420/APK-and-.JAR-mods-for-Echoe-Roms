.class public Lcom/android/launcher2/guide/ViewAppsGuider;
.super Lcom/android/launcher2/guide/GuiderBase;
.source "ViewAppsGuider.java"

# interfaces
.implements Lcom/android/launcher2/guide/GuiderLifecycleListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "ViewAppsGuider"

.field static image:Landroid/widget/ImageView;

.field static layout:Landroid/view/ViewGroup;

.field static menuLayout:Landroid/view/View;


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mGoalAnimationView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lcom/android/launcher2/guide/GuiderBase;-><init>(Landroid/app/Activity;)V

    .line 53
    iput-object p1, p0, Lcom/android/launcher2/guide/ViewAppsGuider;->mActivity:Landroid/app/Activity;

    .line 54
    const-string v0, "ViewAppsGuider"

    const-string v1, "Viewappsguider"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    return-void
.end method

.method private isPortOrientation()Z
    .locals 4

    .prologue
    .line 452
    iget-object v2, p0, Lcom/android/launcher2/guide/ViewAppsGuider;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 453
    .local v0, "display":Landroid/view/Display;
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v2

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v3

    if-ge v2, v3, :cond_0

    const/4 v1, 0x1

    .line 454
    .local v1, "isPortOrientation":Z
    :goto_0
    return v1

    .line 453
    .end local v1    # "isPortOrientation":Z
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public dismissHelpDialog()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 93
    invoke-virtual {p0}, Lcom/android/launcher2/guide/ViewAppsGuider;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/Launcher;

    .line 94
    .local v0, "act":Landroid/app/Activity;
    sget-boolean v3, Lcom/android/launcher2/guide/GuideFragment;->isViewAppsDialogDismissed:Z

    if-nez v3, :cond_2

    .line 95
    invoke-virtual {p0}, Lcom/android/launcher2/guide/ViewAppsGuider;->getActivity()Landroid/app/Activity;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/Launcher;

    invoke-virtual {v3}, Lcom/android/launcher2/Launcher;->getHomeView()Lcom/android/launcher2/HomeView;

    move-result-object v2

    .line 96
    .local v2, "homeView":Lcom/android/launcher2/HomeView;
    if-eqz v2, :cond_2

    .line 97
    check-cast v0, Lcom/android/launcher2/Launcher;

    .end local v0    # "act":Landroid/app/Activity;
    invoke-static {v0}, Lcom/android/launcher2/guide/GuideFragment;->findMainView(Landroid/app/Activity;)Landroid/view/ViewGroup;

    move-result-object v3

    sput-object v3, Lcom/android/launcher2/guide/ViewAppsGuider;->layout:Landroid/view/ViewGroup;

    .line 98
    sput-boolean v5, Lcom/android/launcher2/guide/GuideFragment;->isViewAppsDialogDismissed:Z

    .line 99
    sget-object v3, Lcom/android/launcher2/guide/ViewAppsGuider;->layout:Landroid/view/ViewGroup;

    if-nez v3, :cond_0

    .line 111
    .end local v2    # "homeView":Lcom/android/launcher2/HomeView;
    :goto_0
    return-void

    .line 102
    .restart local v2    # "homeView":Lcom/android/launcher2/HomeView;
    :cond_0
    sget-object v3, Lcom/android/launcher2/guide/ViewAppsGuider;->layout:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 103
    .local v1, "childcount":I
    if-eqz v1, :cond_1

    .line 104
    sget-object v3, Lcom/android/launcher2/guide/ViewAppsGuider;->layout:Landroid/view/ViewGroup;

    add-int/lit8 v4, v1, -0x1

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->removeViewAt(I)V

    .line 106
    :cond_1
    sput-boolean v5, Lcom/android/launcher2/guide/GuideFragment;->isViewAppsDialogDismissed:Z

    .line 107
    const/4 v3, 0x0

    sput-object v3, Lcom/android/launcher2/guide/GuideFragment;->mGuider:Lcom/android/launcher2/guide/GuiderLifecycleListener;

    .line 110
    .end local v1    # "childcount":I
    .end local v2    # "homeView":Lcom/android/launcher2/HomeView;
    :cond_2
    const/4 v3, 0x0

    sput-boolean v3, Lcom/android/launcher2/guide/GuideFragment;->isViewApps:Z

    goto :goto_0
.end method

.method public bridge synthetic finish()V
    .locals 0

    .prologue
    .line 43
    invoke-super {p0}, Lcom/android/launcher2/guide/GuiderBase;->finish()V

    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 116
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 78
    invoke-virtual {p0}, Lcom/android/launcher2/guide/ViewAppsGuider;->dismissHelpDialog()V

    .line 79
    sget v0, Lcom/android/launcher2/guide/GuideFragment;->sHelpHubStepNumber:I

    packed-switch v0, :pswitch_data_0

    .line 88
    :goto_0
    return-void

    .line 82
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/launcher2/guide/ViewAppsGuider;->showHelpDialog()V

    goto :goto_0

    .line 79
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 59
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
    .line 74
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 69
    return-void
.end method

.method public bridge synthetic onSwitcherChanged(Landroid/widget/CompoundButton;Z)Z
    .locals 1
    .param p1, "x0"    # Landroid/widget/CompoundButton;
    .param p2, "x1"    # Z

    .prologue
    .line 43
    invoke-super {p0, p1, p2}, Lcom/android/launcher2/guide/GuiderBase;->onSwitcherChanged(Landroid/widget/CompoundButton;Z)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic showCompleteDialog()V
    .locals 0

    .prologue
    .line 43
    invoke-super {p0}, Lcom/android/launcher2/guide/GuiderBase;->showCompleteDialog()V

    return-void
.end method

.method public showHelpDialog()V
    .locals 29

    .prologue
    .line 119
    sget-object v26, Lcom/android/launcher2/guide/GuideFragment;->GMode:Ljava/lang/String;

    const-string v27, "change_wallpaper"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-nez v26, :cond_0

    sget-object v26, Lcom/android/launcher2/guide/GuideFragment;->GMode:Ljava/lang/String;

    const-string v27, "add_widgets"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-nez v26, :cond_0

    .line 120
    const/16 v26, 0x1

    sput v26, Lcom/android/launcher2/guide/GuideFragment;->sHelpHubStepNumber:I

    .line 121
    :cond_0
    const/4 v14, 0x0

    .line 130
    .local v14, "noOfHotSeatItems":I
    const/16 v26, 0x0

    sput-boolean v26, Lcom/android/launcher2/guide/GuideFragment;->isViewAppsDialogDismissed:Z

    .line 131
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/guide/ViewAppsGuider;->getActivity()Landroid/app/Activity;

    move-result-object v26

    check-cast v26, Lcom/android/launcher2/Launcher;

    invoke-virtual/range {v26 .. v26}, Lcom/android/launcher2/Launcher;->getHomeView()Lcom/android/launcher2/HomeView;

    move-result-object v8

    .line 132
    .local v8, "homeView":Lcom/android/launcher2/HomeView;
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/guide/ViewAppsGuider;->getActivity()Landroid/app/Activity;

    move-result-object v4

    check-cast v4, Lcom/android/launcher2/Launcher;

    .line 133
    .local v4, "act":Landroid/app/Activity;
    if-eqz v8, :cond_2

    .line 134
    invoke-static {v4}, Lcom/android/launcher2/guide/GuideFragment;->findMainView(Landroid/app/Activity;)Landroid/view/ViewGroup;

    move-result-object v26

    sput-object v26, Lcom/android/launcher2/guide/ViewAppsGuider;->layout:Landroid/view/ViewGroup;

    .line 135
    const-string v26, "layout_inflater"

    move-object/from16 v0, v26

    invoke-virtual {v4, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/LayoutInflater;

    .line 136
    .local v9, "inflater":Landroid/view/LayoutInflater;
    const v26, 0x7f030018

    sget-object v27, Lcom/android/launcher2/guide/ViewAppsGuider;->layout:Landroid/view/ViewGroup;

    const/16 v28, 0x1

    move/from16 v0, v26

    move-object/from16 v1, v27

    move/from16 v2, v28

    invoke-virtual {v9, v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v26

    sput-object v26, Lcom/android/launcher2/guide/ViewAppsGuider;->menuLayout:Landroid/view/View;

    .line 138
    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    .line 139
    .local v20, "resources":Landroid/content/res/Resources;
    const v26, 0x7f0e01e5

    move-object/from16 v0, v20

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v22

    .line 141
    .local v22, "textBottomMargin":I
    sget-object v26, Lcom/android/launcher2/guide/ViewAppsGuider;->menuLayout:Landroid/view/View;

    const v27, 0x7f0f003e

    invoke-virtual/range {v26 .. v27}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v26

    check-cast v26, Landroid/widget/ImageView;

    sput-object v26, Lcom/android/launcher2/guide/ViewAppsGuider;->image:Landroid/widget/ImageView;

    .line 142
    sget-object v26, Lcom/android/launcher2/guide/ViewAppsGuider;->menuLayout:Landroid/view/View;

    const v27, 0x7f0f003e

    invoke-virtual/range {v26 .. v27}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v26

    check-cast v26, Landroid/widget/ImageView;

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/launcher2/guide/ViewAppsGuider;->mGoalAnimationView:Landroid/view/View;

    .line 143
    new-instance v5, Lcom/android/launcher2/guide/HelpAnimatedDialog;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/guide/ViewAppsGuider;->mGoalAnimationView:Landroid/view/View;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-direct {v5, v4, v0}, Lcom/android/launcher2/guide/HelpAnimatedDialog;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 144
    .local v5, "animdialog":Lcom/android/launcher2/guide/HelpAnimatedDialog;
    sget-object v26, Lcom/android/launcher2/guide/ViewAppsGuider;->menuLayout:Landroid/view/View;

    const v27, 0x7f0f0040

    invoke-virtual/range {v26 .. v27}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/ImageView;

    .line 146
    .local v16, "pointerImage":Landroid/widget/ImageView;
    new-instance v10, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v26, -0x2

    const/16 v27, -0x2

    move/from16 v0, v26

    move/from16 v1, v27

    invoke-direct {v10, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 147
    .local v10, "lpimage":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v26, 0xb

    move/from16 v0, v26

    invoke-virtual {v10, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 149
    new-instance v11, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v26, -0x2

    const/16 v27, -0x2

    move/from16 v0, v26

    move/from16 v1, v27

    invoke-direct {v11, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 151
    .local v11, "lppointer":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v26, 0xb

    move/from16 v0, v26

    invoke-virtual {v11, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 153
    sget-object v26, Lcom/android/launcher2/guide/ViewAppsGuider;->menuLayout:Landroid/view/View;

    const v27, 0x7f0f001f

    invoke-virtual/range {v26 .. v27}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 154
    .local v7, "helpText":Landroid/widget/TextView;
    new-instance v12, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v26, -0x2

    const/16 v27, -0x2

    move/from16 v0, v26

    move/from16 v1, v27

    invoke-direct {v12, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 155
    .local v12, "lptext":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v26, 0xb

    move/from16 v0, v26

    invoke-virtual {v12, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 156
    invoke-virtual {v8}, Lcom/android/launcher2/HomeView;->getHotseatItemcount()I

    move-result v14

    .line 157
    sget-object v26, Lcom/android/launcher2/guide/GuideFragment;->GMode:Ljava/lang/String;

    const-string v27, "add_widgets"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_5

    .line 158
    const v26, 0x7f0e025c

    move-object/from16 v0, v20

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v24

    .line 159
    .local v24, "textRightMargin":I
    const v26, 0x7f0e025d

    move-object/from16 v0, v20

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v22

    .line 160
    const/16 v26, 0xc

    move/from16 v0, v26

    invoke-virtual {v12, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 161
    const/16 v26, 0x15

    move/from16 v0, v26

    invoke-virtual {v12, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 162
    const/16 v26, 0x0

    const/16 v27, 0x0

    move/from16 v0, v26

    move/from16 v1, v27

    move/from16 v2, v24

    move/from16 v3, v22

    invoke-virtual {v12, v0, v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->setMarginsRelative(IIII)V

    .line 163
    invoke-virtual {v7, v12}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 164
    const v26, 0x7f1000ad

    move-object/from16 v0, v20

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 165
    const v26, 0x7f0e003c

    move-object/from16 v0, v20

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    .line 166
    .local v6, "bottommargin":I
    const v26, 0x7f0e003d

    move-object/from16 v0, v20

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v15

    .line 167
    .local v15, "pointerBottomMargin":I
    const/16 v26, 0xc

    move/from16 v0, v26

    invoke-virtual {v10, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 168
    const/16 v26, 0x15

    move/from16 v0, v26

    invoke-virtual {v10, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 169
    const/16 v26, 0xc

    move/from16 v0, v26

    invoke-virtual {v11, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 170
    const/16 v26, 0x15

    move/from16 v0, v26

    invoke-virtual {v11, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 171
    sget-boolean v26, Lcom/android/launcher2/Launcher;->CSCFEATURE_LAUNCHER_THEME_ENABLE:Z

    if-eqz v26, :cond_3

    .line 172
    const v26, 0x7f0e00aa

    move-object/from16 v0, v20

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v17

    .line 175
    .local v17, "pointerRightMargin":I
    :goto_0
    const/16 v26, 0x0

    const/16 v27, 0x0

    move/from16 v0, v26

    move/from16 v1, v27

    move/from16 v2, v17

    invoke-virtual {v11, v0, v1, v2, v15}, Landroid/widget/RelativeLayout$LayoutParams;->setMarginsRelative(IIII)V

    .line 176
    move-object/from16 v0, v16

    invoke-virtual {v0, v11}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 177
    sget-boolean v26, Lcom/android/launcher2/Launcher;->CSCFEATURE_LAUNCHER_THEME_ENABLE:Z

    if-eqz v26, :cond_4

    .line 178
    const v26, 0x7f0e00ab

    move-object/from16 v0, v20

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v21

    .line 181
    .local v21, "rightmargin":I
    :goto_1
    const/16 v26, 0x0

    const/16 v27, 0x0

    move/from16 v0, v26

    move/from16 v1, v27

    move/from16 v2, v21

    invoke-virtual {v10, v0, v1, v2, v6}, Landroid/widget/RelativeLayout$LayoutParams;->setMarginsRelative(IIII)V

    .line 182
    sget-object v26, Lcom/android/launcher2/guide/ViewAppsGuider;->image:Landroid/widget/ImageView;

    move-object/from16 v0, v26

    invoke-virtual {v0, v10}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 434
    .end local v6    # "bottommargin":I
    .end local v15    # "pointerBottomMargin":I
    .end local v17    # "pointerRightMargin":I
    .end local v21    # "rightmargin":I
    .end local v24    # "textRightMargin":I
    :cond_1
    :goto_2
    sget-object v26, Lcom/android/launcher2/guide/ViewAppsGuider;->menuLayout:Landroid/view/View;

    const v27, 0x7f0f001d

    invoke-virtual/range {v26 .. v27}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v23

    check-cast v23, Landroid/widget/RelativeLayout;

    .line 435
    .local v23, "textBox":Landroid/widget/RelativeLayout;
    invoke-virtual {v5}, Lcom/android/launcher2/guide/HelpAnimatedDialog;->start()V

    .line 436
    const v26, 0x3f4ccccd    # 0.8f

    const v27, 0x3f4ccccd    # 0.8f

    move/from16 v0, v26

    move/from16 v1, v27

    move-object/from16 v2, v23

    invoke-virtual {v5, v0, v1, v2}, Lcom/android/launcher2/guide/HelpAnimatedDialog;->startZoom(FFLandroid/view/View;)V

    .line 440
    .end local v5    # "animdialog":Lcom/android/launcher2/guide/HelpAnimatedDialog;
    .end local v7    # "helpText":Landroid/widget/TextView;
    .end local v9    # "inflater":Landroid/view/LayoutInflater;
    .end local v10    # "lpimage":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v11    # "lppointer":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v12    # "lptext":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v16    # "pointerImage":Landroid/widget/ImageView;
    .end local v20    # "resources":Landroid/content/res/Resources;
    .end local v22    # "textBottomMargin":I
    .end local v23    # "textBox":Landroid/widget/RelativeLayout;
    :cond_2
    return-void

    .line 174
    .restart local v5    # "animdialog":Lcom/android/launcher2/guide/HelpAnimatedDialog;
    .restart local v6    # "bottommargin":I
    .restart local v7    # "helpText":Landroid/widget/TextView;
    .restart local v9    # "inflater":Landroid/view/LayoutInflater;
    .restart local v10    # "lpimage":Landroid/widget/RelativeLayout$LayoutParams;
    .restart local v11    # "lppointer":Landroid/widget/RelativeLayout$LayoutParams;
    .restart local v12    # "lptext":Landroid/widget/RelativeLayout$LayoutParams;
    .restart local v15    # "pointerBottomMargin":I
    .restart local v16    # "pointerImage":Landroid/widget/ImageView;
    .restart local v20    # "resources":Landroid/content/res/Resources;
    .restart local v22    # "textBottomMargin":I
    .restart local v24    # "textRightMargin":I
    :cond_3
    const v26, 0x7f0e003b

    move-object/from16 v0, v20

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v17

    .restart local v17    # "pointerRightMargin":I
    goto :goto_0

    .line 180
    :cond_4
    const v26, 0x7f0e003e

    move-object/from16 v0, v20

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v21

    .restart local v21    # "rightmargin":I
    goto :goto_1

    .line 184
    .end local v6    # "bottommargin":I
    .end local v15    # "pointerBottomMargin":I
    .end local v17    # "pointerRightMargin":I
    .end local v21    # "rightmargin":I
    .end local v24    # "textRightMargin":I
    :cond_5
    sget-object v26, Lcom/android/launcher2/guide/GuideFragment;->GMode:Ljava/lang/String;

    const-string v27, "change_wallpaper"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_8

    .line 185
    const v26, 0x7f0e0046

    move-object/from16 v0, v20

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v22

    .line 186
    const v26, 0x7f0e0044

    move-object/from16 v0, v20

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v24

    .line 187
    .restart local v24    # "textRightMargin":I
    const/16 v26, 0xc

    move/from16 v0, v26

    invoke-virtual {v12, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 188
    const/16 v26, 0x14

    move/from16 v0, v26

    invoke-virtual {v12, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 189
    const/16 v26, 0x0

    const/16 v27, 0x0

    move/from16 v0, v24

    move/from16 v1, v26

    move/from16 v2, v27

    move/from16 v3, v22

    invoke-virtual {v12, v0, v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 190
    move/from16 v0, v24

    invoke-virtual {v12, v0}, Landroid/widget/RelativeLayout$LayoutParams;->setMarginStart(I)V

    .line 191
    const v26, 0x7f10009d

    move/from16 v0, v26

    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setText(I)V

    .line 192
    invoke-virtual {v7, v12}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 193
    const v26, 0x7f0e0041

    move-object/from16 v0, v20

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    .line 194
    .restart local v6    # "bottommargin":I
    const v26, 0x7f0e0042

    move-object/from16 v0, v20

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v15

    .line 195
    .restart local v15    # "pointerBottomMargin":I
    const/16 v26, 0xc

    move/from16 v0, v26

    invoke-virtual {v10, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 196
    const/16 v26, 0xc

    move/from16 v0, v26

    invoke-virtual {v11, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 197
    const/16 v26, 0x15

    move/from16 v0, v26

    invoke-virtual {v11, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 198
    sget-boolean v26, Lcom/android/launcher2/Launcher;->CSCFEATURE_LAUNCHER_THEME_ENABLE:Z

    if-eqz v26, :cond_6

    .line 199
    const v26, 0x7f0e00a8

    move-object/from16 v0, v20

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v17

    .line 202
    .restart local v17    # "pointerRightMargin":I
    :goto_3
    const/16 v26, 0x0

    const/16 v27, 0x0

    move/from16 v0, v26

    move/from16 v1, v27

    move/from16 v2, v17

    invoke-virtual {v11, v0, v1, v2, v15}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 203
    move/from16 v0, v17

    invoke-virtual {v11, v0}, Landroid/widget/RelativeLayout$LayoutParams;->setMarginEnd(I)V

    .line 204
    move-object/from16 v0, v16

    invoke-virtual {v0, v11}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 205
    sget-boolean v26, Lcom/android/launcher2/Launcher;->CSCFEATURE_LAUNCHER_THEME_ENABLE:Z

    if-eqz v26, :cond_7

    .line 206
    const v26, 0x7f0e00a9

    move-object/from16 v0, v20

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v21

    .line 209
    .restart local v21    # "rightmargin":I
    :goto_4
    const/16 v26, 0x15

    move/from16 v0, v26

    invoke-virtual {v10, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 210
    const/16 v26, 0x0

    const/16 v27, 0x0

    move/from16 v0, v26

    move/from16 v1, v27

    move/from16 v2, v21

    invoke-virtual {v10, v0, v1, v2, v6}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 211
    move/from16 v0, v21

    invoke-virtual {v10, v0}, Landroid/widget/RelativeLayout$LayoutParams;->setMarginEnd(I)V

    .line 212
    sget-object v26, Lcom/android/launcher2/guide/ViewAppsGuider;->image:Landroid/widget/ImageView;

    move-object/from16 v0, v26

    invoke-virtual {v0, v10}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_2

    .line 201
    .end local v17    # "pointerRightMargin":I
    .end local v21    # "rightmargin":I
    :cond_6
    const v26, 0x7f0e0040

    move-object/from16 v0, v20

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v17

    .restart local v17    # "pointerRightMargin":I
    goto :goto_3

    .line 208
    :cond_7
    const v26, 0x7f0e0043

    move-object/from16 v0, v20

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v21

    .restart local v21    # "rightmargin":I
    goto :goto_4

    .line 214
    .end local v6    # "bottommargin":I
    .end local v15    # "pointerBottomMargin":I
    .end local v17    # "pointerRightMargin":I
    .end local v21    # "rightmargin":I
    .end local v24    # "textRightMargin":I
    :cond_8
    invoke-direct/range {p0 .. p0}, Lcom/android/launcher2/guide/ViewAppsGuider;->isPortOrientation()Z

    move-result v26

    if-nez v26, :cond_9

    invoke-virtual/range {v20 .. v20}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v26

    move-object/from16 v0, v26

    iget v0, v0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    move/from16 v26, v0

    const/16 v27, 0x320

    move/from16 v0, v26

    move/from16 v1, v27

    if-lt v0, v1, :cond_a

    .line 216
    :cond_9
    const v26, 0x7f0e01e4

    move-object/from16 v0, v20

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    .line 217
    .restart local v6    # "bottommargin":I
    const v26, 0x7f0e01e6

    move-object/from16 v0, v20

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v15

    .line 218
    .restart local v15    # "pointerBottomMargin":I
    const/16 v26, 0xc

    move/from16 v0, v26

    invoke-virtual {v10, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 219
    const/16 v26, 0xc

    move/from16 v0, v26

    invoke-virtual {v11, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 221
    packed-switch v14, :pswitch_data_0

    goto/16 :goto_2

    .line 223
    :pswitch_0
    const-string v26, "ViewAppsGuider"

    const-string v27, "HotSeatItems Cannot be null"

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    const v26, 0x7f0e002c

    move-object/from16 v0, v20

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v24

    .line 225
    .restart local v24    # "textRightMargin":I
    const v26, 0x7f0e01e5

    move-object/from16 v0, v20

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v22

    .line 226
    const/16 v26, 0xc

    move/from16 v0, v26

    invoke-virtual {v12, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 227
    const/16 v26, 0x15

    move/from16 v0, v26

    invoke-virtual {v12, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 228
    const/16 v26, 0x0

    const/16 v27, 0x0

    move/from16 v0, v26

    move/from16 v1, v27

    move/from16 v2, v24

    move/from16 v3, v22

    invoke-virtual {v12, v0, v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 229
    move/from16 v0, v24

    invoke-virtual {v12, v0}, Landroid/widget/RelativeLayout$LayoutParams;->setMarginEnd(I)V

    .line 230
    invoke-virtual {v7, v12}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 231
    const v26, 0x7f0e01f1

    move-object/from16 v0, v20

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v17

    .line 232
    .restart local v17    # "pointerRightMargin":I
    const/16 v26, 0x15

    move/from16 v0, v26

    invoke-virtual {v11, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 233
    const/16 v26, 0x0

    const/16 v27, 0x0

    move/from16 v0, v26

    move/from16 v1, v27

    move/from16 v2, v17

    invoke-virtual {v11, v0, v1, v2, v15}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 234
    move/from16 v0, v17

    invoke-virtual {v11, v0}, Landroid/widget/RelativeLayout$LayoutParams;->setMarginEnd(I)V

    .line 235
    move-object/from16 v0, v16

    invoke-virtual {v0, v11}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 236
    const v26, 0x7f0e01f0

    move-object/from16 v0, v20

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v21

    .line 237
    .restart local v21    # "rightmargin":I
    const/16 v26, 0x15

    move/from16 v0, v26

    invoke-virtual {v10, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 238
    const/16 v26, 0x0

    const/16 v27, 0x0

    move/from16 v0, v26

    move/from16 v1, v27

    move/from16 v2, v21

    invoke-virtual {v10, v0, v1, v2, v6}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 239
    move/from16 v0, v21

    invoke-virtual {v10, v0}, Landroid/widget/RelativeLayout$LayoutParams;->setMarginEnd(I)V

    .line 240
    sget-object v26, Lcom/android/launcher2/guide/ViewAppsGuider;->image:Landroid/widget/ImageView;

    move-object/from16 v0, v26

    invoke-virtual {v0, v10}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_2

    .line 244
    .end local v17    # "pointerRightMargin":I
    .end local v21    # "rightmargin":I
    .end local v24    # "textRightMargin":I
    :pswitch_1
    const v26, 0x7f0e002c

    move-object/from16 v0, v20

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v24

    .line 245
    .restart local v24    # "textRightMargin":I
    const v26, 0x7f0e01e5

    move-object/from16 v0, v20

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v22

    .line 246
    const/16 v26, 0xc

    move/from16 v0, v26

    invoke-virtual {v12, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 247
    const/16 v26, 0x0

    const/16 v27, 0x0

    move/from16 v0, v26

    move/from16 v1, v27

    move/from16 v2, v24

    move/from16 v3, v22

    invoke-virtual {v12, v0, v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 248
    invoke-virtual {v7, v12}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 250
    const v26, 0x7f0e01f1

    move-object/from16 v0, v20

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v17

    .line 251
    .restart local v17    # "pointerRightMargin":I
    const/16 v26, 0x0

    const/16 v27, 0x0

    move/from16 v0, v26

    move/from16 v1, v27

    move/from16 v2, v17

    invoke-virtual {v11, v0, v1, v2, v15}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 252
    move-object/from16 v0, v16

    invoke-virtual {v0, v11}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 253
    const v26, 0x7f0e01f0

    move-object/from16 v0, v20

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v21

    .line 254
    .restart local v21    # "rightmargin":I
    const/16 v26, 0x0

    const/16 v27, 0x0

    move/from16 v0, v26

    move/from16 v1, v27

    move/from16 v2, v21

    invoke-virtual {v10, v0, v1, v2, v6}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 255
    sget-object v26, Lcom/android/launcher2/guide/ViewAppsGuider;->image:Landroid/widget/ImageView;

    move-object/from16 v0, v26

    invoke-virtual {v0, v10}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_2

    .line 259
    .end local v17    # "pointerRightMargin":I
    .end local v21    # "rightmargin":I
    .end local v24    # "textRightMargin":I
    :pswitch_2
    const v26, 0x7f0e002d

    move-object/from16 v0, v20

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v24

    .line 260
    .restart local v24    # "textRightMargin":I
    const/16 v26, 0xc

    move/from16 v0, v26

    invoke-virtual {v12, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 261
    const/16 v26, 0x0

    const/16 v27, 0x0

    move/from16 v0, v26

    move/from16 v1, v27

    move/from16 v2, v24

    move/from16 v3, v22

    invoke-virtual {v12, v0, v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 262
    invoke-virtual {v7, v12}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 264
    const v26, 0x7f0e01ef

    move-object/from16 v0, v20

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v17

    .line 265
    .restart local v17    # "pointerRightMargin":I
    const/16 v26, 0x0

    const/16 v27, 0x0

    move/from16 v0, v26

    move/from16 v1, v27

    move/from16 v2, v17

    invoke-virtual {v11, v0, v1, v2, v15}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 266
    move-object/from16 v0, v16

    invoke-virtual {v0, v11}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 267
    const v26, 0x7f0e01ee

    move-object/from16 v0, v20

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v21

    .line 268
    .restart local v21    # "rightmargin":I
    const/16 v26, 0x0

    const/16 v27, 0x0

    move/from16 v0, v26

    move/from16 v1, v27

    move/from16 v2, v21

    invoke-virtual {v10, v0, v1, v2, v6}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 269
    sget-object v26, Lcom/android/launcher2/guide/ViewAppsGuider;->image:Landroid/widget/ImageView;

    move-object/from16 v0, v26

    invoke-virtual {v0, v10}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_2

    .line 273
    .end local v17    # "pointerRightMargin":I
    .end local v21    # "rightmargin":I
    .end local v24    # "textRightMargin":I
    :pswitch_3
    const v26, 0x7f0e025b

    move-object/from16 v0, v20

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v24

    .line 274
    .restart local v24    # "textRightMargin":I
    const/16 v26, 0xc

    move/from16 v0, v26

    invoke-virtual {v12, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 275
    const/16 v26, 0x0

    const/16 v27, 0x0

    move/from16 v0, v26

    move/from16 v1, v27

    move/from16 v2, v24

    move/from16 v3, v22

    invoke-virtual {v12, v0, v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 276
    invoke-virtual {v7, v12}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 278
    const v26, 0x7f0e01ed

    move-object/from16 v0, v20

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v17

    .line 279
    .restart local v17    # "pointerRightMargin":I
    const/16 v26, 0x0

    const/16 v27, 0x0

    move/from16 v0, v26

    move/from16 v1, v27

    move/from16 v2, v17

    invoke-virtual {v11, v0, v1, v2, v15}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 280
    move-object/from16 v0, v16

    invoke-virtual {v0, v11}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 281
    const v26, 0x7f0e01ec

    move-object/from16 v0, v20

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v21

    .line 282
    .restart local v21    # "rightmargin":I
    const/16 v26, 0x0

    const/16 v27, 0x0

    move/from16 v0, v26

    move/from16 v1, v27

    move/from16 v2, v21

    invoke-virtual {v10, v0, v1, v2, v6}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 283
    sget-object v26, Lcom/android/launcher2/guide/ViewAppsGuider;->image:Landroid/widget/ImageView;

    move-object/from16 v0, v26

    invoke-virtual {v0, v10}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_2

    .line 287
    .end local v17    # "pointerRightMargin":I
    .end local v21    # "rightmargin":I
    .end local v24    # "textRightMargin":I
    :pswitch_4
    const v26, 0x7f0e025b

    move-object/from16 v0, v20

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v24

    .line 288
    .restart local v24    # "textRightMargin":I
    const/16 v26, 0xc

    move/from16 v0, v26

    invoke-virtual {v12, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 289
    const/16 v26, 0x0

    const/16 v27, 0x0

    move/from16 v0, v26

    move/from16 v1, v27

    move/from16 v2, v24

    move/from16 v3, v22

    invoke-virtual {v12, v0, v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 290
    invoke-virtual {v7, v12}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 292
    const v26, 0x7f0e01eb

    move-object/from16 v0, v20

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v17

    .line 293
    .restart local v17    # "pointerRightMargin":I
    const/16 v26, 0x0

    const/16 v27, 0x0

    move/from16 v0, v26

    move/from16 v1, v27

    move/from16 v2, v17

    invoke-virtual {v11, v0, v1, v2, v15}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 294
    move-object/from16 v0, v16

    invoke-virtual {v0, v11}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 295
    const v26, 0x7f0e01ea

    move-object/from16 v0, v20

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v21

    .line 296
    .restart local v21    # "rightmargin":I
    const/16 v26, 0x0

    const/16 v27, 0x0

    move/from16 v0, v26

    move/from16 v1, v27

    move/from16 v2, v21

    invoke-virtual {v10, v0, v1, v2, v6}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 297
    sget-object v26, Lcom/android/launcher2/guide/ViewAppsGuider;->image:Landroid/widget/ImageView;

    move-object/from16 v0, v26

    invoke-virtual {v0, v10}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_2

    .line 301
    .end local v17    # "pointerRightMargin":I
    .end local v21    # "rightmargin":I
    .end local v24    # "textRightMargin":I
    :pswitch_5
    const v26, 0x7f0e025b

    move-object/from16 v0, v20

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v24

    .line 302
    .restart local v24    # "textRightMargin":I
    const/16 v26, 0xc

    move/from16 v0, v26

    invoke-virtual {v12, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 303
    const/16 v26, 0x0

    const/16 v27, 0x0

    move/from16 v0, v26

    move/from16 v1, v27

    move/from16 v2, v24

    move/from16 v3, v22

    invoke-virtual {v12, v0, v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 304
    invoke-virtual {v7, v12}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 306
    const v26, 0x7f0e01e9

    move-object/from16 v0, v20

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v17

    .line 307
    .restart local v17    # "pointerRightMargin":I
    const/16 v26, 0x0

    const/16 v27, 0x0

    move/from16 v0, v26

    move/from16 v1, v27

    move/from16 v2, v17

    invoke-virtual {v11, v0, v1, v2, v15}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 308
    move-object/from16 v0, v16

    invoke-virtual {v0, v11}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 309
    const v26, 0x7f0e01e8

    move-object/from16 v0, v20

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v21

    .line 310
    .restart local v21    # "rightmargin":I
    const/16 v26, 0x0

    const/16 v27, 0x0

    move/from16 v0, v26

    move/from16 v1, v27

    move/from16 v2, v21

    invoke-virtual {v10, v0, v1, v2, v6}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 311
    sget-object v26, Lcom/android/launcher2/guide/ViewAppsGuider;->image:Landroid/widget/ImageView;

    move-object/from16 v0, v26

    invoke-virtual {v0, v10}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_2

    .line 314
    .end local v17    # "pointerRightMargin":I
    .end local v21    # "rightmargin":I
    .end local v24    # "textRightMargin":I
    :pswitch_6
    const v26, 0x7f0e02b4

    move-object/from16 v0, v20

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v17

    .line 315
    .restart local v17    # "pointerRightMargin":I
    const/16 v26, 0x0

    const/16 v27, 0x0

    move/from16 v0, v26

    move/from16 v1, v27

    move/from16 v2, v17

    invoke-virtual {v11, v0, v1, v2, v15}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 316
    move-object/from16 v0, v16

    invoke-virtual {v0, v11}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 317
    const v26, 0x7f0e02b3

    move-object/from16 v0, v20

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v21

    .line 318
    .restart local v21    # "rightmargin":I
    const/16 v26, 0x0

    const/16 v27, 0x0

    move/from16 v0, v26

    move/from16 v1, v27

    move/from16 v2, v21

    invoke-virtual {v10, v0, v1, v2, v6}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 319
    sget-object v26, Lcom/android/launcher2/guide/ViewAppsGuider;->image:Landroid/widget/ImageView;

    move-object/from16 v0, v26

    invoke-virtual {v0, v10}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_2

    .line 322
    .end local v17    # "pointerRightMargin":I
    .end local v21    # "rightmargin":I
    :pswitch_7
    const v26, 0x7f0e02de

    move-object/from16 v0, v20

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v17

    .line 323
    .restart local v17    # "pointerRightMargin":I
    const/16 v26, 0x0

    const/16 v27, 0x0

    move/from16 v0, v26

    move/from16 v1, v27

    move/from16 v2, v17

    invoke-virtual {v11, v0, v1, v2, v15}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 324
    move-object/from16 v0, v16

    invoke-virtual {v0, v11}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 325
    const v26, 0x7f0e02dd

    move-object/from16 v0, v20

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v21

    .line 326
    .restart local v21    # "rightmargin":I
    const/16 v26, 0x0

    const/16 v27, 0x0

    move/from16 v0, v26

    move/from16 v1, v27

    move/from16 v2, v21

    invoke-virtual {v10, v0, v1, v2, v6}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 327
    sget-object v26, Lcom/android/launcher2/guide/ViewAppsGuider;->image:Landroid/widget/ImageView;

    move-object/from16 v0, v26

    invoke-virtual {v0, v10}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_2

    .line 330
    .end local v17    # "pointerRightMargin":I
    .end local v21    # "rightmargin":I
    :pswitch_8
    const v26, 0x7f0e02dc

    move-object/from16 v0, v20

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v17

    .line 331
    .restart local v17    # "pointerRightMargin":I
    const/16 v26, 0x0

    const/16 v27, 0x0

    move/from16 v0, v26

    move/from16 v1, v27

    move/from16 v2, v17

    invoke-virtual {v11, v0, v1, v2, v15}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 332
    move-object/from16 v0, v16

    invoke-virtual {v0, v11}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 333
    const v26, 0x7f0e02db

    move-object/from16 v0, v20

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v21

    .line 334
    .restart local v21    # "rightmargin":I
    const/16 v26, 0x0

    const/16 v27, 0x0

    move/from16 v0, v26

    move/from16 v1, v27

    move/from16 v2, v21

    invoke-virtual {v10, v0, v1, v2, v6}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 335
    sget-object v26, Lcom/android/launcher2/guide/ViewAppsGuider;->image:Landroid/widget/ImageView;

    move-object/from16 v0, v26

    invoke-virtual {v0, v10}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_2

    .line 338
    .end local v6    # "bottommargin":I
    .end local v15    # "pointerBottomMargin":I
    .end local v17    # "pointerRightMargin":I
    .end local v21    # "rightmargin":I
    :cond_a
    invoke-virtual/range {v20 .. v20}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v26

    move-object/from16 v0, v26

    iget v0, v0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    move/from16 v26, v0

    const/16 v27, 0x258

    move/from16 v0, v26

    move/from16 v1, v27

    if-lt v0, v1, :cond_1

    .line 341
    const/16 v26, 0xa

    move/from16 v0, v26

    invoke-virtual {v11, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 342
    const/16 v26, 0xa

    move/from16 v0, v26

    invoke-virtual {v11, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 343
    const-string v26, "ro.product.name"

    invoke-static/range {v26 .. v26}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 344
    .local v13, "mProductName":Ljava/lang/String;
    sget-object v26, Lcom/android/launcher2/guide/ViewAppsGuider;->menuLayout:Landroid/view/View;

    const v27, 0x7f0f001d

    invoke-virtual/range {v26 .. v27}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/RelativeLayout;

    .line 346
    .local v19, "pointerViewLayout":Landroid/widget/RelativeLayout;
    packed-switch v14, :pswitch_data_1

    goto/16 :goto_2

    .line 349
    :pswitch_9
    const-string v26, "ViewAppsGuider"

    const-string v27, "HotSeatItems Cannot be null"

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    :pswitch_a
    const-string v26, "degas"

    move-object/from16 v0, v26

    invoke-virtual {v13, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v26

    if-nez v26, :cond_b

    const-string v26, "rubens"

    move-object/from16 v0, v26

    invoke-virtual {v13, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v26

    if-eqz v26, :cond_c

    .line 354
    :cond_b
    const v26, 0x7f0e002c

    move-object/from16 v0, v20

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v24

    .line 355
    .restart local v24    # "textRightMargin":I
    const v26, 0x7f0e02df

    move-object/from16 v0, v20

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v22

    .line 356
    const/16 v26, 0xc

    move/from16 v0, v26

    invoke-virtual {v12, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 357
    const/16 v26, 0x0

    const/16 v27, 0x0

    move/from16 v0, v26

    move/from16 v1, v27

    move/from16 v2, v24

    move/from16 v3, v22

    invoke-virtual {v12, v0, v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 358
    invoke-virtual {v7, v12}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 360
    const v26, 0x7f0e02b6

    move-object/from16 v0, v20

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v25

    .line 361
    .local v25, "topMargin":I
    const v26, 0x7f0e01f1

    move-object/from16 v0, v20

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v17

    .line 362
    .restart local v17    # "pointerRightMargin":I
    const v26, 0x7f0e02bc

    move-object/from16 v0, v20

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v18

    .line 363
    .local v18, "pointerTopMargin":I
    const/16 v26, 0x0

    const/16 v27, 0x0

    move/from16 v0, v26

    move/from16 v1, v18

    move/from16 v2, v17

    move/from16 v3, v27

    invoke-virtual {v11, v0, v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 364
    move-object/from16 v0, v16

    invoke-virtual {v0, v11}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 365
    const v26, 0x7f0e01f0

    move-object/from16 v0, v20

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v21

    .line 366
    .restart local v21    # "rightmargin":I
    const/16 v26, 0x0

    const/16 v27, 0x0

    move/from16 v0, v26

    move/from16 v1, v25

    move/from16 v2, v21

    move/from16 v3, v27

    invoke-virtual {v10, v0, v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 367
    sget-object v26, Lcom/android/launcher2/guide/ViewAppsGuider;->image:Landroid/widget/ImageView;

    move-object/from16 v0, v26

    invoke-virtual {v0, v10}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_2

    .line 371
    .end local v17    # "pointerRightMargin":I
    .end local v18    # "pointerTopMargin":I
    .end local v21    # "rightmargin":I
    .end local v24    # "textRightMargin":I
    .end local v25    # "topMargin":I
    :cond_c
    const v26, 0x7f0e02b6

    move-object/from16 v0, v20

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v25

    .line 372
    .restart local v25    # "topMargin":I
    const v26, 0x7f0e01f1

    move-object/from16 v0, v20

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v17

    .line 373
    .restart local v17    # "pointerRightMargin":I
    const v26, 0x7f0e02bc

    move-object/from16 v0, v20

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v18

    .line 374
    .restart local v18    # "pointerTopMargin":I
    const/16 v26, 0x0

    const/16 v27, 0x0

    move/from16 v0, v26

    move/from16 v1, v18

    move/from16 v2, v17

    move/from16 v3, v27

    invoke-virtual {v11, v0, v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 375
    move-object/from16 v0, v19

    invoke-virtual {v0, v11}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 376
    const v26, 0x7f0e01f0

    move-object/from16 v0, v20

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v21

    .line 377
    .restart local v21    # "rightmargin":I
    const/16 v26, 0x0

    const/16 v27, 0x0

    move/from16 v0, v26

    move/from16 v1, v25

    move/from16 v2, v21

    move/from16 v3, v27

    invoke-virtual {v10, v0, v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 378
    sget-object v26, Lcom/android/launcher2/guide/ViewAppsGuider;->image:Landroid/widget/ImageView;

    move-object/from16 v0, v26

    invoke-virtual {v0, v10}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_2

    .line 381
    .end local v17    # "pointerRightMargin":I
    .end local v18    # "pointerTopMargin":I
    .end local v21    # "rightmargin":I
    .end local v25    # "topMargin":I
    :pswitch_b
    const v26, 0x7f0e02b7

    move-object/from16 v0, v20

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v25

    .line 382
    .restart local v25    # "topMargin":I
    const v26, 0x7f0e01ef

    move-object/from16 v0, v20

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v17

    .line 383
    .restart local v17    # "pointerRightMargin":I
    const v26, 0x7f0e02bd

    move-object/from16 v0, v20

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v18

    .line 384
    .restart local v18    # "pointerTopMargin":I
    const/16 v26, 0x0

    const/16 v27, 0x0

    move/from16 v0, v26

    move/from16 v1, v18

    move/from16 v2, v17

    move/from16 v3, v27

    invoke-virtual {v11, v0, v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 385
    move-object/from16 v0, v19

    invoke-virtual {v0, v11}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 386
    const v26, 0x7f0e01ee

    move-object/from16 v0, v20

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v21

    .line 387
    .restart local v21    # "rightmargin":I
    const/16 v26, 0x0

    const/16 v27, 0x0

    move/from16 v0, v26

    move/from16 v1, v25

    move/from16 v2, v21

    move/from16 v3, v27

    invoke-virtual {v10, v0, v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 388
    sget-object v26, Lcom/android/launcher2/guide/ViewAppsGuider;->image:Landroid/widget/ImageView;

    move-object/from16 v0, v26

    invoke-virtual {v0, v10}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_2

    .line 391
    .end local v17    # "pointerRightMargin":I
    .end local v18    # "pointerTopMargin":I
    .end local v21    # "rightmargin":I
    .end local v25    # "topMargin":I
    :pswitch_c
    const v26, 0x7f0e02b8

    move-object/from16 v0, v20

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v25

    .line 392
    .restart local v25    # "topMargin":I
    const v26, 0x7f0e01ed

    move-object/from16 v0, v20

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v17

    .line 393
    .restart local v17    # "pointerRightMargin":I
    const v26, 0x7f0e02be

    move-object/from16 v0, v20

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v18

    .line 394
    .restart local v18    # "pointerTopMargin":I
    const/16 v26, 0x0

    const/16 v27, 0x0

    move/from16 v0, v26

    move/from16 v1, v18

    move/from16 v2, v17

    move/from16 v3, v27

    invoke-virtual {v11, v0, v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 395
    move-object/from16 v0, v19

    invoke-virtual {v0, v11}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 396
    const v26, 0x7f0e01ec

    move-object/from16 v0, v20

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v21

    .line 397
    .restart local v21    # "rightmargin":I
    const/16 v26, 0x0

    const/16 v27, 0x0

    move/from16 v0, v26

    move/from16 v1, v25

    move/from16 v2, v21

    move/from16 v3, v27

    invoke-virtual {v10, v0, v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 398
    sget-object v26, Lcom/android/launcher2/guide/ViewAppsGuider;->image:Landroid/widget/ImageView;

    move-object/from16 v0, v26

    invoke-virtual {v0, v10}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_2

    .line 401
    .end local v17    # "pointerRightMargin":I
    .end local v18    # "pointerTopMargin":I
    .end local v21    # "rightmargin":I
    .end local v25    # "topMargin":I
    :pswitch_d
    const v26, 0x7f0e02b9

    move-object/from16 v0, v20

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v25

    .line 402
    .restart local v25    # "topMargin":I
    const v26, 0x7f0e01eb

    move-object/from16 v0, v20

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v17

    .line 403
    .restart local v17    # "pointerRightMargin":I
    const v26, 0x7f0e02bf

    move-object/from16 v0, v20

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v18

    .line 404
    .restart local v18    # "pointerTopMargin":I
    const/16 v26, 0x0

    const/16 v27, 0x0

    move/from16 v0, v26

    move/from16 v1, v18

    move/from16 v2, v17

    move/from16 v3, v27

    invoke-virtual {v11, v0, v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 405
    move-object/from16 v0, v19

    invoke-virtual {v0, v11}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 406
    const v26, 0x7f0e01ea

    move-object/from16 v0, v20

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v21

    .line 407
    .restart local v21    # "rightmargin":I
    const/16 v26, 0x0

    const/16 v27, 0x0

    move/from16 v0, v26

    move/from16 v1, v25

    move/from16 v2, v21

    move/from16 v3, v27

    invoke-virtual {v10, v0, v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 408
    sget-object v26, Lcom/android/launcher2/guide/ViewAppsGuider;->image:Landroid/widget/ImageView;

    move-object/from16 v0, v26

    invoke-virtual {v0, v10}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_2

    .line 411
    .end local v17    # "pointerRightMargin":I
    .end local v18    # "pointerTopMargin":I
    .end local v21    # "rightmargin":I
    .end local v25    # "topMargin":I
    :pswitch_e
    const v26, 0x7f0e02ba

    move-object/from16 v0, v20

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v25

    .line 412
    .restart local v25    # "topMargin":I
    const v26, 0x7f0e01e9

    move-object/from16 v0, v20

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v17

    .line 413
    .restart local v17    # "pointerRightMargin":I
    const v26, 0x7f0e02c0

    move-object/from16 v0, v20

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v18

    .line 414
    .restart local v18    # "pointerTopMargin":I
    const/16 v26, 0x0

    const/16 v27, 0x0

    move/from16 v0, v26

    move/from16 v1, v18

    move/from16 v2, v17

    move/from16 v3, v27

    invoke-virtual {v11, v0, v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 415
    move-object/from16 v0, v19

    invoke-virtual {v0, v11}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 416
    const v26, 0x7f0e01e8

    move-object/from16 v0, v20

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v21

    .line 417
    .restart local v21    # "rightmargin":I
    const/16 v26, 0x0

    const/16 v27, 0x0

    move/from16 v0, v26

    move/from16 v1, v25

    move/from16 v2, v21

    move/from16 v3, v27

    invoke-virtual {v10, v0, v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 418
    sget-object v26, Lcom/android/launcher2/guide/ViewAppsGuider;->image:Landroid/widget/ImageView;

    move-object/from16 v0, v26

    invoke-virtual {v0, v10}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_2

    .line 421
    .end local v17    # "pointerRightMargin":I
    .end local v18    # "pointerTopMargin":I
    .end local v21    # "rightmargin":I
    .end local v25    # "topMargin":I
    :pswitch_f
    const v26, 0x7f0e02bb

    move-object/from16 v0, v20

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v25

    .line 422
    .restart local v25    # "topMargin":I
    const v26, 0x7f0e02b4

    move-object/from16 v0, v20

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v17

    .line 423
    .restart local v17    # "pointerRightMargin":I
    const v26, 0x7f0e02c1

    move-object/from16 v0, v20

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v18

    .line 424
    .restart local v18    # "pointerTopMargin":I
    const/16 v26, 0x0

    const/16 v27, 0x0

    move/from16 v0, v26

    move/from16 v1, v18

    move/from16 v2, v17

    move/from16 v3, v27

    invoke-virtual {v11, v0, v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 425
    move-object/from16 v0, v19

    invoke-virtual {v0, v11}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 426
    const v26, 0x7f0e02b3

    move-object/from16 v0, v20

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v21

    .line 427
    .restart local v21    # "rightmargin":I
    const/16 v26, 0x0

    const/16 v27, 0x0

    move/from16 v0, v26

    move/from16 v1, v25

    move/from16 v2, v21

    move/from16 v3, v27

    invoke-virtual {v10, v0, v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 428
    sget-object v26, Lcom/android/launcher2/guide/ViewAppsGuider;->image:Landroid/widget/ImageView;

    move-object/from16 v0, v26

    invoke-virtual {v0, v10}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_2

    .line 221
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch

    .line 346
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
    .end packed-switch
.end method
