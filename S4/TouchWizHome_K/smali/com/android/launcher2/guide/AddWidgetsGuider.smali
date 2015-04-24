.class public Lcom/android/launcher2/guide/AddWidgetsGuider;
.super Lcom/android/launcher2/guide/GuiderBase;
.source "AddWidgetsGuider.java"

# interfaces
.implements Lcom/android/launcher2/guide/GuiderLifecycleListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "AddWidgetsGuider"

.field public static isAddWidgetsGuiderOn:Z

.field static isStep1DialogVisible:Z

.field static isStep2DialogVisible:Z

.field static isStep3DialogVisible:Z

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
    sput-boolean v0, Lcom/android/launcher2/guide/AddWidgetsGuider;->isStep1DialogVisible:Z

    .line 50
    sput-boolean v0, Lcom/android/launcher2/guide/AddWidgetsGuider;->isStep2DialogVisible:Z

    .line 51
    sput-boolean v0, Lcom/android/launcher2/guide/AddWidgetsGuider;->isStep3DialogVisible:Z

    .line 52
    sput-boolean v0, Lcom/android/launcher2/guide/AddWidgetsGuider;->isAddWidgetsGuiderOn:Z

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lcom/android/launcher2/guide/GuiderBase;-><init>(Landroid/app/Activity;)V

    .line 57
    const-string v0, "AddWidgetsGuider"

    const-string v1, "AddWidgetsGuider"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/launcher2/guide/AddWidgetsGuider;->isAddWidgetsGuiderOn:Z

    .line 59
    return-void
.end method


# virtual methods
.method public dismissHelpDialog()V
    .locals 2

    .prologue
    .line 106
    const-string v0, "AddWidgetsGuider"

    const-string v1, "AddWidgetsGuider.dismissHelpDialog()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    invoke-virtual {p0}, Lcom/android/launcher2/guide/AddWidgetsGuider;->dismissShowHelpDialog_firstStep()V

    .line 108
    invoke-virtual {p0}, Lcom/android/launcher2/guide/AddWidgetsGuider;->dismissShowHelpDialog_step1()V

    .line 110
    invoke-virtual {p0}, Lcom/android/launcher2/guide/AddWidgetsGuider;->dismissShowHelpDialog_step3()V

    .line 111
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/launcher2/guide/AddWidgetsGuider;->isAddWidgetsGuiderOn:Z

    .line 112
    const/4 v0, 0x0

    sput-object v0, Lcom/android/launcher2/guide/GuideFragment;->mGuider:Lcom/android/launcher2/guide/GuiderLifecycleListener;

    .line 113
    return-void
.end method

.method public dismissShowHelpDialog_firstStep()V
    .locals 5

    .prologue
    .line 249
    sget-boolean v3, Lcom/android/launcher2/guide/AddWidgetsGuider;->isStep1DialogVisible:Z

    if-nez v3, :cond_1

    .line 261
    :cond_0
    :goto_0
    return-void

    .line 253
    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher2/guide/AddWidgetsGuider;->getActivity()Landroid/app/Activity;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/Launcher;

    invoke-virtual {v3}, Lcom/android/launcher2/Launcher;->getHomeView()Lcom/android/launcher2/HomeView;

    move-result-object v2

    .line 254
    .local v2, "homeView":Lcom/android/launcher2/HomeView;
    invoke-virtual {p0}, Lcom/android/launcher2/guide/AddWidgetsGuider;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/Launcher;

    .line 255
    .local v0, "act":Landroid/app/Activity;
    if-eqz v2, :cond_0

    .line 256
    invoke-static {v0}, Lcom/android/launcher2/guide/GuideFragment;->findMainView(Landroid/app/Activity;)Landroid/view/ViewGroup;

    move-result-object v3

    sput-object v3, Lcom/android/launcher2/guide/AddWidgetsGuider;->layout:Landroid/view/ViewGroup;

    .line 257
    sget-object v3, Lcom/android/launcher2/guide/AddWidgetsGuider;->layout:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 258
    .local v1, "childcount":I
    sget-object v3, Lcom/android/launcher2/guide/AddWidgetsGuider;->layout:Landroid/view/ViewGroup;

    add-int/lit8 v4, v1, -0x1

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->removeViewAt(I)V

    .line 259
    const/4 v3, 0x0

    sput-boolean v3, Lcom/android/launcher2/guide/AddWidgetsGuider;->isStep1DialogVisible:Z

    goto :goto_0
