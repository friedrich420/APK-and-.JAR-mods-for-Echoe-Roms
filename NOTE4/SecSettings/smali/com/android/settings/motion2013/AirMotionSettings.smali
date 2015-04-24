.class public Lcom/android/settings/motion2013/AirMotionSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "AirMotionSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field private isGoIntoQuideHub:Z

.field private mActionBarLayout:Landroid/view/View;

.field private mActionBarSwitch:Landroid/widget/Switch;

.field private mActivity:Landroid/app/Activity;

.field private mAirCallAccept:Landroid/preference/SwitchPreferenceScreen;

.field private mAirMotionIndicatorAnimation:[I

.field private mAirMotionObserver:Landroid/database/ContentObserver;

.field private mAirMove:Landroid/preference/SwitchPreferenceScreen;

.field private mAirPin:Landroid/preference/SwitchPreferenceScreen;

.field private mAirScroll:Landroid/preference/SwitchPreferenceScreen;

.field private mAirTurn:Landroid/preference/SwitchPreferenceScreen;

.field private mAllDisabledDialog:Landroid/app/AlertDialog;

.field private mAnimationHandler:Landroid/os/Handler;

.field private mAnimationIndex:I

.field private mAnimationView:Landroid/widget/ImageView;

.field private mApplicationInfo:Landroid/content/pm/ApplicationInfo;

.field private mGuideDialog:Landroid/app/AlertDialog;

.field private mPackageManager:Landroid/content/pm/PackageManager;

.field private mQuickGlance:Landroid/preference/SwitchPreferenceScreen;

.field private mResolver:Landroid/content/ContentResolver;

.field protected mSwitchUncheckHandler:Landroid/os/Handler;

.field private mTalkbackDisableDialog:Landroid/app/AlertDialog;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 58
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 87
    iput-object v1, p0, Lcom/android/settings/motion2013/AirMotionSettings;->mAllDisabledDialog:Landroid/app/AlertDialog;

    .line 89
    iput-boolean v0, p0, Lcom/android/settings/motion2013/AirMotionSettings;->isGoIntoQuideHub:Z

    .line 93
    iput v0, p0, Lcom/android/settings/motion2013/AirMotionSettings;->mAnimationIndex:I

    .line 94
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/settings/motion2013/AirMotionSettings;->mAirMotionIndicatorAnimation:[I

    .line 95
    iput-object v1, p0, Lcom/android/settings/motion2013/AirMotionSettings;->mAnimationView:Landroid/widget/ImageView;

    .line 98
    new-instance v0, Lcom/android/settings/motion2013/AirMotionSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings/motion2013/AirMotionSettings$1;-><init>(Lcom/android/settings/motion2013/AirMotionSettings;)V

    iput-object v0, p0, Lcom/android/settings/motion2013/AirMotionSettings;->mAnimationHandler:Landroid/os/Handler;

    .line 108
    new-instance v0, Lcom/android/settings/motion2013/AirMotionSettings$2;

    invoke-direct {v0, p0}, Lcom/android/settings/motion2013/AirMotionSettings$2;-><init>(Lcom/android/settings/motion2013/AirMotionSettings;)V

    iput-object v0, p0, Lcom/android/settings/motion2013/AirMotionSettings;->mSwitchUncheckHandler:Landroid/os/Handler;

    .line 121
    new-instance v0, Lcom/android/settings/motion2013/AirMotionSettings$3;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/motion2013/AirMotionSettings$3;-><init>(Lcom/android/settings/motion2013/AirMotionSettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/motion2013/AirMotionSettings;->mAirMotionObserver:Landroid/database/ContentObserver;

    return-void

    .line 94
    :array_0
    .array-data 4
        0x7f020657
        0x7f020658
        0x7f020659
    .end array-data
.end method

.method static synthetic access$000(Lcom/android/settings/motion2013/AirMotionSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/motion2013/AirMotionSettings;

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/android/settings/motion2013/AirMotionSettings;->updateAnimation()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/motion2013/AirMotionSettings;)Landroid/preference/SwitchPreferenceScreen;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/motion2013/AirMotionSettings;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/settings/motion2013/AirMotionSettings;->mAirScroll:Landroid/preference/SwitchPreferenceScreen;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/settings/motion2013/AirMotionSettings;)Landroid/preference/SwitchPreferenceScreen;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/motion2013/AirMotionSettings;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/settings/motion2013/AirMotionSettings;->mAirCallAccept:Landroid/preference/SwitchPreferenceScreen;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/settings/motion2013/AirMotionSettings;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/motion2013/AirMotionSettings;
    .param p1, "x1"    # Z

    .prologue
    .line 58
    invoke-direct {p0, p1}, Lcom/android/settings/motion2013/AirMotionSettings;->showGuideDialog(Z)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/settings/motion2013/AirMotionSettings;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/motion2013/AirMotionSettings;

    .prologue
    .line 58
    invoke-virtual {p0}, Lcom/android/settings/motion2013/AirMotionSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/settings/motion2013/AirMotionSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/motion2013/AirMotionSettings;

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/android/settings/motion2013/AirMotionSettings;->stopAnimation()V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/settings/motion2013/AirMotionSettings;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/motion2013/AirMotionSettings;

    .prologue
    .line 58
    invoke-virtual {p0}, Lcom/android/settings/motion2013/AirMotionSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/settings/motion2013/AirMotionSettings;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/motion2013/AirMotionSettings;
    .param p1, "x1"    # Z

    .prologue
    .line 58
    invoke-direct {p0, p1}, Lcom/android/settings/motion2013/AirMotionSettings;->broadcastAirScrollChanged(Z)V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/settings/motion2013/AirMotionSettings;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/motion2013/AirMotionSettings;

    .prologue
    .line 58
    invoke-virtual {p0}, Lcom/android/settings/motion2013/AirMotionSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/settings/motion2013/AirMotionSettings;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/motion2013/AirMotionSettings;
    .param p1, "x1"    # Z

    .prologue
    .line 58
    invoke-direct {p0, p1}, Lcom/android/settings/motion2013/AirMotionSettings;->broadcastAirBrowseChanged(Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/settings/motion2013/AirMotionSettings;)Landroid/preference/SwitchPreferenceScreen;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/motion2013/AirMotionSettings;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/settings/motion2013/AirMotionSettings;->mAirTurn:Landroid/preference/SwitchPreferenceScreen;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/motion2013/AirMotionSettings;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/motion2013/AirMotionSettings;

    .prologue
    .line 58
    invoke-virtual {p0}, Lcom/android/settings/motion2013/AirMotionSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings/motion2013/AirMotionSettings;)Landroid/widget/Switch;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/motion2013/AirMotionSettings;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/settings/motion2013/AirMotionSettings;->mActionBarSwitch:Landroid/widget/Switch;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/settings/motion2013/AirMotionSettings;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/motion2013/AirMotionSettings;

    .prologue
    .line 58
    invoke-virtual {p0}, Lcom/android/settings/motion2013/AirMotionSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/settings/motion2013/AirMotionSettings;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/motion2013/AirMotionSettings;
    .param p1, "x1"    # Z

    .prologue
    .line 58
    invoke-direct {p0, p1}, Lcom/android/settings/motion2013/AirMotionSettings;->broadcastAirMotionChanged(Z)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/settings/motion2013/AirMotionSettings;)Landroid/preference/SwitchPreferenceScreen;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/motion2013/AirMotionSettings;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/settings/motion2013/AirMotionSettings;->mQuickGlance:Landroid/preference/SwitchPreferenceScreen;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/settings/motion2013/AirMotionSettings;)Landroid/preference/SwitchPreferenceScreen;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/motion2013/AirMotionSettings;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/settings/motion2013/AirMotionSettings;->mAirMove:Landroid/preference/SwitchPreferenceScreen;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/settings/motion2013/AirMotionSettings;)Landroid/preference/SwitchPreferenceScreen;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/motion2013/AirMotionSettings;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/settings/motion2013/AirMotionSettings;->mAirPin:Landroid/preference/SwitchPreferenceScreen;

    return-object v0
.end method

.method private broadcastAirBrowseChanged(Z)V
    .locals 2
    .param p1, "isEnable"    # Z

    .prologue
    .line 744
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.gesture.AIR_BROWSE_SETTINGS_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 745
    .local v0, "motion_changed":Landroid/content/Intent;
    const-string v1, "isEnable"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 746
    invoke-virtual {p0}, Lcom/android/settings/motion2013/AirMotionSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 747
    return-void
.end method

