.class public final Lcom/android/launcher2/MenuWidgetsFragment;
.super Landroid/app/Fragment;
.source "MenuWidgetsFragment.java"

# interfaces
.implements Lcom/android/launcher2/Launcher$HardwareKeys;
.implements Lcom/android/launcher2/MenuView$NeedsTabHost;
.implements Lcom/android/launcher2/MenuView$PackageNotifications;
.implements Lcom/android/launcher2/mainmenu/PinchLayerView$OnPinchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher2/MenuWidgetsFragment$2;
    }
.end annotation


# static fields
.field private static final WIDGET_SAVED_STATE:Ljava/lang/String; = "WIDGET_SAVED_STATE"

.field private static final WIDGET_STATE_BUNDLE:Ljava/lang/String; = "WIDGET_STATE_BUNDLE"

.field private static cpuBooster:Landroid/os/DVFSHelper;


# instance fields
.field private comeFromHelp:Z

.field private mIsPaused:Z

.field private mPendingPackageUpdate:Z

.field private mPinchLayer:Lcom/android/launcher2/mainmenu/PinchLayerView;

.field private mTabHost:Lcom/android/launcher2/MenuView;

.field private mWidgetState:Lcom/android/launcher2/MenuWidgets$WidgetState;

.field private mWidgetStateBundle:Landroid/os/Bundle;

.field private mWidgets:Lcom/android/launcher2/MenuWidgets;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 52
    const/4 v0, 0x0

    sput-object v0, Lcom/android/launcher2/MenuWidgetsFragment;->cpuBooster:Landroid/os/DVFSHelper;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 35
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 50
    iput-boolean v0, p0, Lcom/android/launcher2/MenuWidgetsFragment;->mIsPaused:Z

    .line 51
    iput-boolean v0, p0, Lcom/android/launcher2/MenuWidgetsFragment;->mPendingPackageUpdate:Z

    .line 53
    iput-boolean v0, p0, Lcom/android/launcher2/MenuWidgetsFragment;->comeFromHelp:Z

    return-void
.end method

.method static synthetic access$000(Lcom/android/launcher2/MenuWidgetsFragment;)Lcom/android/launcher2/MenuWidgets;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher2/MenuWidgetsFragment;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/android/launcher2/MenuWidgetsFragment;->mWidgets:Lcom/android/launcher2/MenuWidgets;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/launcher2/MenuWidgetsFragment;)Lcom/android/launcher2/MenuWidgets$WidgetState;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher2/MenuWidgetsFragment;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/android/launcher2/MenuWidgetsFragment;->mWidgetState:Lcom/android/launcher2/MenuWidgets$WidgetState;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/launcher2/MenuWidgetsFragment;)Landroid/os/Bundle;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher2/MenuWidgetsFragment;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/android/launcher2/MenuWidgetsFragment;->mWidgetStateBundle:Landroid/os/Bundle;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/launcher2/MenuWidgetsFragment;)Lcom/android/launcher2/MenuView;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher2/MenuWidgetsFragment;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/android/launcher2/MenuWidgetsFragment;->mTabHost:Lcom/android/launcher2/MenuView;

    return-object v0
.end method

.method private updatePinchListener()V
    .locals 2

    .prologue
    .line 205
    iget-object v0, p0, Lcom/android/launcher2/MenuWidgetsFragment;->mPinchLayer:Lcom/android/launcher2/mainmenu/PinchLayerView;

    if-nez v0, :cond_0

    .line 213
    :goto_0
    return-void

    .line 208
    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/MenuWidgetsFragment;->mWidgetState:Lcom/android/launcher2/MenuWidgets$WidgetState;

    sget-object v1, Lcom/android/launcher2/MenuWidgets$WidgetState;->NORMAL:Lcom/android/launcher2/MenuWidgets$WidgetState;

    if-ne v0, v1, :cond_1

    .line 209
    iget-object v0, p0, Lcom/android/launcher2/MenuWidgetsFragment;->mPinchLayer:Lcom/android/launcher2/mainmenu/PinchLayerView;

    invoke-virtual {v0, p0}, Lcom/android/launcher2/mainmenu/PinchLayerView;->setOnPinchListener(Lcom/android/launcher2/mainmenu/PinchLayerView$OnPinchListener;)V

    goto :goto_0

    .line 211
    :cond_1
    iget-object v0, p0, Lcom/android/launcher2/MenuWidgetsFragment;->mPinchLayer:Lcom/android/launcher2/mainmenu/PinchLayerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/launcher2/mainmenu/PinchLayerView;->setOnPinchListener(Lcom/android/launcher2/mainmenu/PinchLayerView$OnPinchListener;)V

    goto :goto_0
.end method