.end method

.method public dismissShowHelpDialog_step1()V
    .locals 2

    .prologue
    .line 264
    sget-boolean v1, Lcom/android/launcher2/guide/AddWidgetsGuider;->isStep2DialogVisible:Z

    if-eqz v1, :cond_0

    .line 265
    const/4 v1, 0x0

    sput-boolean v1, Lcom/android/launcher2/guide/AddWidgetsGuider;->isStep2DialogVisible:Z

    .line 266
    const/4 v0, 0x0

    .line 267
    .local v0, "mGuider":Lcom/android/launcher2/guide/GuiderLifecycleListener;
    new-instance v0, Lcom/android/launcher2/guide/ViewAppsGuider;

    .end local v0    # "mGuider":Lcom/android/launcher2/guide/GuiderLifecycleListener;
    invoke-virtual {p0}, Lcom/android/launcher2/guide/AddWidgetsGuider;->getActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/Launcher;

    invoke-direct {v0, v1}, Lcom/android/launcher2/guide/ViewAppsGuider;-><init>(Landroid/app/Activity;)V

    .line 268
    .restart local v0    # "mGuider":Lcom/android/launcher2/guide/GuiderLifecycleListener;
    invoke-interface {v0}, Lcom/android/launcher2/guide/GuiderLifecycleListener;->dismissHelpDialog()V

    .line 270
    .end local v0    # "mGuider":Lcom/android/launcher2/guide/GuiderLifecycleListener;
    :cond_0
    return-void
.end method

.method public dismissShowHelpDialog_step2()V
    .locals 5

    .prologue
    .line 273
    sget-boolean v3, Lcom/android/launcher2/guide/AddWidgetsGuider;->isStep2DialogVisible:Z

    if-eqz v3, :cond_1

    .line 274
    const/4 v3, 0x0

    sput-boolean v3, Lcom/android/launcher2/guide/AddWidgetsGuider;->isStep2DialogVisible:Z

    .line 275
    invoke-virtual {p0}, Lcom/android/launcher2/guide/AddWidgetsGuider;->getActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/Launcher;

    .line 276
    .local v1, "launcher":Lcom/android/launcher2/Launcher;
    invoke-virtual {v1}, Lcom/android/launcher2/Launcher;->getMenuView()Lcom/android/launcher2/MenuView;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 277
    const-string v3, "AddWidgetsGuider"

    const-string v4, " frag!=null"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    invoke-virtual {v1}, Lcom/android/launcher2/Launcher;->getMenuView()Lcom/android/launcher2/MenuView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher2/MenuView;->getMenuWidgets()Lcom/android/launcher2/MenuWidgets;

    move-result-object v2

    .line 282
    .local v2, "menuWidgets":Lcom/android/launcher2/MenuWidgets;
    if-eqz v2, :cond_0

    .line 283
    const-string v3, "AddWidgetsGuider - dismissShowHelpDialog_step2"

    invoke-virtual {v2, v3}, Lcom/android/launcher2/MenuWidgets;->updatePackages(Ljava/lang/String;)V

    .line 287
    :cond_0
    invoke-static {v1}, Lcom/android/launcher2/guide/GuideFragment;->findMainView(Landroid/app/Activity;)Landroid/view/ViewGroup;

    move-result-object v3

    sput-object v3, Lcom/android/launcher2/guide/AddWidgetsGuider;->layout:Landroid/view/ViewGroup;

    .line 288
    sget-object v3, Lcom/android/launcher2/guide/AddWidgetsGuider;->layout:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 289
    .local v0, "childcount":I
    sget-object v3, Lcom/android/launcher2/guide/AddWidgetsGuider;->layout:Landroid/view/ViewGroup;

    if-nez v3, :cond_2

    .line 290
    const-string v3, "AddWidgetsGuider"

    const-string v4, "layout==null"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    .end local v0    # "childcount":I
    .end local v1    # "launcher":Lcom/android/launcher2/Launcher;
    .end local v2    # "menuWidgets":Lcom/android/launcher2/MenuWidgets;
    :cond_1
    :goto_0
    return-void

    .line 293
    .restart local v0    # "childcount":I
    .restart local v1    # "launcher":Lcom/android/launcher2/Launcher;
    .restart local v2    # "menuWidgets":Lcom/android/launcher2/MenuWidgets;
    :cond_2
    if-eqz v0, :cond_3

    .line 294
    sget-object v3, Lcom/android/launcher2/guide/AddWidgetsGuider;->layout:Landroid/view/ViewGroup;

    add-int/lit8 v4, v0, -0x1

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->removeViewAt(I)V

    .line 296
    :cond_3
    const/4 v3, 0x0

    sput-object v3, Lcom/android/launcher2/guide/GuideFragment;->mGuider:Lcom/android/launcher2/guide/GuiderLifecycleListener;

    goto :goto_0