.method private broadcastAirCallAcceptChanged(Z)V
    .locals 2
    .param p1, "isEnable"    # Z

    .prologue
    .line 762
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.gesture.AIR_CALL_ACCEPT_SETTINGS_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 763
    .local v0, "motion_changed":Landroid/content/Intent;
    const-string v1, "isEnable"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 764
    invoke-virtual {p0}, Lcom/android/settings/motion2013/AirMotionSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 765
    return-void
.end method

.method private broadcastAirMotionChanged(Z)V
    .locals 3
    .param p1, "isEnable"    # Z

    .prologue
    .line 730
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.gesture.AIR_MOTION_SETTINGS_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 731
    .local v0, "motion_changed":Landroid/content/Intent;
    const-string v1, "isEnable"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 733
    invoke-virtual {p0}, Lcom/android/settings/motion2013/AirMotionSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/app/Activity;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 735
    return-void
.end method

.method private broadcastAirMoveChanged(Z)V
    .locals 2
    .param p1, "isEnable"    # Z

    .prologue
    .line 750
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.gesture.AIR_MOVE_SETTINGS_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 751
    .local v0, "motion_changed":Landroid/content/Intent;
    const-string v1, "isEnable"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 752
    invoke-virtual {p0}, Lcom/android/settings/motion2013/AirMotionSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 753
    return-void
.end method

.method private broadcastAirPinChanged(Z)V
    .locals 2
    .param p1, "isEnable"    # Z

    .prologue
    .line 756
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.gesture.AIR_PIN_SETTINGS_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 757
    .local v0, "motion_changed":Landroid/content/Intent;
    const-string v1, "isEnable"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 758
    invoke-virtual {p0}, Lcom/android/settings/motion2013/AirMotionSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 759
    return-void
.end method

.method private broadcastAirScrollChanged(Z)V
    .locals 2
    .param p1, "isEnable"    # Z

    .prologue
    .line 738
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.gesture.AIR_SCROLL_SETTINGS_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 739
    .local v0, "motion_changed":Landroid/content/Intent;
    const-string v1, "isEnable"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 740
    invoke-virtual {p0}, Lcom/android/settings/motion2013/AirMotionSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 741
    return-void
.end method

.method private dismissAllDialog()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 627
    iget-object v0, p0, Lcom/android/settings/motion2013/AirMotionSettings;->mTalkbackDisableDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 628
    iget-object v0, p0, Lcom/android/settings/motion2013/AirMotionSettings;->mTalkbackDisableDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 629
    iput-object v1, p0, Lcom/android/settings/motion2013/AirMotionSettings;->mTalkbackDisableDialog:Landroid/app/AlertDialog;

    .line 632
    :cond_0
    iget-object v0, p0, Lcom/android/settings/motion2013/AirMotionSettings;->mAllDisabledDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_1

    .line 633
    iget-object v0, p0, Lcom/android/settings/motion2013/AirMotionSettings;->mAllDisabledDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 634
    iput-object v1, p0, Lcom/android/settings/motion2013/AirMotionSettings;->mAllDisabledDialog:Landroid/app/AlertDialog;

    .line 637
    :cond_1
    iget-object v0, p0, Lcom/android/settings/motion2013/AirMotionSettings;->mGuideDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_2

    .line 638
    iget-object v0, p0, Lcom/android/settings/motion2013/AirMotionSettings;->mGuideDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 639
    iput-object v1, p0, Lcom/android/settings/motion2013/AirMotionSettings;->mGuideDialog:Landroid/app/AlertDialog;

    .line 641
    :cond_2
    return-void
.end method

