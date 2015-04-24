.class public Lcom/android/settings/motion2013/HandMotionSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "HandMotionSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# static fields
.field private static final isKnoxUser:Z


# instance fields
.field private isGoIntoQuideHub:Z

.field private mActionBarLayout:Landroid/view/View;

.field private mActionBarSwitch:Landroid/widget/Switch;

.field private mActivity:Landroid/app/Activity;

.field private mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

.field private final mIcObserver:Landroid/database/ContentObserver;

.field private final mPalmMotionObserver:Landroid/database/ContentObserver;

.field private mPalmSwipe:Landroid/preference/SwitchPreferenceScreen;

.field private final mPalmSwipeObserver:Landroid/database/ContentObserver;

.field private mPalmTouch:Landroid/preference/SwitchPreferenceScreen;

.field private final mPalmTouchObserver:Landroid/database/ContentObserver;

.field private mResolver:Landroid/content/ContentResolver;

.field private mTalkbackDisableDialog:Landroid/app/AlertDialog;

.field private mTapAndTwist:Landroid/preference/SwitchPreferenceScreen;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 53
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    const/16 v1, 0x64

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/android/settings/motion2013/HandMotionSettings;->isKnoxUser:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 43
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 59
    iput-object v0, p0, Lcom/android/settings/motion2013/HandMotionSettings;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 65
    iput-object v0, p0, Lcom/android/settings/motion2013/HandMotionSettings;->mTalkbackDisableDialog:Landroid/app/AlertDialog;

    .line 67
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/motion2013/HandMotionSettings;->isGoIntoQuideHub:Z

    .line 69
    new-instance v0, Lcom/android/settings/motion2013/HandMotionSettings$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/motion2013/HandMotionSettings$1;-><init>(Lcom/android/settings/motion2013/HandMotionSettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/motion2013/HandMotionSettings;->mPalmMotionObserver:Landroid/database/ContentObserver;

    .line 77
    new-instance v0, Lcom/android/settings/motion2013/HandMotionSettings$2;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/motion2013/HandMotionSettings$2;-><init>(Lcom/android/settings/motion2013/HandMotionSettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/motion2013/HandMotionSettings;->mPalmSwipeObserver:Landroid/database/ContentObserver;

    .line 85
    new-instance v0, Lcom/android/settings/motion2013/HandMotionSettings$3;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/motion2013/HandMotionSettings$3;-><init>(Lcom/android/settings/motion2013/HandMotionSettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/motion2013/HandMotionSettings;->mPalmTouchObserver:Landroid/database/ContentObserver;

    .line 94
    new-instance v0, Lcom/android/settings/motion2013/HandMotionSettings$4;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/motion2013/HandMotionSettings$4;-><init>(Lcom/android/settings/motion2013/HandMotionSettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/motion2013/HandMotionSettings;->mIcObserver:Landroid/database/ContentObserver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/motion2013/HandMotionSettings;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/motion2013/HandMotionSettings;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/settings/motion2013/HandMotionSettings;->mResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/motion2013/HandMotionSettings;)Landroid/widget/Switch;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/motion2013/HandMotionSettings;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/settings/motion2013/HandMotionSettings;->mActionBarSwitch:Landroid/widget/Switch;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/settings/motion2013/HandMotionSettings;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/motion2013/HandMotionSettings;

    .prologue
    .line 43
    invoke-virtual {p0}, Lcom/android/settings/motion2013/HandMotionSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/motion2013/HandMotionSettings;)Landroid/preference/SwitchPreferenceScreen;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/motion2013/HandMotionSettings;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/settings/motion2013/HandMotionSettings;->mPalmSwipe:Landroid/preference/SwitchPreferenceScreen;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/motion2013/HandMotionSettings;)Landroid/preference/SwitchPreferenceScreen;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/motion2013/HandMotionSettings;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/settings/motion2013/HandMotionSettings;->mPalmTouch:Landroid/preference/SwitchPreferenceScreen;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings/motion2013/HandMotionSettings;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/motion2013/HandMotionSettings;

    .prologue
    .line 43
    invoke-virtual {p0}, Lcom/android/settings/motion2013/HandMotionSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/settings/motion2013/HandMotionSettings;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/motion2013/HandMotionSettings;

    .prologue
    .line 43
    invoke-virtual {p0}, Lcom/android/settings/motion2013/HandMotionSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/settings/motion2013/HandMotionSettings;)Landroid/app/enterprise/EnterpriseDeviceManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/motion2013/HandMotionSettings;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/settings/motion2013/HandMotionSettings;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    return-object v0
