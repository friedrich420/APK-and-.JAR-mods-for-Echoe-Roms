.class public Lcom/android/systemui/recents/AlternateRecentsComponent;
.super Ljava/lang/Object;
.source "AlternateRecentsComponent.java"

# interfaces
.implements Landroid/app/ActivityOptions$OnAnimationStartedListener;


# static fields
.field public static final ACTION_HIDE_RECENTS_ACTIVITY:Ljava/lang/String; = "action_hide_recents_activity"

.field public static final ACTION_START_ENTER_ANIMATION:Ljava/lang/String; = "action_start_enter_animation"

.field public static final ACTION_TOGGLE_RECENTS_ACTIVITY:Ljava/lang/String; = "action_toggle_recents_activity"

.field static final DB_RECENT_MENUKEY_DIALOG_CHECKED:Ljava/lang/String; = "recent_menukey_dialog_do_not_show"

.field public static final EXTRA_FROM_APP_FULL_SCREENSHOT:Ljava/lang/String; = "recents.thumbnail"

.field public static final EXTRA_FROM_APP_THUMBNAIL:Ljava/lang/String; = "recents.animatingWithThumbnail"

.field public static final EXTRA_FROM_HOME:Ljava/lang/String; = "recents.triggeredOverHome"

.field public static final EXTRA_FROM_SEARCH_HOME:Ljava/lang/String; = "recents.triggeredOverSearchHome"

.field public static final EXTRA_FROM_TASK_ID:Ljava/lang/String; = "recents.activeTaskId"

.field public static final EXTRA_TRIGGERED_FROM_ALT_TAB:Ljava/lang/String; = "recents.triggeredFromAltTab"

.field public static final EXTRA_TRIGGERED_FROM_HOME_KEY:Ljava/lang/String; = "recents.triggeredFromHomeKey"

.field private static final SHOW_HELP_POPUP:I = 0x1

.field public static final TAG:Ljava/lang/String; = "Recents_AlternateRecentsComponent"

.field static sLastScreenshot:Landroid/graphics/Bitmap; = null

.field static final sMinToggleDelay:I = 0xc8

.field static final sRecentsActivity:Ljava/lang/String; = "com.android.systemui.recents.RecentsActivity"

.field static sRecentsComponentCallbacks:Lcom/android/systemui/RecentsComponent$Callbacks; = null

.field static final sRecentsPackage:Ljava/lang/String; = "com.android.systemui"

.field static final sToggleRecentsAction:Ljava/lang/String; = "com.android.systemui.recents.SHOW_RECENTS"


# instance fields
.field private DELAY_SHOW_RECENTMENU_HELPPOPUP:I

.field mBootCompleted:Z

.field private mBuilder:Landroid/app/AlertDialog$Builder;

.field mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

.field mContext:Landroid/content/Context;

.field private mDisableAlertCheckBox:Landroid/widget/CheckBox;

.field mDummyStackView:Lcom/android/systemui/recents/views/TaskStackView;

.field mHandler:Landroid/os/Handler;

.field mHeaderBar:Lcom/android/systemui/recents/views/TaskViewHeader;

.field private mHelpHandler:Landroid/os/Handler;

.field mInflater:Landroid/view/LayoutInflater;

.field mLastToggleTime:J

.field mNavBarHeight:I

.field mNavBarWidth:I

.field private mRecentHelpDialog:Landroid/app/AlertDialog;

.field mStartAnimationTriggered:Z

.field mStatusBarHeight:I

.field mStatusBarView:Landroid/view/View;

.field mSystemInsets:Landroid/graphics/Rect;

.field mSystemServicesProxy:Lcom/android/systemui/recents/misc/SystemServicesProxy;

.field mTaskStackBounds:Landroid/graphics/Rect;

.field mTmpTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

.field mTriggeredFromAltTab:Z

.field mWindowRect:Landroid/graphics/Rect;

.field private misAvailableHelpHub:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 146
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 119
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mWindowRect:Landroid/graphics/Rect;

    .line 120
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mTaskStackBounds:Landroid/graphics/Rect;

    .line 121
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mSystemInsets:Landroid/graphics/Rect;

    .line 122
    new-instance v0, Lcom/android/systemui/recents/views/TaskViewTransform;

    invoke-direct {v0}, Lcom/android/systemui/recents/views/TaskViewTransform;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mTmpTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

    .line 140
    const/16 v0, 0xc8

    iput v0, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->DELAY_SHOW_RECENTMENU_HELPPOPUP:I

    .line 143
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->misAvailableHelpHub:Z

    .line 895
    new-instance v0, Lcom/android/systemui/recents/AlternateRecentsComponent$5;

    invoke-direct {v0, p0}, Lcom/android/systemui/recents/AlternateRecentsComponent$5;-><init>(Lcom/android/systemui/recents/AlternateRecentsComponent;)V

    iput-object v0, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mHelpHandler:Landroid/os/Handler;

    .line 147
    invoke-static {p1}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->initialize(Landroid/content/Context;)Lcom/android/systemui/recents/model/RecentsTaskLoader;

    .line 148
    const-string v0, "Recents_AlternateRecentsComponent"

    const-string v1, "AlternateRecentsComponent Constructor is getting called"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mInflater:Landroid/view/LayoutInflater;

    .line 150
    iput-object p1, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mContext:Landroid/content/Context;

    .line 151
    new-instance v0, Lcom/android/systemui/recents/misc/SystemServicesProxy;

    invoke-direct {v0, p1}, Lcom/android/systemui/recents/misc/SystemServicesProxy;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mSystemServicesProxy:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    .line 152
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mHandler:Landroid/os/Handler;

    .line 153
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mTaskStackBounds:Landroid/graphics/Rect;

    .line 154
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/recents/AlternateRecentsComponent;)Landroid/widget/CheckBox;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/recents/AlternateRecentsComponent;

    .prologue
    .line 86
    iget-object v0, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mDisableAlertCheckBox:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/systemui/recents/AlternateRecentsComponent;)Landroid/app/AlertDialog;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/recents/AlternateRecentsComponent;

    .prologue
    .line 86
    iget-object v0, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mRecentHelpDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method public static consumeLastScreenshot()V
    .locals 1

    .prologue
    .line 660
    sget-object v0, Lcom/android/systemui/recents/AlternateRecentsComponent;->sLastScreenshot:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 661
    sget-object v0, Lcom/android/systemui/recents/AlternateRecentsComponent;->sLastScreenshot:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 662
    const/4 v0, 0x0

    sput-object v0, Lcom/android/systemui/recents/AlternateRecentsComponent;->sLastScreenshot:Landroid/graphics/Bitmap;

    .line 664
    :cond_0
    return-void
.end method

.method private getHelpVersionCode()I
    .locals 6

    .prologue
    .line 909
    const/4 v1, 0x1

    .line 912
    .local v1, "helpVersionCode":I
    :try_start_0
    iget-object v3, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const-string v4, "com.samsung.helphub"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 913
    .local v2, "info":Landroid/content/pm/PackageInfo;
    iget v3, v2, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    .line 917
    const/4 v1, 0x1

    .line 940
    .end local v2    # "info":Landroid/content/pm/PackageInfo;
    :cond_0
    :goto_0
    const-string v3, "Recents_AlternateRecentsComponent"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getHelpVersionCode:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 941
    return v1

    .line 919
    .restart local v2    # "info":Landroid/content/pm/PackageInfo;
    :cond_1
    :try_start_1
    iget v3, v2, Landroid/content/pm/PackageInfo;->versionCode:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2

    .line 924
    const/4 v1, 0x2

    goto :goto_0

    .line 926
    :cond_2
    iget v3, v2, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    const/4 v4, 0x3

    if-ne v3, v4, :cond_0

    .line 934
    const/4 v1, 0x3

    goto :goto_0

    .line 936
    .end local v2    # "info":Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v0

    .line 938
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method public static getLastScreenshot()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 655
    sget-object v0, Lcom/android/systemui/recents/AlternateRecentsComponent;->sLastScreenshot:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public static isEnableEmergencyMode(Landroid/content/Context;)Z
    .locals 9
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/16 v7, 0x200

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 946
    if-nez p0, :cond_1

    .line 962
    :cond_0
    :goto_0
    return v5

    .line 949
    :cond_1
    invoke-static {p0}, Lcom/sec/android/emergencymode/EmergencyManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/emergencymode/EmergencyManager;

    move-result-object v0

    .line 950
    .local v0, "em":Lcom/sec/android/emergencymode/EmergencyManager;
    const/4 v1, 0x0

    .line 951
    .local v1, "isEmergencyMode":Z
    const/4 v3, 0x0

    .line 952
    .local v3, "isUltraPowerSavingMode":Z
    const/4 v2, 0x0

    .line 953
    .local v2, "isEmergencyOrUPSM":Z
    if-eqz v0, :cond_2

    .line 954
    invoke-virtual {v0}, Lcom/sec/android/emergencymode/EmergencyManager;->isEmergencyMode()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-virtual {v0, v7}, Lcom/sec/android/emergencymode/EmergencyManager;->checkModeType(I)Z

    move-result v6

    if-nez v6, :cond_4

    move v1, v4

    .line 955
    :goto_1
    invoke-virtual {v0}, Lcom/sec/android/emergencymode/EmergencyManager;->isEmergencyMode()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-virtual {v0, v7}, Lcom/sec/android/emergencymode/EmergencyManager;->checkModeType(I)Z

    move-result v6

    if-eqz v6, :cond_5

    move v3, v4

    .line 957
    :goto_2
    invoke-virtual {v0}, Lcom/sec/android/emergencymode/EmergencyManager;->isEmergencyMode()Z

    move-result v2

    .line 958
    const-string v6, "Recents_AlternateRecentsComponent"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "isEmergencyMode :"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " isUltraPowerSavingMode:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " isEmergencyOrUPSM:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 961
    :cond_2
    const/4 v0, 0x0

    .line 962
    if-nez v1, :cond_3

    if-eqz v3, :cond_0

    :cond_3
    move v5, v4

    goto :goto_0

    :cond_4
    move v1, v5

    .line 954
    goto :goto_1

    :cond_5
    move v3, v5

    .line 955
    goto :goto_2