.end method

.method public dismissShowHelpDialog_step3()V
    .locals 4

    .prologue
    .line 302
    sget-boolean v2, Lcom/android/launcher2/guide/AddWidgetsGuider;->isStep3DialogVisible:Z

    if-eqz v2, :cond_0

    .line 303
    const/4 v2, 0x0

    sput-boolean v2, Lcom/android/launcher2/guide/AddWidgetsGuider;->isStep3DialogVisible:Z

    .line 304
    invoke-virtual {p0}, Lcom/android/launcher2/guide/AddWidgetsGuider;->getActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/Launcher;

    .line 305
    .local v1, "launcher":Lcom/android/launcher2/Launcher;
    invoke-virtual {v1}, Lcom/android/launcher2/Launcher;->getMenuView()Lcom/android/launcher2/MenuView;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 306
    const-string v2, "AddWidgetsGuider"

    const-string v3, " frag!=null"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    invoke-static {v1}, Lcom/android/launcher2/guide/GuideFragment;->findMainView(Landroid/app/Activity;)Landroid/view/ViewGroup;

    move-result-object v2

    sput-object v2, Lcom/android/launcher2/guide/AddWidgetsGuider;->layout:Landroid/view/ViewGroup;

    .line 308
    sget-object v2, Lcom/android/launcher2/guide/AddWidgetsGuider;->layout:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 309
    .local v0, "childcount":I
    sget-object v2, Lcom/android/launcher2/guide/AddWidgetsGuider;->layout:Landroid/view/ViewGroup;

    if-nez v2, :cond_1

    .line 310
    const-string v2, "AddWidgetsGuider"

    const-string v3, "layout==null"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    .end local v0    # "childcount":I
    .end local v1    # "launcher":Lcom/android/launcher2/Launcher;
    :cond_0
    :goto_0
    return-void

    .line 313
    .restart local v0    # "childcount":I
    .restart local v1    # "launcher":Lcom/android/launcher2/Launcher;
    :cond_1
    if-eqz v0, :cond_2

    .line 314
    sget-object v2, Lcom/android/launcher2/guide/AddWidgetsGuider;->layout:Landroid/view/ViewGroup;

    add-int/lit8 v3, v0, -0x1

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->removeViewAt(I)V

    .line 316
    :cond_2
    const/4 v2, 0x0

    sput-object v2, Lcom/android/launcher2/guide/GuideFragment;->mGuider:Lcom/android/launcher2/guide/GuiderLifecycleListener;

    goto :goto_0
.end method

.method public bridge synthetic finish()V
    .locals 0

    .prologue
    .line 43
    invoke-super {p0}, Lcom/android/launcher2/guide/GuiderBase;->finish()V

    return-void
