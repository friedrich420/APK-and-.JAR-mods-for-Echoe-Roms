.class public final Lcom/android/launcher2/guide/GuideFragment;
.super Ljava/lang/Object;
.source "GuideFragment.java"


# static fields
.field public static CSCFEATURE_LAUNCHER_DISABLEHELPUI:Z = false

.field public static GMode:Ljava/lang/String; = null

.field public static final TAG:Ljava/lang/String; = "GuideFragment"

.field public static currentPageToStopNavigation:I

.field public static instance:Lcom/android/launcher2/guide/GuideFragment;

.field public static isExtraWorkspacePageAdded:Z

.field public static isGuideCompleted:Z

.field public static isViewApps:Z

.field public static isViewAppsDialogDismissed:Z

.field public static isWallpaperGuide_Toast3_visible:Z

.field public static isWrongActionDialogVisible:Z

.field public static mGuider:Lcom/android/launcher2/guide/GuiderLifecycleListener;

.field public static sHelpHubStepNumber:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 45
    sput-boolean v0, Lcom/android/launcher2/guide/GuideFragment;->isExtraWorkspacePageAdded:Z

    .line 47
    sput-boolean v0, Lcom/android/launcher2/guide/GuideFragment;->CSCFEATURE_LAUNCHER_DISABLEHELPUI:Z

    .line 48
    sput-boolean v0, Lcom/android/launcher2/guide/GuideFragment;->isViewApps:Z

    .line 49
    sput-boolean v0, Lcom/android/launcher2/guide/GuideFragment;->isViewAppsDialogDismissed:Z

    .line 50
    sput v0, Lcom/android/launcher2/guide/GuideFragment;->currentPageToStopNavigation:I

    .line 51
    sput-object v1, Lcom/android/launcher2/guide/GuideFragment;->GMode:Ljava/lang/String;

    .line 52
    sput-boolean v0, Lcom/android/launcher2/guide/GuideFragment;->isWallpaperGuide_Toast3_visible:Z

    .line 53
    sput-boolean v0, Lcom/android/launcher2/guide/GuideFragment;->isGuideCompleted:Z

    .line 57
    sput-object v1, Lcom/android/launcher2/guide/GuideFragment;->mGuider:Lcom/android/launcher2/guide/GuiderLifecycleListener;

    .line 58
    sput-boolean v0, Lcom/android/launcher2/guide/GuideFragment;->isWrongActionDialogVisible:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 276
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 278
    return-void
.end method