.end method

.method private makeRecentHelpPopup()V
    .locals 12

    .prologue
    const/4 v9, 0x0

    const/4 v11, 0x1

    .line 766
    iget-object v7, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mContext:Landroid/content/Context;

    const-string v8, "layout_inflater"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/LayoutInflater;

    .line 769
    .local v3, "inflater":Landroid/view/LayoutInflater;
    invoke-direct {p0}, Lcom/android/systemui/recents/AlternateRecentsComponent;->getHelpVersionCode()I

    move-result v2

    .line 771
    .local v2, "helpVersionCode":I
    sget-boolean v7, Lcom/android/systemui/statusbar/Feature;->mShowSplitViewHelpPopup:Z

    if-eqz v7, :cond_2

    .line 772
    const v7, 0x7f0400ad

    invoke-virtual {v3, v7, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .line 773
    .local v5, "mRecentPanelLayout":Landroid/view/View;
    sget-boolean v7, Lcom/android/systemui/statusbar/Feature;->mShowPenWindowHelpPopup:Z

    if-nez v7, :cond_0

    .line 774
    const v7, 0x7f0e0349

    invoke-virtual {v5, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 811
    :cond_0
    :goto_0
    const/4 v6, 0x5

    .line 813
    .local v6, "theme":I
    sget-boolean v7, Lcom/android/systemui/statusbar/Feature;->mShowSplitViewHelpPopup:Z

    if-eqz v7, :cond_8

    .line 814
    iget-object v7, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0d0461

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 818
    .local v1, "helpTitle":Ljava/lang/String;
    :goto_1
    new-instance v7, Landroid/app/AlertDialog$Builder;

    iget-object v8, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mContext:Landroid/content/Context;

    invoke-direct {v7, v8, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v7, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    invoke-virtual {v7, v5}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v7

    iput-object v7, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mRecentHelpDialog:Landroid/app/AlertDialog;

    .line 821
    iget-object v7, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mRecentHelpDialog:Landroid/app/AlertDialog;

    const/4 v8, -0x1

    iget-object v9, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0d0466

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    new-instance v10, Lcom/android/systemui/recents/AlternateRecentsComponent$3;

    invoke-direct {v10, p0}, Lcom/android/systemui/recents/AlternateRecentsComponent$3;-><init>(Lcom/android/systemui/recents/AlternateRecentsComponent;)V

    invoke-virtual {v7, v8, v9, v10}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 840
    iget-boolean v7, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->misAvailableHelpHub:Z

    if-eqz v7, :cond_1

    if-eq v2, v11, :cond_1

    iget-object v7, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/android/systemui/recents/AlternateRecentsComponent;->isEnableEmergencyMode(Landroid/content/Context;)Z

    move-result v7

    if-nez v7, :cond_1

    sget-boolean v7, Lcom/android/systemui/statusbar/Feature;->mShowSplitViewHelpPopup:Z

    if-nez v7, :cond_1

    .line 842
    iget-object v7, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mRecentHelpDialog:Landroid/app/AlertDialog;

    const/4 v8, -0x2

    iget-object v9, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0d0465

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    new-instance v10, Lcom/android/systemui/recents/AlternateRecentsComponent$4;

    invoke-direct {v10, p0, v2}, Lcom/android/systemui/recents/AlternateRecentsComponent$4;-><init>(Lcom/android/systemui/recents/AlternateRecentsComponent;I)V

    invoke-virtual {v7, v8, v9, v10}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 885
    :cond_1
    iget-object v7, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mRecentHelpDialog:Landroid/app/AlertDialog;

    invoke-virtual {v7, v11}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 886
    iget-object v7, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mContext:Landroid/content/Context;

    const-string v8, "keyguard"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/KeyguardManager;

    .line 887
    .local v4, "kgm":Landroid/app/KeyguardManager;
    if-eqz v4, :cond_9

    invoke-virtual {v4}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v7

    if-eqz v7, :cond_9

    .line 888
    iget-object v7, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mRecentHelpDialog:Landroid/app/AlertDialog;

    invoke-virtual {v7}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v7

    const/16 v8, 0x7d9

    invoke-virtual {v7, v8}, Landroid/view/Window;->setType(I)V

    .line 893
    :goto_2
    return-void

    .line 778
    .end local v1    # "helpTitle":Ljava/lang/String;
    .end local v4    # "kgm":Landroid/app/KeyguardManager;
    .end local v5    # "mRecentPanelLayout":Landroid/view/View;
    .end local v6    # "theme":I
    :cond_2
    const v7, 0x7f0400ac

    invoke-virtual {v3, v7, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .line 779
    .restart local v5    # "mRecentPanelLayout":Landroid/view/View;
    const v7, 0x7f0e0348

    invoke-virtual {v5, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/CheckBox;

    iput-object v7, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mDisableAlertCheckBox:Landroid/widget/CheckBox;

    .line 781
    iget-object v7, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mDisableAlertCheckBox:Landroid/widget/CheckBox;

    new-instance v8, Lcom/android/systemui/recents/AlternateRecentsComponent$2;

    invoke-direct {v8, p0}, Lcom/android/systemui/recents/AlternateRecentsComponent$2;-><init>(Lcom/android/systemui/recents/AlternateRecentsComponent;)V

    invoke-virtual {v7, v8}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 789
    sget-boolean v7, Lcom/android/systemui/statusbar/Feature;->mUseRecentMenuStringForVZW:Z

    if-eqz v7, :cond_3

    .line 790
    iget-object v7, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mDisableAlertCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v7, v11}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 792
    :cond_3
    const v7, 0x7f0e0347

    invoke-virtual {v5, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 795
    .local v0, "helpText":Landroid/widget/TextView;
    sget-boolean v7, Lcom/android/systemui/statusbar/Feature;->mUseRecentMenuStringForVZW:Z

    if-eqz v7, :cond_4

    .line 796
    const v7, 0x7f0d045d

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_0

    .line 799
    :cond_4
    sget-boolean v7, Lcom/android/systemui/statusbar/Feature;->mUseRecentMenuStringForATT:Z

    if-eqz v7, :cond_5

    .line 800
    const v7, 0x7f0d0460

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_0

    .line 803
    :cond_5
    if-eq v2, v11, :cond_6

    iget-object v7, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/android/systemui/recents/AlternateRecentsComponent;->isEnableEmergencyMode(Landroid/content/Context;)Z

    move-result v7

    if-nez v7, :cond_6

    iget-boolean v7, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->misAvailableHelpHub:Z

    if-nez v7, :cond_7

    .line 804
    :cond_6
    const v7, 0x7f0d045f

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_0

    .line 807
    :cond_7
    const v7, 0x7f0d045c

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_0

    .line 816
    .end local v0    # "helpText":Landroid/widget/TextView;
    .restart local v6    # "theme":I
    :cond_8
    iget-object v7, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0d045a

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "helpTitle":Ljava/lang/String;
    goto/16 :goto_1

    .line 890
    .restart local v4    # "kgm":Landroid/app/KeyguardManager;
    :cond_9
    iget-object v7, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mRecentHelpDialog:Landroid/app/AlertDialog;

    invoke-virtual {v7}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v7

    const/16 v8, 0x7d8

    invoke-virtual {v7, v8}, Landroid/view/Window;->setType(I)V

    goto :goto_2
.end method

.method public static notifyVisibilityChanged(Z)V
    .locals 1
    .param p0, "visible"    # Z

    .prologue
    .line 673
    sget-object v0, Lcom/android/systemui/recents/AlternateRecentsComponent;->sRecentsComponentCallbacks:Lcom/android/systemui/RecentsComponent$Callbacks;

    if-eqz v0, :cond_0

    .line 674
    sget-object v0, Lcom/android/systemui/recents/AlternateRecentsComponent;->sRecentsComponentCallbacks:Lcom/android/systemui/RecentsComponent$Callbacks;

    invoke-interface {v0, p0}, Lcom/android/systemui/RecentsComponent$Callbacks;->onVisibilityChanged(Z)V

    .line 676
    :cond_0
    return-void
.end method


# virtual methods
.method public dismissHelpPopup()V
    .locals 2

    .prologue
    .line 754
    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->mUseDisableRecentsHelpPopup:Z

    if-eqz v0, :cond_1

    .line 762
    :cond_0
    :goto_0
    return-void

    .line 757
    :cond_1
    const-string v0, "Recents_AlternateRecentsComponent"

    const-string v1, "dismissHelpPopup "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 758
    iget-object v0, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mHelpHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 759
    iget-object v0, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mRecentHelpDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mRecentHelpDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 760
    iget-object v0, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mRecentHelpDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    goto :goto_0
.end method

.method getHomeTransitionActivityOptions(Z)Landroid/app/ActivityOptions;
    .locals 4
    .param p1, "fromSearchHome"    # Z

    .prologue
    .line 443
    const-string v0, "Recents_AlternateRecentsComponent"

    const-string v1, "getHomeTransitionActivityOptions is getting called"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 444
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mStartAnimationTriggered:Z

    .line 445
    if-eqz p1, :cond_0

    .line 446
    iget-object v0, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mContext:Landroid/content/Context;

    const v1, 0x7f05001c

    const v2, 0x7f05001d

    iget-object v3, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mHandler:Landroid/os/Handler;

    invoke-static {v0, v1, v2, v3, p0}, Landroid/app/ActivityOptions;->makeCustomAnimation(Landroid/content/Context;IILandroid/os/Handler;Landroid/app/ActivityOptions$OnAnimationStartedListener;)Landroid/app/ActivityOptions;

    move-result-object v0

    .line 450
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mContext:Landroid/content/Context;

    const v1, 0x7f05001a

    const v2, 0x7f05001b

    iget-object v3, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mHandler:Landroid/os/Handler;

    invoke-static {v0, v1, v2, v3, p0}, Landroid/app/ActivityOptions;->makeCustomAnimation(Landroid/content/Context;IILandroid/os/Handler;Landroid/app/ActivityOptions$OnAnimationStartedListener;)Landroid/app/ActivityOptions;

    move-result-object v0

    goto :goto_0
.end method

.method getThumbnailTransitionActivityOptions(Landroid/app/ActivityManager$RunningTaskInfo;Z)Landroid/app/ActivityOptions;
    .locals 13
    .param p1, "topTask"    # Landroid/app/ActivityManager$RunningTaskInfo;
    .param p2, "isTopTaskHome"    # Z

    .prologue
    .line 461
    const-string v0, "Recents_AlternateRecentsComponent"

    const-string v2, "getThumbnailTransitionActivityOptions is getting called"

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 477
    new-instance v10, Lcom/android/systemui/recents/model/Task;

    invoke-direct {v10}, Lcom/android/systemui/recents/model/Task;-><init>()V

    .line 478
    .local v10, "toTask":Lcom/android/systemui/recents/model/Task;
    iget v0, p1, Landroid/app/ActivityManager$RunningTaskInfo;->id:I

    invoke-virtual {p0, v0, p2, v10}, Lcom/android/systemui/recents/AlternateRecentsComponent;->getThumbnailTransitionTransform(IZLcom/android/systemui/recents/model/Task;)Lcom/android/systemui/recents/views/TaskViewTransform;

    move-result-object v12

    .line 480
    .local v12, "toTransform":Lcom/android/systemui/recents/views/TaskViewTransform;
    if-eqz v12, :cond_1

    iget-object v0, v10, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    if-eqz v0, :cond_1

    .line 481
    iget-object v11, v12, Lcom/android/systemui/recents/views/TaskViewTransform;->rect:Landroid/graphics/Rect;

    .line 482
    .local v11, "toTaskRect":Landroid/graphics/Rect;
    iget-object v0, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mHeaderBar:Lcom/android/systemui/recents/views/TaskViewHeader;

    invoke-virtual {v0}, Lcom/android/systemui/recents/views/TaskViewHeader;->getMeasuredWidth()I

    move-result v0

    int-to-float v0, v0

    iget v2, v12, Lcom/android/systemui/recents/views/TaskViewTransform;->scale:F

    mul-float/2addr v0, v2

    float-to-int v9, v0

    .line 483
    .local v9, "toHeaderWidth":I
    iget-object v0, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mHeaderBar:Lcom/android/systemui/recents/views/TaskViewHeader;

    invoke-virtual {v0}, Lcom/android/systemui/recents/views/TaskViewHeader;->getMeasuredHeight()I

    move-result v0

    int-to-float v0, v0

    iget v2, v12, Lcom/android/systemui/recents/views/TaskViewTransform;->scale:F

    mul-float/2addr v0, v2

    float-to-int v8, v0

    .line 484
    .local v8, "toHeaderHeight":I
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v9, v8, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 498
    .local v1, "thumbnail":Landroid/graphics/Bitmap;
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mStartAnimationTriggered:Z

    .line 500
    invoke-virtual {v10}, Lcom/android/systemui/recents/model/Task;->getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v7

    .line 501
    .local v7, "mwStyle":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    if-eqz v7, :cond_0

    invoke-virtual {v7}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isNormal()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 502
    iget-object v0, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mStatusBarView:Landroid/view/View;

    iget v2, v11, Landroid/graphics/Rect;->left:I

    iget v3, v11, Landroid/graphics/Rect;->top:I

    invoke-virtual {v11}, Landroid/graphics/Rect;->width()I

    move-result v4

    invoke-virtual {v11}, Landroid/graphics/Rect;->height()I

    move-result v5

    move-object v6, p0

    invoke-static/range {v0 .. v6}, Landroid/app/ActivityOptions;->makeThumbnailAspectScaleDownAnimation(Landroid/view/View;Landroid/graphics/Bitmap;IIIILandroid/app/ActivityOptions$OnAnimationStartedListener;)Landroid/app/ActivityOptions;

    move-result-object v0

    .line 512
    .end local v1    # "thumbnail":Landroid/graphics/Bitmap;
    .end local v7    # "mwStyle":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    .end local v8    # "toHeaderHeight":I
    .end local v9    # "toHeaderWidth":I
    .end local v11    # "toTaskRect":Landroid/graphics/Rect;
    :goto_0
    return-object v0

    .line 506
    .restart local v1    # "thumbnail":Landroid/graphics/Bitmap;
    .restart local v7    # "mwStyle":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    .restart local v8    # "toHeaderHeight":I
    .restart local v9    # "toHeaderWidth":I
    .restart local v11    # "toTaskRect":Landroid/graphics/Rect;
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mContext:Landroid/content/Context;

    const v2, 0x7f050018

    const v3, 0x7f050019

    iget-object v4, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mHandler:Landroid/os/Handler;

    invoke-static {v0, v2, v3, v4, p0}, Landroid/app/ActivityOptions;->makeCustomAnimation(Landroid/content/Context;IILandroid/os/Handler;Landroid/app/ActivityOptions$OnAnimationStartedListener;)Landroid/app/ActivityOptions;

    move-result-object v0

    goto :goto_0

    .line 512
    .end local v1    # "thumbnail":Landroid/graphics/Bitmap;
    .end local v7    # "mwStyle":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    .end local v8    # "toHeaderHeight":I
    .end local v9    # "toHeaderWidth":I
    .end local v11    # "toTaskRect":Landroid/graphics/Rect;
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/recents/AlternateRecentsComponent;->getUnknownTransitionActivityOptions()Landroid/app/ActivityOptions;

    move-result-object v0

    goto :goto_0
.end method

.method getThumbnailTransitionTransform(IZLcom/android/systemui/recents/model/Task;)Lcom/android/systemui/recents/views/TaskViewTransform;
    .locals 16
    .param p1, "runningTaskId"    # I
    .param p2, "isTopTaskHome"    # Z
    .param p3, "runningTaskOut"    # Lcom/android/systemui/recents/model/Task;

    .prologue
    .line 518
    const-string v2, "Recents_AlternateRecentsComponent"

    const-string v3, "getThumbnailTransitionTransform is getting called"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 520
    invoke-static {}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->getInstance()Lcom/android/systemui/recents/model/RecentsTaskLoader;

    move-result-object v1

    .line 521
    .local v1, "loader":Lcom/android/systemui/recents/model/RecentsTaskLoader;
    new-instance v11, Lcom/android/systemui/recents/model/TaskStack;

    invoke-direct {v11}, Lcom/android/systemui/recents/model/TaskStack;-><init>()V

    .line 522
    .local v11, "stack":Lcom/android/systemui/recents/model/TaskStack;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mSystemServicesProxy:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    if-eqz v2, :cond_0

    .line 523
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mSystemServicesProxy:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const/4 v5, -0x1

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move/from16 v4, p1

    move/from16 v7, p2

    invoke-virtual/range {v1 .. v9}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->getTaskStack(Lcom/android/systemui/recents/misc/SystemServicesProxy;Landroid/content/res/Resources;IIZZLjava/util/List;Ljava/util/List;)Lcom/android/systemui/recents/model/TaskStack;

    move-result-object v11

    .line 526
    :cond_0
    invoke-virtual {v11}, Lcom/android/systemui/recents/model/TaskStack;->getTaskCount()I

    move-result v2

    if-nez v2, :cond_1

    .line 527
    const/4 v2, 0x0

    .line 555
    :goto_0
    return-object v2

    .line 531
    :cond_1
    const/4 v13, 0x0

    .line 532
    .local v13, "task":Lcom/android/systemui/recents/model/Task;
    invoke-virtual {v11}, Lcom/android/systemui/recents/model/TaskStack;->getTasks()Ljava/util/ArrayList;

    move-result-object v15

    .line 533
    .local v15, "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/recents/model/Task;>;"
    const/4 v2, -0x1

    move/from16 v0, p1

    if-eq v0, v2, :cond_2

    .line 535
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v14

    .line 536
    .local v14, "taskCount":I
    add-int/lit8 v10, v14, -0x1

    .local v10, "i":I
    :goto_1
    if-ltz v10, :cond_2

    .line 537
    invoke-virtual {v15, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/systemui/recents/model/Task;

    .line 538
    .local v12, "t":Lcom/android/systemui/recents/model/Task;
    iget-object v2, v12, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    iget v2, v2, Lcom/android/systemui/recents/model/Task$TaskKey;->id:I

    move/from16 v0, p1

    if-ne v2, v0, :cond_4

    .line 539
    move-object v13, v12

    .line 540
    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Lcom/android/systemui/recents/model/Task;->copyFrom(Lcom/android/systemui/recents/model/Task;)V

    .line 545
    .end local v10    # "i":I
    .end local v12    # "t":Lcom/android/systemui/recents/model/Task;
    .end local v14    # "taskCount":I
    :cond_2
    if-nez v13, :cond_3

    .line 547
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v15, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    .end local v13    # "task":Lcom/android/systemui/recents/model/Task;
    check-cast v13, Lcom/android/systemui/recents/model/Task;

    .line 551
    .restart local v13    # "task":Lcom/android/systemui/recents/model/Task;
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mDummyStackView:Lcom/android/systemui/recents/views/TaskStackView;

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mTriggeredFromAltTab:Z

    move/from16 v0, p2

    invoke-virtual {v2, v11, v3, v0}, Lcom/android/systemui/recents/views/TaskStackView;->updateMinMaxScrollForStack(Lcom/android/systemui/recents/model/TaskStack;ZZ)V

    .line 552
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mDummyStackView:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v2}, Lcom/android/systemui/recents/views/TaskStackView;->getScroller()Lcom/android/systemui/recents/views/TaskStackViewScroller;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/recents/views/TaskStackViewScroller;->setStackScrollToInitialState()V

    .line 553
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mDummyStackView:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v2}, Lcom/android/systemui/recents/views/TaskStackView;->getStackAlgorithm()Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mDummyStackView:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v3}, Lcom/android/systemui/recents/views/TaskStackView;->getScroller()Lcom/android/systemui/recents/views/TaskStackViewScroller;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/systemui/recents/views/TaskStackViewScroller;->getStackScroll()F

    move-result v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mTmpTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

    const/4 v5, 0x0

    invoke-virtual {v2, v13, v3, v4, v5}, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->getStackTransform(Lcom/android/systemui/recents/model/Task;FLcom/android/systemui/recents/views/TaskViewTransform;Lcom/android/systemui/recents/views/TaskViewTransform;)Lcom/android/systemui/recents/views/TaskViewTransform;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mTmpTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

    .line 555
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mTmpTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

    goto :goto_0

    .line 536
    .restart local v10    # "i":I
    .restart local v12    # "t":Lcom/android/systemui/recents/model/Task;
    .restart local v14    # "taskCount":I
    :cond_4
    add-int/lit8 v10, v10, -0x1

    goto :goto_1
.end method

.method getTopMostTask()Landroid/app/ActivityManager$RunningTaskInfo;
    .locals 3

    .prologue
    .line 349
    iget-object v0, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mSystemServicesProxy:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    .line 350
    .local v0, "ssp":Lcom/android/systemui/recents/misc/SystemServicesProxy;
    if-eqz v0, :cond_0

    .line 351
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getRunningTasks(I)Ljava/util/List;

    move-result-object v1

    .line 352
    .local v1, "tasks":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 353
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 356
    .end local v1    # "tasks":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method getUnknownTransitionActivityOptions()Landroid/app/ActivityOptions;
    .locals 4

    .prologue
    .line 432
    const-string v0, "Recents_AlternateRecentsComponent"

    const-string v1, "getUnknownTransitionActivityOptions is getting called"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 433
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mStartAnimationTriggered:Z

    .line 434
    iget-object v0, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mContext:Landroid/content/Context;

    const v1, 0x7f05001e

    const v2, 0x7f05001f

    iget-object v3, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mHandler:Landroid/os/Handler;

    invoke-static {v0, v1, v2, v3, p0}, Landroid/app/ActivityOptions;->makeCustomAnimation(Landroid/content/Context;IILandroid/os/Handler;Landroid/app/ActivityOptions$OnAnimationStartedListener;)Landroid/app/ActivityOptions;

    move-result-object v0

    return-object v0
.end method

.method isRecentsTopMost(Landroid/app/ActivityManager$RunningTaskInfo;Ljava/util/concurrent/atomic/AtomicBoolean;)Z
    .locals 5
    .param p1, "topTask"    # Landroid/app/ActivityManager$RunningTaskInfo;
    .param p2, "isHomeTopMost"    # Ljava/util/concurrent/atomic/AtomicBoolean;

    .prologue
    const/4 v2, 0x0

    .line 361
    const-string v3, "Recents_AlternateRecentsComponent"

    const-string v4, "isRecentsTopMost is getting called"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    iget-object v0, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mSystemServicesProxy:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    .line 363
    .local v0, "ssp":Lcom/android/systemui/recents/misc/SystemServicesProxy;
    if-eqz p1, :cond_1

    .line 364
    iget-object v1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    .line 367
    .local v1, "topActivity":Landroid/content/ComponentName;
    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "com.android.systemui"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "com.android.systemui.recents.RecentsActivity"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 369
    if-eqz p2, :cond_0

    .line 370
    invoke-virtual {p2, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 372
    :cond_0
    const/4 v2, 0x1

    .line 379
    .end local v1    # "topActivity":Landroid/content/ComponentName;
    :cond_1
    :goto_0
    return v2

    .line 375
    .restart local v1    # "topActivity":Landroid/content/ComponentName;
    :cond_2
    if-eqz p2, :cond_1

    .line 376
    iget v3, p1, Landroid/app/ActivityManager$RunningTaskInfo;->id:I

    invoke-virtual {v0, v3}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->isInHomeStack(I)Z

    move-result v3

    invoke-virtual {p2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto :goto_0
.end method

.method isUserSetupComplete()Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 966
    iget-object v1, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "user_setup_complete"

    const/4 v3, -0x2

    invoke-static {v1, v2, v0, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public onAnimationStarted()V
    .locals 9

    .prologue
    const/4 v3, 0x0

    .line 683
    iget-boolean v0, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mStartAnimationTriggered:Z

    if-nez v0, :cond_0

    .line 688
    const-string v0, "Recents_AlternateRecentsComponent"

    const-string v2, "onAnimationStarted is getting called"

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 689
    new-instance v4, Lcom/android/systemui/recents/AlternateRecentsComponent$1;

    invoke-direct {v4, p0}, Lcom/android/systemui/recents/AlternateRecentsComponent$1;-><init>(Lcom/android/systemui/recents/AlternateRecentsComponent;)V

    .line 710
    .local v4, "fallbackReceiver":Landroid/content/BroadcastReceiver;
    new-instance v1, Landroid/content/Intent;

    const-string v0, "action_start_enter_animation"

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 711
    .local v1, "intent":Landroid/content/Intent;
    iget-object v0, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 712
    const/high16 v0, 0x14000000

    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 714
    iget-object v0, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    const/4 v6, 0x0

    move-object v5, v3

    move-object v7, v3

    move-object v8, v3

    invoke-virtual/range {v0 .. v8}, Landroid/content/Context;->sendOrderedBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    .line 717
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v4    # "fallbackReceiver":Landroid/content/BroadcastReceiver;
    :cond_0
    return-void
.end method

.method public onBootCompleted()V
    .locals 1

    .prologue
    .line 179
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mBootCompleted:Z

    .line 180
    return-void
.end method

.method public onCancelPreloadingRecents()V
    .locals 0

    .prologue
    .line 234
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 308
    invoke-virtual {p0}, Lcom/android/systemui/recents/AlternateRecentsComponent;->reloadHeaderBarLayout()V

    .line 309
    const/4 v0, 0x0

    sput-object v0, Lcom/android/systemui/recents/AlternateRecentsComponent;->sLastScreenshot:Landroid/graphics/Bitmap;

    .line 310
    return-void
.end method

.method public onHideRecents(ZZ)V
    .locals 3
    .param p1, "triggeredFromAltTab"    # Z
    .param p2, "triggeredFromHomeKey"    # Z

    .prologue
    .line 198
    iget-boolean v1, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mBootCompleted:Z

    if-eqz v1, :cond_0

    .line 199
    invoke-virtual {p0}, Lcom/android/systemui/recents/AlternateRecentsComponent;->getTopMostTask()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/android/systemui/recents/AlternateRecentsComponent;->isRecentsTopMost(Landroid/app/ActivityManager$RunningTaskInfo;Ljava/util/concurrent/atomic/AtomicBoolean;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 200
    const-string v1, "Recents_AlternateRecentsComponent"

    const-string v2, "onHideRecents is getting called"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    new-instance v0, Landroid/content/Intent;

    const-string v1, "action_hide_recents_activity"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 203
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 204
    const/high16 v1, 0x14000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 206
    const-string v1, "recents.triggeredFromAltTab"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 207
    const-string v1, "recents.triggeredFromHomeKey"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 208
    iget-object v1, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 211
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    sget-boolean v1, Lcom/android/systemui/statusbar/Feature;->mShowRecentOnLongPressHome:Z

    if-nez v1, :cond_1

    .line 212
    invoke-virtual {p0}, Lcom/android/systemui/recents/AlternateRecentsComponent;->dismissHelpPopup()V

    .line 213
    :cond_1
    return-void
.end method

.method public onPreloadRecents()V
    .locals 0

    .prologue
    .line 230
    return-void
.end method

.method public onShowNextAffiliatedTask()V
    .locals 2

    .prologue
    .line 297
    const-string v0, "Recents_AlternateRecentsComponent"

    const-string v1, "onShowNextAffiliatedTask is getting called"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/AlternateRecentsComponent;->showRelativeAffiliatedTask(Z)V

    .line 299
    return-void
.end method

.method public onShowPrevAffiliatedTask()V
    .locals 2

    .prologue
    .line 302
    const-string v0, "Recents_AlternateRecentsComponent"

    const-string v1, "showRelativeAffiliatedTask is getting called"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/AlternateRecentsComponent;->showRelativeAffiliatedTask(Z)V

    .line 304
    return-void
.end method

.method public onShowRecents(ZLandroid/view/View;)V
    .locals 3
    .param p1, "triggeredFromAltTab"    # Z
    .param p2, "statusBarView"    # Landroid/view/View;

    .prologue
    .line 184
    iput-object p2, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mStatusBarView:Landroid/view/View;

    .line 185
    const-string v1, "Recents_AlternateRecentsComponent"

    const-string v2, "onShowRecents is getting called"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    iput-boolean p1, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mTriggeredFromAltTab:Z

    .line 187
    iget-boolean v1, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mBootCompleted:Z

    if-eqz v1, :cond_0

    .line 189
    :try_start_0
    invoke-virtual {p0}, Lcom/android/systemui/recents/AlternateRecentsComponent;->startRecentsActivity()V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 194
    :cond_0
    :goto_0
    return-void

    .line 190
    :catch_0
    move-exception v0

    .line 191
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    const-string v1, "Failed to launch RecentAppsIntent"

    invoke-static {v1, v0}, Lcom/android/systemui/recents/misc/Console;->logRawError(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 158
    invoke-static {}, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->initializeCurve()V

    .line 160
    invoke-virtual {p0}, Lcom/android/systemui/recents/AlternateRecentsComponent;->reloadHeaderBarLayout()V

    .line 176
    return-void
.end method

.method public onToggleRecents(Landroid/view/View;)V
    .locals 3
    .param p1, "statusBarView"    # Landroid/view/View;

    .prologue
    .line 217
    const-string v1, "Recents_AlternateRecentsComponent"

    const-string v2, "onToggleRecents is getting called"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    iput-object p1, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mStatusBarView:Landroid/view/View;

    .line 219
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mTriggeredFromAltTab:Z

    .line 222
    :try_start_0
    invoke-virtual {p0}, Lcom/android/systemui/recents/AlternateRecentsComponent;->toggleRecentsActivity()V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 226
    :goto_0
    return-void

    .line 223
    :catch_0
    move-exception v0

    .line 224
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    const-string v1, "Failed to launch RecentAppsIntent"

    invoke-static {v1, v0}, Lcom/android/systemui/recents/misc/Console;->logRawError(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method reloadHeaderBarLayout()V
    .locals 14

    .prologue
    const/high16 v13, 0x40000000    # 2.0f

    const/4 v12, 0x0

    .line 314
    const-string v0, "Recents_AlternateRecentsComponent"

    const-string v1, "reloadHeaderBarLayout is getting called"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    iget-object v0, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 316
    .local v7, "res":Landroid/content/res/Resources;
    iget-object v0, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mSystemServicesProxy:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    invoke-virtual {v0}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getWindowRect()Landroid/graphics/Rect;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mWindowRect:Landroid/graphics/Rect;

    .line 317
    const v0, 0x1050010

    invoke-virtual {v7, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mStatusBarHeight:I

    .line 318
    const v0, 0x1050011

    invoke-virtual {v7, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mNavBarHeight:I

    .line 319
    const v0, 0x1050013

    invoke-virtual {v7, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mNavBarWidth:I

    .line 320
    iget-object v0, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mSystemServicesProxy:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    invoke-static {v0, v1}, Lcom/android/systemui/recents/RecentsConfiguration;->reinitialize(Landroid/content/Context;Lcom/android/systemui/recents/misc/SystemServicesProxy;)Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    .line 321
    iget-object v0, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    invoke-virtual {v0}, Lcom/android/systemui/recents/RecentsConfiguration;->updateOnConfigurationChange()V

    .line 322
    iget-object v0, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget-object v1, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mWindowRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    iget-object v2, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mWindowRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    iget v3, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mStatusBarHeight:I

    iget-object v4, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget-boolean v4, v4, Lcom/android/systemui/recents/RecentsConfiguration;->hasTransposedNavBar:Z

    if-eqz v4, :cond_0

    iget v4, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mNavBarWidth:I

    :goto_0
    iget-object v5, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mTaskStackBounds:Landroid/graphics/Rect;

    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui/recents/RecentsConfiguration;->getTaskStackBounds(IIIILandroid/graphics/Rect;)V

    .line 324
    iget-object v0, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget-boolean v0, v0, Lcom/android/systemui/recents/RecentsConfiguration;->isLandscape:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget-boolean v0, v0, Lcom/android/systemui/recents/RecentsConfiguration;->hasTransposedNavBar:Z

    if-eqz v0, :cond_1

    .line 325
    iget-object v0, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mSystemInsets:Landroid/graphics/Rect;

    iget v1, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mStatusBarHeight:I

    iget v2, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mNavBarWidth:I

    invoke-virtual {v0, v12, v1, v2, v12}, Landroid/graphics/Rect;->set(IIII)V

    .line 331
    :goto_1
    new-instance v8, Lcom/android/systemui/recents/model/TaskStack;

    invoke-direct {v8}, Lcom/android/systemui/recents/model/TaskStack;-><init>()V

    .line 332
    .local v8, "stack":Lcom/android/systemui/recents/model/TaskStack;
    new-instance v0, Lcom/android/systemui/recents/views/TaskStackView;

    iget-object v1, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, v8}, Lcom/android/systemui/recents/views/TaskStackView;-><init>(Landroid/content/Context;Lcom/android/systemui/recents/model/TaskStack;)V

    iput-object v0, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mDummyStackView:Lcom/android/systemui/recents/views/TaskStackView;

    .line 333
    iget-object v0, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mDummyStackView:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v0}, Lcom/android/systemui/recents/views/TaskStackView;->getStackAlgorithm()Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;

    move-result-object v6

    .line 334
    .local v6, "algo":Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;
    new-instance v10, Landroid/graphics/Rect;

    iget-object v0, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mTaskStackBounds:Landroid/graphics/Rect;

    invoke-direct {v10, v0}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 335
    .local v10, "taskStackBounds":Landroid/graphics/Rect;
    iget v0, v10, Landroid/graphics/Rect;->bottom:I

    iget-object v1, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mSystemInsets:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v0, v1

    iput v0, v10, Landroid/graphics/Rect;->bottom:I

    .line 336
    iget-object v0, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mWindowRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mWindowRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    invoke-virtual {v6, v0, v1, v10}, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->computeRects(IILandroid/graphics/Rect;)V

    .line 337
    invoke-virtual {v6}, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->getUntransformedTaskViewSize()Landroid/graphics/Rect;

    move-result-object v11

    .line 338
    .local v11, "taskViewSize":Landroid/graphics/Rect;
    const v0, 0x7f0b02a1

    invoke-virtual {v7, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    .line 339
    .local v9, "taskBarHeight":I
    iget-object v0, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f04006b

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v12}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/recents/views/TaskViewHeader;

    iput-object v0, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mHeaderBar:Lcom/android/systemui/recents/views/TaskViewHeader;

    .line 341
    iget-object v0, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mHeaderBar:Lcom/android/systemui/recents/views/TaskViewHeader;

    invoke-virtual {v11}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-static {v1, v13}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-static {v9, v13}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/recents/views/TaskViewHeader;->measure(II)V

    .line 344
    iget-object v0, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mHeaderBar:Lcom/android/systemui/recents/views/TaskViewHeader;

    invoke-virtual {v11}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {v0, v12, v12, v1, v9}, Lcom/android/systemui/recents/views/TaskViewHeader;->layout(IIII)V

    .line 345
    return-void

    .end local v6    # "algo":Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;
    .end local v8    # "stack":Lcom/android/systemui/recents/model/TaskStack;
    .end local v9    # "taskBarHeight":I
    .end local v10    # "taskStackBounds":Landroid/graphics/Rect;
    .end local v11    # "taskViewSize":Landroid/graphics/Rect;
    :cond_0
    move v4, v12

    .line 322
    goto/16 :goto_0

    .line 327
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mSystemInsets:Landroid/graphics/Rect;

    iget v1, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mStatusBarHeight:I

    iget v2, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mNavBarHeight:I

    invoke-virtual {v0, v12, v1, v12, v2}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_1
.end method

.method public setRecentsComponentCallback(Lcom/android/systemui/RecentsComponent$Callbacks;)V
    .locals 0
    .param p1, "cb"    # Lcom/android/systemui/RecentsComponent$Callbacks;

    .prologue
    .line 668
    sput-object p1, Lcom/android/systemui/recents/AlternateRecentsComponent;->sRecentsComponentCallbacks:Lcom/android/systemui/RecentsComponent$Callbacks;

    .line 669
    return-void
.end method

.method public showRecentHelpPopup()V
    .locals 12

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 721
    const-string v9, "Recents_AlternateRecentsComponent"

    const-string v10, "showRecentHelpPopup"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 722
    iget-object v9, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "recent_menukey_dialog_do_not_show"

    const/4 v11, -0x2

    invoke-static {v9, v10, v8, v11}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v9

    if-eqz v9, :cond_0

    move v4, v7

    .line 724
    .local v4, "isChecked":Z
    :goto_0
    if-eqz v4, :cond_1

    .line 725
    const-string v7, "Recents_AlternateRecentsComponent"

    const-string v8, "InformDialog isChecked"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 751
    :goto_1
    return-void

    .end local v4    # "isChecked":Z
    :cond_0
    move v4, v8

    .line 722
    goto :goto_0

    .line 729
    .restart local v4    # "isChecked":Z
    :cond_1
    iget-object v9, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mContext:Landroid/content/Context;

    const-string v10, "user"

    invoke-virtual {v9, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/UserManager;

    .line 730
    .local v6, "userManager":Landroid/os/UserManager;
    if-eqz v6, :cond_4

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v9

    invoke-virtual {v6, v9}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v3

    .line 733
    .local v3, "info":Landroid/content/pm/UserInfo;
    :goto_2
    if-eqz v3, :cond_3

    .line 734
    iput-boolean v8, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->misAvailableHelpHub:Z

    .line 735
    const-string v5, "com.samsung.helphub"

    .line 736
    .local v5, "packageName":Ljava/lang/String;
    iget-object v8, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    const/16 v9, 0x80

    iget v10, v3, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v8, v9, v10}, Landroid/content/pm/PackageManager;->getInstalledPackages(II)Ljava/util/List;

    move-result-object v1

    .line 739
    .local v1, "appList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageInfo;

    .line 740
    .local v0, "appInfo":Landroid/content/pm/PackageInfo;
    iget-object v8, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 741
    iput-boolean v7, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->misAvailableHelpHub:Z

    .line 747
    .end local v0    # "appInfo":Landroid/content/pm/PackageInfo;
    .end local v1    # "appList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v5    # "packageName":Ljava/lang/String;
    :cond_3
    invoke-virtual {p0}, Lcom/android/systemui/recents/AlternateRecentsComponent;->dismissHelpPopup()V

    .line 748
    invoke-direct {p0}, Lcom/android/systemui/recents/AlternateRecentsComponent;->makeRecentHelpPopup()V

    .line 749
    iget-object v8, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mHelpHandler:Landroid/os/Handler;

    iget-object v9, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mHelpHandler:Landroid/os/Handler;

    invoke-static {v9, v7}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v7

    iget v9, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->DELAY_SHOW_RECENTMENU_HELPPOPUP:I

    int-to-long v10, v9

    invoke-virtual {v8, v7, v10, v11}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_1

    .line 730
    .end local v3    # "info":Landroid/content/pm/UserInfo;
    :cond_4
    const/4 v3, 0x0

    goto :goto_2
.end method

.method showRelativeAffiliatedTask(Z)V
    .locals 20
    .param p1, "showNextTask"    # Z

    .prologue
    .line 237
    const-string v2, "Recents_AlternateRecentsComponent"

    const-string v3, "showRelativeAffiliatedTask is getting called"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    invoke-static {}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->getInstance()Lcom/android/systemui/recents/model/RecentsTaskLoader;

    move-result-object v1

    .line 239
    .local v1, "loader":Lcom/android/systemui/recents/model/RecentsTaskLoader;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mSystemServicesProxy:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const/4 v4, -0x1

    const/4 v5, -0x1

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v1 .. v9}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->getTaskStack(Lcom/android/systemui/recents/misc/SystemServicesProxy;Landroid/content/res/Resources;IIZZLjava/util/List;Ljava/util/List;)Lcom/android/systemui/recents/model/TaskStack;

    move-result-object v14

    .line 242
    .local v14, "stack":Lcom/android/systemui/recents/model/TaskStack;
    invoke-virtual {v14}, Lcom/android/systemui/recents/model/TaskStack;->getTaskCount()I

    move-result v2

    if-nez v2, :cond_1

    .line 294
    :cond_0
    :goto_0
    return-void

    .line 244
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/recents/AlternateRecentsComponent;->getTopMostTask()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v13

    .line 246
    .local v13, "runningTask":Landroid/app/ActivityManager$RunningTaskInfo;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mSystemServicesProxy:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    iget v3, v13, Landroid/app/ActivityManager$RunningTaskInfo;->id:I

    invoke-virtual {v2, v3}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->isInHomeStack(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 249
    invoke-virtual {v14}, Lcom/android/systemui/recents/model/TaskStack;->getTasks()Ljava/util/ArrayList;

    move-result-object v17

    .line 250
    .local v17, "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/recents/model/Task;>;"
    const/16 v18, 0x0

    .line 251
    .local v18, "toTask":Lcom/android/systemui/recents/model/Task;
    const/4 v12, 0x0

    .line 252
    .local v12, "launchOpts":Landroid/app/ActivityOptions;
    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v16

    .line 253
    .local v16, "taskCount":I
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_1
    move/from16 v0, v16

    if-ge v11, v0, :cond_2

    .line 254
    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/systemui/recents/model/Task;

    .line 255
    .local v15, "task":Lcom/android/systemui/recents/model/Task;
    iget-object v2, v15, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    iget v2, v2, Lcom/android/systemui/recents/model/Task$TaskKey;->id:I

    iget v3, v13, Landroid/app/ActivityManager$RunningTaskInfo;->id:I

    if-ne v2, v3, :cond_4

    .line 256
    iget-object v10, v15, Lcom/android/systemui/recents/model/Task;->group:Lcom/android/systemui/recents/model/TaskGrouping;

    .line 258
    .local v10, "group":Lcom/android/systemui/recents/model/TaskGrouping;
    if-eqz p1, :cond_3

    .line 259
    invoke-virtual {v10, v15}, Lcom/android/systemui/recents/model/TaskGrouping;->getNextTaskInGroup(Lcom/android/systemui/recents/model/Task;)Lcom/android/systemui/recents/model/Task$TaskKey;

    move-result-object v19

    .line 260
    .local v19, "toTaskKey":Lcom/android/systemui/recents/model/Task$TaskKey;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mContext:Landroid/content/Context;

    const v3, 0x7f050024

    const v4, 0x7f050023

    invoke-static {v2, v3, v4}, Landroid/app/ActivityOptions;->makeCustomAnimation(Landroid/content/Context;II)Landroid/app/ActivityOptions;

    move-result-object v12

    .line 269
    :goto_2
    if-eqz v19, :cond_2

    .line 270
    move-object/from16 v0, v19

    iget v2, v0, Lcom/android/systemui/recents/model/Task$TaskKey;->id:I

    invoke-virtual {v14, v2}, Lcom/android/systemui/recents/model/TaskStack;->findTaskWithId(I)Lcom/android/systemui/recents/model/Task;

    move-result-object v18

    .line 277
    .end local v10    # "group":Lcom/android/systemui/recents/model/TaskGrouping;
    .end local v15    # "task":Lcom/android/systemui/recents/model/Task;
    .end local v19    # "toTaskKey":Lcom/android/systemui/recents/model/Task$TaskKey;
    :cond_2
    if-nez v18, :cond_5

    .line 278
    if-eqz p1, :cond_0

    goto :goto_0

    .line 264
    .restart local v10    # "group":Lcom/android/systemui/recents/model/TaskGrouping;
    .restart local v15    # "task":Lcom/android/systemui/recents/model/Task;
    :cond_3
    invoke-virtual {v10, v15}, Lcom/android/systemui/recents/model/TaskGrouping;->getPrevTaskInGroup(Lcom/android/systemui/recents/model/Task;)Lcom/android/systemui/recents/model/Task$TaskKey;

    move-result-object v19

    .line 265
    .restart local v19    # "toTaskKey":Lcom/android/systemui/recents/model/Task$TaskKey;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mContext:Landroid/content/Context;

    const v3, 0x7f050027

    const v4, 0x7f050026

    invoke-static {v2, v3, v4}, Landroid/app/ActivityOptions;->makeCustomAnimation(Landroid/content/Context;II)Landroid/app/ActivityOptions;

    move-result-object v12

    goto :goto_2

    .line 253
    .end local v10    # "group":Lcom/android/systemui/recents/model/TaskGrouping;
    .end local v19    # "toTaskKey":Lcom/android/systemui/recents/model/Task$TaskKey;
    :cond_4
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 287
    .end local v15    # "task":Lcom/android/systemui/recents/model/Task;
    :cond_5
    move-object/from16 v0, v18

    iget-boolean v2, v0, Lcom/android/systemui/recents/model/Task;->isActive:Z

    if-eqz v2, :cond_6

    .line 289
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mSystemServicesProxy:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-object/from16 v0, v18

    iget-object v3, v0, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    iget v3, v3, Lcom/android/systemui/recents/model/Task$TaskKey;->id:I

    invoke-virtual {v2, v3, v12}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->moveTaskToFront(ILandroid/app/ActivityOptions;)V

    goto :goto_0

    .line 291
    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mSystemServicesProxy:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mContext:Landroid/content/Context;

    move-object/from16 v0, v18

    iget-object v4, v0, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    iget v4, v4, Lcom/android/systemui/recents/model/Task$TaskKey;->id:I

    move-object/from16 v0, v18

    iget-object v5, v0, Lcom/android/systemui/recents/model/Task;->activityLabel:Ljava/lang/String;

    invoke-virtual {v2, v3, v4, v5, v12}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->startActivityFromRecents(Landroid/content/Context;ILjava/lang/String;Landroid/app/ActivityOptions;)Z

    goto/16 :goto_0
.end method

.method startAlternateRecentsActivity(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/app/ActivityOptions;Ljava/lang/String;)V
    .locals 4
    .param p1, "topTask"    # Landroid/app/ActivityManager$RunningTaskInfo;
    .param p2, "opts"    # Landroid/app/ActivityOptions;
    .param p3, "extraFlag"    # Ljava/lang/String;

    .prologue
    .line 629
    const-string v1, "Recents_AlternateRecentsComponent"

    const-string v2, "startAlternateRecentsActivity with arg is getting called"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 631
    invoke-virtual {p0}, Lcom/android/systemui/recents/AlternateRecentsComponent;->isUserSetupComplete()Z

    move-result v1

    if-nez v1, :cond_0

    .line 651
    :goto_0
    return-void

    .line 635
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.systemui.recents.SHOW_RECENTS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 636
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.android.systemui"

    const-string v2, "com.android.systemui.recents.RecentsActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 637
    const/high16 v1, 0x10800000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 641
    if-eqz p3, :cond_1

    .line 642
    const/4 v1, 0x1

    invoke-virtual {v0, p3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 644
    :cond_1
    const-string v1, "recents.triggeredFromAltTab"

    iget-boolean v2, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mTriggeredFromAltTab:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 645
    const-string v2, "recents.activeTaskId"

    if-eqz p1, :cond_2

    iget v1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->id:I

    :goto_1
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 646
    if-eqz p2, :cond_3

    .line 647
    iget-object v1, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v2

    sget-object v3, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/Bundle;Landroid/os/UserHandle;)V

    goto :goto_0

    .line 645
    :cond_2
    const/4 v1, -0x1

    goto :goto_1

    .line 649
    :cond_3
    iget-object v1, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto :goto_0
.end method

.method startRecentsActivity()V
    .locals 4

    .prologue
    .line 420
    const-string v2, "Recents_AlternateRecentsComponent"

    const-string v3, "startRecentsActivity is getting called"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 421
    invoke-virtual {p0}, Lcom/android/systemui/recents/AlternateRecentsComponent;->getTopMostTask()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v1

    .line 422
    .local v1, "topTask":Landroid/app/ActivityManager$RunningTaskInfo;
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    .line 423
    .local v0, "isTopTaskHome":Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/recents/AlternateRecentsComponent;->isRecentsTopMost(Landroid/app/ActivityManager$RunningTaskInfo;Ljava/util/concurrent/atomic/AtomicBoolean;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 424
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/android/systemui/recents/AlternateRecentsComponent;->startRecentsActivity(Landroid/app/ActivityManager$RunningTaskInfo;Z)V

    .line 426
    :cond_0
    return-void
.end method

.method startRecentsActivity(Landroid/app/ActivityManager$RunningTaskInfo;Z)V
    .locals 13
    .param p1, "topTask"    # Landroid/app/ActivityManager$RunningTaskInfo;
    .param p2, "isTopTaskHome"    # Z

    .prologue
    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 564
    const-string v11, "Recents_AlternateRecentsComponent"

    const-string v12, "startRecentsActivity with arg is getting called"

    invoke-static {v11, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 565
    iget-object v7, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mSystemServicesProxy:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    .line 566
    .local v7, "ssp":Lcom/android/systemui/recents/misc/SystemServicesProxy;
    const/4 v11, 0x3

    sget-object v12, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v12}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v12

    invoke-virtual {v7, v11, v12, p2}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getRecentTasks(IIZ)Ljava/util/List;

    move-result-object v4

    .line 568
    .local v4, "recentTasks":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RecentTaskInfo;>;"
    if-nez p2, :cond_5

    move v8, v9

    .line 569
    .local v8, "useThumbnailTransition":Z
    :goto_0
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_6

    move v1, v9

    .line 571
    .local v1, "hasRecentTasks":Z
    :goto_1
    if-eqz v8, :cond_1

    .line 573
    const/4 v3, 0x0

    .line 574
    .local v3, "opts":Landroid/app/ActivityOptions;
    if-eqz p1, :cond_0

    .line 575
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/recents/AlternateRecentsComponent;->getThumbnailTransitionActivityOptions(Landroid/app/ActivityManager$RunningTaskInfo;Z)Landroid/app/ActivityOptions;

    move-result-object v3

    .line 577
    :cond_0
    if-eqz v3, :cond_8

    .line 578
    sget-object v9, Lcom/android/systemui/recents/AlternateRecentsComponent;->sLastScreenshot:Landroid/graphics/Bitmap;

    if-eqz v9, :cond_7

    .line 579
    const-string v9, "recents.thumbnail"

    invoke-virtual {p0, p1, v3, v9}, Lcom/android/systemui/recents/AlternateRecentsComponent;->startAlternateRecentsActivity(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/app/ActivityOptions;Ljava/lang/String;)V

    .line 589
    .end local v3    # "opts":Landroid/app/ActivityOptions;
    :cond_1
    :goto_2
    if-nez v8, :cond_4

    .line 592
    if-eqz v1, :cond_b

    .line 594
    iget-object v9, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mSystemServicesProxy:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    invoke-virtual {v9}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getHomeActivityPackageName()Ljava/lang/String;

    move-result-object v2

    .line 596
    .local v2, "homeActivityPackage":Ljava/lang/String;
    const/4 v5, 0x0

    .line 597
    .local v5, "searchWidget":Landroid/appwidget/AppWidgetProviderInfo;
    const/4 v6, 0x0

    .line 598
    .local v6, "searchWidgetPackage":Ljava/lang/String;
    iget-object v9, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    if-eqz v9, :cond_9

    iget-object v9, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    invoke-virtual {v9}, Lcom/android/systemui/recents/RecentsConfiguration;->hasSearchBarAppWidget()Z

    move-result v9

    if-eqz v9, :cond_9

    .line 599
    iget-object v9, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mSystemServicesProxy:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    iget-object v10, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget v10, v10, Lcom/android/systemui/recents/RecentsConfiguration;->searchBarAppWidgetId:I

    invoke-virtual {v9, v10}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getAppWidgetInfo(I)Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v5

    .line 604
    :goto_3
    if-eqz v5, :cond_2

    iget-object v9, v5, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    if-eqz v9, :cond_2

    .line 605
    iget-object v9, v5, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v9}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    .line 608
    :cond_2
    const/4 v0, 0x0

    .line 609
    .local v0, "fromSearchHome":Z
    if-eqz v2, :cond_3

    if-eqz v6, :cond_3

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 611
    const/4 v0, 0x1

    .line 614
    :cond_3
    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/AlternateRecentsComponent;->getHomeTransitionActivityOptions(Z)Landroid/app/ActivityOptions;

    move-result-object v3

    .line 615
    .restart local v3    # "opts":Landroid/app/ActivityOptions;
    if-eqz v0, :cond_a

    const-string v9, "recents.triggeredOverSearchHome"

    :goto_4
    invoke-virtual {p0, p1, v3, v9}, Lcom/android/systemui/recents/AlternateRecentsComponent;->startAlternateRecentsActivity(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/app/ActivityOptions;Ljava/lang/String;)V

    .line 623
    .end local v0    # "fromSearchHome":Z
    .end local v2    # "homeActivityPackage":Ljava/lang/String;
    .end local v3    # "opts":Landroid/app/ActivityOptions;
    .end local v5    # "searchWidget":Landroid/appwidget/AppWidgetProviderInfo;
    .end local v6    # "searchWidgetPackage":Ljava/lang/String;
    :cond_4
    :goto_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    iput-wide v10, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mLastToggleTime:J

    .line 624
    return-void

    .end local v1    # "hasRecentTasks":Z
    .end local v8    # "useThumbnailTransition":Z
    :cond_5
    move v8, v10

    .line 568
    goto :goto_0

    .restart local v8    # "useThumbnailTransition":Z
    :cond_6
    move v1, v10

    .line 569
    goto :goto_1

    .line 581
    .restart local v1    # "hasRecentTasks":Z
    .restart local v3    # "opts":Landroid/app/ActivityOptions;
    :cond_7
    const-string v9, "recents.animatingWithThumbnail"

    invoke-virtual {p0, p1, v3, v9}, Lcom/android/systemui/recents/AlternateRecentsComponent;->startAlternateRecentsActivity(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/app/ActivityOptions;Ljava/lang/String;)V

    goto :goto_2

    .line 585
    :cond_8
    const/4 v8, 0x0

    goto :goto_2

    .line 602
    .end local v3    # "opts":Landroid/app/ActivityOptions;
    .restart local v2    # "homeActivityPackage":Ljava/lang/String;
    .restart local v5    # "searchWidget":Landroid/appwidget/AppWidgetProviderInfo;
    .restart local v6    # "searchWidgetPackage":Ljava/lang/String;
    :cond_9
    iget-object v9, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mSystemServicesProxy:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    invoke-virtual {v9}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->resolveSearchAppWidget()Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v5

    goto :goto_3

    .line 615
    .restart local v0    # "fromSearchHome":Z
    .restart local v3    # "opts":Landroid/app/ActivityOptions;
    :cond_a
    const-string v9, "recents.triggeredOverHome"

    goto :goto_4

    .line 619
    .end local v0    # "fromSearchHome":Z
    .end local v2    # "homeActivityPackage":Ljava/lang/String;
    .end local v3    # "opts":Landroid/app/ActivityOptions;
    .end local v5    # "searchWidget":Landroid/appwidget/AppWidgetProviderInfo;
    .end local v6    # "searchWidgetPackage":Ljava/lang/String;
    :cond_b
    invoke-virtual {p0}, Lcom/android/systemui/recents/AlternateRecentsComponent;->getUnknownTransitionActivityOptions()Landroid/app/ActivityOptions;

    move-result-object v3

    .line 620
    .restart local v3    # "opts":Landroid/app/ActivityOptions;
    const/4 v9, 0x0

    invoke-virtual {p0, p1, v3, v9}, Lcom/android/systemui/recents/AlternateRecentsComponent;->startAlternateRecentsActivity(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/app/ActivityOptions;Ljava/lang/String;)V

    goto :goto_5
.end method

.method toggleRecentsActivity()V
    .locals 8

    .prologue
    .line 387
    const-string v3, "Recents_AlternateRecentsComponent"

    const-string v4, "toggleRecentsActivity is getting called"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 389
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mLastToggleTime:J

    sub-long/2addr v4, v6

    const-wide/16 v6, 0xc8

    cmp-long v3, v4, v6

    if-gez v3, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mLastToggleTime:J

    sub-long/2addr v4, v6

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-lez v3, :cond_1

    .line 391
    const-string v3, "Recents_AlternateRecentsComponent"

    const-string v4, "toggleRecentsActivity ->just eat up the event here and return"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 415
    :cond_0
    :goto_0
    return-void

    .line 397
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/recents/AlternateRecentsComponent;->getTopMostTask()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v2

    .line 398
    .local v2, "topTask":Landroid/app/ActivityManager$RunningTaskInfo;
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    .line 399
    .local v1, "isTopTaskHome":Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-virtual {p0, v2, v1}, Lcom/android/systemui/recents/AlternateRecentsComponent;->isRecentsTopMost(Landroid/app/ActivityManager$RunningTaskInfo;Ljava/util/concurrent/atomic/AtomicBoolean;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 401
    const-string v3, "Recents_AlternateRecentsComponent"

    const-string v4, "toggleRecentsActivity ->Recent is on the Top so dismiss it"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 402
    new-instance v0, Landroid/content/Intent;

    const-string v3, "action_toggle_recents_activity"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 403
    .local v0, "intent":Landroid/content/Intent;
    iget-object v3, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 404
    const/high16 v3, 0x14000000

    invoke-virtual {v0, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 406
    iget-object v3, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mContext:Landroid/content/Context;

    sget-object v4, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v3, v0, v4}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 407
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mLastToggleTime:J

    .line 408
    sget-boolean v3, Lcom/android/systemui/statusbar/Feature;->mShowRecentOnLongPressHome:Z

    if-nez v3, :cond_0

    .line 409
    invoke-virtual {p0}, Lcom/android/systemui/recents/AlternateRecentsComponent;->dismissHelpPopup()V

    goto :goto_0

    .line 413
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_2
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v3

    invoke-virtual {p0, v2, v3}, Lcom/android/systemui/recents/AlternateRecentsComponent;->startRecentsActivity(Landroid/app/ActivityManager$RunningTaskInfo;Z)V

    goto :goto_0
.end method