.end method

.method public isStep1DialogVisible()Z
    .locals 1

    .prologue
    .line 327
    sget-boolean v0, Lcom/android/launcher2/guide/AddWidgetsGuider;->isStep1DialogVisible:Z

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 119
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 87
    invoke-virtual {p0}, Lcom/android/launcher2/guide/AddWidgetsGuider;->dismissHelpDialog()V

    .line 88
    sget v0, Lcom/android/launcher2/guide/GuideFragment;->sHelpHubStepNumber:I

    packed-switch v0, :pswitch_data_0

    .line 101
    :goto_0
    return-void

    .line 90
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/launcher2/guide/AddWidgetsGuider;->showHelpDialog_first_step()V

    goto :goto_0

    .line 93
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/launcher2/guide/AddWidgetsGuider;->showHelpDialog_step1()V

    goto :goto_0

    .line 96
    :pswitch_2
    invoke-virtual {p0}, Lcom/android/launcher2/guide/AddWidgetsGuider;->showHelpDialog_step3()V

    goto :goto_0

    .line 88
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 65
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 71
    return-void
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 83
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 77
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
    .locals 0

    .prologue
    .line 323
    invoke-virtual {p0}, Lcom/android/launcher2/guide/AddWidgetsGuider;->showHelpDialog_first_step()V

    .line 324
    return-void
.end method