.method public static declared-synchronized deployGuide(Landroid/app/Activity;Landroid/content/Intent;)V
    .locals 12
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 69
    const-class v8, Lcom/android/launcher2/guide/GuideFragment;

    monitor-enter v8

    if-nez p1, :cond_1

    .line 182
    :cond_0
    :goto_0
    monitor-exit v8

    return-void

    .line 72
    :cond_1
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v7

    if-eqz v7, :cond_2

    .line 73
    const-string v7, "GuideFragment"

    const-string v9, "get extras not null"

    invoke-static {v7, v9}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    const-string v7, "homescreen:guide_mode"

    invoke-virtual {p1, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    sput-object v7, Lcom/android/launcher2/guide/GuideFragment;->GMode:Ljava/lang/String;

    .line 75
    sget-object v7, Lcom/android/launcher2/guide/GuideFragment;->GMode:Ljava/lang/String;

    if-nez v7, :cond_2

    .line 76
    const-string v7, "GuideFragment"

    const-string v9, "guide mode is not ours"

    invoke-static {v7, v9}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 69
    :catchall_0
    move-exception v7

    monitor-exit v8

    throw v7

    .line 81
    :cond_2
    :try_start_1
    move-object v0, p0

    check-cast v0, Lcom/android/launcher2/Launcher;

    move-object v3, v0

    .line 82
    .local v3, "launcher":Lcom/android/launcher2/Launcher;
    invoke-virtual {v3}, Lcom/android/launcher2/Launcher;->getHomeView()Lcom/android/launcher2/HomeView;

    move-result-object v2

    .line 83
    .local v2, "homeView":Lcom/android/launcher2/HomeView;
    invoke-virtual {v3}, Lcom/android/launcher2/Launcher;->getMenuView()Lcom/android/launcher2/MenuView;

    move-result-object v5

    .line 85
    .local v5, "menuView":Lcom/android/launcher2/MenuView;
    sget-object v7, Lcom/android/launcher2/guide/GuideFragment;->GMode:Ljava/lang/String;

    const-string v9, "onBackPressed"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 86
    move-object v0, p0

    check-cast v0, Lcom/android/launcher2/Launcher;

    move-object v7, v0

    invoke-virtual {v7}, Lcom/android/launcher2/Launcher;->exitAllApps()V

    .line 89
    :cond_3
    if-nez v2, :cond_4

    if-eqz v5, :cond_1a

    .line 90
    :cond_4
    sget-object v7, Lcom/android/launcher2/guide/GuideFragment;->GMode:Ljava/lang/String;

    const-string v9, "onBackPressed"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_d

    .line 91
    const-string v7, "currentGmode"

    invoke-virtual {p1, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 92
    .local v6, "oldGmode":Ljava/lang/String;
    sput-object v6, Lcom/android/launcher2/guide/GuideFragment;->GMode:Ljava/lang/String;

    .line 93
    const-string v7, "addapps"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 94
    const/4 v7, 0x0

    sput-boolean v7, Lcom/android/launcher2/guide/GuideFragment;->isViewApps:Z

    .line 95
    new-instance v7, Lcom/android/launcher2/guide/AddAppsGuider;

    invoke-direct {v7, p0}, Lcom/android/launcher2/guide/AddAppsGuider;-><init>(Landroid/app/Activity;)V

    sput-object v7, Lcom/android/launcher2/guide/GuideFragment;->mGuider:Lcom/android/launcher2/guide/GuiderLifecycleListener;

    .line 97
    :cond_5
    const-string v7, "change_wallpaper"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 98
    const/4 v7, 0x0

    sput-boolean v7, Lcom/android/launcher2/guide/GuideFragment;->isViewApps:Z

    .line 99
    new-instance v7, Lcom/android/launcher2/guide/ChangeWallpaperGuider;

    invoke-direct {v7, p0}, Lcom/android/launcher2/guide/ChangeWallpaperGuider;-><init>(Landroid/app/Activity;)V

    sput-object v7, Lcom/android/launcher2/guide/GuideFragment;->mGuider:Lcom/android/launcher2/guide/GuiderLifecycleListener;

    .line 101
    :cond_6
    const-string v7, "add_widgets"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 102
    new-instance v7, Lcom/android/launcher2/guide/AddWidgetsGuider;

    invoke-direct {v7, p0}, Lcom/android/launcher2/guide/AddWidgetsGuider;-><init>(Landroid/app/Activity;)V

    sput-object v7, Lcom/android/launcher2/guide/GuideFragment;->mGuider:Lcom/android/launcher2/guide/GuiderLifecycleListener;

    .line 103
    const/4 v7, 0x0

    sput-boolean v7, Lcom/android/launcher2/guide/GuideFragment;->isViewApps:Z

    .line 105
    :cond_7
    const-string v7, "view_all_apps"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 106
    const/4 v7, 0x0

    sput-boolean v7, Lcom/android/launcher2/guide/GuideFragment;->isViewApps:Z

    .line 107
    new-instance v7, Lcom/android/launcher2/guide/ViewAppsGuider;

    invoke-direct {v7, p0}, Lcom/android/launcher2/guide/ViewAppsGuider;-><init>(Landroid/app/Activity;)V

    sput-object v7, Lcom/android/launcher2/guide/GuideFragment;->mGuider:Lcom/android/launcher2/guide/GuiderLifecycleListener;

    .line 109
    :cond_8
    const-string v7, "resize_widgets"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 110
    new-instance v7, Lcom/android/launcher2/guide/ResizeWidgetsGuider;

    invoke-direct {v7, p0}, Lcom/android/launcher2/guide/ResizeWidgetsGuider;-><init>(Landroid/app/Activity;)V

    sput-object v7, Lcom/android/launcher2/guide/GuideFragment;->mGuider:Lcom/android/launcher2/guide/GuiderLifecycleListener;

    .line 112
    :cond_9
    const-string v7, "create_folder"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_a

    .line 113
    new-instance v7, Lcom/android/launcher2/guide/CreateFolderGuider;

    invoke-direct {v7, p0}, Lcom/android/launcher2/guide/CreateFolderGuider;-><init>(Landroid/app/Activity;)V

    sput-object v7, Lcom/android/launcher2/guide/GuideFragment;->mGuider:Lcom/android/launcher2/guide/GuiderLifecycleListener;

    .line 115
    :cond_a
    const-string v7, "move_app"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_b

    .line 116
    new-instance v7, Lcom/android/launcher2/guide/MoveAppsGuider;

    invoke-direct {v7, p0}, Lcom/android/launcher2/guide/MoveAppsGuider;-><init>(Landroid/app/Activity;)V

    sput-object v7, Lcom/android/launcher2/guide/GuideFragment;->mGuider:Lcom/android/launcher2/guide/GuiderLifecycleListener;

    .line 118
    :cond_b
    const-string v7, "remove_items"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_c

    .line 119
    new-instance v7, Lcom/android/launcher2/guide/RemoveItemsGuider;

    invoke-direct {v7, p0}, Lcom/android/launcher2/guide/RemoveItemsGuider;-><init>(Landroid/app/Activity;)V

    sput-object v7, Lcom/android/launcher2/guide/GuideFragment;->mGuider:Lcom/android/launcher2/guide/GuiderLifecycleListener;

    .line 121
    :cond_c
    sget-object v7, Lcom/android/launcher2/guide/GuideFragment;->mGuider:Lcom/android/launcher2/guide/GuiderLifecycleListener;

    if-eqz v7, :cond_0

    .line 122
    sget-object v7, Lcom/android/launcher2/guide/GuideFragment;->mGuider:Lcom/android/launcher2/guide/GuiderLifecycleListener;

    invoke-interface {v7}, Lcom/android/launcher2/guide/GuiderLifecycleListener;->dismissHelpDialog()V

    goto/16 :goto_0

    .line 125
    .end local v6    # "oldGmode":Ljava/lang/String;
    :cond_d
    sget-object v7, Lcom/android/launcher2/guide/GuideFragment;->GMode:Ljava/lang/String;

    const-string v9, "addapps"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_10

    .line 126
    sget-object v7, Lcom/android/launcher2/guide/GuideFragment;->mGuider:Lcom/android/launcher2/guide/GuiderLifecycleListener;

    if-eqz v7, :cond_e

    .line 127
    const-string v7, "GuideFragment"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, ""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-object v10, Lcom/android/launcher2/guide/GuideFragment;->mGuider:Lcom/android/launcher2/guide/GuiderLifecycleListener;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    sget-object v7, Lcom/android/launcher2/guide/GuideFragment;->mGuider:Lcom/android/launcher2/guide/GuiderLifecycleListener;

    invoke-interface {v7}, Lcom/android/launcher2/guide/GuiderLifecycleListener;->dismissHelpDialog()V

    .line 129
    const/4 v7, 0x0

    sput-object v7, Lcom/android/launcher2/guide/GuideFragment;->mGuider:Lcom/android/launcher2/guide/GuiderLifecycleListener;

    .line 131
    :cond_e
    new-instance v7, Lcom/android/launcher2/guide/AddAppsGuider;

    invoke-direct {v7, p0}, Lcom/android/launcher2/guide/AddAppsGuider;-><init>(Landroid/app/Activity;)V

    sput-object v7, Lcom/android/launcher2/guide/GuideFragment;->mGuider:Lcom/android/launcher2/guide/GuiderLifecycleListener;

    .line 169
    :cond_f
    :goto_1
    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    .line 170
    .local v4, "mHandler":Landroid/os/Handler;
    new-instance v7, Lcom/android/launcher2/guide/GuideFragment$1;

    invoke-direct {v7}, Lcom/android/launcher2/guide/GuideFragment$1;-><init>()V

    const-wide/16 v10, 0x190

    invoke-virtual {v4, v7, v10, v11}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    .line 133
    .end local v4    # "mHandler":Landroid/os/Handler;
    :cond_10
    sget-object v7, Lcom/android/launcher2/guide/GuideFragment;->GMode:Ljava/lang/String;

    const-string v9, "view_all_apps"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_12

    .line 134
    const/4 v7, 0x1

    sput-boolean v7, Lcom/android/launcher2/guide/GuideFragment;->isViewApps:Z

    .line 135
    sget-object v7, Lcom/android/launcher2/guide/GuideFragment;->mGuider:Lcom/android/launcher2/guide/GuiderLifecycleListener;

    if-eqz v7, :cond_11

    .line 136
    sget-object v7, Lcom/android/launcher2/guide/GuideFragment;->mGuider:Lcom/android/launcher2/guide/GuiderLifecycleListener;

    invoke-interface {v7}, Lcom/android/launcher2/guide/GuiderLifecycleListener;->dismissHelpDialog()V

    .line 137
    const/4 v7, 0x0

    sput-object v7, Lcom/android/launcher2/guide/GuideFragment;->mGuider:Lcom/android/launcher2/guide/GuiderLifecycleListener;

    .line 139
    :cond_11
    new-instance v7, Lcom/android/launcher2/guide/ViewAppsGuider;

    invoke-direct {v7, p0}, Lcom/android/launcher2/guide/ViewAppsGuider;-><init>(Landroid/app/Activity;)V

    sput-object v7, Lcom/android/launcher2/guide/GuideFragment;->mGuider:Lcom/android/launcher2/guide/GuiderLifecycleListener;

    goto :goto_1

    .line 141
    :cond_12
    sget-object v7, Lcom/android/launcher2/guide/GuideFragment;->GMode:Ljava/lang/String;

    const-string v9, "change_wallpaper"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_14

    .line 142
    sget-object v7, Lcom/android/launcher2/guide/GuideFragment;->mGuider:Lcom/android/launcher2/guide/GuiderLifecycleListener;

    if-eqz v7, :cond_13

    .line 143
    sget-object v7, Lcom/android/launcher2/guide/GuideFragment;->mGuider:Lcom/android/launcher2/guide/GuiderLifecycleListener;

    invoke-interface {v7}, Lcom/android/launcher2/guide/GuiderLifecycleListener;->dismissHelpDialog()V

    .line 144
    const/4 v7, 0x0

    sput-object v7, Lcom/android/launcher2/guide/GuideFragment;->mGuider:Lcom/android/launcher2/guide/GuiderLifecycleListener;

    .line 146
    :cond_13
    new-instance v7, Lcom/android/launcher2/guide/ChangeWallpaperGuider;

    invoke-direct {v7, p0}, Lcom/android/launcher2/guide/ChangeWallpaperGuider;-><init>(Landroid/app/Activity;)V

    sput-object v7, Lcom/android/launcher2/guide/GuideFragment;->mGuider:Lcom/android/launcher2/guide/GuiderLifecycleListener;

    goto :goto_1

    .line 148
    :cond_14
    sget-object v7, Lcom/android/launcher2/guide/GuideFragment;->GMode:Ljava/lang/String;

    const-string v9, "resize_widgets"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_15

    .line 149
    new-instance v7, Lcom/android/launcher2/guide/ResizeWidgetsGuider;

    invoke-direct {v7, p0}, Lcom/android/launcher2/guide/ResizeWidgetsGuider;-><init>(Landroid/app/Activity;)V

    sput-object v7, Lcom/android/launcher2/guide/GuideFragment;->mGuider:Lcom/android/launcher2/guide/GuiderLifecycleListener;

    goto :goto_1

    .line 151
    :cond_15
    sget-object v7, Lcom/android/launcher2/guide/GuideFragment;->GMode:Ljava/lang/String;

    const-string v9, "create_folder"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_16

    .line 152
    const/4 v7, 0x1

    sput-boolean v7, Lcom/android/launcher2/guide/GuideFragment;->isViewApps:Z

    .line 153
    new-instance v7, Lcom/android/launcher2/guide/CreateFolderGuider;

    invoke-direct {v7, p0}, Lcom/android/launcher2/guide/CreateFolderGuider;-><init>(Landroid/app/Activity;)V

    sput-object v7, Lcom/android/launcher2/guide/GuideFragment;->mGuider:Lcom/android/launcher2/guide/GuiderLifecycleListener;

    goto :goto_1

    .line 155
    :cond_16
    sget-object v7, Lcom/android/launcher2/guide/GuideFragment;->GMode:Ljava/lang/String;

    const-string v9, "remove_items"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_17

    .line 156
    new-instance v7, Lcom/android/launcher2/guide/RemoveItemsGuider;

    invoke-direct {v7, p0}, Lcom/android/launcher2/guide/RemoveItemsGuider;-><init>(Landroid/app/Activity;)V

    sput-object v7, Lcom/android/launcher2/guide/GuideFragment;->mGuider:Lcom/android/launcher2/guide/GuiderLifecycleListener;

    goto/16 :goto_1

    .line 158
    :cond_17
    sget-object v7, Lcom/android/launcher2/guide/GuideFragment;->GMode:Ljava/lang/String;

    const-string v9, "move_app"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_18

    .line 159
    new-instance v7, Lcom/android/launcher2/guide/MoveAppsGuider;

    invoke-direct {v7, p0}, Lcom/android/launcher2/guide/MoveAppsGuider;-><init>(Landroid/app/Activity;)V

    sput-object v7, Lcom/android/launcher2/guide/GuideFragment;->mGuider:Lcom/android/launcher2/guide/GuiderLifecycleListener;

    goto/16 :goto_1

    .line 161
    :cond_18
    sget-object v7, Lcom/android/launcher2/guide/GuideFragment;->GMode:Ljava/lang/String;

    const-string v9, "add_widgets"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_f

    .line 162
    sget-object v7, Lcom/android/launcher2/guide/GuideFragment;->mGuider:Lcom/android/launcher2/guide/GuiderLifecycleListener;

    if-eqz v7, :cond_19

    .line 163
    sget-object v7, Lcom/android/launcher2/guide/GuideFragment;->mGuider:Lcom/android/launcher2/guide/GuiderLifecycleListener;

    invoke-interface {v7}, Lcom/android/launcher2/guide/GuiderLifecycleListener;->dismissHelpDialog()V

    .line 164
    const/4 v7, 0x0

    sput-object v7, Lcom/android/launcher2/guide/GuideFragment;->mGuider:Lcom/android/launcher2/guide/GuiderLifecycleListener;

    .line 166
    :cond_19
    new-instance v7, Lcom/android/launcher2/guide/AddWidgetsGuider;

    invoke-direct {v7, p0}, Lcom/android/launcher2/guide/AddWidgetsGuider;-><init>(Landroid/app/Activity;)V

    sput-object v7, Lcom/android/launcher2/guide/GuideFragment;->mGuider:Lcom/android/launcher2/guide/GuiderLifecycleListener;

    goto/16 :goto_1

    .line 180
    :cond_1a
    const-string v7, "GuideFragment"

    const-string v9, "frag=null"

    invoke-static {v7, v9}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0
.end method

.method public static findMainView(Landroid/app/Activity;)Landroid/view/ViewGroup;
    .locals 4
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 250
    const/4 v1, 0x0

    .line 251
    .local v1, "retval":Landroid/view/ViewGroup;
    instance-of v2, p0, Lcom/android/launcher2/Launcher;

    if-eqz v2, :cond_1

    move-object v0, p0

    .line 252
    check-cast v0, Lcom/android/launcher2/Launcher;

    .line 253
    .local v0, "launcher":Lcom/android/launcher2/Launcher;
    sget-object v2, Lcom/android/launcher2/guide/GuideFragment;->GMode:Ljava/lang/String;

    const-string v3, "move_app"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    sget-object v2, Lcom/android/launcher2/guide/GuideFragment;->GMode:Ljava/lang/String;

    const-string v3, "change_wallpaper"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    sget-object v2, Lcom/android/launcher2/guide/GuideFragment;->GMode:Ljava/lang/String;

    const-string v3, "view_all_apps"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    sget-object v2, Lcom/android/launcher2/guide/GuideFragment;->GMode:Ljava/lang/String;

    const-string v3, "remove_items"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    sget-object v2, Lcom/android/launcher2/guide/GuideFragment;->GMode:Ljava/lang/String;

    const-string v3, "resize_widgets"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 255
    :cond_0
    invoke-virtual {v0}, Lcom/android/launcher2/Launcher;->getHomeView()Lcom/android/launcher2/HomeView;

    move-result-object v1

    .line 266
    .end local v0    # "launcher":Lcom/android/launcher2/Launcher;
    :cond_1
    :goto_0
    return-object v1

    .line 257
    .restart local v0    # "launcher":Lcom/android/launcher2/Launcher;
    :cond_2
    sget-object v2, Lcom/android/launcher2/guide/GuideFragment;->GMode:Ljava/lang/String;

    const-string v3, "addapps"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    sget-object v2, Lcom/android/launcher2/guide/GuideFragment;->GMode:Ljava/lang/String;

    const-string v3, "add_widgets"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    sget-object v2, Lcom/android/launcher2/guide/GuideFragment;->GMode:Ljava/lang/String;

    const-string v3, "create_folder"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 258
    :cond_3
    sget-boolean v2, Lcom/android/launcher2/guide/GuideFragment;->isViewAppsDialogDismissed:Z

    if-nez v2, :cond_4

    .line 259
    invoke-virtual {v0}, Lcom/android/launcher2/Launcher;->getHomeView()Lcom/android/launcher2/HomeView;

    move-result-object v1

    goto :goto_0

    .line 262
    :cond_4
    invoke-virtual {v0}, Lcom/android/launcher2/Launcher;->getMenuView()Lcom/android/launcher2/MenuView;

    move-result-object v1

    goto :goto_0
.end method

.method public static getGuideFragmentInstance()Lcom/android/launcher2/guide/GuideFragment;
    .locals 1

    .prologue
    .line 283
    sget-object v0, Lcom/android/launcher2/guide/GuideFragment;->instance:Lcom/android/launcher2/guide/GuideFragment;

    if-eqz v0, :cond_0

    .line 284
    sget-object v0, Lcom/android/launcher2/guide/GuideFragment;->instance:Lcom/android/launcher2/guide/GuideFragment;

    .line 286
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/android/launcher2/guide/GuideFragment;

    invoke-direct {v0}, Lcom/android/launcher2/guide/GuideFragment;-><init>()V

    goto :goto_0
.end method

.method public static removeWrongActionDialog()V
    .locals 1

    .prologue
    .line 238
    sget-boolean v0, Lcom/android/launcher2/guide/GuideFragment;->isWrongActionDialogVisible:Z

    if-eqz v0, :cond_0

    .line 239
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/launcher2/guide/GuideFragment;->isWrongActionDialogVisible:Z

    .line 241
    :cond_0
    return-void
.end method

.method public static showCompleteDialog(Landroid/app/Activity;)V
    .locals 3
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    const/4 v2, 0x0

    .line 194
    if-nez p0, :cond_0

    .line 213
    :goto_0
    return-void

    .line 197
    :cond_0
    sput-boolean v2, Lcom/android/launcher2/guide/GuideFragment;->isGuideCompleted:Z

    .line 198
    sget-object v0, Lcom/android/launcher2/guide/GuideFragment;->GMode:Ljava/lang/String;

    const-string v1, "view_all_apps"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 199
    sput-boolean v2, Lcom/android/launcher2/guide/GuideFragment;->isViewApps:Z

    .line 200
    new-instance v0, Lcom/android/launcher2/guide/ViewAppsGuider;

    invoke-direct {v0, p0}, Lcom/android/launcher2/guide/ViewAppsGuider;-><init>(Landroid/app/Activity;)V

    sput-object v0, Lcom/android/launcher2/guide/GuideFragment;->mGuider:Lcom/android/launcher2/guide/GuiderLifecycleListener;

    .line 202
    sget-boolean v0, Lcom/android/launcher2/guide/GuideFragment;->isViewAppsDialogDismissed:Z

    if-nez v0, :cond_1

    .line 203
    sget-object v0, Lcom/android/launcher2/guide/GuideFragment;->mGuider:Lcom/android/launcher2/guide/GuiderLifecycleListener;

    invoke-interface {v0}, Lcom/android/launcher2/guide/GuiderLifecycleListener;->dismissHelpDialog()V

    .line 207
    :cond_1
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/android/launcher2/guide/GuideFragment$2;

    invoke-direct {v1, p0}, Lcom/android/launcher2/guide/GuideFragment$2;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public static showToast(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 186
    const v0, 0x7f110001

    invoke-virtual {p0, v0}, Landroid/content/Context;->setTheme(I)V

    .line 187
    const v0, 0x7f1000a7

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 188
    invoke-static {}, Lcom/android/launcher2/guide/HelpAnimatedDialog;->setAlpha()V

    .line 190
    return-void
.end method

.method public static showToast_createfolder(Landroid/content/Context;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 270
    const v1, 0x7f1000b1

    invoke-static {p0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 271
    .local v0, "toast":Landroid/widget/Toast;
    const/16 v1, 0x11

    invoke-virtual {v0, v1, v2, v2}, Landroid/widget/Toast;->setGravity(III)V

    .line 272
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 273
    return-void
.end method

.method public static showWrongActionDialog(Landroid/app/Activity;)V
    .locals 5
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    const/4 v4, 0x1

    .line 216
    if-nez p0, :cond_0

    .line 235
    :goto_0
    return-void

    .line 219
    :cond_0
    const v0, 0x7f1000a7

    invoke-static {p0, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 220
    sget-object v0, Lcom/android/launcher2/guide/GuideFragment;->GMode:Ljava/lang/String;

    const-string v1, "view_all_apps"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 221
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/launcher2/guide/GuideFragment;->isViewApps:Z

    .line 222
    new-instance v0, Lcom/android/launcher2/guide/ViewAppsGuider;

    invoke-direct {v0, p0}, Lcom/android/launcher2/guide/ViewAppsGuider;-><init>(Landroid/app/Activity;)V

    sput-object v0, Lcom/android/launcher2/guide/GuideFragment;->mGuider:Lcom/android/launcher2/guide/GuiderLifecycleListener;

    .line 223
    sget-boolean v0, Lcom/android/launcher2/guide/GuideFragment;->isViewAppsDialogDismissed:Z

    if-nez v0, :cond_1

    .line 224
    sget-object v0, Lcom/android/launcher2/guide/GuideFragment;->mGuider:Lcom/android/launcher2/guide/GuiderLifecycleListener;

    invoke-interface {v0}, Lcom/android/launcher2/guide/GuiderLifecycleListener;->dismissHelpDialog()V

    .line 228
    :cond_1
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/android/launcher2/guide/GuideFragment$3;

    invoke-direct {v1, p0}, Lcom/android/launcher2/guide/GuideFragment$3;-><init>(Landroid/app/Activity;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 234
    sput-boolean v4, Lcom/android/launcher2/guide/GuideFragment;->isWrongActionDialogVisible:Z

    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized onConfigurationChanged(Landroid/content/res/Configuration;Landroid/app/Activity;Landroid/content/Intent;)V
    .locals 10
    .param p1, "newConfig"    # Landroid/content/res/Configuration;
    .param p2, "activity"    # Landroid/app/Activity;
    .param p3, "intent"    # Landroid/content/Intent;

    .prologue
    .line 290
    monitor-enter p0

    :try_start_0
    const-string v7, "Guide fragment"

    const-string v8, "Guide fragment -> onConfigurationChanged"

    invoke-static {v7, v8}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 293
    if-nez p3, :cond_1

    .line 420
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 297
    :cond_1
    :try_start_1
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v7

    if-eqz v7, :cond_2

    .line 298
    const-string v7, "GuideFragment"

    const-string v8, "get extras not null"

    invoke-static {v7, v8}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    const-string v7, "homescreen:guide_mode"

    invoke-virtual {p3, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    sput-object v7, Lcom/android/launcher2/guide/GuideFragment;->GMode:Ljava/lang/String;

    .line 300
    sget-object v7, Lcom/android/launcher2/guide/GuideFragment;->GMode:Ljava/lang/String;

    if-nez v7, :cond_2

    .line 301
    const-string v7, "GuideFragment"

    const-string v8, "guide mode is not ours"

    invoke-static {v7, v8}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 290
    :catchall_0
    move-exception v7

    monitor-exit p0

    throw v7

    .line 306
    :cond_2
    :try_start_2
    move-object v0, p2

    check-cast v0, Lcom/android/launcher2/Launcher;

    move-object v3, v0

    .line 307
    .local v3, "launcher":Lcom/android/launcher2/Launcher;
    invoke-virtual {v3}, Lcom/android/launcher2/Launcher;->getHomeView()Lcom/android/launcher2/HomeView;

    move-result-object v2

    .line 308
    .local v2, "homeView":Lcom/android/launcher2/HomeView;
    invoke-virtual {v3}, Lcom/android/launcher2/Launcher;->getMenuView()Lcom/android/launcher2/MenuView;

    move-result-object v5

    .line 314
    .local v5, "menuView":Lcom/android/launcher2/MenuView;
    if-nez v2, :cond_3

    if-eqz v5, :cond_18

    .line 315
    :cond_3
    sget-object v7, Lcom/android/launcher2/guide/GuideFragment;->GMode:Ljava/lang/String;

    const-string v8, "add_widgets"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 316
    const-string v7, "GuideFragment"

    const-string v8, " showing help dialog--add widgets"

    invoke-static {v7, v8}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    sget-object v7, Lcom/android/launcher2/guide/GuideFragment;->mGuider:Lcom/android/launcher2/guide/GuiderLifecycleListener;

    if-eqz v7, :cond_4

    .line 318
    sget-object v7, Lcom/android/launcher2/guide/GuideFragment;->mGuider:Lcom/android/launcher2/guide/GuiderLifecycleListener;

    invoke-interface {v7}, Lcom/android/launcher2/guide/GuiderLifecycleListener;->dismissHelpDialog()V

    .line 319
    const/4 v7, 0x0

    sput-object v7, Lcom/android/launcher2/guide/GuideFragment;->mGuider:Lcom/android/launcher2/guide/GuiderLifecycleListener;

    .line 321
    :cond_4
    new-instance v7, Lcom/android/launcher2/guide/AddWidgetsGuider;

    invoke-direct {v7, p2}, Lcom/android/launcher2/guide/AddWidgetsGuider;-><init>(Landroid/app/Activity;)V

    sput-object v7, Lcom/android/launcher2/guide/GuideFragment;->mGuider:Lcom/android/launcher2/guide/GuiderLifecycleListener;

    .line 322
    sget-object v7, Lcom/android/launcher2/guide/GuideFragment;->mGuider:Lcom/android/launcher2/guide/GuiderLifecycleListener;

    invoke-interface {v7, p1}, Lcom/android/launcher2/guide/GuiderLifecycleListener;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    goto :goto_0

    .line 324
    :cond_5
    sget-object v7, Lcom/android/launcher2/guide/GuideFragment;->GMode:Ljava/lang/String;

    const-string v8, "onBackPressed"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_e

    .line 325
    const-string v7, "currentGmode"

    invoke-virtual {p3, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 326
    .local v6, "oldGmode":Ljava/lang/String;
    sput-object v6, Lcom/android/launcher2/guide/GuideFragment;->GMode:Ljava/lang/String;

    .line 327
    const-string v7, "navigation"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 329
    new-instance v7, Lcom/android/launcher2/guide/NavigationGuider;

    invoke-direct {v7, p2}, Lcom/android/launcher2/guide/NavigationGuider;-><init>(Landroid/app/Activity;)V

    sput-object v7, Lcom/android/launcher2/guide/GuideFragment;->mGuider:Lcom/android/launcher2/guide/GuiderLifecycleListener;

    .line 331
    :cond_6
    const-string v7, "addapps"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 332
    const/4 v7, 0x0

    sput-boolean v7, Lcom/android/launcher2/guide/GuideFragment;->isViewApps:Z

    .line 333
    new-instance v7, Lcom/android/launcher2/guide/AddAppsGuider;

    invoke-direct {v7, p2}, Lcom/android/launcher2/guide/AddAppsGuider;-><init>(Landroid/app/Activity;)V

    sput-object v7, Lcom/android/launcher2/guide/GuideFragment;->mGuider:Lcom/android/launcher2/guide/GuiderLifecycleListener;

    .line 335
    :cond_7
    const-string v7, "add_widgets"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 337
    new-instance v7, Lcom/android/launcher2/guide/AddWidgetsGuider;

    invoke-direct {v7, p2}, Lcom/android/launcher2/guide/AddWidgetsGuider;-><init>(Landroid/app/Activity;)V

    sput-object v7, Lcom/android/launcher2/guide/GuideFragment;->mGuider:Lcom/android/launcher2/guide/GuiderLifecycleListener;

    .line 338
    const/4 v7, 0x0

    sput-boolean v7, Lcom/android/launcher2/guide/GuideFragment;->isViewApps:Z

    .line 340
    :cond_8
    const-string v7, "view_all_apps"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 341
    const/4 v7, 0x0

    sput-boolean v7, Lcom/android/launcher2/guide/GuideFragment;->isViewApps:Z

    .line 342
    new-instance v7, Lcom/android/launcher2/guide/ViewAppsGuider;

    invoke-direct {v7, p2}, Lcom/android/launcher2/guide/ViewAppsGuider;-><init>(Landroid/app/Activity;)V

    sput-object v7, Lcom/android/launcher2/guide/GuideFragment;->mGuider:Lcom/android/launcher2/guide/GuiderLifecycleListener;

    .line 344
    :cond_9
    const-string v7, "resize_widgets"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_a

    .line 345
    new-instance v7, Lcom/android/launcher2/guide/ResizeWidgetsGuider;

    invoke-direct {v7, p2}, Lcom/android/launcher2/guide/ResizeWidgetsGuider;-><init>(Landroid/app/Activity;)V

    sput-object v7, Lcom/android/launcher2/guide/GuideFragment;->mGuider:Lcom/android/launcher2/guide/GuiderLifecycleListener;

    .line 347
    :cond_a
    const-string v7, "create_folder"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_b

    .line 348
    new-instance v7, Lcom/android/launcher2/guide/CreateFolderGuider;

    invoke-direct {v7, p2}, Lcom/android/launcher2/guide/CreateFolderGuider;-><init>(Landroid/app/Activity;)V

    sput-object v7, Lcom/android/launcher2/guide/GuideFragment;->mGuider:Lcom/android/launcher2/guide/GuiderLifecycleListener;

    .line 350
    :cond_b
    const-string v7, "move_app"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_c

    .line 352
    new-instance v7, Lcom/android/launcher2/guide/MoveAppsGuider;

    invoke-direct {v7, p2}, Lcom/android/launcher2/guide/MoveAppsGuider;-><init>(Landroid/app/Activity;)V

    sput-object v7, Lcom/android/launcher2/guide/GuideFragment;->mGuider:Lcom/android/launcher2/guide/GuiderLifecycleListener;

    .line 354
    :cond_c
    const-string v7, "remove_items"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_d

    .line 356
    new-instance v7, Lcom/android/launcher2/guide/RemoveItemsGuider;

    invoke-direct {v7, p2}, Lcom/android/launcher2/guide/RemoveItemsGuider;-><init>(Landroid/app/Activity;)V

    sput-object v7, Lcom/android/launcher2/guide/GuideFragment;->mGuider:Lcom/android/launcher2/guide/GuiderLifecycleListener;

    .line 358
    :cond_d
    sget-object v7, Lcom/android/launcher2/guide/GuideFragment;->mGuider:Lcom/android/launcher2/guide/GuiderLifecycleListener;

    if-eqz v7, :cond_0

    .line 359
    sget-object v7, Lcom/android/launcher2/guide/GuideFragment;->mGuider:Lcom/android/launcher2/guide/GuiderLifecycleListener;

    invoke-interface {v7}, Lcom/android/launcher2/guide/GuiderLifecycleListener;->dismissHelpDialog()V

    goto/16 :goto_0

    .line 361
    .end local v6    # "oldGmode":Ljava/lang/String;
    :cond_e
    sget-object v7, Lcom/android/launcher2/guide/GuideFragment;->GMode:Ljava/lang/String;

    const-string v8, "addapps"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_10

    .line 362
    sget-object v7, Lcom/android/launcher2/guide/GuideFragment;->mGuider:Lcom/android/launcher2/guide/GuiderLifecycleListener;

    if-eqz v7, :cond_f

    .line 363
    const-string v7, "GuideFragment"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Lcom/android/launcher2/guide/GuideFragment;->mGuider:Lcom/android/launcher2/guide/GuiderLifecycleListener;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 364
    sget-object v7, Lcom/android/launcher2/guide/GuideFragment;->mGuider:Lcom/android/launcher2/guide/GuiderLifecycleListener;

    invoke-interface {v7}, Lcom/android/launcher2/guide/GuiderLifecycleListener;->dismissHelpDialog()V

    .line 365
    const/4 v7, 0x0

    sput-object v7, Lcom/android/launcher2/guide/GuideFragment;->mGuider:Lcom/android/launcher2/guide/GuiderLifecycleListener;

    .line 367
    :cond_f
    new-instance v7, Lcom/android/launcher2/guide/AddAppsGuider;

    invoke-direct {v7, p2}, Lcom/android/launcher2/guide/AddAppsGuider;-><init>(Landroid/app/Activity;)V

    sput-object v7, Lcom/android/launcher2/guide/GuideFragment;->mGuider:Lcom/android/launcher2/guide/GuiderLifecycleListener;

    .line 368
    sget-object v7, Lcom/android/launcher2/guide/GuideFragment;->mGuider:Lcom/android/launcher2/guide/GuiderLifecycleListener;

    invoke-interface {v7, p1}, Lcom/android/launcher2/guide/GuiderLifecycleListener;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    goto/16 :goto_0

    .line 370
    :cond_10
    sget-object v7, Lcom/android/launcher2/guide/GuideFragment;->GMode:Ljava/lang/String;

    const-string v8, "view_all_apps"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_12

    .line 371
    const/4 v7, 0x1

    sput-boolean v7, Lcom/android/launcher2/guide/GuideFragment;->isViewApps:Z

    .line 372
    sget-object v7, Lcom/android/launcher2/guide/GuideFragment;->mGuider:Lcom/android/launcher2/guide/GuiderLifecycleListener;

    if-eqz v7, :cond_11

    .line 373
    sget-object v7, Lcom/android/launcher2/guide/GuideFragment;->mGuider:Lcom/android/launcher2/guide/GuiderLifecycleListener;

    invoke-interface {v7}, Lcom/android/launcher2/guide/GuiderLifecycleListener;->dismissHelpDialog()V

    .line 374
    const/4 v7, 0x0

    sput-object v7, Lcom/android/launcher2/guide/GuideFragment;->mGuider:Lcom/android/launcher2/guide/GuiderLifecycleListener;

    .line 376
    :cond_11
    new-instance v7, Lcom/android/launcher2/guide/ViewAppsGuider;

    invoke-direct {v7, p2}, Lcom/android/launcher2/guide/ViewAppsGuider;-><init>(Landroid/app/Activity;)V

    sput-object v7, Lcom/android/launcher2/guide/GuideFragment;->mGuider:Lcom/android/launcher2/guide/GuiderLifecycleListener;

    .line 377
    sget-object v7, Lcom/android/launcher2/guide/GuideFragment;->mGuider:Lcom/android/launcher2/guide/GuiderLifecycleListener;

    invoke-interface {v7, p1}, Lcom/android/launcher2/guide/GuiderLifecycleListener;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    goto/16 :goto_0

    .line 379
    :cond_12
    sget-object v7, Lcom/android/launcher2/guide/GuideFragment;->GMode:Ljava/lang/String;

    const-string v8, "change_wallpaper"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_14

    .line 380
    sget-object v7, Lcom/android/launcher2/guide/GuideFragment;->mGuider:Lcom/android/launcher2/guide/GuiderLifecycleListener;

    if-eqz v7, :cond_13

    .line 381
    sget-object v7, Lcom/android/launcher2/guide/GuideFragment;->mGuider:Lcom/android/launcher2/guide/GuiderLifecycleListener;

    invoke-interface {v7}, Lcom/android/launcher2/guide/GuiderLifecycleListener;->dismissHelpDialog()V

    .line 382
    const/4 v7, 0x0

    sput-object v7, Lcom/android/launcher2/guide/GuideFragment;->mGuider:Lcom/android/launcher2/guide/GuiderLifecycleListener;

    .line 384
    :cond_13
    new-instance v7, Lcom/android/launcher2/guide/ChangeWallpaperGuider;

    invoke-direct {v7, p2}, Lcom/android/launcher2/guide/ChangeWallpaperGuider;-><init>(Landroid/app/Activity;)V

    sput-object v7, Lcom/android/launcher2/guide/GuideFragment;->mGuider:Lcom/android/launcher2/guide/GuiderLifecycleListener;

    .line 385
    sget-object v7, Lcom/android/launcher2/guide/GuideFragment;->mGuider:Lcom/android/launcher2/guide/GuiderLifecycleListener;

    invoke-interface {v7, p1}, Lcom/android/launcher2/guide/GuiderLifecycleListener;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    goto/16 :goto_0

    .line 388
    :cond_14
    sget-object v7, Lcom/android/launcher2/guide/GuideFragment;->GMode:Ljava/lang/String;

    const-string v8, "resize_widgets"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_15

    .line 389
    const/4 v7, 0x1

    sput v7, Lcom/android/launcher2/guide/GuideFragment;->sHelpHubStepNumber:I

    .line 390
    const/4 v7, 0x0

    sput-boolean v7, Lcom/android/launcher2/guide/ResizeWidgetsGuider;->isWidgetToBeAdded:Z

    .line 392
    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    .line 393
    .local v4, "mHandler":Landroid/os/Handler;
    new-instance v7, Lcom/android/launcher2/guide/GuideFragment$4;

    invoke-direct {v7, p0, p2, p1}, Lcom/android/launcher2/guide/GuideFragment$4;-><init>(Lcom/android/launcher2/guide/GuideFragment;Landroid/app/Activity;Landroid/content/res/Configuration;)V

    const-wide/16 v8, 0x190

    invoke-virtual {v4, v7, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    .line 401
    .end local v4    # "mHandler":Landroid/os/Handler;
    :cond_15
    sget-object v7, Lcom/android/launcher2/guide/GuideFragment;->GMode:Ljava/lang/String;

    const-string v8, "create_folder"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_16

    .line 402
    const/4 v7, 0x1

    sput-boolean v7, Lcom/android/launcher2/guide/GuideFragment;->isViewApps:Z

    .line 403
    new-instance v7, Lcom/android/launcher2/guide/CreateFolderGuider;

    invoke-direct {v7, p2}, Lcom/android/launcher2/guide/CreateFolderGuider;-><init>(Landroid/app/Activity;)V

    sput-object v7, Lcom/android/launcher2/guide/GuideFragment;->mGuider:Lcom/android/launcher2/guide/GuiderLifecycleListener;

    .line 404
    sget-object v7, Lcom/android/launcher2/guide/GuideFragment;->mGuider:Lcom/android/launcher2/guide/GuiderLifecycleListener;

    invoke-interface {v7, p1}, Lcom/android/launcher2/guide/GuiderLifecycleListener;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    goto/16 :goto_0

    .line 407
    :cond_16
    sget-object v7, Lcom/android/launcher2/guide/GuideFragment;->GMode:Ljava/lang/String;

    const-string v8, "remove_items"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_17

    .line 408
    new-instance v7, Lcom/android/launcher2/guide/RemoveItemsGuider;

    invoke-direct {v7, p2}, Lcom/android/launcher2/guide/RemoveItemsGuider;-><init>(Landroid/app/Activity;)V

    sput-object v7, Lcom/android/launcher2/guide/GuideFragment;->mGuider:Lcom/android/launcher2/guide/GuiderLifecycleListener;

    .line 409
    sget-object v7, Lcom/android/launcher2/guide/GuideFragment;->mGuider:Lcom/android/launcher2/guide/GuiderLifecycleListener;

    invoke-interface {v7, p1}, Lcom/android/launcher2/guide/GuiderLifecycleListener;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    goto/16 :goto_0

    .line 411
    :cond_17
    sget-object v7, Lcom/android/launcher2/guide/GuideFragment;->GMode:Ljava/lang/String;

    const-string v8, "move_app"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 413
    new-instance v7, Lcom/android/launcher2/guide/MoveAppsGuider;

    invoke-direct {v7, p2}, Lcom/android/launcher2/guide/MoveAppsGuider;-><init>(Landroid/app/Activity;)V

    sput-object v7, Lcom/android/launcher2/guide/GuideFragment;->mGuider:Lcom/android/launcher2/guide/GuiderLifecycleListener;

    .line 414
    sget-object v7, Lcom/android/launcher2/guide/GuideFragment;->mGuider:Lcom/android/launcher2/guide/GuiderLifecycleListener;

    invoke-interface {v7, p1}, Lcom/android/launcher2/guide/GuiderLifecycleListener;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    goto/16 :goto_0

    .line 418
    :cond_18
    const-string v7, "GuideFragment"

    const-string v8, "frag=null"

    invoke-static {v7, v8}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0
.end method
