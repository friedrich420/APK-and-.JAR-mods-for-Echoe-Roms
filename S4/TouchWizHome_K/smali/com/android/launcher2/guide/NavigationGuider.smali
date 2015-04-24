.class public Lcom/android/launcher2/guide/NavigationGuider;
.super Lcom/android/launcher2/guide/GuiderBase;
.source "NavigationGuider.java"

# interfaces
.implements Lcom/android/launcher2/guide/GuiderLifecycleListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "NavigationGuider"

.field private static isNavigationDialogVisible:Z

.field static layout:Landroid/view/ViewGroup;

.field static menuLayout:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/launcher2/guide/NavigationGuider;->isNavigationDialogVisible:Z

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/android/launcher2/guide/GuiderBase;-><init>(Landroid/app/Activity;)V

    .line 46
    const-string v0, "NavigationGuider"

    const-string v1, "NavigationGuider"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    return-void
.end method


# virtual methods
.method public dismissHelpDialog()V
    .locals 5

    .prologue
    .line 50
    sget-boolean v3, Lcom/android/launcher2/guide/NavigationGuider;->isNavigationDialogVisible:Z

    if-nez v3, :cond_1

    .line 67
    :cond_0
    :goto_0
    return-void

    .line 55
    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher2/guide/NavigationGuider;->getActivity()Landroid/app/Activity;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/Launcher;

    invoke-virtual {v3}, Lcom/android/launcher2/Launcher;->getHomeView()Lcom/android/launcher2/HomeView;

    move-result-object v2

    .line 56
    .local v2, "homeView":Lcom/android/launcher2/HomeView;
    invoke-virtual {p0}, Lcom/android/launcher2/guide/NavigationGuider;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/Launcher;

    .line 57
    .local v0, "act":Landroid/app/Activity;
    if-eqz v2, :cond_0

    .line 58
    const-string v3, "NavigationGuider"

    const-string v4, " frag!=null"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    invoke-static {v0}, Lcom/android/launcher2/guide/GuideFragment;->findMainView(Landroid/app/Activity;)Landroid/view/ViewGroup;

    move-result-object v3

    sput-object v3, Lcom/android/launcher2/guide/NavigationGuider;->layout:Landroid/view/ViewGroup;

    .line 60
    sget-object v3, Lcom/android/launcher2/guide/NavigationGuider;->layout:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 61
    .local v1, "childcount":I
    if-eqz v1, :cond_2

    .line 62
    sget-object v3, Lcom/android/launcher2/guide/NavigationGuider;->layout:Landroid/view/ViewGroup;

    add-int/lit8 v4, v1, -0x1

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->removeViewAt(I)V

    .line 63
    const/4 v3, 0x0

    sput-boolean v3, Lcom/android/launcher2/guide/NavigationGuider;->isNavigationDialogVisible:Z

    .line 65
    :cond_2
    const/4 v3, 0x0

    sput-object v3, Lcom/android/launcher2/guide/GuideFragment;->mGuider:Lcom/android/launcher2/guide/GuiderLifecycleListener;

    goto :goto_0
.end method

.method public bridge synthetic finish()V
    .locals 0

    .prologue
    .line 37
    invoke-super {p0}, Lcom/android/launcher2/guide/GuiderBase;->finish()V

    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 73
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 117
    invoke-virtual {p0}, Lcom/android/launcher2/guide/NavigationGuider;->dismissHelpDialog()V

    .line 118
    sget v0, Lcom/android/launcher2/guide/GuideFragment;->sHelpHubStepNumber:I

    packed-switch v0, :pswitch_data_0

    .line 125
    :goto_0
    return-void

    .line 120
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/launcher2/guide/NavigationGuider;->showHelpDialog()V

    goto :goto_0

    .line 118
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
    .line 96
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 102
    return-void
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 114
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 108
    return-void
.end method

.method public bridge synthetic onSwitcherChanged(Landroid/widget/CompoundButton;Z)Z
    .locals 1
    .param p1, "x0"    # Landroid/widget/CompoundButton;
    .param p2, "x1"    # Z

    .prologue
    .line 37
    invoke-super {p0, p1, p2}, Lcom/android/launcher2/guide/GuiderBase;->onSwitcherChanged(Landroid/widget/CompoundButton;Z)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic showCompleteDialog()V
    .locals 0

    .prologue
    .line 37
    invoke-super {p0}, Lcom/android/launcher2/guide/GuiderBase;->showCompleteDialog()V

    return-void
.end method

.method public showHelpDialog()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 77
    sget-boolean v3, Lcom/android/launcher2/guide/NavigationGuider;->isNavigationDialogVisible:Z

    if-eqz v3, :cond_1

    .line 90
    :cond_0
    :goto_0
    return-void

    .line 81
    :cond_1
    sput v5, Lcom/android/launcher2/guide/GuideFragment;->sHelpHubStepNumber:I

    .line 82
    invoke-virtual {p0}, Lcom/android/launcher2/guide/NavigationGuider;->getActivity()Landroid/app/Activity;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/Launcher;

    invoke-virtual {v3}, Lcom/android/launcher2/Launcher;->getHomeView()Lcom/android/launcher2/HomeView;

    move-result-object v1

    .line 83
    .local v1, "homeView":Lcom/android/launcher2/HomeView;
    invoke-virtual {p0}, Lcom/android/launcher2/guide/NavigationGuider;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/Launcher;

    .line 84
    .local v0, "act":Landroid/app/Activity;
    if-eqz v1, :cond_0

    .line 85
    invoke-static {v0}, Lcom/android/launcher2/guide/GuideFragment;->findMainView(Landroid/app/Activity;)Landroid/view/ViewGroup;

    move-result-object v3

    sput-object v3, Lcom/android/launcher2/guide/NavigationGuider;->layout:Landroid/view/ViewGroup;

    .line 86
    invoke-virtual {p0}, Lcom/android/launcher2/guide/NavigationGuider;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-string v4, "layout_inflater"

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    .line 87
    .local v2, "inflater":Landroid/view/LayoutInflater;
    const v3, 0x7f030013

    sget-object v4, Lcom/android/launcher2/guide/NavigationGuider;->layout:Landroid/view/ViewGroup;

    invoke-virtual {v2, v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    sput-object v3, Lcom/android/launcher2/guide/NavigationGuider;->menuLayout:Landroid/view/View;

    .line 88
    sput-boolean v5, Lcom/android/launcher2/guide/NavigationGuider;->isNavigationDialogVisible:Z

    goto :goto_0
.end method