.method public showHelpDialog_first_step()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    .line 122
    sget-boolean v6, Lcom/android/launcher2/guide/AddWidgetsGuider;->isStep1DialogVisible:Z

    if-eqz v6, :cond_1

    .line 153
    :cond_0
    :goto_0
    return-void

    .line 126
    :cond_1
    sput v8, Lcom/android/launcher2/guide/GuideFragment;->sHelpHubStepNumber:I

    .line 127
    sput-boolean v8, Lcom/android/launcher2/guide/AddWidgetsGuider;->isStep1DialogVisible:Z

    .line 128
    invoke-virtual {p0}, Lcom/android/launcher2/guide/AddWidgetsGuider;->getActivity()Landroid/app/Activity;

    move-result-object v6

    check-cast v6, Lcom/android/launcher2/Launcher;

    invoke-virtual {v6}, Lcom/android/launcher2/Launcher;->getHomeView()Lcom/android/launcher2/HomeView;

    move-result-object v2

    .line 129
    .local v2, "homeView":Lcom/android/launcher2/HomeView;
    invoke-virtual {p0}, Lcom/android/launcher2/guide/AddWidgetsGuider;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/Launcher;

    .line 130
    .local v0, "act":Landroid/app/Activity;
    if-eqz v2, :cond_0

    .line 131
    invoke-static {v0}, Lcom/android/launcher2/guide/GuideFragment;->findMainView(Landroid/app/Activity;)Landroid/view/ViewGroup;

    move-result-object v6

    sput-object v6, Lcom/android/launcher2/guide/AddWidgetsGuider;->layout:Landroid/view/ViewGroup;

    .line 132
    const-string v6, "layout_inflater"

    invoke-virtual {v0, v6}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/LayoutInflater;

    .line 133
    .local v3, "inflater":Landroid/view/LayoutInflater;
    const v6, 0x7f03000f

    sget-object v7, Lcom/android/launcher2/guide/AddWidgetsGuider;->layout:Landroid/view/ViewGroup;

    invoke-virtual {v3, v6, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v6

    sput-object v6, Lcom/android/launcher2/guide/AddWidgetsGuider;->menuLayout:Landroid/view/View;

    .line 134
    sput v8, Lcom/android/launcher2/Launcher;->changeWallpaperStatus:I

    .line 135
    sget-object v6, Lcom/android/launcher2/guide/AddWidgetsGuider;->menuLayout:Landroid/view/View;

    const v7, 0x7f0f001e

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    .line 136
    .local v5, "up_pointer":Landroid/widget/ImageView;
    invoke-virtual {v5}, Landroid/widget/ImageView;->bringToFront()V

    .line 138
    sget-object v6, Lcom/android/launcher2/guide/AddWidgetsGuider;->menuLayout:Landroid/view/View;

    const v7, 0x7f0f003d

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    iput-object v6, p0, Lcom/android/launcher2/guide/AddWidgetsGuider;->mGoalAnimationView:Landroid/view/View;

    .line 139
    new-instance v1, Lcom/android/launcher2/guide/HelpAnimatedDialog;

    iget-object v6, p0, Lcom/android/launcher2/guide/AddWidgetsGuider;->mGoalAnimationView:Landroid/view/View;

    invoke-direct {v1, v0, v6}, Lcom/android/launcher2/guide/HelpAnimatedDialog;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 140
    .local v1, "animdialog":Lcom/android/launcher2/guide/HelpAnimatedDialog;
    invoke-virtual {v2}, Lcom/android/launcher2/HomeView;->addHelpAppPage()V

    .line 142
    sget-object v6, Lcom/android/launcher2/guide/AddWidgetsGuider;->menuLayout:Landroid/view/View;

    const v7, 0x7f0f001d

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/RelativeLayout;

    .line 143
    .local v4, "textBox":Landroid/widget/RelativeLayout;
    new-instance v6, Lcom/android/launcher2/guide/AddWidgetsGuider$1;

    invoke-direct {v6, p0, v4}, Lcom/android/launcher2/guide/AddWidgetsGuider$1;-><init>(Lcom/android/launcher2/guide/AddWidgetsGuider;Landroid/widget/RelativeLayout;)V

    invoke-virtual {v4, v6}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 149
    sget-object v6, Lcom/android/launcher2/guide/AddWidgetsGuider;->layout:Landroid/view/ViewGroup;

    invoke-virtual {v6}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v6

    const v7, 0x7f1000b2

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/widget/RelativeLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 150
    invoke-virtual {v1}, Lcom/android/launcher2/guide/HelpAnimatedDialog;->start()V

    .line 151
    const v6, 0x3f19999a    # 0.6f

    const v7, 0x3dcccccd    # 0.1f

    invoke-virtual {v1, v6, v7, v4}, Lcom/android/launcher2/guide/HelpAnimatedDialog;->startZoom(FFLandroid/view/View;)V

    goto/16 :goto_0
.end method

.method public showHelpDialog_step1()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 157
    sget-boolean v1, Lcom/android/launcher2/guide/AddWidgetsGuider;->isStep2DialogVisible:Z

    if-eqz v1, :cond_0

    .line 166
    :goto_0
    return-void

    .line 160
    :cond_0
    const/4 v1, 0x2

    sput v1, Lcom/android/launcher2/guide/GuideFragment;->sHelpHubStepNumber:I

    .line 161
    sput-boolean v2, Lcom/android/launcher2/guide/AddWidgetsGuider;->isStep2DialogVisible:Z

    .line 162
    sput-boolean v2, Lcom/android/launcher2/guide/GuideFragment;->isViewApps:Z

    .line 163
    const/4 v0, 0x0

    .line 164
    .local v0, "mGuider":Lcom/android/launcher2/guide/GuiderLifecycleListener;
    new-instance v0, Lcom/android/launcher2/guide/ViewAppsGuider;

    .end local v0    # "mGuider":Lcom/android/launcher2/guide/GuiderLifecycleListener;
    invoke-virtual {p0}, Lcom/android/launcher2/guide/AddWidgetsGuider;->getActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/Launcher;

    invoke-direct {v0, v1}, Lcom/android/launcher2/guide/ViewAppsGuider;-><init>(Landroid/app/Activity;)V

    .line 165
    .restart local v0    # "mGuider":Lcom/android/launcher2/guide/GuiderLifecycleListener;
    invoke-interface {v0}, Lcom/android/launcher2/guide/GuiderLifecycleListener;->showHelpDialog()V

    goto :goto_0
.end method

.method public showHelpDialog_step2()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 171
    sget-boolean v5, Lcom/android/launcher2/guide/AddWidgetsGuider;->isStep2DialogVisible:Z

    if-eqz v5, :cond_1

    .line 210
    :cond_0
    :goto_0
    return-void

    .line 174
    :cond_1
    const/4 v5, 0x2

    sput v5, Lcom/android/launcher2/guide/GuideFragment;->sHelpHubStepNumber:I

    .line 175
    sput-boolean v7, Lcom/android/launcher2/guide/AddWidgetsGuider;->isStep2DialogVisible:Z

    .line 176
    invoke-virtual {p0}, Lcom/android/launcher2/guide/AddWidgetsGuider;->dismissShowHelpDialog_step1()V

    .line 177
    const/4 v5, 0x0

    sput-boolean v5, Lcom/android/launcher2/guide/GuideFragment;->isViewApps:Z

    .line 178
    invoke-virtual {p0}, Lcom/android/launcher2/guide/AddWidgetsGuider;->getActivity()Landroid/app/Activity;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/Launcher;

    .line 179
    .local v2, "launcher":Lcom/android/launcher2/Launcher;
    invoke-virtual {v2}, Lcom/android/launcher2/Launcher;->getMenuView()Lcom/android/launcher2/MenuView;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 180
    const-string v5, "AddWidgetsGuider"

    const-string v6, " frag!=null"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    invoke-static {v2}, Lcom/android/launcher2/guide/GuideFragment;->findMainView(Landroid/app/Activity;)Landroid/view/ViewGroup;

    move-result-object v5

    sput-object v5, Lcom/android/launcher2/guide/AddWidgetsGuider;->layout:Landroid/view/ViewGroup;

    .line 182
    const-string v5, "layout_inflater"

    invoke-virtual {v2, v5}, Lcom/android/launcher2/Launcher;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 184
    .local v1, "inflater":Landroid/view/LayoutInflater;
    const v5, 0x7f030019

    sget-object v6, Lcom/android/launcher2/guide/AddWidgetsGuider;->layout:Landroid/view/ViewGroup;

    invoke-virtual {v1, v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    sput-object v5, Lcom/android/launcher2/guide/AddWidgetsGuider;->menuLayout:Landroid/view/View;

    .line 187
    sget-object v5, Lcom/android/launcher2/guide/AddWidgetsGuider;->menuLayout:Landroid/view/View;

    const v6, 0x7f0f001e

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 189
    .local v4, "up_pointer":Landroid/widget/ImageView;
    invoke-virtual {v4}, Landroid/widget/ImageView;->bringToFront()V

    .line 191
    sget-object v5, Lcom/android/launcher2/guide/AddWidgetsGuider;->menuLayout:Landroid/view/View;

    const v6, 0x7f0f003e

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, p0, Lcom/android/launcher2/guide/AddWidgetsGuider;->mGoalAnimationView:Landroid/view/View;

    .line 193
    new-instance v0, Lcom/android/launcher2/guide/HelpAnimatedDialog;

    iget-object v5, p0, Lcom/android/launcher2/guide/AddWidgetsGuider;->mGoalAnimationView:Landroid/view/View;

    invoke-direct {v0, v2, v5}, Lcom/android/launcher2/guide/HelpAnimatedDialog;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 196
    .local v0, "animdialog":Lcom/android/launcher2/guide/HelpAnimatedDialog;
    sget-object v5, Lcom/android/launcher2/guide/AddWidgetsGuider;->menuLayout:Landroid/view/View;

    const v6, 0x7f0f001d

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout;

    .line 198
    .local v3, "textBox":Landroid/widget/RelativeLayout;
    new-instance v5, Lcom/android/launcher2/guide/AddWidgetsGuider$2;

    invoke-direct {v5, p0, v3}, Lcom/android/launcher2/guide/AddWidgetsGuider$2;-><init>(Lcom/android/launcher2/guide/AddWidgetsGuider;Landroid/widget/RelativeLayout;)V

    invoke-virtual {v3, v5}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 206
    sget-object v5, Lcom/android/launcher2/guide/AddWidgetsGuider;->layout:Landroid/view/ViewGroup;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f1000b7

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/RelativeLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 207
    invoke-virtual {v0}, Lcom/android/launcher2/guide/HelpAnimatedDialog;->start()V

    .line 208
    const v5, 0x3f19999a    # 0.6f

    const v6, 0x3dcccccd    # 0.1f

    invoke-virtual {v0, v5, v6, v3}, Lcom/android/launcher2/guide/HelpAnimatedDialog;->startZoom(FFLandroid/view/View;)V

    goto/16 :goto_0
.end method

.method public showHelpDialog_step3()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 215
    sget-boolean v4, Lcom/android/launcher2/guide/AddWidgetsGuider;->isStep3DialogVisible:Z

    if-eqz v4, :cond_1

    .line 246
    :cond_0
    :goto_0
    return-void

    .line 218
    :cond_1
    const/4 v4, 0x3

    sput v4, Lcom/android/launcher2/guide/GuideFragment;->sHelpHubStepNumber:I

    .line 219
    sput-boolean v6, Lcom/android/launcher2/guide/AddWidgetsGuider;->isStep3DialogVisible:Z

    .line 220
    const-string v4, "AddWidgetsGuider"

    const-string v5, "showhelpdialog step 3"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    invoke-virtual {p0}, Lcom/android/launcher2/guide/AddWidgetsGuider;->getActivity()Landroid/app/Activity;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/Launcher;

    .line 222
    .local v2, "launcher":Lcom/android/launcher2/Launcher;
    invoke-virtual {v2}, Lcom/android/launcher2/Launcher;->getMenuView()Lcom/android/launcher2/MenuView;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 223
    const-string v4, "AddWidgetsGuider"

    const-string v5, " frag!=null"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    invoke-static {v2}, Lcom/android/launcher2/guide/GuideFragment;->findMainView(Landroid/app/Activity;)Landroid/view/ViewGroup;

    move-result-object v4

    sput-object v4, Lcom/android/launcher2/guide/AddWidgetsGuider;->layout:Landroid/view/ViewGroup;

    .line 227
    const-string v4, "layout_inflater"

    invoke-virtual {v2, v4}, Lcom/android/launcher2/Launcher;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 229
    .local v1, "inflater":Landroid/view/LayoutInflater;
    const v4, 0x7f03001a

    sget-object v5, Lcom/android/launcher2/guide/AddWidgetsGuider;->layout:Landroid/view/ViewGroup;

    invoke-virtual {v1, v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    sput-object v4, Lcom/android/launcher2/guide/AddWidgetsGuider;->menuLayout:Landroid/view/View;

    .line 231
    new-instance v0, Lcom/android/launcher2/guide/HelpAnimatedDialog;

    invoke-direct {v0}, Lcom/android/launcher2/guide/HelpAnimatedDialog;-><init>()V

    .line 232
    .local v0, "animdialog":Lcom/android/launcher2/guide/HelpAnimatedDialog;
    sget-object v4, Lcom/android/launcher2/guide/AddWidgetsGuider;->menuLayout:Landroid/view/View;

    const v5, 0x7f0f001f

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 234
    .local v3, "textBox":Landroid/widget/TextView;
    new-instance v4, Lcom/android/launcher2/guide/AddWidgetsGuider$3;

    invoke-direct {v4, p0, v3}, Lcom/android/launcher2/guide/AddWidgetsGuider$3;-><init>(Lcom/android/launcher2/guide/AddWidgetsGuider;Landroid/widget/TextView;)V

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 242
    sget-object v4, Lcom/android/launcher2/guide/AddWidgetsGuider;->layout:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f1000b9

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 243
    const v4, 0x3f19999a    # 0.6f

    const v5, 0x3dcccccd    # 0.1f

    invoke-virtual {v0, v4, v5, v3}, Lcom/android/launcher2/guide/HelpAnimatedDialog;->startZoom(FFLandroid/view/View;)V

    goto :goto_0
.end method
