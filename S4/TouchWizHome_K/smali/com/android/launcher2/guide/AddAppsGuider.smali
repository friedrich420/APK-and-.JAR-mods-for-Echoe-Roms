.class public Lcom/android/launcher2/guide/AddAppsGuider;
.super Lcom/android/launcher2/guide/GuiderBase;
.source "AddAppsGuider.java"

# interfaces
.implements Lcom/android/launcher2/guide/GuiderLifecycleListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "AddAppsGuider"

.field static isStep1DialogVisible:Z

.field static isStep2DialogVisible:Z

.field static layout:Landroid/view/ViewGroup;

.field static menuLayout:Landroid/view/View;


# instance fields
.field txtvw:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 46
    sput-boolean v0, Lcom/android/launcher2/guide/AddAppsGuider;->isStep1DialogVisible:Z

    .line 47
    sput-boolean v0, Lcom/android/launcher2/guide/AddAppsGuider;->isStep2DialogVisible:Z

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/android/launcher2/guide/GuiderBase;-><init>(Landroid/app/Activity;)V

    .line 51
    const-string v0, "AddAppsGuider"

    const-string v1, "AddAppsGuider"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    return-void
.end method


# virtual methods
.method public dismissHelpDialog()V
    .locals 2

    .prologue
    .line 97
    const-string v0, "AddAppsGuider"

    const-string v1, "dismissHelpDialog()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    invoke-virtual {p0}, Lcom/android/launcher2/guide/AddAppsGuider;->dismissShowHelpDialog_step1()V

    .line 99
    invoke-virtual {p0}, Lcom/android/launcher2/guide/AddAppsGuider;->dismissShowHelpDialog_step2()V

    .line 100
    const/4 v0, 0x0

    sput-object v0, Lcom/android/launcher2/guide/GuideFragment;->mGuider:Lcom/android/launcher2/guide/GuiderLifecycleListener;

    .line 101
    return-void
.end method

.method public dismissShowHelpDialog_step1()V
    .locals 3

    .prologue
    .line 157
    const-string v1, "AddAppsGuider"

    const-string v2, "dismisshelpdialog step 1"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    sget-boolean v1, Lcom/android/launcher2/guide/AddAppsGuider;->isStep1DialogVisible:Z

    if-eqz v1, :cond_0

    .line 159
    const/4 v1, 0x0

    sput-boolean v1, Lcom/android/launcher2/guide/AddAppsGuider;->isStep1DialogVisible:Z

    .line 160
    const/4 v0, 0x0

    .line 161
    .local v0, "mGuider":Lcom/android/launcher2/guide/GuiderLifecycleListener;
    new-instance v0, Lcom/android/launcher2/guide/ViewAppsGuider;

    .end local v0    # "mGuider":Lcom/android/launcher2/guide/GuiderLifecycleListener;
    invoke-virtual {p0}, Lcom/android/launcher2/guide/AddAppsGuider;->getActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/Launcher;

    invoke-direct {v0, v1}, Lcom/android/launcher2/guide/ViewAppsGuider;-><init>(Landroid/app/Activity;)V

    .line 162
    .restart local v0    # "mGuider":Lcom/android/launcher2/guide/GuiderLifecycleListener;
    invoke-interface {v0}, Lcom/android/launcher2/guide/GuiderLifecycleListener;->dismissHelpDialog()V

    .line 164
    .end local v0    # "mGuider":Lcom/android/launcher2/guide/GuiderLifecycleListener;
    :cond_0
    return-void
.end method

