.class public Lcom/android/launcher2/guide/CreateFolderGuider;
.super Lcom/android/launcher2/guide/GuiderBase;
.source "CreateFolderGuider.java"

# interfaces
.implements Lcom/android/launcher2/guide/GuiderLifecycleListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "ViewAppsGuider"

.field static isStep3DialogVisible:Z

.field public static isViewApps:Z

.field static layout:Landroid/view/ViewGroup;

.field private static mGuider:Lcom/android/launcher2/guide/GuiderLifecycleListener;

.field static menuLayout:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 42
    sput-boolean v0, Lcom/android/launcher2/guide/CreateFolderGuider;->isViewApps:Z

    .line 46
    sput-boolean v0, Lcom/android/launcher2/guide/CreateFolderGuider;->isStep3DialogVisible:Z

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/android/launcher2/guide/GuiderBase;-><init>(Landroid/app/Activity;)V

    .line 51
    const-string v0, "ViewAppsGuider"

    const-string v1, "createfolderguider"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    return-void
.end method

.method private showHelpDialog_step1()V
    .locals 2

    .prologue
    .line 112
    const/4 v0, 0x1

    sput v0, Lcom/android/launcher2/guide/GuideFragment;->sHelpHubStepNumber:I

    .line 113
    new-instance v0, Lcom/android/launcher2/guide/AddAppsGuider;

    invoke-virtual {p0}, Lcom/android/launcher2/guide/CreateFolderGuider;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/launcher2/guide/AddAppsGuider;-><init>(Landroid/app/Activity;)V

    sput-object v0, Lcom/android/launcher2/guide/CreateFolderGuider;->mGuider:Lcom/android/launcher2/guide/GuiderLifecycleListener;

    .line 114
    sget-object v0, Lcom/android/launcher2/guide/CreateFolderGuider;->mGuider:Lcom/android/launcher2/guide/GuiderLifecycleListener;

    invoke-interface {v0}, Lcom/android/launcher2/guide/GuiderLifecycleListener;->showHelpDialog()V

    .line 115
    return-void
.end method

.method private showHelpDialog_step2()V
    .locals 2

    .prologue
    .line 118
    const/4 v0, 0x2

    sput v0, Lcom/android/launcher2/guide/GuideFragment;->sHelpHubStepNumber:I

    .line 119
    new-instance v0, Lcom/android/launcher2/guide/AddAppsGuider;

    invoke-virtual {p0}, Lcom/android/launcher2/guide/CreateFolderGuider;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/launcher2/guide/AddAppsGuider;-><init>(Landroid/app/Activity;)V

    sput-object v0, Lcom/android/launcher2/guide/CreateFolderGuider;->mGuider:Lcom/android/launcher2/guide/GuiderLifecycleListener;

    .line 120
    sget-object v0, Lcom/android/launcher2/guide/CreateFolderGuider;->mGuider:Lcom/android/launcher2/guide/GuiderLifecycleListener;

    check-cast v0, Lcom/android/launcher2/guide/AddAppsGuider;

    invoke-virtual {v0}, Lcom/android/launcher2/guide/AddAppsGuider;->showHelpDialog_step2()V

    .line 121
    return-void
.end method


# virtual methods
.method public dismissHelpDialog()V
    .locals 2

    .prologue
    .line 97
    invoke-virtual {p0}, Lcom/android/launcher2/guide/CreateFolderGuider;->dismissHelpDialog_step3()V

    .line 98
    new-instance v0, Lcom/android/launcher2/guide/AddAppsGuider;

    invoke-virtual {p0}, Lcom/android/launcher2/guide/CreateFolderGuider;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/launcher2/guide/AddAppsGuider;-><init>(Landroid/app/Activity;)V

    sput-object v0, Lcom/android/launcher2/guide/CreateFolderGuider;->mGuider:Lcom/android/launcher2/guide/GuiderLifecycleListener;

    .line 99
    sget-object v0, Lcom/android/launcher2/guide/CreateFolderGuider;->mGuider:Lcom/android/launcher2/guide/GuiderLifecycleListener;

    invoke-interface {v0}, Lcom/android/launcher2/guide/GuiderLifecycleListener;->dismissHelpDialog()V

    .line 100
    return-void
.end method