# virtual methods
.method public changeWidgetState(Lcom/android/launcher2/MenuWidgets$WidgetState;)V
    .locals 3
    .param p1, "newState"    # Lcom/android/launcher2/MenuWidgets$WidgetState;

    .prologue
    .line 248
    iget-object v0, p0, Lcom/android/launcher2/MenuWidgetsFragment;->mWidgetState:Lcom/android/launcher2/MenuWidgets$WidgetState;

    .line 249
    .local v0, "oldState":Lcom/android/launcher2/MenuWidgets$WidgetState;
    if-eq p1, v0, :cond_0

    .line 250
    iput-object p1, p0, Lcom/android/launcher2/MenuWidgetsFragment;->mWidgetState:Lcom/android/launcher2/MenuWidgets$WidgetState;

    .line 251
    invoke-direct {p0}, Lcom/android/launcher2/MenuWidgetsFragment;->updatePinchListener()V

    .line 252
    iget-object v1, p0, Lcom/android/launcher2/MenuWidgetsFragment;->mWidgets:Lcom/android/launcher2/MenuWidgets;

    if-eqz v1, :cond_0

    .line 253
    iget-object v1, p0, Lcom/android/launcher2/MenuWidgetsFragment;->mWidgets:Lcom/android/launcher2/MenuWidgets;

    const-string v2, ""

    invoke-virtual {v1, v2}, Lcom/android/launcher2/MenuWidgets;->setSearchString(Ljava/lang/String;)V

    .line 254
    iget-object v1, p0, Lcom/android/launcher2/MenuWidgetsFragment;->mWidgets:Lcom/android/launcher2/MenuWidgets;

    invoke-virtual {v1, p1, v0}, Lcom/android/launcher2/MenuWidgets;->handleWidgetStateChange(Lcom/android/launcher2/MenuWidgets$WidgetState;Lcom/android/launcher2/MenuWidgets$WidgetState;)V

    .line 257
    :cond_0
    return-void
.end method

.method public getMenuWidgets()Lcom/android/launcher2/MenuWidgets;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/android/launcher2/MenuWidgetsFragment;->mWidgets:Lcom/android/launcher2/MenuWidgets;

    return-object v0
.end method

.method public getTabHost()Lcom/android/launcher2/MenuView;
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lcom/android/launcher2/MenuWidgetsFragment;->mTabHost:Lcom/android/launcher2/MenuView;

    return-object v0
.end method

.method public getWidgetState()Lcom/android/launcher2/MenuWidgets$WidgetState;
    .locals 1

    .prologue
    .line 244
    iget-object v0, p0, Lcom/android/launcher2/MenuWidgetsFragment;->mWidgetState:Lcom/android/launcher2/MenuWidgets$WidgetState;

    return-object v0
.end method