.method public dismissShowHelpDialog_step2()V
    .locals 4

    .prologue
    .line 167
    sget-boolean v2, Lcom/android/launcher2/guide/AddAppsGuider;->isStep2DialogVisible:Z

    if-eqz v2, :cond_0

    .line 168
    const-string v2, "AddAppsGuider"

    const-string v3, "dismisshelpdialog step 2. isStep2DialogVisible"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    const/4 v2, 0x0

    sput-boolean v2, Lcom/android/launcher2/guide/AddAppsGuider;->isStep2DialogVisible:Z

    .line 170
    invoke-virtual {p0}, Lcom/android/launcher2/guide/AddAppsGuider;->getActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/Launcher;

    .line 171
    .local v1, "launcher":Lcom/android/launcher2/Launcher;
    invoke-virtual {v1}, Lcom/android/launcher2/Launcher;->getMenuView()Lcom/android/launcher2/MenuView;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 172
    invoke-static {v1}, Lcom/android/launcher2/guide/GuideFragment;->findMainView(Landroid/app/Activity;)Landroid/view/ViewGroup;

    move-result-object v2

    sput-object v2, Lcom/android/launcher2/guide/AddAppsGuider;->layout:Landroid/view/ViewGroup;

    .line 173
    sget-object v2, Lcom/android/launcher2/guide/AddAppsGuider;->layout:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 174
    .local v0, "childcount":I
    sget-object v2, Lcom/android/launcher2/guide/AddAppsGuider;->layout:Landroid/view/ViewGroup;

    if-nez v2, :cond_1

    .line 183
    .end local v0    # "childcount":I
    .end local v1    # "launcher":Lcom/android/launcher2/Launcher;
    :cond_0
    :goto_0
    return-void

    .line 177
    .restart local v0    # "childcount":I
    .restart local v1    # "launcher":Lcom/android/launcher2/Launcher;
    :cond_1
    if-eqz v0, :cond_2

    .line 178
    sget-object v2, Lcom/android/launcher2/guide/AddAppsGuider;->layout:Landroid/view/ViewGroup;

    add-int/lit8 v3, v0, -0x1

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->removeViewAt(I)V

    .line 180
    :cond_2
    const/4 v2, 0x0

    sput-object v2, Lcom/android/launcher2/guide/GuideFragment;->mGuider:Lcom/android/launcher2/guide/GuiderLifecycleListener;

    goto :goto_0
.end method

.method public bridge synthetic finish()V
    .locals 0

    .prologue
    .line 39
    invoke-super {p0}, Lcom/android/launcher2/guide/GuiderBase;->finish()V

    return-void
.end method

.method public isStep1DialogVisible()Z
    .locals 1

    .prologue
    .line 191
    sget-boolean v0, Lcom/android/launcher2/guide/AddAppsGuider;->isStep1DialogVisible:Z

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 107
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 80
    invoke-virtual {p0}, Lcom/android/launcher2/guide/AddAppsGuider;->dismissHelpDialog()V

    .line 81
    sget v0, Lcom/android/launcher2/guide/GuideFragment;->sHelpHubStepNumber:I

    packed-switch v0, :pswitch_data_0

    .line 92
    :goto_0
    return-void

    .line 84
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/launcher2/guide/AddAppsGuider;->showHelpDialog_step1()V

    goto :goto_0

    .line 87
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/launcher2/guide/AddAppsGuider;->showHelpDialog_step2()V

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
    .locals 0

    .prologue
    .line 187
    invoke-virtual {p0}, Lcom/android/launcher2/guide/AddAppsGuider;->showHelpDialog_step1()V

    .line 188
    return-void
.end method

.method public showHelpDialog_step1()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 111
    sget-boolean v1, Lcom/android/launcher2/guide/AddAppsGuider;->isStep1DialogVisible:Z

    if-eqz v1, :cond_0

    .line 121
    :goto_0
    return-void

    .line 114
    :cond_0
    sput v3, Lcom/android/launcher2/guide/GuideFragment;->sHelpHubStepNumber:I

    .line 115
    sput-boolean v3, Lcom/android/launcher2/guide/AddAppsGuider;->isStep1DialogVisible:Z

    .line 116
    const-string v1, "AddAppsGuider"

    const-string v2, "showhelpdialog step 1+isStep1DialogVisible=true"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    sput-boolean v3, Lcom/android/launcher2/guide/GuideFragment;->isViewApps:Z

    .line 118
    const/4 v0, 0x0

    .line 119
    .local v0, "mGuider":Lcom/android/launcher2/guide/GuiderLifecycleListener;
    new-instance v0, Lcom/android/launcher2/guide/ViewAppsGuider;

    .end local v0    # "mGuider":Lcom/android/launcher2/guide/GuiderLifecycleListener;
    invoke-virtual {p0}, Lcom/android/launcher2/guide/AddAppsGuider;->getActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/Launcher;

    invoke-direct {v0, v1}, Lcom/android/launcher2/guide/ViewAppsGuider;-><init>(Landroid/app/Activity;)V

    .line 120
    .restart local v0    # "mGuider":Lcom/android/launcher2/guide/GuiderLifecycleListener;
    invoke-interface {v0}, Lcom/android/launcher2/guide/GuiderLifecycleListener;->showHelpDialog()V

    goto :goto_0