.end method

.method static synthetic access$602(Lcom/android/settings/motion2013/HandMotionSettings;Landroid/app/enterprise/EnterpriseDeviceManager;)Landroid/app/enterprise/EnterpriseDeviceManager;
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/motion2013/HandMotionSettings;
    .param p1, "x1"    # Landroid/app/enterprise/EnterpriseDeviceManager;

    .prologue
    .line 43
    iput-object p1, p0, Lcom/android/settings/motion2013/HandMotionSettings;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    return-object p1
.end method

.method static synthetic access$700(Lcom/android/settings/motion2013/HandMotionSettings;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/motion2013/HandMotionSettings;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 43
    invoke-virtual {p0, p1}, Lcom/android/settings/motion2013/HandMotionSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/settings/motion2013/HandMotionSettings;)Landroid/preference/SwitchPreferenceScreen;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/motion2013/HandMotionSettings;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/settings/motion2013/HandMotionSettings;->mTapAndTwist:Landroid/preference/SwitchPreferenceScreen;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/settings/motion2013/HandMotionSettings;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/motion2013/HandMotionSettings;

    .prologue
    .line 43
    invoke-virtual {p0}, Lcom/android/settings/motion2013/HandMotionSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method public static isAllOptionDisabled(Landroid/content/ContentResolver;)Z
    .locals 6
    .param p0, "cr"    # Landroid/content/ContentResolver;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 321
    const-string v5, "surface_tap_and_twist"

    invoke-static {p0, v5, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 322
    const-string v5, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_MOTION_PALM_SWIPE"

    invoke-static {v5}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    sget-boolean v5, Lcom/android/settings/motion2013/HandMotionSettings;->isKnoxUser:Z

    if-nez v5, :cond_1

    const-string v5, "surface_palm_swipe"

    invoke-static {p0, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 324
    .local v0, "palmSwipe":I
    :goto_0
    const-string v5, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_MOTION_PALM_TOUCH"

    invoke-static {v5}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    const-string v5, "surface_palm_touch"

    invoke-static {p0, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 326
    .local v1, "palmTouch":I
    :goto_1
    const/4 v2, 0x0

    .line 327
    .local v2, "tapAndTwist":I
    or-int v5, v0, v1

    or-int/2addr v5, v2

    if-ge v5, v4, :cond_0

    move v3, v4

    :cond_0
    return v3

    .end local v0    # "palmSwipe":I
    .end local v1    # "palmTouch":I
    .end local v2    # "tapAndTwist":I
    :cond_1
    move v0, v3

    .line 322
    goto :goto_0

    .restart local v0    # "palmSwipe":I
    :cond_2
    move v1, v3

    .line 324
    goto :goto_1
.end method

.method private makeTalkBackDisablePopup()V
    .locals 3

    .prologue
    .line 341
    iget-object v0, p0, Lcom/android/settings/motion2013/HandMotionSettings;->mTalkbackDisableDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 342
    iget-object v0, p0, Lcom/android/settings/motion2013/HandMotionSettings;->mTalkbackDisableDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 343
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/motion2013/HandMotionSettings;->mTalkbackDisableDialog:Landroid/app/AlertDialog;

    .line 345
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/motion2013/HandMotionSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0a11f9

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0a11f8

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    new-instance v2, Lcom/android/settings/motion2013/HandMotionSettings$6;

    invoke-direct {v2, p0}, Lcom/android/settings/motion2013/HandMotionSettings$6;-><init>(Lcom/android/settings/motion2013/HandMotionSettings;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v1, 0x1040000

    new-instance v2, Lcom/android/settings/motion2013/HandMotionSettings$5;

    invoke-direct {v2, p0}, Lcom/android/settings/motion2013/HandMotionSettings$5;-><init>(Lcom/android/settings/motion2013/HandMotionSettings;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/motion2013/HandMotionSettings;->mTalkbackDisableDialog:Landroid/app/AlertDialog;

    .line 375
    iget-object v0, p0, Lcom/android/settings/motion2013/HandMotionSettings;->mTalkbackDisableDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 376
    iget-object v0, p0, Lcom/android/settings/motion2013/HandMotionSettings;->mTalkbackDisableDialog:Landroid/app/AlertDialog;

    new-instance v1, Lcom/android/settings/motion2013/HandMotionSettings$7;

    invoke-direct {v1, p0}, Lcom/android/settings/motion2013/HandMotionSettings$7;-><init>(Lcom/android/settings/motion2013/HandMotionSettings;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 383
    return-void
.end method


# virtual methods
.method public isAllHandMotionDisabled()Z
    .locals 7

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 330
    invoke-virtual {p0}, Lcom/android/settings/motion2013/HandMotionSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings/motion2013/HandMotionSettings;->mResolver:Landroid/content/ContentResolver;

    .line 331
    iget-object v5, p0, Lcom/android/settings/motion2013/HandMotionSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v6, "surface_tap_and_twist"

    invoke-static {v5, v6, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 332
    const-string v5, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_MOTION_PALM_SWIPE"

    invoke-static {v5}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    sget-boolean v5, Lcom/android/settings/motion2013/HandMotionSettings;->isKnoxUser:Z

    if-nez v5, :cond_1

    iget-object v5, p0, Lcom/android/settings/motion2013/HandMotionSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v6, "surface_palm_swipe"

    invoke-static {v5, v6, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 334
    .local v0, "palmSwipe":I
    :goto_0
    const-string v5, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_MOTION_PALM_TOUCH"

    invoke-static {v5}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/android/settings/motion2013/HandMotionSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v6, "surface_palm_touch"

    invoke-static {v5, v6, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 336
    .local v1, "palmTouch":I
    :goto_1
    const/4 v2, 0x0

    .line 337
    .local v2, "tapAndTwist":I
    or-int v5, v0, v1

    or-int/2addr v5, v2

    if-ge v5, v4, :cond_0

    move v3, v4

    :cond_0
    return v3

    .end local v0    # "palmSwipe":I
    .end local v1    # "palmTouch":I
    .end local v2    # "tapAndTwist":I
    :cond_1
    move v0, v3

    .line 332
    goto :goto_0

    .restart local v0    # "palmSwipe":I
    :cond_2
    move v1, v3

    .line 334
    goto :goto_1
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 5
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "desiredState"    # Z

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 299
    invoke-virtual {p0}, Lcom/android/settings/motion2013/HandMotionSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "surface_motion_engine"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_1

    move v0, v1

    .line 300
    .local v0, "currentValue":Z
    :goto_0
    if-eqz p2, :cond_2

    invoke-virtual {p0}, Lcom/android/settings/motion2013/HandMotionSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings/Utils;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_2

    if-nez v0, :cond_2

    .line 301
    invoke-direct {p0}, Lcom/android/settings/motion2013/HandMotionSettings;->makeTalkBackDisablePopup()V

    .line 319
    :cond_0
    :goto_1
    return-void

    .end local v0    # "currentValue":Z
    :cond_1
    move v0, v2

    .line 299
    goto :goto_0

    .line 303
    .restart local v0    # "currentValue":Z
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/motion2013/HandMotionSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "surface_motion_engine"

    if-eqz p2, :cond_4

    :goto_2
    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 304
    iget-object v1, p0, Lcom/android/settings/motion2013/HandMotionSettings;->mPalmSwipe:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v1, p2}, Landroid/preference/SwitchPreferenceScreen;->setEnabled(Z)V

    .line 305
    iget-object v1, p0, Lcom/android/settings/motion2013/HandMotionSettings;->mPalmTouch:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v1, p2}, Landroid/preference/SwitchPreferenceScreen;->setEnabled(Z)V

    .line 306
    iget-object v1, p0, Lcom/android/settings/motion2013/HandMotionSettings;->mTapAndTwist:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v1, p2}, Landroid/preference/SwitchPreferenceScreen;->setEnabled(Z)V

    .line 309
    iget-object v1, p0, Lcom/android/settings/motion2013/HandMotionSettings;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    if-nez v1, :cond_3

    .line 310
    const-string v1, "enterprise_policy"

    invoke-virtual {p0, v1}, Lcom/android/settings/motion2013/HandMotionSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/enterprise/EnterpriseDeviceManager;

    iput-object v1, p0, Lcom/android/settings/motion2013/HandMotionSettings;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 312
    :cond_3
    iget-object v1, p0, Lcom/android/settings/motion2013/HandMotionSettings;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/motion2013/HandMotionSettings;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    invoke-virtual {v1}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/app/enterprise/RestrictionPolicy;->isScreenCaptureEnabled(Z)Z

    move-result v1

    if-nez v1, :cond_0

    .line 314
    iget-object v1, p0, Lcom/android/settings/motion2013/HandMotionSettings;->mPalmSwipe:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v1, v2}, Landroid/preference/SwitchPreferenceScreen;->setEnabled(Z)V

    .line 315
    iget-object v1, p0, Lcom/android/settings/motion2013/HandMotionSettings;->mPalmSwipe:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v1, v2}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    goto :goto_1

    :cond_4
    move v1, v2

    .line 303
    goto :goto_2
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v5, 0x0

    const/4 v3, 0x1

    .line 106
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 107
    invoke-virtual {p0, v3}, Lcom/android/settings/motion2013/HandMotionSettings;->setHasOptionsMenu(Z)V

    .line 108
    const v4, 0x7f070062

    invoke-virtual {p0, v4}, Lcom/android/settings/motion2013/HandMotionSettings;->addPreferencesFromResource(I)V

    .line 109
    invoke-virtual {p0}, Lcom/android/settings/motion2013/HandMotionSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/motion2013/HandMotionSettings;->mActivity:Landroid/app/Activity;

    .line 110
    new-instance v4, Landroid/widget/Switch;

    iget-object v6, p0, Lcom/android/settings/motion2013/HandMotionSettings;->mActivity:Landroid/app/Activity;

    invoke-direct {v4, v6}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/settings/motion2013/HandMotionSettings;->mActionBarSwitch:Landroid/widget/Switch;

    .line 111
    iget-object v4, p0, Lcom/android/settings/motion2013/HandMotionSettings;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v4, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 112
    const-string v4, "palm_swipe"

    invoke-virtual {p0, v4}, Lcom/android/settings/motion2013/HandMotionSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/SwitchPreferenceScreen;

    iput-object v4, p0, Lcom/android/settings/motion2013/HandMotionSettings;->mPalmSwipe:Landroid/preference/SwitchPreferenceScreen;

    .line 113
    const-string v4, "palm_touch"

    invoke-virtual {p0, v4}, Lcom/android/settings/motion2013/HandMotionSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/SwitchPreferenceScreen;

    iput-object v4, p0, Lcom/android/settings/motion2013/HandMotionSettings;->mPalmTouch:Landroid/preference/SwitchPreferenceScreen;

    .line 114
    const-string v4, "tap_and_twist"

    invoke-virtual {p0, v4}, Lcom/android/settings/motion2013/HandMotionSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/SwitchPreferenceScreen;

    iput-object v4, p0, Lcom/android/settings/motion2013/HandMotionSettings;->mTapAndTwist:Landroid/preference/SwitchPreferenceScreen;

    .line 116
    iget-object v4, p0, Lcom/android/settings/motion2013/HandMotionSettings;->mPalmSwipe:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v4, p0}, Landroid/preference/SwitchPreferenceScreen;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 117
    iget-object v4, p0, Lcom/android/settings/motion2013/HandMotionSettings;->mPalmTouch:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v4, p0}, Landroid/preference/SwitchPreferenceScreen;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 118
    iget-object v4, p0, Lcom/android/settings/motion2013/HandMotionSettings;->mTapAndTwist:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v4, p0}, Landroid/preference/SwitchPreferenceScreen;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 120
    invoke-virtual {p0}, Lcom/android/settings/motion2013/HandMotionSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    .line 121
    .local v1, "ps":Landroid/preference/PreferenceScreen;
    const-string v4, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_MOTION_PALM_SWIPE"

    invoke-static {v4}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    sget-boolean v4, Lcom/android/settings/motion2013/HandMotionSettings;->isKnoxUser:Z

    if-eqz v4, :cond_1

    .line 122
    :cond_0
    iget-object v4, p0, Lcom/android/settings/motion2013/HandMotionSettings;->mPalmSwipe:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v1, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 124
    :cond_1
    const-string v4, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_MOTION_PALM_TOUCH"

    invoke-static {v4}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 125
    iget-object v4, p0, Lcom/android/settings/motion2013/HandMotionSettings;->mPalmTouch:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v1, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 127
    :cond_2
    iget-object v4, p0, Lcom/android/settings/motion2013/HandMotionSettings;->mTapAndTwist:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v1, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 130
    iget-boolean v4, p0, Lcom/android/settings/motion2013/HandMotionSettings;->mOpenDetailMenu:Z

    if-eqz v4, :cond_3

    sget v4, Lcom/android/settings/motion2013/HandMotionSettings;->mSettingValue:I

    const/4 v6, -0x1

    if-eq v4, v6, :cond_3

    invoke-virtual {p0}, Lcom/android/settings/motion2013/HandMotionSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v6, "surface_motion_engine"

    invoke-static {v4, v6, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_3

    .line 133
    invoke-virtual {p0}, Lcom/android/settings/motion2013/HandMotionSettings;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 134
    .local v0, "extra_bundle":Landroid/os/Bundle;
    const-string v4, "extra_parent_preference_key"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 135
    .local v2, "targetKey":Ljava/lang/String;
    sget v4, Lcom/android/settings/motion2013/HandMotionSettings;->mSettingValue:I

    if-ne v4, v3, :cond_4

    .line 136
    .local v3, "value":Z
    :goto_0
    const-string v4, "palm_swipe"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 137
    iget-object v4, p0, Lcom/android/settings/motion2013/HandMotionSettings;->mPalmSwipe:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v4, v3}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 138
    iget-object v4, p0, Lcom/android/settings/motion2013/HandMotionSettings;->mPalmSwipe:Landroid/preference/SwitchPreferenceScreen;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {p0, v4, v5}, Lcom/android/settings/motion2013/HandMotionSettings;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z

    .line 149
    .end local v0    # "extra_bundle":Landroid/os/Bundle;
    .end local v2    # "targetKey":Ljava/lang/String;
    .end local v3    # "value":Z
    :cond_3
    :goto_1
    return-void

    .restart local v0    # "extra_bundle":Landroid/os/Bundle;
    .restart local v2    # "targetKey":Ljava/lang/String;
    :cond_4
    move v3, v5

    .line 135
    goto :goto_0

    .line 139
    .restart local v3    # "value":Z
    :cond_5
    const-string v4, "palm_touch"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 140
    iget-object v4, p0, Lcom/android/settings/motion2013/HandMotionSettings;->mPalmTouch:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v4, v3}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 141
    iget-object v4, p0, Lcom/android/settings/motion2013/HandMotionSettings;->mPalmTouch:Landroid/preference/SwitchPreferenceScreen;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {p0, v4, v5}, Lcom/android/settings/motion2013/HandMotionSettings;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z

    goto :goto_1

    .line 142
    :cond_6
    const-string v4, "tap_and_twist"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 143
    iget-object v4, p0, Lcom/android/settings/motion2013/HandMotionSettings;->mTapAndTwist:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v4, v3}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 144
    iget-object v4, p0, Lcom/android/settings/motion2013/HandMotionSettings;->mTapAndTwist:Landroid/preference/SwitchPreferenceScreen;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {p0, v4, v5}, Lcom/android/settings/motion2013/HandMotionSettings;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 3
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    const/4 v2, 0x0

    .line 278
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 279
    invoke-virtual {p0}, Lcom/android/settings/motion2013/HandMotionSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->isSupportHelpMenu(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 280
    const/4 v0, 0x1

    const v1, 0x7f0a0e57

    invoke-interface {p1, v2, v2, v0, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f02020d

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 284
    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 287
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 294
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    :goto_0
    return v1

    .line 289
    :pswitch_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.helphub.HELP"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 290
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "helphub:section"

    const-string v2, "motion"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 291
    invoke-virtual {p0}, Lcom/android/settings/motion2013/HandMotionSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 292
    const/4 v1, 0x1

    goto :goto_0

    .line 287
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public onPause()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 227
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 228
    invoke-virtual {p0}, Lcom/android/settings/motion2013/HandMotionSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/motion2013/HandMotionSettings;->mPalmSwipeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 229
    invoke-virtual {p0}, Lcom/android/settings/motion2013/HandMotionSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/motion2013/HandMotionSettings;->mPalmTouchObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 230
    invoke-virtual {p0}, Lcom/android/settings/motion2013/HandMotionSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/motion2013/HandMotionSettings;->mPalmMotionObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 231
    invoke-virtual {p0}, Lcom/android/settings/motion2013/HandMotionSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/motion2013/HandMotionSettings;->mIcObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 238
    iget-boolean v0, p0, Lcom/android/settings/motion2013/HandMotionSettings;->isGoIntoQuideHub:Z

    if-nez v0, :cond_0

    .line 239
    invoke-virtual {p0}, Lcom/android/settings/motion2013/HandMotionSettings;->isAllHandMotionDisabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/motion2013/HandMotionSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "surface_motion_engine"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    .line 240
    invoke-virtual {p0}, Lcom/android/settings/motion2013/HandMotionSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0a11f0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 241
    invoke-virtual {p0}, Lcom/android/settings/motion2013/HandMotionSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "surface_motion_engine"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 242
    iget-object v0, p0, Lcom/android/settings/motion2013/HandMotionSettings;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v2}, Landroid/widget/Switch;->setChecked(Z)V

    .line 245
    :cond_0
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 6
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "objValue"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 261
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 262
    .local v0, "key":Ljava/lang/String;
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "objValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_2

    move v1, v2

    .line 263
    .local v1, "value":I
    :goto_0
    const-string v4, "palm_swipe"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 264
    invoke-virtual {p0}, Lcom/android/settings/motion2013/HandMotionSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "surface_palm_swipe"

    invoke-static {v4, v5, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 270
    :cond_0
    :goto_1
    invoke-virtual {p0}, Lcom/android/settings/motion2013/HandMotionSettings;->isAllHandMotionDisabled()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 271
    invoke-virtual {p0}, Lcom/android/settings/motion2013/HandMotionSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "surface_motion_engine"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 272
    iget-object v4, p0, Lcom/android/settings/motion2013/HandMotionSettings;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v4, v3}, Landroid/widget/Switch;->setChecked(Z)V

    .line 274
    :cond_1
    return v2

    .end local v1    # "value":I
    :cond_2
    move v1, v3

    .line 262
    goto :goto_0

    .line 265
    .restart local v1    # "value":I
    :cond_3
    const-string v4, "palm_touch"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 266
    invoke-virtual {p0}, Lcom/android/settings/motion2013/HandMotionSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "surface_palm_touch"

    invoke-static {v4, v5, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    .line 267
    :cond_4
    const-string v4, "tap_and_twist"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 268
    invoke-virtual {p0}, Lcom/android/settings/motion2013/HandMotionSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "surface_tap_and_twist"

    invoke-static {v4, v5, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 1
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 257
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/motion2013/HandMotionSettings;->isGoIntoQuideHub:Z

    .line 258
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    return v0
.end method

.method public onResume()V
    .locals 10

    .prologue
    const/16 v8, 0x10

    const/4 v9, -0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 164
    iget-boolean v2, p0, Lcom/android/settings/SettingsPreferenceFragment;->mOpenDetailMenu:Z

    .line 165
    .local v2, "super_mOpenDetailMenu":Z
    iput-boolean v5, p0, Lcom/android/settings/SettingsPreferenceFragment;->mOpenDetailMenu:Z

    .line 167
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 168
    iput-boolean v5, p0, Lcom/android/settings/motion2013/HandMotionSettings;->isGoIntoQuideHub:Z

    .line 170
    invoke-virtual {p0}, Lcom/android/settings/motion2013/HandMotionSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v6, "surface_motion_engine"

    invoke-static {v6}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    iget-object v7, p0, Lcom/android/settings/motion2013/HandMotionSettings;->mPalmMotionObserver:Landroid/database/ContentObserver;

    invoke-virtual {v3, v6, v4, v7}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 172
    invoke-virtual {p0}, Lcom/android/settings/motion2013/HandMotionSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v6, "surface_palm_swipe"

    invoke-static {v6}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    iget-object v7, p0, Lcom/android/settings/motion2013/HandMotionSettings;->mPalmSwipeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v3, v6, v4, v7}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 174
    invoke-virtual {p0}, Lcom/android/settings/motion2013/HandMotionSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v6, "surface_palm_touch"

    invoke-static {v6}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    iget-object v7, p0, Lcom/android/settings/motion2013/HandMotionSettings;->mPalmTouchObserver:Landroid/database/ContentObserver;

    invoke-virtual {v3, v6, v4, v7}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 176
    invoke-virtual {p0}, Lcom/android/settings/motion2013/HandMotionSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v6, "access_control_enabled"

    invoke-static {v6}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    iget-object v7, p0, Lcom/android/settings/motion2013/HandMotionSettings;->mIcObserver:Landroid/database/ContentObserver;

    invoke-virtual {v3, v6, v4, v7}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 178
    iget-object v3, p0, Lcom/android/settings/motion2013/HandMotionSettings;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v6, 0x7f0f0058

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 180
    .local v1, "padding":I
    iget-object v3, p0, Lcom/android/settings/motion2013/HandMotionSettings;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v3, v5, v5, v1, v5}, Landroid/widget/Switch;->setPadding(IIII)V

    .line 181
    iget-object v3, p0, Lcom/android/settings/motion2013/HandMotionSettings;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    invoke-virtual {v3, v8, v8}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 183
    invoke-static {}, Lcom/android/settings/Utils;->isSupportMenuTreeForK()Z

    move-result v3

    if-nez v3, :cond_0

    .line 184
    iget-object v3, p0, Lcom/android/settings/motion2013/HandMotionSettings;->mActionBarSwitch:Landroid/widget/Switch;

    iget-object v6, p0, Lcom/android/settings/motion2013/HandMotionSettings;->mActivity:Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f020628

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/widget/Switch;->setThumbDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 185
    iget-object v3, p0, Lcom/android/settings/motion2013/HandMotionSettings;->mActionBarSwitch:Landroid/widget/Switch;

    iget-object v6, p0, Lcom/android/settings/motion2013/HandMotionSettings;->mActivity:Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f020629

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/widget/Switch;->setTrackDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 187
    :cond_0
    iget-object v3, p0, Lcom/android/settings/motion2013/HandMotionSettings;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    iget-object v6, p0, Lcom/android/settings/motion2013/HandMotionSettings;->mActionBarSwitch:Landroid/widget/Switch;

    new-instance v7, Landroid/app/ActionBar$LayoutParams;

    const/16 v8, 0x15

    invoke-direct {v7, v9, v9, v8}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    invoke-virtual {v3, v6, v7}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    .line 193
    invoke-virtual {p0}, Lcom/android/settings/motion2013/HandMotionSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/motion2013/HandMotionSettings;->mResolver:Landroid/content/ContentResolver;

    .line 194
    iget-object v6, p0, Lcom/android/settings/motion2013/HandMotionSettings;->mPalmSwipe:Landroid/preference/SwitchPreferenceScreen;

    iget-object v3, p0, Lcom/android/settings/motion2013/HandMotionSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v7, "surface_palm_swipe"

    invoke-static {v3, v7, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_4

    move v3, v4

    :goto_0
    invoke-virtual {v6, v3}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 195
    iget-object v6, p0, Lcom/android/settings/motion2013/HandMotionSettings;->mPalmTouch:Landroid/preference/SwitchPreferenceScreen;

    iget-object v3, p0, Lcom/android/settings/motion2013/HandMotionSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v7, "surface_palm_touch"

    invoke-static {v3, v7, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_5

    move v3, v4

    :goto_1
    invoke-virtual {v6, v3}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 196
    iget-object v6, p0, Lcom/android/settings/motion2013/HandMotionSettings;->mTapAndTwist:Landroid/preference/SwitchPreferenceScreen;

    iget-object v3, p0, Lcom/android/settings/motion2013/HandMotionSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v7, "surface_tap_and_twist"

    invoke-static {v3, v7, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_6

    move v3, v4

    :goto_2
    invoke-virtual {v6, v3}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 197
    iget-object v3, p0, Lcom/android/settings/motion2013/HandMotionSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v6, "surface_motion_engine"

    invoke-static {v3, v6, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_7

    move v0, v4

    .line 198
    .local v0, "handMotionEngineState":Z
    :goto_3
    iget-object v3, p0, Lcom/android/settings/motion2013/HandMotionSettings;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v3, v0}, Landroid/widget/Switch;->setChecked(Z)V

    .line 199
    iget-object v3, p0, Lcom/android/settings/motion2013/HandMotionSettings;->mPalmSwipe:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v3, v0}, Landroid/preference/SwitchPreferenceScreen;->setEnabled(Z)V

    .line 200
    iget-object v3, p0, Lcom/android/settings/motion2013/HandMotionSettings;->mPalmTouch:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v3, v0}, Landroid/preference/SwitchPreferenceScreen;->setEnabled(Z)V

    .line 201
    iget-object v3, p0, Lcom/android/settings/motion2013/HandMotionSettings;->mTapAndTwist:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v3, v0}, Landroid/preference/SwitchPreferenceScreen;->setEnabled(Z)V

    .line 204
    iget-object v3, p0, Lcom/android/settings/motion2013/HandMotionSettings;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    if-nez v3, :cond_1

    .line 205
    const-string v3, "enterprise_policy"

    invoke-virtual {p0, v3}, Lcom/android/settings/motion2013/HandMotionSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/enterprise/EnterpriseDeviceManager;

    iput-object v3, p0, Lcom/android/settings/motion2013/HandMotionSettings;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 207
    :cond_1
    iget-object v3, p0, Lcom/android/settings/motion2013/HandMotionSettings;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/settings/motion2013/HandMotionSettings;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    invoke-virtual {v3}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/app/enterprise/RestrictionPolicy;->isScreenCaptureEnabled(Z)Z

    move-result v3

    if-nez v3, :cond_2

    .line 209
    iget-object v3, p0, Lcom/android/settings/motion2013/HandMotionSettings;->mPalmSwipe:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v3, v5}, Landroid/preference/SwitchPreferenceScreen;->setEnabled(Z)V

    .line 210
    iget-object v3, p0, Lcom/android/settings/motion2013/HandMotionSettings;->mPalmSwipe:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v3, v5}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 215
    :cond_2
    iput-boolean v2, p0, Lcom/android/settings/SettingsPreferenceFragment;->mOpenDetailMenu:Z

    .line 216
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->openSearchDetailMenu()V

    .line 219
    invoke-virtual {p0}, Lcom/android/settings/motion2013/HandMotionSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings/Utils;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {p0}, Lcom/android/settings/motion2013/HandMotionSettings;->isAllHandMotionDisabled()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {p0}, Lcom/android/settings/motion2013/HandMotionSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "surface_motion_engine"

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_3

    .line 221
    invoke-direct {p0}, Lcom/android/settings/motion2013/HandMotionSettings;->makeTalkBackDisablePopup()V

    .line 224
    :cond_3
    return-void

    .end local v0    # "handMotionEngineState":Z
    :cond_4
    move v3, v5

    .line 194
    goto/16 :goto_0

    :cond_5
    move v3, v5

    .line 195
    goto/16 :goto_1

    :cond_6
    move v3, v5

    .line 196
    goto :goto_2

    :cond_7
    move v0, v5

    .line 197
    goto :goto_3
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 153
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onStart()V

    .line 154
    invoke-virtual {p0}, Lcom/android/settings/motion2013/HandMotionSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/motion2013/HandMotionSettings;->mActionBarLayout:Landroid/view/View;

    .line 155
    iget-object v0, p0, Lcom/android/settings/motion2013/HandMotionSettings;->mActionBarLayout:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 156
    iget-object v0, p0, Lcom/android/settings/motion2013/HandMotionSettings;->mActionBarLayout:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 157
    invoke-virtual {p0}, Lcom/android/settings/motion2013/HandMotionSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 159
    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 248
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onStop()V

    .line 249
    iget-object v0, p0, Lcom/android/settings/motion2013/HandMotionSettings;->mActionBarLayout:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 250
    iget-object v0, p0, Lcom/android/settings/motion2013/HandMotionSettings;->mActionBarLayout:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 251
    invoke-virtual {p0}, Lcom/android/settings/motion2013/HandMotionSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 253
    :cond_0
    return-void
.end method