.method public onBackPressed()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 149
    iget-object v2, p0, Lcom/android/launcher2/MenuWidgetsFragment;->mWidgetState:Lcom/android/launcher2/MenuWidgets$WidgetState;

    if-nez v2, :cond_1

    .line 178
    :cond_0
    :goto_0
    return v1

    .line 150
    :cond_1
    iget-object v2, p0, Lcom/android/launcher2/MenuWidgetsFragment;->mWidgets:Lcom/android/launcher2/MenuWidgets;

    invoke-virtual {v2}, Lcom/android/launcher2/MenuWidgets;->getWidgetFolder()Lcom/android/launcher2/WidgetFolder;

    move-result-object v0

    .line 151
    .local v0, "widgetFolder":Lcom/android/launcher2/WidgetFolder;
    sget-object v2, Lcom/android/launcher2/MenuWidgetsFragment$2;->$SwitchMap$com$android$launcher2$MenuWidgets$WidgetState:[I

    iget-object v3, p0, Lcom/android/launcher2/MenuWidgetsFragment;->mWidgetState:Lcom/android/launcher2/MenuWidgets$WidgetState;

    invoke-virtual {v3}, Lcom/android/launcher2/MenuWidgets$WidgetState;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 171
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/android/launcher2/WidgetFolder;->isOpened()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 172
    iget-object v1, p0, Lcom/android/launcher2/MenuWidgetsFragment;->mWidgets:Lcom/android/launcher2/MenuWidgets;

    invoke-virtual {v1}, Lcom/android/launcher2/MenuWidgets;->closeFolder()Z

    .line 178
    :goto_1
    const/4 v1, 0x1

    goto :goto_0

    .line 154
    :pswitch_0
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/launcher2/WidgetFolder;->isOpened()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 155
    iget-object v1, p0, Lcom/android/launcher2/MenuWidgetsFragment;->mWidgets:Lcom/android/launcher2/MenuWidgets;

    invoke-virtual {v1}, Lcom/android/launcher2/MenuWidgets;->closeFolder()Z

    goto :goto_1

    .line 161
    :pswitch_1
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/android/launcher2/WidgetFolder;->isOpened()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 162
    iget-object v1, p0, Lcom/android/launcher2/MenuWidgetsFragment;->mWidgets:Lcom/android/launcher2/MenuWidgets;

    invoke-virtual {v1}, Lcom/android/launcher2/MenuWidgets;->closeFolder()Z

    goto :goto_1

    .line 164
    :cond_2
    sget-object v1, Lcom/android/launcher2/MenuWidgets$WidgetState;->NORMAL:Lcom/android/launcher2/MenuWidgets$WidgetState;

    invoke-virtual {p0, v1}, Lcom/android/launcher2/MenuWidgetsFragment;->changeWidgetState(Lcom/android/launcher2/MenuWidgets$WidgetState;)V

    goto :goto_1

    .line 168
    :pswitch_2
    iget-object v1, p0, Lcom/android/launcher2/MenuWidgetsFragment;->mWidgets:Lcom/android/launcher2/MenuWidgets;

    invoke-virtual {v1}, Lcom/android/launcher2/MenuWidgets;->getWidgetStateObj()Lcom/android/launcher2/MenuWidgets$WidgetStateObj;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/MenuWidgets$WidgetStatePageEdit;

    invoke-virtual {v1}, Lcom/android/launcher2/MenuWidgets$WidgetStatePageEdit;->exitWithAnimation()V

    goto :goto_1

    .line 174
    :cond_3
    sget-object v1, Lcom/android/launcher2/MenuWidgets$WidgetState;->NORMAL:Lcom/android/launcher2/MenuWidgets$WidgetState;

    invoke-virtual {p0, v1}, Lcom/android/launcher2/MenuWidgetsFragment;->changeWidgetState(Lcom/android/launcher2/MenuWidgets$WidgetState;)V

    goto :goto_1

    .line 151
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, -0x1

    .line 58
    const v1, 0x7f03004c

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/mainmenu/PinchLayerView;

    iput-object v1, p0, Lcom/android/launcher2/MenuWidgetsFragment;->mPinchLayer:Lcom/android/launcher2/mainmenu/PinchLayerView;

    .line 60
    iget-object v1, p0, Lcom/android/launcher2/MenuWidgetsFragment;->mPinchLayer:Lcom/android/launcher2/mainmenu/PinchLayerView;

    const v2, 0x7f0f00cc

    invoke-virtual {v1, v2}, Lcom/android/launcher2/mainmenu/PinchLayerView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/MenuWidgets;

    iput-object v1, p0, Lcom/android/launcher2/MenuWidgetsFragment;->mWidgets:Lcom/android/launcher2/MenuWidgets;

    .line 62
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getInst()Lcom/android/launcher2/LauncherApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher2/LauncherApplication;->getCpuBoosterObject()Landroid/os/DVFSHelper;

    move-result-object v1

    sput-object v1, Lcom/android/launcher2/MenuWidgetsFragment;->cpuBooster:Landroid/os/DVFSHelper;

    .line 63
    sget-object v1, Lcom/android/launcher2/MenuWidgetsFragment;->cpuBooster:Landroid/os/DVFSHelper;

    const-string v2, "Launcher_touch"

    invoke-virtual {v1, v2}, Landroid/os/DVFSHelper;->addExtraOptionsByDefaultPolicy(Ljava/lang/String;)V

    .line 64
    sget-object v1, Lcom/android/launcher2/MenuWidgetsFragment;->cpuBooster:Landroid/os/DVFSHelper;

    const/16 v2, 0x3e8

    invoke-virtual {v1, v2}, Landroid/os/DVFSHelper;->acquire(I)V

    .line 66
    iget-object v1, p0, Lcom/android/launcher2/MenuWidgetsFragment;->mWidgets:Lcom/android/launcher2/MenuWidgets;

    if-eqz v1, :cond_0

    .line 67
    iget-object v1, p0, Lcom/android/launcher2/MenuWidgetsFragment;->mWidgets:Lcom/android/launcher2/MenuWidgets;

    invoke-virtual {v1, p0}, Lcom/android/launcher2/MenuWidgets;->setMenuWidgetsFragment(Lcom/android/launcher2/MenuWidgetsFragment;)V

    .line 68
    iget-object v1, p0, Lcom/android/launcher2/MenuWidgetsFragment;->mWidgets:Lcom/android/launcher2/MenuWidgets;

    const-string v2, "onCreateView"

    invoke-virtual {v1, v2}, Lcom/android/launcher2/MenuWidgets;->updatePackages(Ljava/lang/String;)V

    .line 71
    :cond_0
    if-eqz p3, :cond_4

    .line 72
    const-string v1, "WIDGET_SAVED_STATE"

    invoke-virtual {p3, v1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 73
    .local v0, "widgetSavedState":I
    if-ne v3, v0, :cond_3

    .line 74
    sget-object v1, Lcom/android/launcher2/MenuWidgets$WidgetState;->NORMAL:Lcom/android/launcher2/MenuWidgets$WidgetState;

    iput-object v1, p0, Lcom/android/launcher2/MenuWidgetsFragment;->mWidgetState:Lcom/android/launcher2/MenuWidgets$WidgetState;

    .line 78
    :goto_0
    const-string v1, "WIDGET_STATE_BUNDLE"

    invoke-virtual {p3, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher2/MenuWidgetsFragment;->mWidgetStateBundle:Landroid/os/Bundle;

    .line 79
    iget-object v1, p0, Lcom/android/launcher2/MenuWidgetsFragment;->mWidgetState:Lcom/android/launcher2/MenuWidgets$WidgetState;

    iget-object v2, p0, Lcom/android/launcher2/MenuWidgetsFragment;->mWidgets:Lcom/android/launcher2/MenuWidgets;

    invoke-virtual {v1, v2}, Lcom/android/launcher2/MenuWidgets$WidgetState;->getObj(Lcom/android/launcher2/MenuWidgets;)Lcom/android/launcher2/MenuWidgets$WidgetStateObj;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher2/MenuWidgetsFragment;->mWidgetStateBundle:Landroid/os/Bundle;

    invoke-virtual {v1, v2}, Lcom/android/launcher2/MenuWidgets$WidgetStateObj;->restore(Landroid/os/Bundle;)V

    .line 85
    .end local v0    # "widgetSavedState":I
    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/android/launcher2/MenuWidgetsFragment;->mTabHost:Lcom/android/launcher2/MenuView;

    if-eqz v1, :cond_2

    .line 86
    iget-object v1, p0, Lcom/android/launcher2/MenuWidgetsFragment;->mTabHost:Lcom/android/launcher2/MenuView;

    invoke-virtual {p0, v1}, Lcom/android/launcher2/MenuWidgetsFragment;->setTabHost(Lcom/android/launcher2/MenuView;)V

    .line 89
    :cond_2
    invoke-direct {p0}, Lcom/android/launcher2/MenuWidgetsFragment;->updatePinchListener()V

    .line 90
    iget-object v1, p0, Lcom/android/launcher2/MenuWidgetsFragment;->mTabHost:Lcom/android/launcher2/MenuView;

    invoke-virtual {p0, v1}, Lcom/android/launcher2/MenuWidgetsFragment;->onShowTab(Lcom/android/launcher2/MenuView;)V

    .line 91
    iget-object v1, p0, Lcom/android/launcher2/MenuWidgetsFragment;->mPinchLayer:Lcom/android/launcher2/mainmenu/PinchLayerView;

    return-object v1

    .line 76
    .restart local v0    # "widgetSavedState":I
    :cond_3
    invoke-static {}, Lcom/android/launcher2/MenuWidgets$WidgetState;->values()[Lcom/android/launcher2/MenuWidgets$WidgetState;

    move-result-object v1

    aget-object v1, v1, v0

    iput-object v1, p0, Lcom/android/launcher2/MenuWidgetsFragment;->mWidgetState:Lcom/android/launcher2/MenuWidgets$WidgetState;

    goto :goto_0

    .line 81
    .end local v0    # "widgetSavedState":I
    :cond_4
    iget-object v1, p0, Lcom/android/launcher2/MenuWidgetsFragment;->mWidgetState:Lcom/android/launcher2/MenuWidgets$WidgetState;

    if-nez v1, :cond_1

    .line 82
    sget-object v1, Lcom/android/launcher2/MenuWidgets$WidgetState;->NORMAL:Lcom/android/launcher2/MenuWidgets$WidgetState;

    iput-object v1, p0, Lcom/android/launcher2/MenuWidgetsFragment;->mWidgetState:Lcom/android/launcher2/MenuWidgets$WidgetState;

    goto :goto_1
.end method

.method public onDestroyView()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 100
    invoke-super {p0}, Landroid/app/Fragment;->onDestroyView()V

    .line 101
    iget-object v0, p0, Lcom/android/launcher2/MenuWidgetsFragment;->mTabHost:Lcom/android/launcher2/MenuView;

    invoke-virtual {p0, v0}, Lcom/android/launcher2/MenuWidgetsFragment;->onHideTab(Lcom/android/launcher2/MenuView;)V

    .line 102
    iput-object v2, p0, Lcom/android/launcher2/MenuWidgetsFragment;->mPinchLayer:Lcom/android/launcher2/mainmenu/PinchLayerView;

    .line 103
    iget-object v0, p0, Lcom/android/launcher2/MenuWidgetsFragment;->mWidgets:Lcom/android/launcher2/MenuWidgets;

    const-string v1, "onDestroyView"

    invoke-virtual {v0, v1}, Lcom/android/launcher2/MenuWidgets;->cleanupCache(Ljava/lang/String;)V

    .line 104
    iput-object v2, p0, Lcom/android/launcher2/MenuWidgetsFragment;->mWidgets:Lcom/android/launcher2/MenuWidgets;

    .line 105
    return-void
.end method

.method public onExitAllApps()V
    .locals 2

    .prologue
    .line 182
    iget-object v0, p0, Lcom/android/launcher2/MenuWidgetsFragment;->mWidgets:Lcom/android/launcher2/MenuWidgets;

    if-eqz v0, :cond_2

    .line 183
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/MenuWidgetsFragment;->mWidgetStateBundle:Landroid/os/Bundle;

    .line 184
    iget-object v0, p0, Lcom/android/launcher2/MenuWidgetsFragment;->mWidgets:Lcom/android/launcher2/MenuWidgets;

    invoke-virtual {v0}, Lcom/android/launcher2/MenuWidgets;->getWidgetState()Lcom/android/launcher2/MenuWidgets$WidgetState;

    move-result-object v0

    sget-object v1, Lcom/android/launcher2/MenuWidgets$WidgetState;->PAGE_EDIT:Lcom/android/launcher2/MenuWidgets$WidgetState;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/MenuWidgetsFragment;->mWidgets:Lcom/android/launcher2/MenuWidgets;

    invoke-virtual {v0}, Lcom/android/launcher2/MenuWidgets;->getWidgetState()Lcom/android/launcher2/MenuWidgets$WidgetState;

    move-result-object v0

    sget-object v1, Lcom/android/launcher2/MenuWidgets$WidgetState;->SEARCH:Lcom/android/launcher2/MenuWidgets$WidgetState;

    if-ne v0, v1, :cond_1

    .line 185
    :cond_0
    sget-object v0, Lcom/android/launcher2/MenuWidgets$WidgetState;->NORMAL:Lcom/android/launcher2/MenuWidgets$WidgetState;

    invoke-virtual {p0, v0}, Lcom/android/launcher2/MenuWidgetsFragment;->changeWidgetState(Lcom/android/launcher2/MenuWidgets$WidgetState;)V

    .line 187
    :cond_1
    iget-object v0, p0, Lcom/android/launcher2/MenuWidgetsFragment;->mWidgetState:Lcom/android/launcher2/MenuWidgets$WidgetState;

    if-eqz v0, :cond_2

    .line 188
    iget-object v0, p0, Lcom/android/launcher2/MenuWidgetsFragment;->mWidgetState:Lcom/android/launcher2/MenuWidgets$WidgetState;

    iget-object v1, p0, Lcom/android/launcher2/MenuWidgetsFragment;->mWidgets:Lcom/android/launcher2/MenuWidgets;

    invoke-virtual {v0, v1}, Lcom/android/launcher2/MenuWidgets$WidgetState;->getObj(Lcom/android/launcher2/MenuWidgets;)Lcom/android/launcher2/MenuWidgets$WidgetStateObj;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher2/MenuWidgetsFragment;->mWidgetStateBundle:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Lcom/android/launcher2/MenuWidgets$WidgetStateObj;->save(Landroid/os/Bundle;)V

    .line 190
    :cond_2
    return-void
.end method

.method public onHideTab(Lcom/android/launcher2/MenuView;)V
    .locals 0
    .param p1, "tabHost"    # Lcom/android/launcher2/MenuView;

    .prologue
    .line 315
    return-void
.end method

.method public onHomePressed(Z)Z
    .locals 2
    .param p1, "moveToDefaultScreen"    # Z

    .prologue
    .line 194
    iget-object v0, p0, Lcom/android/launcher2/MenuWidgetsFragment;->mWidgetState:Lcom/android/launcher2/MenuWidgets$WidgetState;

    sget-object v1, Lcom/android/launcher2/MenuWidgets$WidgetState;->PAGE_EDIT:Lcom/android/launcher2/MenuWidgets$WidgetState;

    if-ne v0, v1, :cond_0

    .line 195
    sget-object v0, Lcom/android/launcher2/MenuWidgets$WidgetState;->NORMAL:Lcom/android/launcher2/MenuWidgets$WidgetState;

    invoke-virtual {p0, v0}, Lcom/android/launcher2/MenuWidgetsFragment;->changeWidgetState(Lcom/android/launcher2/MenuWidgets$WidgetState;)V

    .line 198
    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/MenuWidgetsFragment;->mWidgets:Lcom/android/launcher2/MenuWidgets;

    if-eqz v0, :cond_1

    .line 199
    iget-object v0, p0, Lcom/android/launcher2/MenuWidgetsFragment;->mWidgets:Lcom/android/launcher2/MenuWidgets;

    invoke-virtual {v0}, Lcom/android/launcher2/MenuWidgets;->closeFolder()Z

    .line 200
    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher2/MenuWidgetsFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher2/AddAppsWidgetToastPopUp;->dismiss(Landroid/app/FragmentManager;)V

    .line 201
    const/4 v0, 0x0

    return v0
.end method

.method public onOptionSelectedSearch(Lcom/android/launcher2/MenuView;)V
    .locals 1
    .param p1, "tabHost"    # Lcom/android/launcher2/MenuView;

    .prologue
    .line 135
    sget-object v0, Lcom/android/launcher2/MenuWidgets$WidgetState;->SEARCH:Lcom/android/launcher2/MenuWidgets$WidgetState;

    invoke-virtual {p0, v0}, Lcom/android/launcher2/MenuWidgetsFragment;->changeWidgetState(Lcom/android/launcher2/MenuWidgets$WidgetState;)V

    .line 136
    return-void
.end method

.method public onOptionSelectedUninstall(Lcom/android/launcher2/MenuView;)V
    .locals 1
    .param p1, "tabHost"    # Lcom/android/launcher2/MenuView;

    .prologue
    .line 139
    sget-object v0, Lcom/android/launcher2/MenuWidgets$WidgetState;->UNINSTALL:Lcom/android/launcher2/MenuWidgets$WidgetState;

    invoke-virtual {p0, v0}, Lcom/android/launcher2/MenuWidgetsFragment;->changeWidgetState(Lcom/android/launcher2/MenuWidgets$WidgetState;)V

    .line 140
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 319
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/launcher2/MenuWidgetsFragment;->mIsPaused:Z

    .line 320
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 321
    iget-object v1, p0, Lcom/android/launcher2/MenuWidgetsFragment;->mWidgets:Lcom/android/launcher2/MenuWidgets;

    invoke-virtual {v1}, Lcom/android/launcher2/MenuWidgets;->getWidgetFolder()Lcom/android/launcher2/WidgetFolder;

    move-result-object v0

    .line 322
    .local v0, "widgetFolder":Lcom/android/launcher2/WidgetFolder;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/launcher2/WidgetFolder;->isOpened()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 323
    iget-object v1, p0, Lcom/android/launcher2/MenuWidgetsFragment;->mWidgets:Lcom/android/launcher2/MenuWidgets;

    invoke-virtual {v1}, Lcom/android/launcher2/MenuWidgets;->closeFolder()Z

    .line 325
    :cond_0
    return-void
.end method

.method public onPinch()Z
    .locals 1

    .prologue
    .line 113
    const/4 v0, 0x1

    return v0
.end method

.method public onResume()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 329
    iput-boolean v2, p0, Lcom/android/launcher2/MenuWidgetsFragment;->mIsPaused:Z

    .line 330
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 332
    iget-boolean v0, p0, Lcom/android/launcher2/MenuWidgetsFragment;->comeFromHelp:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/android/launcher2/Launcher;->isHelpAppRunning:Z

    if-nez v0, :cond_0

    .line 334
    iget-object v0, p0, Lcom/android/launcher2/MenuWidgetsFragment;->mWidgets:Lcom/android/launcher2/MenuWidgets;

    invoke-virtual {v0, p0}, Lcom/android/launcher2/MenuWidgets;->setMenuWidgetsFragment(Lcom/android/launcher2/MenuWidgetsFragment;)V

    .line 335
    iget-object v0, p0, Lcom/android/launcher2/MenuWidgetsFragment;->mWidgets:Lcom/android/launcher2/MenuWidgets;

    const-string v1, "onCreateView"

    invoke-virtual {v0, v1}, Lcom/android/launcher2/MenuWidgets;->updatePackages(Ljava/lang/String;)V

    .line 336
    iput-boolean v2, p0, Lcom/android/launcher2/MenuWidgetsFragment;->comeFromHelp:Z

    .line 339
    :cond_0
    iget-boolean v0, p0, Lcom/android/launcher2/MenuWidgetsFragment;->comeFromHelp:Z

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/android/launcher2/Launcher;->isHelpAppRunning:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher2/MenuWidgetsFragment;->mWidgets:Lcom/android/launcher2/MenuWidgets;

    if-eqz v0, :cond_1

    .line 341
    iget-object v0, p0, Lcom/android/launcher2/MenuWidgetsFragment;->mWidgets:Lcom/android/launcher2/MenuWidgets;

    invoke-virtual {v0, p0}, Lcom/android/launcher2/MenuWidgets;->setMenuWidgetsFragment(Lcom/android/launcher2/MenuWidgetsFragment;)V

    .line 342
    iget-object v0, p0, Lcom/android/launcher2/MenuWidgetsFragment;->mWidgets:Lcom/android/launcher2/MenuWidgets;

    const-string v1, "onCreateView"

    invoke-virtual {v0, v1}, Lcom/android/launcher2/MenuWidgets;->updatePackages(Ljava/lang/String;)V

    .line 343
    iput-boolean v3, p0, Lcom/android/launcher2/MenuWidgetsFragment;->comeFromHelp:Z

    .line 345
    :cond_1
    iget-boolean v0, p0, Lcom/android/launcher2/MenuWidgetsFragment;->comeFromHelp:Z

    if-eqz v0, :cond_2

    sget-boolean v0, Lcom/android/launcher2/Launcher;->isHelpAppRunning:Z

    if-eqz v0, :cond_2

    .line 346
    iget-object v0, p0, Lcom/android/launcher2/MenuWidgetsFragment;->mWidgets:Lcom/android/launcher2/MenuWidgets;

    invoke-virtual {v0, p0}, Lcom/android/launcher2/MenuWidgets;->setMenuWidgetsFragment(Lcom/android/launcher2/MenuWidgetsFragment;)V

    .line 347
    iget-object v0, p0, Lcom/android/launcher2/MenuWidgetsFragment;->mWidgets:Lcom/android/launcher2/MenuWidgets;

    const-string v1, "onCreateView"

    invoke-virtual {v0, v1}, Lcom/android/launcher2/MenuWidgets;->updatePackages(Ljava/lang/String;)V

    .line 348
    iput-boolean v3, p0, Lcom/android/launcher2/MenuWidgetsFragment;->comeFromHelp:Z

    .line 353
    :cond_2
    iget-boolean v0, p0, Lcom/android/launcher2/MenuWidgetsFragment;->mPendingPackageUpdate:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/launcher2/MenuWidgetsFragment;->mWidgets:Lcom/android/launcher2/MenuWidgets;

    if-eqz v0, :cond_3

    .line 354
    iput-boolean v2, p0, Lcom/android/launcher2/MenuWidgetsFragment;->mPendingPackageUpdate:Z

    .line 355
    iget-object v0, p0, Lcom/android/launcher2/MenuWidgetsFragment;->mWidgets:Lcom/android/launcher2/MenuWidgets;

    invoke-virtual {v0}, Lcom/android/launcher2/MenuWidgets;->packagesChanged()V

    .line 357
    :cond_3
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 231
    invoke-super {p0, p1}, Landroid/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 233
    iget-object v0, p0, Lcom/android/launcher2/MenuWidgetsFragment;->mWidgetState:Lcom/android/launcher2/MenuWidgets$WidgetState;

    if-eqz v0, :cond_0

    .line 234
    const-string v0, "WIDGET_SAVED_STATE"

    iget-object v1, p0, Lcom/android/launcher2/MenuWidgetsFragment;->mWidgetState:Lcom/android/launcher2/MenuWidgets$WidgetState;

    invoke-virtual {v1}, Lcom/android/launcher2/MenuWidgets$WidgetState;->ordinal()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 235
    iget-object v0, p0, Lcom/android/launcher2/MenuWidgetsFragment;->mWidgets:Lcom/android/launcher2/MenuWidgets;

    if-eqz v0, :cond_0

    .line 236
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/MenuWidgetsFragment;->mWidgetStateBundle:Landroid/os/Bundle;

    .line 237
    iget-object v0, p0, Lcom/android/launcher2/MenuWidgetsFragment;->mWidgetState:Lcom/android/launcher2/MenuWidgets$WidgetState;

    iget-object v1, p0, Lcom/android/launcher2/MenuWidgetsFragment;->mWidgets:Lcom/android/launcher2/MenuWidgets;

    invoke-virtual {v0, v1}, Lcom/android/launcher2/MenuWidgets$WidgetState;->getObj(Lcom/android/launcher2/MenuWidgets;)Lcom/android/launcher2/MenuWidgets$WidgetStateObj;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher2/MenuWidgetsFragment;->mWidgetStateBundle:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Lcom/android/launcher2/MenuWidgets$WidgetStateObj;->save(Landroid/os/Bundle;)V

    .line 238
    const-string v0, "WIDGET_STATE_BUNDLE"

    iget-object v1, p0, Lcom/android/launcher2/MenuWidgetsFragment;->mWidgetStateBundle:Landroid/os/Bundle;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 241
    :cond_0
    return-void
.end method

.method public onShowTab(Lcom/android/launcher2/MenuView;)V
    .locals 2
    .param p1, "tabHost"    # Lcom/android/launcher2/MenuView;

    .prologue
    .line 273
    iget-object v0, p0, Lcom/android/launcher2/MenuWidgetsFragment;->mWidgets:Lcom/android/launcher2/MenuWidgets;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/android/launcher2/MenuView;->isCurrentTabWidgets()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 274
    invoke-static {}, Lcom/android/launcher2/Launcher;->isOptionMenuShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 275
    invoke-virtual {p0}, Lcom/android/launcher2/MenuWidgetsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher2/Launcher;->closePopupMenu()V

    .line 277
    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/MenuWidgetsFragment;->mWidgets:Lcom/android/launcher2/MenuWidgets;

    invoke-virtual {v0}, Lcom/android/launcher2/MenuWidgets;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/android/launcher2/MenuWidgetsFragment$1;

    invoke-direct {v1, p0}, Lcom/android/launcher2/MenuWidgetsFragment$1;-><init>(Lcom/android/launcher2/MenuWidgetsFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 311
    :cond_1
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 118
    invoke-super {p0}, Landroid/app/Fragment;->onStop()V

    .line 119
    iget-object v1, p0, Lcom/android/launcher2/MenuWidgetsFragment;->mWidgets:Lcom/android/launcher2/MenuWidgets;

    invoke-virtual {v1}, Lcom/android/launcher2/MenuWidgets;->getWidgetFolder()Lcom/android/launcher2/WidgetFolder;

    move-result-object v0

    .line 120
    .local v0, "widgetFolder":Lcom/android/launcher2/WidgetFolder;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/launcher2/WidgetFolder;->isOpened()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 121
    iget-object v1, p0, Lcom/android/launcher2/MenuWidgetsFragment;->mWidgets:Lcom/android/launcher2/MenuWidgets;

    invoke-virtual {v1}, Lcom/android/launcher2/MenuWidgets;->closeFolder()Z

    .line 123
    :cond_0
    iget-object v1, p0, Lcom/android/launcher2/MenuWidgetsFragment;->mWidgets:Lcom/android/launcher2/MenuWidgets;

    invoke-virtual {v1}, Lcom/android/launcher2/MenuWidgets;->onStop()V

    .line 124
    return-void
.end method

.method public packagesChanged()V
    .locals 1

    .prologue
    .line 219
    iget-object v0, p0, Lcom/android/launcher2/MenuWidgetsFragment;->mWidgets:Lcom/android/launcher2/MenuWidgets;

    if-eqz v0, :cond_0

    .line 221
    iget-boolean v0, p0, Lcom/android/launcher2/MenuWidgetsFragment;->mIsPaused:Z

    if-eqz v0, :cond_1

    .line 222
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher2/MenuWidgetsFragment;->mPendingPackageUpdate:Z

    .line 227
    :cond_0
    :goto_0
    return-void

    .line 224
    :cond_1
    iget-object v0, p0, Lcom/android/launcher2/MenuWidgetsFragment;->mWidgets:Lcom/android/launcher2/MenuWidgets;

    invoke-virtual {v0}, Lcom/android/launcher2/MenuWidgets;->packagesChanged()V

    goto :goto_0
.end method

.method public refreshWidgetStateModel()V
    .locals 2

    .prologue
    .line 260
    iget-object v0, p0, Lcom/android/launcher2/MenuWidgetsFragment;->mWidgets:Lcom/android/launcher2/MenuWidgets;

    if-eqz v0, :cond_0

    .line 261
    iget-object v0, p0, Lcom/android/launcher2/MenuWidgetsFragment;->mWidgets:Lcom/android/launcher2/MenuWidgets;

    iget-object v1, p0, Lcom/android/launcher2/MenuWidgetsFragment;->mWidgetState:Lcom/android/launcher2/MenuWidgets$WidgetState;

    invoke-virtual {v0, v1}, Lcom/android/launcher2/MenuWidgets;->refreshWidgetStateModel(Lcom/android/launcher2/MenuWidgets$WidgetState;)V

    .line 263
    :cond_0
    return-void
.end method

.method public refreshWidgetStateView()V
    .locals 2

    .prologue
    .line 266
    iget-object v0, p0, Lcom/android/launcher2/MenuWidgetsFragment;->mWidgets:Lcom/android/launcher2/MenuWidgets;

    if-eqz v0, :cond_0

    .line 267
    iget-object v0, p0, Lcom/android/launcher2/MenuWidgetsFragment;->mWidgets:Lcom/android/launcher2/MenuWidgets;

    iget-object v1, p0, Lcom/android/launcher2/MenuWidgetsFragment;->mWidgetState:Lcom/android/launcher2/MenuWidgets$WidgetState;

    invoke-virtual {v0, v1}, Lcom/android/launcher2/MenuWidgets;->refreshWidgetStateView(Lcom/android/launcher2/MenuWidgets$WidgetState;)V

    .line 269
    :cond_0
    return-void
.end method

.method public setTabHost(Lcom/android/launcher2/MenuView;)V
    .locals 1
    .param p1, "tabHost"    # Lcom/android/launcher2/MenuView;

    .prologue
    .line 128
    iput-object p1, p0, Lcom/android/launcher2/MenuWidgetsFragment;->mTabHost:Lcom/android/launcher2/MenuView;

    .line 129
    iget-object v0, p0, Lcom/android/launcher2/MenuWidgetsFragment;->mWidgets:Lcom/android/launcher2/MenuWidgets;

    if-eqz v0, :cond_0

    .line 130
    iget-object v0, p0, Lcom/android/launcher2/MenuWidgetsFragment;->mWidgets:Lcom/android/launcher2/MenuWidgets;

    invoke-virtual {v0, p1}, Lcom/android/launcher2/MenuWidgets;->setTabHost(Lcom/android/launcher2/MenuView;)V

    .line 132
    :cond_0
    return-void
.end method