.end method

.method public showHelpDialog_step2()V
    .locals 7

    .prologue
    const/4 v5, 0x1

    const v6, 0x3dcccccd    # 0.1f

    .line 125
    sget-boolean v3, Lcom/android/launcher2/guide/AddAppsGuider;->isStep2DialogVisible:Z

    if-eqz v3, :cond_1

    .line 154
    :cond_0
    :goto_0
    return-void

    .line 128
    :cond_1
    const/4 v3, 0x2

    sput v3, Lcom/android/launcher2/guide/GuideFragment;->sHelpHubStepNumber:I

    .line 129
    sput-boolean v5, Lcom/android/launcher2/guide/AddAppsGuider;->isStep2DialogVisible:Z

    .line 130
    invoke-virtual {p0}, Lcom/android/launcher2/guide/AddAppsGuider;->dismissShowHelpDialog_step1()V

    .line 131
    const/4 v3, 0x0

    sput-boolean v3, Lcom/android/launcher2/guide/GuideFragment;->isViewApps:Z

    .line 132
    invoke-virtual {p0}, Lcom/android/launcher2/guide/AddAppsGuider;->getActivity()Landroid/app/Activity;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/Launcher;

    .line 133
    .local v2, "launcher":Lcom/android/launcher2/Launcher;
    invoke-virtual {v2}, Lcom/android/launcher2/Launcher;->getMenuView()Lcom/android/launcher2/MenuView;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 134
    invoke-static {v2}, Lcom/android/launcher2/guide/GuideFragment;->findMainView(Landroid/app/Activity;)Landroid/view/ViewGroup;

    move-result-object v3

    sput-object v3, Lcom/android/launcher2/guide/AddAppsGuider;->layout:Landroid/view/ViewGroup;

    .line 135
    invoke-virtual {p0}, Lcom/android/launcher2/guide/AddAppsGuider;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-string v4, "layout_inflater"

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 137
    .local v1, "inflater":Landroid/view/LayoutInflater;
    const v3, 0x7f03000e

    sget-object v4, Lcom/android/launcher2/guide/AddAppsGuider;->layout:Landroid/view/ViewGroup;

    invoke-virtual {v1, v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    sput-object v3, Lcom/android/launcher2/guide/AddAppsGuider;->menuLayout:Landroid/view/View;

    .line 139
    new-instance v0, Lcom/android/launcher2/guide/HelpAnimatedDialog;

    invoke-direct {v0}, Lcom/android/launcher2/guide/HelpAnimatedDialog;-><init>()V

    .line 140
    .local v0, "animdialog":Lcom/android/launcher2/guide/HelpAnimatedDialog;
    const v3, 0x7f0f001f

    invoke-virtual {v2, v3}, Lcom/android/launcher2/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/launcher2/guide/AddAppsGuider;->txtvw:Landroid/widget/TextView;

    .line 141
    iget-object v3, p0, Lcom/android/launcher2/guide/AddAppsGuider;->txtvw:Landroid/widget/TextView;

    new-instance v4, Lcom/android/launcher2/guide/AddAppsGuider$1;

    invoke-direct {v4, p0}, Lcom/android/launcher2/guide/AddAppsGuider$1;-><init>(Lcom/android/launcher2/guide/AddAppsGuider;)V

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 148
    iget-object v3, p0, Lcom/android/launcher2/guide/AddAppsGuider;->txtvw:Landroid/widget/TextView;

    sget-object v4, Lcom/android/launcher2/guide/AddAppsGuider;->layout:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f1000b4

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 149
    sget-object v3, Lcom/android/launcher2/guide/GuideFragment;->GMode:Ljava/lang/String;

    const-string v4, "create_folder"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 150
    iget-object v3, p0, Lcom/android/launcher2/guide/AddAppsGuider;->txtvw:Landroid/widget/TextView;

    const v4, 0x7f1000ae

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 152
    :cond_2
    iget-object v3, p0, Lcom/android/launcher2/guide/AddAppsGuider;->txtvw:Landroid/widget/TextView;

    invoke-virtual {v0, v6, v6, v3}, Lcom/android/launcher2/guide/HelpAnimatedDialog;->startZoom(FFLandroid/view/View;)V

    goto :goto_0
.end method