.method private isAllAirScrollOptionDisabled()Z
    .locals 10

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 696
    invoke-virtual {p0}, Lcom/android/settings/motion2013/AirMotionSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    iput-object v8, p0, Lcom/android/settings/motion2013/AirMotionSettings;->mResolver:Landroid/content/ContentResolver;

    .line 698
    iget-object v8, p0, Lcom/android/settings/motion2013/AirMotionSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v9, "air_motion_scroll_all_list"

    invoke-static {v8, v9, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 699
    .local v1, "alllist":I
    iget-object v8, p0, Lcom/android/settings/motion2013/AirMotionSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v9, "air_motion_scroll_web_page"

    invoke-static {v8, v9, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    .line 700
    .local v5, "webpage":I
    iget-object v8, p0, Lcom/android/settings/motion2013/AirMotionSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v9, "air_motion_scroll_contact_list"

    invoke-static {v8, v9, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 701
    .local v2, "contactlist":I
    iget-object v8, p0, Lcom/android/settings/motion2013/AirMotionSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v9, "air_motion_scroll_email_list"

    invoke-static {v8, v9, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    .line 702
    .local v4, "emaillist":I
    iget-object v8, p0, Lcom/android/settings/motion2013/AirMotionSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v9, "air_motion_scroll_album_and_photo"

    invoke-static {v8, v9, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 703
    .local v0, "albumandphoto":I
    iget-object v8, p0, Lcom/android/settings/motion2013/AirMotionSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v9, "air_motion_scroll_email_body"

    invoke-static {v8, v9, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 705
    .local v3, "emailbody":I
    or-int v8, v1, v5

    or-int/2addr v8, v2

    or-int/2addr v8, v4

    or-int/2addr v8, v0

    or-int/2addr v8, v3

    if-ge v8, v6, :cond_0

    :goto_0
    return v6

    :cond_0
    move v6, v7

    goto :goto_0
.end method

.method private isAllAirTurnOptionDisabled()Z
    .locals 9

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 709
    invoke-virtual {p0}, Lcom/android/settings/motion2013/AirMotionSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    iput-object v7, p0, Lcom/android/settings/motion2013/AirMotionSettings;->mResolver:Landroid/content/ContentResolver;

    .line 711
    iget-object v7, p0, Lcom/android/settings/motion2013/AirMotionSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v8, "air_motion_turn_single_photo_view"

    invoke-static {v7, v8, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    .line 712
    .local v4, "singlephotoview":I
    iget-object v7, p0, Lcom/android/settings/motion2013/AirMotionSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v8, "air_motion_turn_internet_window"

    invoke-static {v7, v8, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 713
    .local v1, "internetwindow":I
    iget-object v7, p0, Lcom/android/settings/motion2013/AirMotionSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v8, "air_motion_turn_now_playing_on_music"

    invoke-static {v7, v8, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 714
    .local v3, "nowplayingmusic":I
    iget-object v7, p0, Lcom/android/settings/motion2013/AirMotionSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v8, "air_motion_turn_bgm_on_lock_screen"

    invoke-static {v7, v8, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 715
    .local v0, "bgmonlockscreen":I
    iget-object v7, p0, Lcom/android/settings/motion2013/AirMotionSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v8, "air_motion_turn_note_page_view"

    invoke-static {v7, v8, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 717
    .local v2, "notepageview":I
    or-int v7, v4, v1

    or-int/2addr v7, v3

    or-int/2addr v7, v0

    or-int/2addr v7, v2

    if-ge v7, v5, :cond_0

    :goto_0
    return v5

    :cond_0
    move v5, v6

    goto :goto_0
.end method

.method public static isAllOptionDisabled(Landroid/content/ContentResolver;)Z
    .locals 9
    .param p0, "cr"    # Landroid/content/ContentResolver;

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 674
    const-string v7, "air_motion_glance_view"

    const/4 v8, -0x2

    invoke-static {p0, v7, v6, v8}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v4

    .line 675
    .local v4, "quickGlance":I
    const-string v7, "air_motion_scroll"

    invoke-static {p0, v7, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 676
    .local v1, "airScroll":I
    const-string v7, "air_motion_turn"

    invoke-static {p0, v7, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 677
    .local v2, "airTurn":I
    const-string v7, "air_motion_item_move"

    invoke-static {p0, v7, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 678
    .local v0, "airMove":I
    const-string v7, "air_motion_call_accept"

    invoke-static {p0, v7, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 680
    .local v3, "callAccept":I
    or-int v7, v4, v1

    or-int/2addr v7, v2

    or-int/2addr v7, v0

    or-int/2addr v7, v3

    if-ge v7, v5, :cond_0

    :goto_0
    return v5

    :cond_0
    move v5, v6

    goto :goto_0
.end method

.method private sendGlanceViewCheck(Z)V
    .locals 4
    .param p1, "value"    # Z

    .prologue
    .line 721
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.settings.GlanceViewChanged"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 722
    .local v0, "i":Landroid/content/Intent;
    const-string v1, "GlanceViewState"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 723
    const-string v1, "AirMotionSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "GlanceViewState : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 725
    invoke-virtual {p0}, Lcom/android/settings/motion2013/AirMotionSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/app/Activity;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 727
    return-void
.end method

.method private showAllOptionDisabledDialog(IILjava/lang/String;)V
    .locals 4
    .param p1, "title_res_id"    # I
    .param p2, "message_res_id"    # I
    .param p3, "key"    # Ljava/lang/String;

    .prologue
    .line 601
    invoke-direct {p0}, Lcom/android/settings/motion2013/AirMotionSettings;->dismissAllDialog()V

    .line 603
    move-object v0, p3

    .line 604
    .local v0, "motion_type":Ljava/lang/String;
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/motion2013/AirMotionSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, p2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x104000a

    new-instance v3, Lcom/android/settings/motion2013/AirMotionSettings$10;

    invoke-direct {v3, p0, v0}, Lcom/android/settings/motion2013/AirMotionSettings$10;-><init>(Lcom/android/settings/motion2013/AirMotionSettings;Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/motion2013/AirMotionSettings;->mAllDisabledDialog:Landroid/app/AlertDialog;

    .line 623
    iget-object v1, p0, Lcom/android/settings/motion2013/AirMotionSettings;->mAllDisabledDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 624
    return-void
.end method

.method private showGuideDialog(Z)V
    .locals 21
    .param p1, "showagain_checkbox_flag"    # Z

    .prologue
    .line 510
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/motion2013/AirMotionSettings;->dismissAllDialog()V

    .line 513
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/motion2013/AirMotionSettings;->getActivity()Landroid/app/Activity;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-direct {v3, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 515
    .local v3, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/motion2013/AirMotionSettings;->getActivity()Landroid/app/Activity;

    move-result-object v16

    const-string v17, "layout_inflater"

    invoke-virtual/range {v16 .. v17}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/LayoutInflater;

    .line 516
    .local v6, "inflater":Landroid/view/LayoutInflater;
    const v16, 0x7f04008a

    const/16 v17, 0x0

    move/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v6, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    .line 517
    .local v7, "layout":Landroid/view/View;
    const v16, 0x7f100075

    move/from16 v0, v16

    invoke-virtual {v7, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 518
    .local v8, "message":Landroid/widget/TextView;
    const v16, 0x7f100171

    move/from16 v0, v16

    invoke-virtual {v7, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    .line 519
    .local v5, "image":Landroid/widget/ImageView;
    const v16, 0x7f100167

    move/from16 v0, v16

    invoke-virtual {v7, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/CheckBox;

    .line 520
    .local v4, "checkbox":Landroid/widget/CheckBox;
    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v4, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 521
    if-eqz p1, :cond_0

    .line 522
    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v4, v0}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 524
    :cond_0
    const v16, 0x7f020659

    move/from16 v0, v16

    invoke-virtual {v5, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 526
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/motion2013/AirMotionSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    .line 527
    .local v14, "res":Landroid/content/res/Resources;
    const v16, 0x7f0a127a

    move/from16 v0, v16

    invoke-virtual {v14, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 528
    .local v11, "part1":Ljava/lang/String;
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v16

    add-int/lit8 v16, v16, -0x1

    move/from16 v0, v16

    invoke-virtual {v11, v0}, Ljava/lang/String;->charAt(I)C

    move-result v16

    const/16 v17, 0x2e

    move/from16 v0, v16

    move/from16 v1, v17

    if-eq v0, v1, :cond_1

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v16

    add-int/lit8 v16, v16, -0x1

    move/from16 v0, v16

    invoke-virtual {v11, v0}, Ljava/lang/String;->charAt(I)C

    move-result v16

    const/16 v17, 0x3002

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_8

    .line 529
    :cond_1
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v16

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 537
    :goto_0
    const v16, 0x7f0e0010

    move/from16 v0, v16

    invoke-virtual {v14, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v13

    .line 538
    .local v13, "proper_distance":I
    const v16, 0x7f0a127c

    move/from16 v0, v16

    invoke-virtual {v14, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v16

    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    aput-object v19, v17, v18

    invoke-static/range {v16 .. v17}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    .line 539
    .local v12, "part3":Ljava/lang/String;
    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v15

    .line 540
    .local v15, "salesCode":Ljava/lang/String;
    const-string v16, "ATT"

    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_2

    const-string v16, "SPR"

    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_2

    const-string v16, "VZW"

    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_2

    const-string v16, "TMB"

    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_2

    const-string v16, "USC"

    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_2

    const-string v16, "CRI"

    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_2

    const-string v16, "VMU"

    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_2

    const-string v16, "BST"

    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_2

    const-string v16, "XAS"

    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_2

    const-string v16, "TFN"

    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_2

    const-string v16, "XAR"

    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_2

    const-string v16, "CSP"

    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_3

    .line 543
    :cond_2
    const v16, 0x7f0e0011

    move/from16 v0, v16

    invoke-virtual {v14, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v13

    .line 544
    const v16, 0x7f0a127d

    move/from16 v0, v16

    invoke-virtual {v14, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v16

    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    aput-object v19, v17, v18

    invoke-static/range {v16 .. v17}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    .line 546
    :cond_3
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v16

    add-int/lit8 v16, v16, -0x1

    move/from16 v0, v16

    invoke-virtual {v12, v0}, Ljava/lang/String;->charAt(I)C

    move-result v16

    const/16 v17, 0x2e

    move/from16 v0, v16

    move/from16 v1, v17

    if-eq v0, v1, :cond_4

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v16

    add-int/lit8 v16, v16, -0x1

    move/from16 v0, v16

    invoke-virtual {v12, v0}, Ljava/lang/String;->charAt(I)C

    move-result v16

    const/16 v17, 0x3002

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_b

    .line 547
    :cond_4
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "\n"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 555
    :goto_1
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v16

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const v17, 0x7f0a127b

    move/from16 v0, v17

    invoke-virtual {v14, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 556
    .local v10, "original_str":Ljava/lang/String;
    const-string v16, "ja"

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/motion2013/AirMotionSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v17

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_5

    .line 557
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const v17, 0x7f0a127a

    move/from16 v0, v17

    invoke-virtual {v14, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const v17, 0x7f0a127c

    move/from16 v0, v17

    invoke-virtual {v14, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v17

    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    const/16 v20, 0x7

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    aput-object v20, v18, v19

    invoke-static/range {v17 .. v18}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "\n"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const v17, 0x7f0a127b

    move/from16 v0, v17

    invoke-virtual {v14, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 561
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/motion2013/AirMotionSettings;->getActivity()Landroid/app/Activity;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Lcom/android/settings/Utils;->isDualFolderType(Landroid/content/Context;)Z

    move-result v16

    if-eqz v16, :cond_6

    invoke-static {}, Lcom/android/settings/Utils;->isChinaModel()Z

    move-result v16

    if-eqz v16, :cond_6

    .line 562
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v16

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const v17, 0x7f0a127b

    move/from16 v0, v17

    invoke-virtual {v14, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const v17, 0x7f0a1bd7

    move/from16 v0, v17

    invoke-virtual {v14, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 564
    :cond_6
    const v16, 0x7f02001f

    move/from16 v0, v16

    invoke-virtual {v14, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-static {v10, v0}, Lcom/android/settings/Utils;->makeStringWithImage(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)Landroid/text/SpannableString;

    move-result-object v9

    .line 565
    .local v9, "message_str":Landroid/text/SpannableString;
    if-eqz v9, :cond_e

    .line 566
    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 570
    :goto_2
    invoke-virtual {v3, v7}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 571
    const v16, 0x7f0a1278

    move/from16 v0, v16

    invoke-virtual {v3, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 572
    const v16, 0x7f0a08f4

    new-instance v17, Lcom/android/settings/motion2013/AirMotionSettings$8;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v4}, Lcom/android/settings/motion2013/AirMotionSettings$8;-><init>(Lcom/android/settings/motion2013/AirMotionSettings;Landroid/widget/CheckBox;)V

    move/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v3, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 582
    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/motion2013/AirMotionSettings;->mGuideDialog:Landroid/app/AlertDialog;

    .line 583
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/motion2013/AirMotionSettings;->mGuideDialog:Landroid/app/AlertDialog;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/app/AlertDialog;->show()V

    .line 586
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/motion2013/AirMotionSettings;->mGuideDialog:Landroid/app/AlertDialog;

    move-object/from16 v16, v0

    const/16 v17, -0x1

    invoke-virtual/range {v16 .. v17}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v2

    .line 587
    .local v2, "POSITIVE_BUTTON":Landroid/widget/Button;
    if-eqz v2, :cond_7

    .line 588
    invoke-virtual {v2}, Landroid/widget/Button;->requestFocus()Z

    .line 592
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/motion2013/AirMotionSettings;->mGuideDialog:Landroid/app/AlertDialog;

    move-object/from16 v16, v0

    new-instance v17, Lcom/android/settings/motion2013/AirMotionSettings$9;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/settings/motion2013/AirMotionSettings$9;-><init>(Lcom/android/settings/motion2013/AirMotionSettings;)V

    invoke-virtual/range {v16 .. v17}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 598
    return-void

    .line 531
    .end local v2    # "POSITIVE_BUTTON":Landroid/widget/Button;
    .end local v9    # "message_str":Landroid/text/SpannableString;
    .end local v10    # "original_str":Ljava/lang/String;
    .end local v12    # "part3":Ljava/lang/String;
    .end local v13    # "proper_distance":I
    .end local v15    # "salesCode":Ljava/lang/String;
    :cond_8
    const-string v16, "bn"

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/motion2013/AirMotionSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v17

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_9

    const-string v16, "or"

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/motion2013/AirMotionSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v17

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_a

    .line 532
    :cond_9
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v16

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    goto/16 :goto_0

    .line 535
    :cond_a
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v16

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ". "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    goto/16 :goto_0

    .line 549
    .restart local v12    # "part3":Ljava/lang/String;
    .restart local v13    # "proper_distance":I
    .restart local v15    # "salesCode":Ljava/lang/String;
    :cond_b
    const-string v16, "bn"

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/motion2013/AirMotionSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v17

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_c

    const-string v16, "or"

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/motion2013/AirMotionSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v17

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_d

    .line 550
    :cond_c
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "\n"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    goto/16 :goto_1

    .line 553
    :cond_d
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ".\n"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    goto/16 :goto_1

    .line 568
    .restart local v9    # "message_str":Landroid/text/SpannableString;
    .restart local v10    # "original_str":Ljava/lang/String;
    :cond_e
    const v16, 0x7f0a1279

    move/from16 v0, v16

    invoke-virtual {v8, v0}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_2
.end method

.method private showTalkBackDisableDialog()V
    .locals 3

    .prologue
    .line 466
    invoke-direct {p0}, Lcom/android/settings/motion2013/AirMotionSettings;->dismissAllDialog()V

    .line 468
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/motion2013/AirMotionSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0a1261

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0a1260

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    new-instance v2, Lcom/android/settings/motion2013/AirMotionSettings$6;

    invoke-direct {v2, p0}, Lcom/android/settings/motion2013/AirMotionSettings$6;-><init>(Lcom/android/settings/motion2013/AirMotionSettings;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v1, 0x1040000

    new-instance v2, Lcom/android/settings/motion2013/AirMotionSettings$5;

    invoke-direct {v2, p0}, Lcom/android/settings/motion2013/AirMotionSettings$5;-><init>(Lcom/android/settings/motion2013/AirMotionSettings;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/motion2013/AirMotionSettings;->mTalkbackDisableDialog:Landroid/app/AlertDialog;

    .line 499
    iget-object v0, p0, Lcom/android/settings/motion2013/AirMotionSettings;->mTalkbackDisableDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 501
    iget-object v0, p0, Lcom/android/settings/motion2013/AirMotionSettings;->mTalkbackDisableDialog:Landroid/app/AlertDialog;

    new-instance v1, Lcom/android/settings/motion2013/AirMotionSettings$7;

    invoke-direct {v1, p0}, Lcom/android/settings/motion2013/AirMotionSettings$7;-><init>(Lcom/android/settings/motion2013/AirMotionSettings;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 508
    return-void
.end method

.method private stopAnimation()V
    .locals 2

    .prologue
    .line 654
    iget-object v0, p0, Lcom/android/settings/motion2013/AirMotionSettings;->mAnimationHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 655
    iget-object v0, p0, Lcom/android/settings/motion2013/AirMotionSettings;->mAnimationHandler:Landroid/os/Handler;

    const/16 v1, 0x66

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 657
    :cond_0
    return-void
.end method

.method private updateAnimation()V
    .locals 4

    .prologue
    .line 660
    iget-object v0, p0, Lcom/android/settings/motion2013/AirMotionSettings;->mAnimationView:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 661
    iget-object v0, p0, Lcom/android/settings/motion2013/AirMotionSettings;->mAnimationView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/settings/motion2013/AirMotionSettings;->mAirMotionIndicatorAnimation:[I

    iget v2, p0, Lcom/android/settings/motion2013/AirMotionSettings;->mAnimationIndex:I

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 662
    iget v0, p0, Lcom/android/settings/motion2013/AirMotionSettings;->mAnimationIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/settings/motion2013/AirMotionSettings;->mAnimationIndex:I

    .line 663
    iget v0, p0, Lcom/android/settings/motion2013/AirMotionSettings;->mAnimationIndex:I

    iget-object v1, p0, Lcom/android/settings/motion2013/AirMotionSettings;->mAirMotionIndicatorAnimation:[I

    array-length v1, v1

    rem-int/2addr v0, v1

    iput v0, p0, Lcom/android/settings/motion2013/AirMotionSettings;->mAnimationIndex:I

    .line 664
    iget-object v0, p0, Lcom/android/settings/motion2013/AirMotionSettings;->mAnimationHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 665
    iget-object v0, p0, Lcom/android/settings/motion2013/AirMotionSettings;->mAnimationHandler:Landroid/os/Handler;

    const/16 v1, 0x66

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 671
    :cond_0
    :goto_0
    return-void

    .line 668
    :cond_1
    invoke-direct {p0}, Lcom/android/settings/motion2013/AirMotionSettings;->stopAnimation()V

    goto :goto_0
.end method


# virtual methods
.method public isAllAirMotionDisabled()Z
    .locals 10

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 684
    invoke-virtual {p0}, Lcom/android/settings/motion2013/AirMotionSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    iput-object v7, p0, Lcom/android/settings/motion2013/AirMotionSettings;->mResolver:Landroid/content/ContentResolver;

    .line 685
    iget-object v7, p0, Lcom/android/settings/motion2013/AirMotionSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v8, "air_motion_glance_view"

    const/4 v9, -0x2

    invoke-static {v7, v8, v6, v9}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v4

    .line 686
    .local v4, "quickGlance":I
    iget-object v7, p0, Lcom/android/settings/motion2013/AirMotionSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v8, "air_motion_scroll"

    invoke-static {v7, v8, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 687
    .local v1, "airScroll":I
    iget-object v7, p0, Lcom/android/settings/motion2013/AirMotionSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v8, "air_motion_turn"

    invoke-static {v7, v8, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 688
    .local v2, "airTurn":I
    iget-object v7, p0, Lcom/android/settings/motion2013/AirMotionSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v8, "air_motion_item_move"

    invoke-static {v7, v8, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 689
    .local v0, "airMove":I
    iget-object v7, p0, Lcom/android/settings/motion2013/AirMotionSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v8, "air_motion_call_accept"

    invoke-static {v7, v8, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 691
    .local v3, "callAccept":I
    or-int v7, v4, v1

    or-int/2addr v7, v2

    or-int/2addr v7, v0

    or-int/2addr v7, v3

    if-ge v7, v5, :cond_0

    :goto_0
    return v5

    :cond_0
    move v5, v6

    goto :goto_0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 327
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 328
    invoke-virtual {p0}, Lcom/android/settings/motion2013/AirMotionSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->isDualFolderType(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 329
    invoke-virtual {p0}, Lcom/android/settings/motion2013/AirMotionSettings;->getListView()Landroid/widget/ListView;

    move-result-object v0

    new-instance v1, Lcom/android/settings/motion2013/AirMotionSettings$4;

    invoke-direct {v1, p0}, Lcom/android/settings/motion2013/AirMotionSettings$4;-><init>(Lcom/android/settings/motion2013/AirMotionSettings;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 351
    :cond_0
    return-void
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 7
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "desiredState"    # Z

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 442
    invoke-virtual {p0}, Lcom/android/settings/motion2013/AirMotionSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/Utils;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    if-eqz p2, :cond_1

    .line 443
    invoke-direct {p0}, Lcom/android/settings/motion2013/AirMotionSettings;->showTalkBackDisableDialog()V

    .line 463
    :cond_0
    :goto_0
    return-void

    .line 446
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/motion2013/AirMotionSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "air_motion_engine"

    if-eqz p2, :cond_2

    move v2, v3

    :goto_1
    invoke-static {v5, v6, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 447
    invoke-direct {p0, p2}, Lcom/android/settings/motion2013/AirMotionSettings;->broadcastAirMotionChanged(Z)V

    .line 449
    iget-object v2, p0, Lcom/android/settings/motion2013/AirMotionSettings;->mQuickGlance:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v2, p2}, Landroid/preference/SwitchPreferenceScreen;->setEnabled(Z)V

    .line 450
    iget-object v2, p0, Lcom/android/settings/motion2013/AirMotionSettings;->mAirScroll:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v2, p2}, Landroid/preference/SwitchPreferenceScreen;->setEnabled(Z)V

    .line 451
    iget-object v2, p0, Lcom/android/settings/motion2013/AirMotionSettings;->mAirTurn:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v2, p2}, Landroid/preference/SwitchPreferenceScreen;->setEnabled(Z)V

    .line 452
    iget-object v2, p0, Lcom/android/settings/motion2013/AirMotionSettings;->mAirMove:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v2, p2}, Landroid/preference/SwitchPreferenceScreen;->setEnabled(Z)V

    .line 453
    iget-object v2, p0, Lcom/android/settings/motion2013/AirMotionSettings;->mAirPin:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v2, p2}, Landroid/preference/SwitchPreferenceScreen;->setEnabled(Z)V

    .line 454
    iget-object v2, p0, Lcom/android/settings/motion2013/AirMotionSettings;->mAirCallAccept:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v2, p2}, Landroid/preference/SwitchPreferenceScreen;->setEnabled(Z)V

    .line 456
    if-eqz p2, :cond_0

    .line 457
    invoke-virtual {p0}, Lcom/android/settings/motion2013/AirMotionSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 458
    .local v1, "sharedPreferences":Landroid/content/SharedPreferences;
    const-string v2, "pref_air_motion_sensor_noti"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 459
    .local v0, "do_not_show_again":Z
    if-nez v0, :cond_0

    .line 460
    invoke-direct {p0, v3}, Lcom/android/settings/motion2013/AirMotionSettings;->showGuideDialog(Z)V

    goto :goto_0

    .end local v0    # "do_not_show_again":Z
    .end local v1    # "sharedPreferences":Landroid/content/SharedPreferences;
    :cond_2
    move v2, v4

    .line 446
    goto :goto_1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 17
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 130
    invoke-super/range {p0 .. p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 131
    const/4 v11, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/android/settings/motion2013/AirMotionSettings;->setHasOptionsMenu(Z)V

    .line 133
    const v11, 0x7f070012

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/android/settings/motion2013/AirMotionSettings;->addPreferencesFromResource(I)V

    .line 135
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/motion2013/AirMotionSettings;->getActivity()Landroid/app/Activity;

    move-result-object v11

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/android/settings/motion2013/AirMotionSettings;->mActivity:Landroid/app/Activity;

    .line 136
    new-instance v11, Landroid/widget/Switch;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/motion2013/AirMotionSettings;->mActivity:Landroid/app/Activity;

    invoke-direct {v11, v12}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/android/settings/motion2013/AirMotionSettings;->mActionBarSwitch:Landroid/widget/Switch;

    .line 137
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/settings/motion2013/AirMotionSettings;->mActivity:Landroid/app/Activity;

    invoke-virtual {v11}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0f0058

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    .line 139
    .local v5, "padding":I
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/settings/motion2013/AirMotionSettings;->mActionBarSwitch:Landroid/widget/Switch;

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-virtual {v11, v12, v13, v5, v14}, Landroid/widget/Switch;->setPadding(IIII)V

    .line 140
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/settings/motion2013/AirMotionSettings;->mActivity:Landroid/app/Activity;

    invoke-virtual {v11}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v11

    const/16 v12, 0x10

    const/16 v13, 0x10

    invoke-virtual {v11, v12, v13}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 142
    invoke-static {}, Lcom/android/settings/Utils;->isSupportMenuTreeForK()Z

    move-result v11

    if-nez v11, :cond_0

    .line 143
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/settings/motion2013/AirMotionSettings;->mActionBarSwitch:Landroid/widget/Switch;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/motion2013/AirMotionSettings;->mActivity:Landroid/app/Activity;

    invoke-virtual {v12}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f020628

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/widget/Switch;->setThumbDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 144
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/settings/motion2013/AirMotionSettings;->mActionBarSwitch:Landroid/widget/Switch;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/motion2013/AirMotionSettings;->mActivity:Landroid/app/Activity;

    invoke-virtual {v12}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f020629

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/widget/Switch;->setTrackDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 146
    :cond_0
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/settings/motion2013/AirMotionSettings;->mActivity:Landroid/app/Activity;

    invoke-virtual {v11}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/motion2013/AirMotionSettings;->mActionBarSwitch:Landroid/widget/Switch;

    new-instance v13, Landroid/app/ActionBar$LayoutParams;

    const/4 v14, -0x2

    const/4 v15, -0x2

    const/16 v16, 0x15

    invoke-direct/range {v13 .. v16}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    invoke-virtual {v11, v12, v13}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    .line 150
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/settings/motion2013/AirMotionSettings;->mActivity:Landroid/app/Activity;

    invoke-virtual {v11}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v11

    invoke-virtual {v11}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v11

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/android/settings/motion2013/AirMotionSettings;->mActionBarLayout:Landroid/view/View;

    .line 152
    const-string v11, "quick_glance"

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/android/settings/motion2013/AirMotionSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v11

    check-cast v11, Landroid/preference/SwitchPreferenceScreen;

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/android/settings/motion2013/AirMotionSettings;->mQuickGlance:Landroid/preference/SwitchPreferenceScreen;

    .line 153
    const-string v11, "air_scroll"

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/android/settings/motion2013/AirMotionSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v11

    check-cast v11, Landroid/preference/SwitchPreferenceScreen;

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/android/settings/motion2013/AirMotionSettings;->mAirScroll:Landroid/preference/SwitchPreferenceScreen;

    .line 154
    const-string v11, "air_turn"

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/android/settings/motion2013/AirMotionSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v11

    check-cast v11, Landroid/preference/SwitchPreferenceScreen;

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/android/settings/motion2013/AirMotionSettings;->mAirTurn:Landroid/preference/SwitchPreferenceScreen;

    .line 155
    const-string v11, "air_move"

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/android/settings/motion2013/AirMotionSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v11

    check-cast v11, Landroid/preference/SwitchPreferenceScreen;

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/android/settings/motion2013/AirMotionSettings;->mAirMove:Landroid/preference/SwitchPreferenceScreen;

    .line 156
    const-string v11, "air_pin"

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/android/settings/motion2013/AirMotionSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v11

    check-cast v11, Landroid/preference/SwitchPreferenceScreen;

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/android/settings/motion2013/AirMotionSettings;->mAirPin:Landroid/preference/SwitchPreferenceScreen;

    .line 157
    const-string v11, "air_call_accept"

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/android/settings/motion2013/AirMotionSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v11

    check-cast v11, Landroid/preference/SwitchPreferenceScreen;

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/android/settings/motion2013/AirMotionSettings;->mAirCallAccept:Landroid/preference/SwitchPreferenceScreen;

    .line 159
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/settings/motion2013/AirMotionSettings;->mQuickGlance:Landroid/preference/SwitchPreferenceScreen;

    move-object/from16 v0, p0

    invoke-virtual {v11, v0}, Landroid/preference/SwitchPreferenceScreen;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 160
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/settings/motion2013/AirMotionSettings;->mAirScroll:Landroid/preference/SwitchPreferenceScreen;

    move-object/from16 v0, p0

    invoke-virtual {v11, v0}, Landroid/preference/SwitchPreferenceScreen;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 161
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/settings/motion2013/AirMotionSettings;->mAirTurn:Landroid/preference/SwitchPreferenceScreen;

    move-object/from16 v0, p0

    invoke-virtual {v11, v0}, Landroid/preference/SwitchPreferenceScreen;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 162
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/settings/motion2013/AirMotionSettings;->mAirMove:Landroid/preference/SwitchPreferenceScreen;

    move-object/from16 v0, p0

    invoke-virtual {v11, v0}, Landroid/preference/SwitchPreferenceScreen;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 163
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/settings/motion2013/AirMotionSettings;->mAirPin:Landroid/preference/SwitchPreferenceScreen;

    move-object/from16 v0, p0

    invoke-virtual {v11, v0}, Landroid/preference/SwitchPreferenceScreen;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 164
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/settings/motion2013/AirMotionSettings;->mAirCallAccept:Landroid/preference/SwitchPreferenceScreen;

    move-object/from16 v0, p0

    invoke-virtual {v11, v0}, Landroid/preference/SwitchPreferenceScreen;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 166
    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v7

    .line 172
    .local v7, "salesCode":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/motion2013/AirMotionSettings;->getActivity()Landroid/app/Activity;

    move-result-object v11

    invoke-virtual {v11}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v11

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/android/settings/motion2013/AirMotionSettings;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 174
    :try_start_0
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/settings/motion2013/AirMotionSettings;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v12, "com.android.calendar"

    const/4 v13, 0x1

    invoke-virtual {v11, v12, v13}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v11

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/android/settings/motion2013/AirMotionSettings;->mApplicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 175
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/settings/motion2013/AirMotionSettings;->mPackageManager:Landroid/content/pm/PackageManager;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/motion2013/AirMotionSettings;->mApplicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v11, v12}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 176
    .local v4, "mCalendarAppName":Ljava/lang/String;
    const-string v11, "Calendar"

    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 177
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/settings/motion2013/AirMotionSettings;->mAirMove:Landroid/preference/SwitchPreferenceScreen;

    const v12, 0x7f0a126f

    invoke-virtual {v11, v12}, Landroid/preference/SwitchPreferenceScreen;->setSummary(I)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 184
    .end local v4    # "mCalendarAppName":Ljava/lang/String;
    :cond_1
    :goto_0
    const-string v11, "air_pin"

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/android/settings/motion2013/AirMotionSettings;->removePreference(Ljava/lang/String;)V

    .line 186
    invoke-static {}, Lcom/android/settings/Utils;->isSettingsUI2013Supported()Z

    move-result v11

    if-nez v11, :cond_2

    invoke-static {}, Lcom/android/settings/Utils;->isChinaModel()Z

    move-result v11

    if-eqz v11, :cond_3

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/motion2013/AirMotionSettings;->getActivity()Landroid/app/Activity;

    move-result-object v11

    invoke-static {v11}, Lcom/android/settings/Utils;->isDualFolderType(Landroid/content/Context;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 187
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/motion2013/AirMotionSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v6

    .line 188
    .local v6, "ps":Landroid/preference/PreferenceScreen;
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/settings/motion2013/AirMotionSettings;->mAirMove:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v6, v11}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 191
    .end local v6    # "ps":Landroid/preference/PreferenceScreen;
    :cond_3
    const-string v11, "m2alte"

    const-string v12, "ro.product.device"

    invoke-static {v12}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 192
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/motion2013/AirMotionSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v6

    .line 193
    .restart local v6    # "ps":Landroid/preference/PreferenceScreen;
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/settings/motion2013/AirMotionSettings;->mAirTurn:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v6, v11}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 196
    .end local v6    # "ps":Landroid/preference/PreferenceScreen;
    :cond_4
    const-string v11, "ro.product.device"

    invoke-static {v11}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string v12, "ja3g"

    invoke-virtual {v11, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_5

    const-string v11, "ro.product.device"

    invoke-static {v11}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string v12, "jalte"

    invoke-virtual {v11, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_5

    const-string v11, "ro.product.device"

    invoke-static {v11}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string v12, "hlte"

    invoke-virtual {v11, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_5

    const-string v11, "ro.product.device"

    invoke-static {v11}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string v12, "h3g"

    invoke-virtual {v11, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_5

    const-string v11, "ro.product.device"

    invoke-static {v11}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string v12, "jflte"

    invoke-virtual {v11, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_5

    const-string v11, "ro.product.device"

    invoke-static {v11}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string v12, "jsglte"

    invoke-virtual {v11, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_5

    const-string v11, "ro.product.device"

    invoke-static {v11}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string v12, "jactive"

    invoke-virtual {v11, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_5

    const-string v11, "ro.product.device"

    invoke-static {v11}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string v12, "ks01lte"

    invoke-virtual {v11, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_6

    .line 199
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/motion2013/AirMotionSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v6

    .line 200
    .restart local v6    # "ps":Landroid/preference/PreferenceScreen;
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/settings/motion2013/AirMotionSettings;->mAirScroll:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v6, v11}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 203
    .end local v6    # "ps":Landroid/preference/PreferenceScreen;
    :cond_6
    const-string v11, "jflteMetroPCS"

    const-string v12, "ro.product.name"

    invoke-static {v12}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_7

    const-string v11, "jfltetmo"

    const-string v12, "ro.product.name"

    invoke-static {v12}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_8

    .line 204
    :cond_7
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/motion2013/AirMotionSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "air_motion_scroll_email_body"

    const/4 v13, 0x1

    invoke-static {v11, v12, v13}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 205
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/motion2013/AirMotionSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "air_motion_scroll_web_page"

    const/4 v13, 0x1

    invoke-static {v11, v12, v13}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 208
    :cond_8
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/motion2013/AirMotionSettings;->getActivity()Landroid/app/Activity;

    move-result-object v11

    invoke-static {v11}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v8

    .line 209
    .local v8, "sharedPreferences":Landroid/content/SharedPreferences;
    const-string v11, "pref_air_motion_sensor_noti"

    const/4 v12, 0x0

    invoke-interface {v8, v11, v12}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 210
    .local v1, "do_not_show_again":Z
    if-nez v1, :cond_9

    .line 211
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/motion2013/AirMotionSettings;->isAllAirMotionDisabled()Z

    move-result v11

    if-eqz v11, :cond_9

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/settings/motion2013/AirMotionSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v12, "air_motion_engine"

    const/4 v13, 0x0

    invoke-static {v11, v12, v13}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v11

    if-eqz v11, :cond_9

    .line 212
    const/4 v11, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/android/settings/motion2013/AirMotionSettings;->showGuideDialog(Z)V

    .line 217
    :cond_9
    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/android/settings/motion2013/AirMotionSettings;->mOpenDetailMenu:Z

    if-eqz v11, :cond_a

    sget v11, Lcom/android/settings/motion2013/AirMotionSettings;->mSettingValue:I

    const/4 v12, -0x1

    if-eq v11, v12, :cond_a

    .line 218
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/settings/motion2013/AirMotionSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v12, "air_motion_engine"

    const/4 v13, 0x0

    invoke-static {v11, v12, v13}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v11

    if-eqz v11, :cond_a

    .line 219
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/motion2013/AirMotionSettings;->getArguments()Landroid/os/Bundle;

    move-result-object v3

    .line 220
    .local v3, "extra_bundle":Landroid/os/Bundle;
    const-string v11, "extra_parent_preference_key"

    invoke-virtual {v3, v11}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 221
    .local v9, "targetKey":Ljava/lang/String;
    sget v11, Lcom/android/settings/motion2013/AirMotionSettings;->mSettingValue:I

    const/4 v12, 0x1

    if-ne v11, v12, :cond_b

    const/4 v10, 0x1

    .line 222
    .local v10, "value":Z
    :goto_1
    const-string v11, "quick_glance"

    invoke-virtual {v11, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_c

    .line 223
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/settings/motion2013/AirMotionSettings;->mQuickGlance:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v11, v10}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 224
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/settings/motion2013/AirMotionSettings;->mQuickGlance:Landroid/preference/SwitchPreferenceScreen;

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    move-object/from16 v0, p0

    invoke-virtual {v0, v11, v12}, Lcom/android/settings/motion2013/AirMotionSettings;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z

    .line 246
    .end local v3    # "extra_bundle":Landroid/os/Bundle;
    .end local v9    # "targetKey":Ljava/lang/String;
    .end local v10    # "value":Z
    :cond_a
    :goto_2
    return-void

    .line 179
    .end local v1    # "do_not_show_again":Z
    .end local v8    # "sharedPreferences":Landroid/content/SharedPreferences;
    :catch_0
    move-exception v2

    .line 180
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v11, "AirMotionSettings"

    const-string v12, "No name found for application calendar"

    invoke-static {v11, v12, v2}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 221
    .end local v2    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v1    # "do_not_show_again":Z
    .restart local v3    # "extra_bundle":Landroid/os/Bundle;
    .restart local v8    # "sharedPreferences":Landroid/content/SharedPreferences;
    .restart local v9    # "targetKey":Ljava/lang/String;
    :cond_b
    const/4 v10, 0x0

    goto :goto_1

    .line 225
    .restart local v10    # "value":Z
    :cond_c
    const-string v11, "air_scroll"

    invoke-virtual {v11, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_d

    .line 226
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/settings/motion2013/AirMotionSettings;->mAirScroll:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v11, v10}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 227
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/settings/motion2013/AirMotionSettings;->mAirScroll:Landroid/preference/SwitchPreferenceScreen;

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    move-object/from16 v0, p0

    invoke-virtual {v0, v11, v12}, Lcom/android/settings/motion2013/AirMotionSettings;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z

    goto :goto_2

    .line 228
    :cond_d
    const-string v11, "air_turn"

    invoke-virtual {v11, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_e

    .line 229
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/settings/motion2013/AirMotionSettings;->mAirTurn:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v11, v10}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 230
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/settings/motion2013/AirMotionSettings;->mAirTurn:Landroid/preference/SwitchPreferenceScreen;

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    move-object/from16 v0, p0

    invoke-virtual {v0, v11, v12}, Lcom/android/settings/motion2013/AirMotionSettings;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z

    goto :goto_2

    .line 231
    :cond_e
    const-string v11, "air_move"

    invoke-virtual {v11, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_f

    .line 232
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/settings/motion2013/AirMotionSettings;->mAirMove:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v11, v10}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 233
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/settings/motion2013/AirMotionSettings;->mAirMove:Landroid/preference/SwitchPreferenceScreen;

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    move-object/from16 v0, p0

    invoke-virtual {v0, v11, v12}, Lcom/android/settings/motion2013/AirMotionSettings;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z

    goto :goto_2

    .line 234
    :cond_f
    const-string v11, "air_pin"

    invoke-virtual {v11, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_10

    .line 235
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/settings/motion2013/AirMotionSettings;->mAirPin:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v11, v10}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 236
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/settings/motion2013/AirMotionSettings;->mAirPin:Landroid/preference/SwitchPreferenceScreen;

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    move-object/from16 v0, p0

    invoke-virtual {v0, v11, v12}, Lcom/android/settings/motion2013/AirMotionSettings;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z

    goto :goto_2

    .line 237
    :cond_10
    const-string v11, "air_call_accept"

    invoke-virtual {v11, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_a

    .line 238
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/settings/motion2013/AirMotionSettings;->mAirCallAccept:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v11, v10}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 239
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/settings/motion2013/AirMotionSettings;->mAirCallAccept:Landroid/preference/SwitchPreferenceScreen;

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    move-object/from16 v0, p0

    invoke-virtual {v0, v11, v12}, Lcom/android/settings/motion2013/AirMotionSettings;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z

    goto/16 :goto_2
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 3
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    const/4 v2, 0x0

    .line 419
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 420
    invoke-virtual {p0}, Lcom/android/settings/motion2013/AirMotionSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->isSupportHelpMenu(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 421
    const/4 v0, 0x1

    const v1, 0x7f0a0e57

    invoke-interface {p1, v2, v2, v0, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f02020d

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 425
    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 429
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 436
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    :goto_0
    return v1

    .line 431
    :pswitch_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.helphub.HELP"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 432
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "helphub:section"

    const-string v2, "air_gesture"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 433
    invoke-virtual {p0}, Lcom/android/settings/motion2013/AirMotionSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 434
    const/4 v1, 0x1

    goto :goto_0

    .line 429
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 297
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 298
    invoke-direct {p0}, Lcom/android/settings/motion2013/AirMotionSettings;->stopAnimation()V

    .line 299
    invoke-virtual {p0}, Lcom/android/settings/motion2013/AirMotionSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/motion2013/AirMotionSettings;->mAirMotionObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 300
    const-string v0, "DCM"

    const-string v1, "ro.csc.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "KDI"

    const-string v1, "ro.csc.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 301
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/motion2013/AirMotionSettings;->dismissAllDialog()V

    .line 303
    :cond_1
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 7
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "objValue"    # Ljava/lang/Object;

    .prologue
    const v6, 0x7f0a11e3

    const v5, 0x7f0a11a0

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 354
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    .local v0, "key":Ljava/lang/String;
    move-object v2, p2

    .line 355
    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_2

    move v1, v3

    .line 356
    .local v1, "value":I
    :goto_0
    const-string v2, "quick_glance"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 357
    invoke-virtual {p0}, Lcom/android/settings/motion2013/AirMotionSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v5, "air_motion_glance_view"

    const/4 v6, -0x2

    invoke-static {v2, v5, v1, v6}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 358
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "objValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/settings/motion2013/AirMotionSettings;->sendGlanceViewCheck(Z)V

    .line 397
    :cond_0
    :goto_1
    invoke-virtual {p0}, Lcom/android/settings/motion2013/AirMotionSettings;->isAllAirMotionDisabled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 398
    invoke-virtual {p0}, Lcom/android/settings/motion2013/AirMotionSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v5, "air_motion_engine"

    invoke-static {v2, v5, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 399
    invoke-direct {p0, v4}, Lcom/android/settings/motion2013/AirMotionSettings;->broadcastAirMotionChanged(Z)V

    .line 400
    iget-object v2, p0, Lcom/android/settings/motion2013/AirMotionSettings;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v2, v4}, Landroid/widget/Switch;->setChecked(Z)V

    .line 402
    :cond_1
    :goto_2
    return v3

    .end local v1    # "value":I
    .restart local p2    # "objValue":Ljava/lang/Object;
    :cond_2
    move v1, v4

    .line 355
    goto :goto_0

    .line 359
    .restart local v1    # "value":I
    :cond_3
    const-string v2, "air_scroll"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    move-object v2, p2

    .line 360
    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 361
    invoke-direct {p0}, Lcom/android/settings/motion2013/AirMotionSettings;->isAllAirScrollOptionDisabled()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 362
    invoke-direct {p0, v6, v5, v0}, Lcom/android/settings/motion2013/AirMotionSettings;->showAllOptionDisabledDialog(IILjava/lang/String;)V

    goto :goto_2

    .line 365
    :cond_4
    invoke-virtual {p0}, Lcom/android/settings/motion2013/AirMotionSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v5, "air_motion_scroll"

    invoke-static {v2, v5, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 366
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "objValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/settings/motion2013/AirMotionSettings;->broadcastAirScrollChanged(Z)V

    goto :goto_1

    .line 369
    .restart local p2    # "objValue":Ljava/lang/Object;
    :cond_5
    invoke-virtual {p0}, Lcom/android/settings/motion2013/AirMotionSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v5, "air_motion_scroll"

    invoke-static {v2, v5, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 370
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "objValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/settings/motion2013/AirMotionSettings;->broadcastAirScrollChanged(Z)V

    goto :goto_1

    .line 372
    .restart local p2    # "objValue":Ljava/lang/Object;
    :cond_6
    const-string v2, "air_turn"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    move-object v2, p2

    .line 373
    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 374
    invoke-direct {p0}, Lcom/android/settings/motion2013/AirMotionSettings;->isAllAirTurnOptionDisabled()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 375
    invoke-direct {p0, v6, v5, v0}, Lcom/android/settings/motion2013/AirMotionSettings;->showAllOptionDisabledDialog(IILjava/lang/String;)V

    goto :goto_2

    .line 378
    :cond_7
    invoke-virtual {p0}, Lcom/android/settings/motion2013/AirMotionSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v5, "air_motion_turn"

    invoke-static {v2, v5, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 379
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "objValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/settings/motion2013/AirMotionSettings;->broadcastAirBrowseChanged(Z)V

    goto/16 :goto_1

    .line 382
    .restart local p2    # "objValue":Ljava/lang/Object;
    :cond_8
    invoke-virtual {p0}, Lcom/android/settings/motion2013/AirMotionSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v5, "air_motion_turn"

    invoke-static {v2, v5, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 383
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "objValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/settings/motion2013/AirMotionSettings;->broadcastAirBrowseChanged(Z)V

    goto/16 :goto_1

    .line 386
    .restart local p2    # "objValue":Ljava/lang/Object;
    :cond_9
    const-string v2, "air_move"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 387
    invoke-virtual {p0}, Lcom/android/settings/motion2013/AirMotionSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v5, "air_motion_item_move"

    invoke-static {v2, v5, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 388
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "objValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/settings/motion2013/AirMotionSettings;->broadcastAirMoveChanged(Z)V

    goto/16 :goto_1

    .line 389
    .restart local p2    # "objValue":Ljava/lang/Object;
    :cond_a
    const-string v2, "air_pin"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 390
    invoke-virtual {p0}, Lcom/android/settings/motion2013/AirMotionSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v5, "air_motion_clip"

    invoke-static {v2, v5, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 391
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "objValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/settings/motion2013/AirMotionSettings;->broadcastAirPinChanged(Z)V

    goto/16 :goto_1

    .line 392
    .restart local p2    # "objValue":Ljava/lang/Object;
    :cond_b
    const-string v2, "air_call_accept"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 393
    invoke-virtual {p0}, Lcom/android/settings/motion2013/AirMotionSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v5, "air_motion_call_accept"

    invoke-static {v2, v5, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 394
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "objValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/settings/motion2013/AirMotionSettings;->broadcastAirCallAcceptChanged(Z)V

    goto/16 :goto_1
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 3
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v1, 0x1

    .line 407
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 408
    .local v0, "key":Ljava/lang/String;
    const-string v2, "air_motion_indicator"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 409
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/android/settings/motion2013/AirMotionSettings;->showGuideDialog(Z)V

    .line 414
    :goto_0
    return v1

    .line 412
    :cond_0
    iput-boolean v1, p0, Lcom/android/settings/motion2013/AirMotionSettings;->isGoIntoQuideHub:Z

    .line 414
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v1

    goto :goto_0
.end method

.method public onResume()V
    .locals 8

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 250
    iget-boolean v1, p0, Lcom/android/settings/SettingsPreferenceFragment;->mOpenDetailMenu:Z

    .line 251
    .local v1, "super_mOpenDetailMenu":Z
    iput-boolean v4, p0, Lcom/android/settings/SettingsPreferenceFragment;->mOpenDetailMenu:Z

    .line 253
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 254
    iput-boolean v4, p0, Lcom/android/settings/motion2013/AirMotionSettings;->isGoIntoQuideHub:Z

    .line 260
    invoke-direct {p0}, Lcom/android/settings/motion2013/AirMotionSettings;->updateAnimation()V

    .line 262
    invoke-virtual {p0}, Lcom/android/settings/motion2013/AirMotionSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/motion2013/AirMotionSettings;->mResolver:Landroid/content/ContentResolver;

    .line 264
    iget-object v5, p0, Lcom/android/settings/motion2013/AirMotionSettings;->mQuickGlance:Landroid/preference/SwitchPreferenceScreen;

    iget-object v2, p0, Lcom/android/settings/motion2013/AirMotionSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v6, "air_motion_glance_view"

    const/4 v7, -0x2

    invoke-static {v2, v6, v4, v7}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    if-eqz v2, :cond_1

    move v2, v3

    :goto_0
    invoke-virtual {v5, v2}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 265
    iget-object v5, p0, Lcom/android/settings/motion2013/AirMotionSettings;->mAirScroll:Landroid/preference/SwitchPreferenceScreen;

    iget-object v2, p0, Lcom/android/settings/motion2013/AirMotionSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v6, "air_motion_scroll"

    invoke-static {v2, v6, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_2

    move v2, v3

    :goto_1
    invoke-virtual {v5, v2}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 266
    iget-object v5, p0, Lcom/android/settings/motion2013/AirMotionSettings;->mAirTurn:Landroid/preference/SwitchPreferenceScreen;

    iget-object v2, p0, Lcom/android/settings/motion2013/AirMotionSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v6, "air_motion_turn"

    invoke-static {v2, v6, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_3

    move v2, v3

    :goto_2
    invoke-virtual {v5, v2}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 267
    iget-object v5, p0, Lcom/android/settings/motion2013/AirMotionSettings;->mAirMove:Landroid/preference/SwitchPreferenceScreen;

    iget-object v2, p0, Lcom/android/settings/motion2013/AirMotionSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v6, "air_motion_item_move"

    invoke-static {v2, v6, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_4

    move v2, v3

    :goto_3
    invoke-virtual {v5, v2}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 268
    iget-object v5, p0, Lcom/android/settings/motion2013/AirMotionSettings;->mAirPin:Landroid/preference/SwitchPreferenceScreen;

    iget-object v2, p0, Lcom/android/settings/motion2013/AirMotionSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v6, "air_motion_clip"

    invoke-static {v2, v6, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_5

    move v2, v3

    :goto_4
    invoke-virtual {v5, v2}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 269
    iget-object v5, p0, Lcom/android/settings/motion2013/AirMotionSettings;->mAirCallAccept:Landroid/preference/SwitchPreferenceScreen;

    iget-object v2, p0, Lcom/android/settings/motion2013/AirMotionSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v6, "air_motion_call_accept"

    invoke-static {v2, v6, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_6

    move v2, v3

    :goto_5
    invoke-virtual {v5, v2}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 271
    iget-object v2, p0, Lcom/android/settings/motion2013/AirMotionSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v5, "air_motion_engine"

    invoke-static {v2, v5, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_7

    move v0, v3

    .line 272
    .local v0, "airMotionEngineState":Z
    :goto_6
    iget-object v2, p0, Lcom/android/settings/motion2013/AirMotionSettings;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v2, v0}, Landroid/widget/Switch;->setChecked(Z)V

    .line 273
    iget-object v2, p0, Lcom/android/settings/motion2013/AirMotionSettings;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v2, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 274
    iget-object v2, p0, Lcom/android/settings/motion2013/AirMotionSettings;->mQuickGlance:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v2, v0}, Landroid/preference/SwitchPreferenceScreen;->setEnabled(Z)V

    .line 275
    iget-object v2, p0, Lcom/android/settings/motion2013/AirMotionSettings;->mAirScroll:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v2, v0}, Landroid/preference/SwitchPreferenceScreen;->setEnabled(Z)V

    .line 276
    iget-object v2, p0, Lcom/android/settings/motion2013/AirMotionSettings;->mAirTurn:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v2, v0}, Landroid/preference/SwitchPreferenceScreen;->setEnabled(Z)V

    .line 277
    iget-object v2, p0, Lcom/android/settings/motion2013/AirMotionSettings;->mAirMove:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v2, v0}, Landroid/preference/SwitchPreferenceScreen;->setEnabled(Z)V

    .line 278
    iget-object v2, p0, Lcom/android/settings/motion2013/AirMotionSettings;->mAirPin:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v2, v0}, Landroid/preference/SwitchPreferenceScreen;->setEnabled(Z)V

    .line 279
    iget-object v2, p0, Lcom/android/settings/motion2013/AirMotionSettings;->mAirCallAccept:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v2, v0}, Landroid/preference/SwitchPreferenceScreen;->setEnabled(Z)V

    .line 281
    iget-object v2, p0, Lcom/android/settings/motion2013/AirMotionSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v5, "air_motion_engine"

    invoke-static {v5}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings/motion2013/AirMotionSettings;->mAirMotionObserver:Landroid/database/ContentObserver;

    invoke-virtual {v2, v5, v3, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 284
    iput-boolean v1, p0, Lcom/android/settings/SettingsPreferenceFragment;->mOpenDetailMenu:Z

    .line 285
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->openSearchDetailMenu()V

    .line 288
    invoke-virtual {p0}, Lcom/android/settings/motion2013/AirMotionSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/Utils;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/motion2013/AirMotionSettings;->isAllAirMotionDisabled()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/motion2013/AirMotionSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "air_motion_engine"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_0

    .line 290
    invoke-direct {p0}, Lcom/android/settings/motion2013/AirMotionSettings;->showTalkBackDisableDialog()V

    .line 293
    :cond_0
    return-void

    .end local v0    # "airMotionEngineState":Z
    :cond_1
    move v2, v4

    .line 264
    goto/16 :goto_0

    :cond_2
    move v2, v4

    .line 265
    goto/16 :goto_1

    :cond_3
    move v2, v4

    .line 266
    goto/16 :goto_2

    :cond_4
    move v2, v4

    .line 267
    goto/16 :goto_3

    :cond_5
    move v2, v4

    .line 268
    goto/16 :goto_4

    :cond_6
    move v2, v4

    .line 269
    goto :goto_5

    :cond_7
    move v0, v4

    .line 271
    goto :goto_6
.end method

.method public onStop()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 307
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onStop()V

    .line 310
    iget-boolean v0, p0, Lcom/android/settings/motion2013/AirMotionSettings;->isGoIntoQuideHub:Z

    if-nez v0, :cond_0

    .line 311
    invoke-virtual {p0}, Lcom/android/settings/motion2013/AirMotionSettings;->isAllAirMotionDisabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/motion2013/AirMotionSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "air_motion_engine"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    .line 312
    invoke-virtual {p0}, Lcom/android/settings/motion2013/AirMotionSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0a125f

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 313
    invoke-virtual {p0}, Lcom/android/settings/motion2013/AirMotionSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "air_motion_engine"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 314
    invoke-direct {p0, v2}, Lcom/android/settings/motion2013/AirMotionSettings;->broadcastAirMotionChanged(Z)V

    .line 315
    iget-object v0, p0, Lcom/android/settings/motion2013/AirMotionSettings;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v2}, Landroid/widget/Switch;->setChecked(Z)V

    .line 323
    :cond_0
    return-void
.end method