.method public dismissHelpDialog_step3()V
    .locals 3

    .prologue
    .line 154
    sget-boolean v1, Lcom/android/launcher2/guide/CreateFolderGuider;->isStep3DialogVisible:Z

    if-eqz v1, :cond_0

    .line 155
    const/4 v1, 0x0

    sput-boolean v1, Lcom/android/launcher2/guide/CreateFolderGuider;->isStep3DialogVisible:Z

    .line 156
    invoke-virtual {p0}, Lcom/android/launcher2/guide/CreateFolderGuider;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/Launcher;

    .line 157
    .local v0, "launcher":Lcom/android/launcher2/Launcher;
    invoke-virtual {v0}, Lcom/android/launcher2/Launcher;->getHomeView()Lcom/android/launcher2/HomeView;

    move-result-object v1

    sput-object v1, Lcom/android/launcher2/guide/CreateFolderGuider;->layout:Landroid/view/ViewGroup;

    .line 158
    sget-object v1, Lcom/android/launcher2/guide/CreateFolderGuider;->layout:Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/launcher2/guide/CreateFolderGuider;->layout:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-eqz v1, :cond_0

    .line 159
    sget-object v1, Lcom/android/launcher2/guide/CreateFolderGuider;->layout:Landroid/view/ViewGroup;

    sget-object v2, Lcom/android/launcher2/guide/CreateFolderGuider;->layout:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeViewAt(I)V

    .line 162
    .end local v0    # "launcher":Lcom/android/launcher2/Launcher;
    :cond_0
    return-void
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
    .line 105
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 77
    invoke-virtual {p0}, Lcom/android/launcher2/guide/CreateFolderGuider;->dismissHelpDialog()V

    .line 78
    sget v0, Lcom/android/launcher2/guide/GuideFragment;->sHelpHubStepNumber:I

    packed-switch v0, :pswitch_data_0

    .line 92
    :goto_0
    return-void

    .line 81
    :pswitch_0
    invoke-direct {p0}, Lcom/android/launcher2/guide/CreateFolderGuider;->showHelpDialog_step1()V

    goto :goto_0

    .line 84
    :pswitch_1
    invoke-direct {p0}, Lcom/android/launcher2/guide/CreateFolderGuider;->showHelpDialog_step2()V

    goto :goto_0

    .line 87
    :pswitch_2
    invoke-virtual {p0}, Lcom/android/launcher2/guide/CreateFolderGuider;->showHelpDialog_step3()V

    goto :goto_0

    .line 78
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
    .line 58
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 63
    return-void
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 73
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 68
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
    .line 108
    invoke-direct {p0}, Lcom/android/launcher2/guide/CreateFolderGuider;->showHelpDialog_step1()V

    .line 109
    return-void
.end method

.method public showHelpDialog_step3()V
    .locals 11

    .prologue
    const/4 v10, 0x1

    .line 123
    sget-boolean v8, Lcom/android/launcher2/guide/CreateFolderGuider;->isStep3DialogVisible:Z

    if-nez v8, :cond_0

    sget-boolean v8, Lcom/android/launcher2/HomeEditBar;->isfolderCreated:Z

    if-eqz v8, :cond_1

    .line 151
    :cond_0
    :goto_0
    return-void

    .line 126
    :cond_1
    const/4 v8, 0x3

    sput v8, Lcom/android/launcher2/guide/GuideFragment;->sHelpHubStepNumber:I

    .line 127
    sput-boolean v10, Lcom/android/launcher2/guide/CreateFolderGuider;->isStep3DialogVisible:Z

    .line 128
    invoke-virtual {p0}, Lcom/android/launcher2/guide/CreateFolderGuider;->getActivity()Landroid/app/Activity;

    move-result-object v5

    check-cast v5, Lcom/android/launcher2/Launcher;

    .line 129
    .local v5, "launcher":Lcom/android/launcher2/Launcher;
    invoke-virtual {v5}, Lcom/android/launcher2/Launcher;->getHomeView()Lcom/android/launcher2/HomeView;

    move-result-object v8

    sput-object v8, Lcom/android/launcher2/guide/CreateFolderGuider;->layout:Landroid/view/ViewGroup;

    .line 130
    sget-object v8, Lcom/android/launcher2/guide/CreateFolderGuider;->layout:Landroid/view/ViewGroup;

    if-eqz v8, :cond_0

    .line 131
    invoke-virtual {p0}, Lcom/android/launcher2/guide/CreateFolderGuider;->getActivity()Landroid/app/Activity;

    move-result-object v8

    const-string v9, "layout_inflater"

    invoke-virtual {v8, v9}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/LayoutInflater;

    .line 133
    .local v4, "inflater":Landroid/view/LayoutInflater;
    const v8, 0x7f030010

    sget-object v9, Lcom/android/launcher2/guide/CreateFolderGuider;->layout:Landroid/view/ViewGroup;

    invoke-virtual {v4, v8, v9, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v8

    sput-object v8, Lcom/android/launcher2/guide/CreateFolderGuider;->menuLayout:Landroid/view/View;

    .line 135
    sget-object v8, Lcom/android/launcher2/guide/CreateFolderGuider;->menuLayout:Landroid/view/View;

    const v9, 0x7f0f001e

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    .line 137
    .local v7, "upPointer":Landroid/widget/ImageView;
    invoke-virtual {v7}, Landroid/widget/ImageView;->bringToFront()V

    .line 138
    sget-object v8, Lcom/android/launcher2/guide/CreateFolderGuider;->menuLayout:Landroid/view/View;

    const v9, 0x7f0f001f

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 140
    .local v3, "guideText":Landroid/widget/TextView;
    sget-object v8, Lcom/android/launcher2/guide/CreateFolderGuider;->layout:Landroid/view/ViewGroup;

    invoke-virtual {v8}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 141
    .local v6, "r":Landroid/content/res/Resources;
    const v8, 0x7f1000af

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 143
    .local v1, "guideStringPart1":Ljava/lang/String;
    const v8, 0x7f100087

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 145
    .local v2, "guideStringPart2":Ljava/lang/String;
    new-array v8, v10, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v2, v8, v9

    invoke-static {v1, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 147
    .local v0, "guideFinalString":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 148
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
