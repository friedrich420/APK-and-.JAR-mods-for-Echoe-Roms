.class public Lcom/android/settings/DrivingModeSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "DrivingModeSettings.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/DrivingModeSettings$SettingsObserver;
    }
.end annotation


# static fields
.field private static sSettingsObserver:Lcom/android/settings/DrivingModeSettings$SettingsObserver;


# instance fields
.field private mActionBarLayout:Landroid/view/View;

.field private mActionBarSwitch:Landroid/widget/Switch;

.field private mAirCallAccept:Landroid/preference/CheckBoxPreference;

.field private mAlarmNotification:Landroid/preference/CheckBoxPreference;

.field private mChatonNotification:Landroid/preference/CheckBoxPreference;

.field private mContext:Landroid/content/Context;

.field private mDrivingModeOnDialog:Landroid/app/AlertDialog;

.field private mEmailNotification:Landroid/preference/CheckBoxPreference;

.field private mIncomingCallNotification:Landroid/preference/CheckBoxPreference;

.field private mMessageNotification:Landroid/preference/CheckBoxPreference;

.field private mScheduleNotification:Landroid/preference/CheckBoxPreference;

.field private mTouchEvent:Z

.field private mUnlockScreenContents:Landroid/preference/CheckBoxPreference;

.field private mVoiceMailNotification:Landroid/preference/CheckBoxPreference;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 91
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/DrivingModeSettings;->mDrivingModeOnDialog:Landroid/app/AlertDialog;

    .line 93
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/DrivingModeSettings;->mTouchEvent:Z

    .line 587
    return-void
.end method

.method private EnablingAirCallAccept(Z)V
    .locals 11
    .param p1, "state"    # Z

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 462
    if-eqz p1, :cond_3

    .line 463
    iget-object v7, p0, Lcom/android/settings/DrivingModeSettings;->mContext:Landroid/content/Context;

    const-string v8, "DrivingmodeAirCallAccept"

    invoke-virtual {v7, v8, v9}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v6

    .line 464
    .local v6, "pref":Landroid/content/SharedPreferences;
    const-string v7, "Entering"

    const-string v8, ""

    invoke-interface {v6, v7, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 465
    .local v2, "Enterinput":Ljava/lang/String;
    const-string v7, "0"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 466
    invoke-virtual {p0}, Lcom/android/settings/DrivingModeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "air_motion_call_accept"

    invoke-static {v7, v8, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 467
    .local v0, "AirGestureCallAccept":I
    invoke-virtual {p0}, Lcom/android/settings/DrivingModeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "air_motion_engine"

    invoke-static {v7, v8, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 469
    .local v1, "AirGestureMaster":I
    const-string v4, "0"

    .line 470
    .local v4, "flagCall":Ljava/lang/String;
    const-string v5, "0"

    .line 472
    .local v5, "flagMaster":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 473
    invoke-virtual {p0}, Lcom/android/settings/DrivingModeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "air_motion_call_accept"

    invoke-static {v7, v8, v10}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 474
    const-string v4, "1"

    .line 477
    :cond_0
    if-nez v1, :cond_1

    .line 478
    invoke-virtual {p0}, Lcom/android/settings/DrivingModeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "air_motion_engine"

    invoke-static {v7, v8, v10}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 479
    const-string v5, "1"

    .line 482
    :cond_1
    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 483
    .local v3, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v7, "Entering"

    const-string v8, "1"

    invoke-interface {v3, v7, v8}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 484
    const-string v7, "AIRCALL"

    invoke-interface {v3, v7, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 485
    const-string v7, "MASTER"

    invoke-interface {v3, v7, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 486
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 519
    .end local v0    # "AirGestureCallAccept":I
    .end local v1    # "AirGestureMaster":I
    .end local v3    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v4    # "flagCall":Ljava/lang/String;
    .end local v5    # "flagMaster":Ljava/lang/String;
    :cond_2
    :goto_0
    return-void

    .line 489
    .end local v2    # "Enterinput":Ljava/lang/String;
    .end local v6    # "pref":Landroid/content/SharedPreferences;
    :cond_3
    iget-object v7, p0, Lcom/android/settings/DrivingModeSettings;->mContext:Landroid/content/Context;

    const-string v8, "DrivingmodeAirCallAccept"

    invoke-virtual {v7, v8, v9}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v6

    .line 490
    .restart local v6    # "pref":Landroid/content/SharedPreferences;
    const-string v7, "Entering"

    const-string v8, ""

    invoke-interface {v6, v7, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 491
    .restart local v2    # "Enterinput":Ljava/lang/String;
    const-string v7, "1"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 492
    const-string v7, "AIRCALL"

    const-string v8, ""

    invoke-interface {v6, v7, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 493
    .restart local v4    # "flagCall":Ljava/lang/String;
    const-string v7, "MASTER"

    const-string v8, ""

    invoke-interface {v6, v7, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 495
    .restart local v5    # "flagMaster":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings/DrivingModeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "air_motion_call_accept"

    invoke-static {v7, v8, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 496
    .restart local v0    # "AirGestureCallAccept":I
    invoke-virtual {p0}, Lcom/android/settings/DrivingModeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "air_motion_engine"

    invoke-static {v7, v8, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 498
    .restart local v1    # "AirGestureMaster":I
    if-ne v0, v10, :cond_4

    const-string v7, "1"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 499
    invoke-virtual {p0}, Lcom/android/settings/DrivingModeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "air_motion_call_accept"

    invoke-static {v7, v8, v9}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 502
    :cond_4
    if-ne v1, v10, :cond_5

    const-string v7, "1"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 503
    invoke-virtual {p0}, Lcom/android/settings/DrivingModeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "air_motion_engine"

    invoke-static {v7, v8, v9}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 506
    :cond_5
    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 507
    .restart local v3    # "editor":Landroid/content/SharedPreferences$Editor;
    const-string v7, "Entering"

    const-string v8, "0"

    invoke-interface {v3, v7, v8}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 508
    const-string v7, "AIRCALL"

    const-string v8, "0"

    invoke-interface {v3, v7, v8}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 509
    const-string v7, "MASTER"

    const-string v8, "0"

    invoke-interface {v3, v7, v8}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 510
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0

    .line 512
    .end local v0    # "AirGestureCallAccept":I
    .end local v1    # "AirGestureMaster":I
    .end local v3    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v4    # "flagCall":Ljava/lang/String;
    .end local v5    # "flagMaster":Ljava/lang/String;
    :cond_6
    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 513
    .restart local v3    # "editor":Landroid/content/SharedPreferences$Editor;
    const-string v7, "Entering"

    const-string v8, "0"

    invoke-interface {v3, v7, v8}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 514
    const-string v7, "AIRCALL"

    const-string v8, "0"

    invoke-interface {v3, v7, v8}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 515
    const-string v7, "MASTER"

    const-string v8, "0"

    invoke-interface {v3, v7, v8}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 516
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_0
.end method

.method static synthetic access$002(Lcom/android/settings/DrivingModeSettings;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/DrivingModeSettings;
    .param p1, "x1"    # Z

    .prologue
    .line 65
    iput-boolean p1, p0, Lcom/android/settings/DrivingModeSettings;->mTouchEvent:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/settings/DrivingModeSettings;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/DrivingModeSettings;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/settings/DrivingModeSettings;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/DrivingModeSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/DrivingModeSettings;

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/android/settings/DrivingModeSettings;->updateState()V

    return-void
.end method

.method public static areAllDrivingModeOptionsDisabled(Landroid/content/ContentResolver;)Z
    .locals 3
    .param p0, "cr"    # Landroid/content/ContentResolver;

    .prologue
    const/4 v0, 0x0

    .line 530
    const-string v1, "driving_mode_on"

    invoke-static {p0, v1, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/settings/Utils;->isSupportMenuTreeForK()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 534
    :cond_0
    :goto_0
    return v0

    :cond_1
    const-string v1, "driving_mode_incoming_call_notification"

    invoke-static {p0, v1, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const-string v2, "driving_mode_chaton_call_notification"

    invoke-static {p0, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    add-int/2addr v1, v2

    const-string v2, "driving_mode_air_call_accept"

    invoke-static {p0, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    add-int/2addr v1, v2

    const-string v2, "driving_mode_message_notification"

    invoke-static {p0, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    add-int/2addr v1, v2

    const-string v2, "driving_mode_email_notification"

    invoke-static {p0, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    add-int/2addr v1, v2

    const-string v2, "driving_mode_voice_mail_notification"

    invoke-static {p0, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    add-int/2addr v1, v2

    const-string v2, "driving_mode_alarm_notification"

    invoke-static {p0, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    add-int/2addr v1, v2

    const-string v2, "driving_mode_schedule_notification"

    invoke-static {p0, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    add-int/2addr v1, v2

    const-string v2, "driving_mode_unlock_screen_contents"

    invoke-static {p0, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    add-int/2addr v1, v2

    if-gtz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private isVoiceControlEnabled(Landroid/content/Context;)Z
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 284
    const/4 v1, 0x1

    .line 287
    .local v1, "isSVoiceInstalled":Z
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v3, "com.vlingo.midas"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    .line 288
    const-string v2, "DrivingModeSettings"

    const-string v3, "SVoice is installed."

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 294
    :goto_0
    const-string v2, "SEC_FLOATING_FEATURE_COMMON_SUPPORT_SVOICE"

    invoke-static {v2}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 295
    const/4 v1, 0x0

    .line 298
    :cond_0
    return v1

    .line 289
    :catch_0
    move-exception v0

    .line 290
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v2, "DrivingModeSettings"

    const-string v3, "SVoice is not installed."

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private updateState()V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 373
    invoke-virtual {p0}, Lcom/android/settings/DrivingModeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "driving_mode_on"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 375
    .local v0, "savedValue":Z
    :cond_0
    iget-object v1, p0, Lcom/android/settings/DrivingModeSettings;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, v0}, Landroid/widget/Switch;->setChecked(Z)V

    .line 376
    invoke-virtual {p0}, Lcom/android/settings/DrivingModeSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 377
    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/16 v5, 0x10

    const/4 v6, -0x2

    const/4 v4, 0x0

    .line 228
    invoke-virtual {p0}, Lcom/android/settings/DrivingModeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 229
    .local v0, "activity":Landroid/app/Activity;
    new-instance v2, Landroid/widget/Switch;

    invoke-direct {v2, v0}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/settings/DrivingModeSettings;->mActionBarSwitch:Landroid/widget/Switch;

    .line 230
    invoke-static {}, Lcom/android/settings/Utils;->isSupportMenuTreeForK()Z

    move-result v2

    if-nez v2, :cond_1

    .line 231
    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0f0058

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 233
    .local v1, "padding":I
    iget-object v2, p0, Lcom/android/settings/DrivingModeSettings;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v2, v4, v4, v1, v4}, Landroid/widget/Switch;->setPadding(IIII)V

    .line 234
    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    invoke-virtual {v2, v5, v5}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 236
    invoke-static {}, Lcom/android/settings/Utils;->isSupportMenuTreeForK()Z

    move-result v2

    if-nez v2, :cond_0

    .line 237
    iget-object v2, p0, Lcom/android/settings/DrivingModeSettings;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f020628

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/Switch;->setThumbDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 238
    iget-object v2, p0, Lcom/android/settings/DrivingModeSettings;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f020629

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/Switch;->setTrackDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 240
    :cond_0
    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/DrivingModeSettings;->mActionBarSwitch:Landroid/widget/Switch;

    new-instance v4, Landroid/app/ActionBar$LayoutParams;

    const/16 v5, 0x15

    invoke-direct {v4, v6, v6, v5}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    invoke-virtual {v2, v3, v4}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    .line 245
    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/DrivingModeSettings;->mActionBarLayout:Landroid/view/View;

    .line 247
    .end local v1    # "padding":I
    :cond_1
    iget-object v2, p0, Lcom/android/settings/DrivingModeSettings;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v2, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 248
    iget-object v2, p0, Lcom/android/settings/DrivingModeSettings;->mActionBarSwitch:Landroid/widget/Switch;

    new-instance v3, Lcom/android/settings/DrivingModeSettings$1;

    invoke-direct {v3, p0}, Lcom/android/settings/DrivingModeSettings$1;-><init>(Lcom/android/settings/DrivingModeSettings;)V

    invoke-virtual {v2, v3}, Landroid/widget/Switch;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 255
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 256
    return-void
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 5
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "desiredState"    # Z

    .prologue
    const/4 v0, 0x1

    const/4 v2, 0x0

    .line 260
    const-string v3, "DrivingModeSettings"

    const-string v4, "onCheckChanged : Driving mode changed broadcast"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.settings.DRIVING_MODE_CHANGED"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 262
    .local v1, "intent":Landroid/content/Intent;
    if-eqz p2, :cond_3

    .line 263
    invoke-virtual {p0}, Lcom/android/settings/DrivingModeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "driving_mode_on"

    invoke-static {v3, v4, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 264
    const-string v3, "DrivingMode"

    invoke-virtual {v1, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 265
    const-string v3, "DrivingModeSettings"

    const-string v4, "onCheckChanged : Driving mode on"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    iget-boolean v3, p0, Lcom/android/settings/DrivingModeSettings;->mTouchEvent:Z

    if-eqz v3, :cond_1

    .line 269
    iget-object v3, p0, Lcom/android/settings/DrivingModeSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "quickpanel_drivingmode_checked"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v0, :cond_2

    .line 270
    .local v0, "bShowDialog":Z
    :goto_0
    if-nez v0, :cond_0

    iget-object v3, p0, Lcom/android/settings/DrivingModeSettings;->mContext:Landroid/content/Context;

    invoke-direct {p0, v3}, Lcom/android/settings/DrivingModeSettings;->isVoiceControlEnabled(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 271
    invoke-virtual {p0}, Lcom/android/settings/DrivingModeSettings;->showDrivingModeOnDialog()V

    .line 273
    :cond_0
    iput-boolean v2, p0, Lcom/android/settings/DrivingModeSettings;->mTouchEvent:Z

    .line 280
    .end local v0    # "bShowDialog":Z
    :cond_1
    :goto_1
    invoke-virtual {p0}, Lcom/android/settings/DrivingModeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 281
    return-void

    :cond_2
    move v0, v2

    .line 269
    goto :goto_0

    .line 276
    :cond_3
    invoke-virtual {p0}, Lcom/android/settings/DrivingModeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "driving_mode_on"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 277
    const-string v3, "DrivingMode"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 278
    const-string v2, "DrivingModeSettings"

    const-string v3, "onCheckChanged : Driving mode off"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 9
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    const/16 v8, 0x64

    const/4 v7, 0x0

    .line 101
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 103
    invoke-virtual {p0}, Lcom/android/settings/DrivingModeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/DrivingModeSettings;->mContext:Landroid/content/Context;

    .line 105
    invoke-static {}, Lcom/android/settings/Utils;->isSupportMenuTreeForK()Z

    move-result v3

    if-eqz v3, :cond_d

    .line 106
    const v3, 0x7f070086

    invoke-virtual {p0, v3}, Lcom/android/settings/DrivingModeSettings;->addPreferencesFromResource(I)V

    .line 111
    :goto_0
    const-string v3, "incoming_call_notification"

    invoke-virtual {p0, v3}, Lcom/android/settings/DrivingModeSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    iput-object v3, p0, Lcom/android/settings/DrivingModeSettings;->mIncomingCallNotification:Landroid/preference/CheckBoxPreference;

    .line 112
    const-string v3, "chaton_mode_notification"

    invoke-virtual {p0, v3}, Lcom/android/settings/DrivingModeSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    iput-object v3, p0, Lcom/android/settings/DrivingModeSettings;->mChatonNotification:Landroid/preference/CheckBoxPreference;

    .line 113
    const-string v3, "air_call_accept_hands_free"

    invoke-virtual {p0, v3}, Lcom/android/settings/DrivingModeSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    iput-object v3, p0, Lcom/android/settings/DrivingModeSettings;->mAirCallAccept:Landroid/preference/CheckBoxPreference;

    .line 114
    const-string v3, "message_notification"

    invoke-virtual {p0, v3}, Lcom/android/settings/DrivingModeSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    iput-object v3, p0, Lcom/android/settings/DrivingModeSettings;->mMessageNotification:Landroid/preference/CheckBoxPreference;

    .line 115
    const-string v3, "email_notification"

    invoke-virtual {p0, v3}, Lcom/android/settings/DrivingModeSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    iput-object v3, p0, Lcom/android/settings/DrivingModeSettings;->mEmailNotification:Landroid/preference/CheckBoxPreference;

    .line 116
    const-string v3, "voice_mail_notification"

    invoke-virtual {p0, v3}, Lcom/android/settings/DrivingModeSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    iput-object v3, p0, Lcom/android/settings/DrivingModeSettings;->mVoiceMailNotification:Landroid/preference/CheckBoxPreference;

    .line 117
    const-string v3, "alarm_notification"

    invoke-virtual {p0, v3}, Lcom/android/settings/DrivingModeSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    iput-object v3, p0, Lcom/android/settings/DrivingModeSettings;->mAlarmNotification:Landroid/preference/CheckBoxPreference;

    .line 118
    const-string v3, "schedule_notification"

    invoke-virtual {p0, v3}, Lcom/android/settings/DrivingModeSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    iput-object v3, p0, Lcom/android/settings/DrivingModeSettings;->mScheduleNotification:Landroid/preference/CheckBoxPreference;

    .line 119
    invoke-static {}, Lcom/android/settings/Utils;->isAllNAVendor()Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "XAR"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "XAC"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 120
    :cond_0
    iget-object v3, p0, Lcom/android/settings/DrivingModeSettings;->mScheduleNotification:Landroid/preference/CheckBoxPreference;

    const v4, 0x7f0a0d91

    invoke-virtual {v3, v4}, Landroid/preference/CheckBoxPreference;->setTitle(I)V

    .line 121
    iget-object v3, p0, Lcom/android/settings/DrivingModeSettings;->mScheduleNotification:Landroid/preference/CheckBoxPreference;

    const v4, 0x7f0a0d92

    invoke-virtual {v3, v4}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    .line 123
    :cond_1
    const-string v3, "unlock_screen_contents"

    invoke-virtual {p0, v3}, Lcom/android/settings/DrivingModeSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    iput-object v3, p0, Lcom/android/settings/DrivingModeSettings;->mUnlockScreenContents:Landroid/preference/CheckBoxPreference;

    .line 125
    iget-object v3, p0, Lcom/android/settings/DrivingModeSettings;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/settings/Utils;->isKnoxTwoEnabled(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 126
    invoke-virtual {p0}, Lcom/android/settings/DrivingModeSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/DrivingModeSettings;->mIncomingCallNotification:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 128
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/DrivingModeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_3

    invoke-virtual {p0}, Lcom/android/settings/DrivingModeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings/Utils;->isVoiceCapable(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    if-lt v3, v8, :cond_5

    .line 129
    :cond_3
    invoke-virtual {p0}, Lcom/android/settings/DrivingModeSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/DrivingModeSettings;->mIncomingCallNotification:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 130
    invoke-virtual {p0}, Lcom/android/settings/DrivingModeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "driving_mode_incoming_call_notification"

    invoke-static {v3, v4, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 133
    invoke-virtual {p0}, Lcom/android/settings/DrivingModeSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/DrivingModeSettings;->mChatonNotification:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 134
    invoke-virtual {p0}, Lcom/android/settings/DrivingModeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "driving_mode_chaton_call_notification"

    invoke-static {v3, v4, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 137
    invoke-virtual {p0}, Lcom/android/settings/DrivingModeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings/Utils;->isMessageCapable(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 138
    invoke-virtual {p0}, Lcom/android/settings/DrivingModeSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/DrivingModeSettings;->mMessageNotification:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 139
    invoke-virtual {p0}, Lcom/android/settings/DrivingModeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "driving_mode_message_notification"

    invoke-static {v3, v4, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 143
    :cond_4
    invoke-virtual {p0}, Lcom/android/settings/DrivingModeSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/DrivingModeSettings;->mVoiceMailNotification:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 144
    invoke-virtual {p0}, Lcom/android/settings/DrivingModeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "driving_mode_voice_mail_notification"

    invoke-static {v3, v4, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 146
    iget-object v3, p0, Lcom/android/settings/DrivingModeSettings;->mUnlockScreenContents:Landroid/preference/CheckBoxPreference;

    const v4, 0x7f0a0dde

    invoke-virtual {v3, v4}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    .line 149
    :cond_5
    const-string v3, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_AIR_MOTION"

    invoke-static {v3}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 150
    invoke-virtual {p0}, Lcom/android/settings/DrivingModeSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/DrivingModeSettings;->mAirCallAccept:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 153
    :cond_6
    invoke-virtual {p0}, Lcom/android/settings/DrivingModeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings/Utils;->isDualFolderType(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-static {}, Lcom/android/settings/Utils;->isChinaModel()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 154
    iget-object v3, p0, Lcom/android/settings/DrivingModeSettings;->mAirCallAccept:Landroid/preference/CheckBoxPreference;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/settings/DrivingModeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0a0d98

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/settings/DrivingModeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0a1bd7

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/CheckBoxPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 159
    :cond_7
    const-string v3, "KDI"

    const-string v4, "ro.csc.sales_code"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 160
    invoke-virtual {p0}, Lcom/android/settings/DrivingModeSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/DrivingModeSettings;->mMessageNotification:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 161
    invoke-virtual {p0}, Lcom/android/settings/DrivingModeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "driving_mode_message_notification"

    invoke-static {v3, v4, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 165
    :cond_8
    invoke-static {}, Lcom/android/settings/Utils;->isDomesticModel()Z

    move-result v3

    if-eqz v3, :cond_9

    iget-object v3, p0, Lcom/android/settings/DrivingModeSettings;->mVoiceMailNotification:Landroid/preference/CheckBoxPreference;

    if-eqz v3, :cond_9

    .line 168
    invoke-virtual {p0}, Lcom/android/settings/DrivingModeSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/DrivingModeSettings;->mVoiceMailNotification:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 169
    invoke-virtual {p0}, Lcom/android/settings/DrivingModeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "driving_mode_voice_mail_notification"

    invoke-static {v3, v4, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 174
    :cond_9
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/DrivingModeSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const-string v4, "com.coolots.chaton"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 175
    .local v2, "info":Landroid/content/pm/PackageInfo;
    if-nez v2, :cond_a

    .line 176
    invoke-virtual {p0}, Lcom/android/settings/DrivingModeSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/DrivingModeSettings;->mChatonNotification:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 186
    .end local v2    # "info":Landroid/content/pm/PackageInfo;
    :cond_a
    :goto_1
    :try_start_1
    invoke-virtual {p0}, Lcom/android/settings/DrivingModeSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const-string v4, "com.sec.android.app.clockpackage"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 197
    :goto_2
    invoke-virtual {p0}, Lcom/android/settings/DrivingModeSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/DrivingModeSettings;->mVoiceMailNotification:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 198
    invoke-virtual {p0}, Lcom/android/settings/DrivingModeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "driving_mode_voice_mail_notification"

    invoke-static {v3, v4, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 199
    invoke-static {}, Lcom/android/settings/Utils;->isSupportMenuTreeForK()Z

    move-result v3

    if-eqz v3, :cond_e

    .line 200
    const-string v3, "chaton_mode_notification"

    invoke-virtual {p0, v3}, Lcom/android/settings/DrivingModeSettings;->removePreference(Ljava/lang/String;)V

    .line 201
    invoke-virtual {p0}, Lcom/android/settings/DrivingModeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "driving_mode_chaton_call_notification"

    invoke-static {v3, v4, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 202
    const-string v3, "air_call_accept_hands_free"

    invoke-virtual {p0, v3}, Lcom/android/settings/DrivingModeSettings;->removePreference(Ljava/lang/String;)V

    .line 203
    invoke-virtual {p0}, Lcom/android/settings/DrivingModeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "driving_mode_air_call_accept"

    invoke-static {v3, v4, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 208
    :goto_3
    invoke-virtual {p0}, Lcom/android/settings/DrivingModeSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/DrivingModeSettings;->mUnlockScreenContents:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 209
    invoke-virtual {p0}, Lcom/android/settings/DrivingModeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "driving_mode_unlock_screen_contents"

    invoke-static {v3, v4, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 212
    iget-object v3, p0, Lcom/android/settings/DrivingModeSettings;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/settings/Utils;->isRestrictedProfile(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 213
    const-string v3, "schedule_notification"

    invoke-virtual {p0, v3}, Lcom/android/settings/DrivingModeSettings;->removePreference(Ljava/lang/String;)V

    .line 214
    invoke-virtual {p0}, Lcom/android/settings/DrivingModeSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/DrivingModeSettings;->mMessageNotification:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 215
    invoke-virtual {p0}, Lcom/android/settings/DrivingModeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "driving_mode_message_notification"

    invoke-static {v3, v4, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 218
    :cond_b
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    if-eqz v3, :cond_c

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    if-ge v3, v8, :cond_c

    .line 220
    invoke-virtual {p0}, Lcom/android/settings/DrivingModeSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/DrivingModeSettings;->mMessageNotification:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 221
    invoke-virtual {p0}, Lcom/android/settings/DrivingModeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "driving_mode_message_notification"

    invoke-static {v3, v4, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 224
    :cond_c
    return-void

    .line 108
    :cond_d
    const v3, 0x7f07004d

    invoke-virtual {p0, v3}, Lcom/android/settings/DrivingModeSettings;->addPreferencesFromResource(I)V

    goto/16 :goto_0

    .line 178
    :catch_0
    move-exception v1

    .line 179
    .local v1, "e1":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {p0}, Lcom/android/settings/DrivingModeSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/DrivingModeSettings;->mChatonNotification:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 180
    invoke-virtual {p0}, Lcom/android/settings/DrivingModeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "driving_mode_chaton_call_notification"

    invoke-static {v3, v4, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 182
    const-string v3, "DrivingModeSettings"

    const-string v4, "Chaton voice is not found. remove chaton in driving mode."

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 188
    .end local v1    # "e1":Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_1
    move-exception v0

    .line 189
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v3, "DrivingModeSettings"

    const-string v4, "Samsung Alarm Clock is not found"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    invoke-virtual {p0}, Lcom/android/settings/DrivingModeSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/DrivingModeSettings;->mAlarmNotification:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 192
    invoke-virtual {p0}, Lcom/android/settings/DrivingModeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "driving_mode_alarm_notification"

    invoke-static {v3, v4, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_2

    .line 205
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_e
    invoke-virtual {p0}, Lcom/android/settings/DrivingModeSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/DrivingModeSettings;->mEmailNotification:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 206
    invoke-virtual {p0}, Lcom/android/settings/DrivingModeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "driving_mode_email_notification"

    invoke-static {v3, v4, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_3
.end method

.method public onPause()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 381
    invoke-virtual {p0}, Lcom/android/settings/DrivingModeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/DrivingModeSettings;->areAllDrivingModeOptionsDisabled(Landroid/content/ContentResolver;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 382
    iget-object v0, p0, Lcom/android/settings/DrivingModeSettings;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v2}, Landroid/widget/Switch;->setChecked(Z)V

    .line 383
    invoke-virtual {p0}, Lcom/android/settings/DrivingModeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0a0d99

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 388
    :goto_0
    sget-object v0, Lcom/android/settings/DrivingModeSettings;->sSettingsObserver:Lcom/android/settings/DrivingModeSettings$SettingsObserver;

    if-eqz v0, :cond_0

    .line 389
    sget-object v0, Lcom/android/settings/DrivingModeSettings;->sSettingsObserver:Lcom/android/settings/DrivingModeSettings$SettingsObserver;

    invoke-virtual {v0}, Lcom/android/settings/DrivingModeSettings$SettingsObserver;->stopObserving()V

    .line 390
    sput-object v3, Lcom/android/settings/DrivingModeSettings;->sSettingsObserver:Lcom/android/settings/DrivingModeSettings$SettingsObserver;

    .line 393
    :cond_0
    iget-object v0, p0, Lcom/android/settings/DrivingModeSettings;->mDrivingModeOnDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_1

    .line 394
    iget-object v0, p0, Lcom/android/settings/DrivingModeSettings;->mDrivingModeOnDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 395
    iput-object v3, p0, Lcom/android/settings/DrivingModeSettings;->mDrivingModeOnDialog:Landroid/app/AlertDialog;

    .line 398
    :cond_1
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 399
    return-void

    .line 385
    :cond_2
    iget-object v0, p0, Lcom/android/settings/DrivingModeSettings;->mActionBarSwitch:Landroid/widget/Switch;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setEnabled(Z)V

    goto :goto_0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 7
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 404
    iget-boolean v5, p0, Lcom/android/settings/DrivingModeSettings;->mOpenDetailMenu:Z

    if-eqz v5, :cond_0

    .line 405
    sget v5, Lcom/android/settings/DrivingModeSettings;->mSettingValue:I

    const/4 v6, -0x1

    if-eq v5, v6, :cond_0

    .line 406
    sget v5, Lcom/android/settings/DrivingModeSettings;->mSettingValue:I

    if-ne v5, v3, :cond_2

    move v2, v3

    .local v2, "value":Z
    :goto_0
    move-object v0, p2

    .line 407
    check-cast v0, Landroid/preference/CheckBoxPreference;

    .line 408
    .local v0, "checkBoxStatePreference":Landroid/preference/CheckBoxPreference;
    invoke-virtual {p0}, Lcom/android/settings/DrivingModeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "driving_mode_on"

    invoke-static {v5, v6, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-eqz v5, :cond_3

    .line 410
    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 418
    .end local v0    # "checkBoxStatePreference":Landroid/preference/CheckBoxPreference;
    .end local v2    # "value":Z
    :cond_0
    :goto_1
    invoke-virtual {p0}, Lcom/android/settings/DrivingModeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 420
    .local v1, "cr":Landroid/content/ContentResolver;
    iget-object v5, p0, Lcom/android/settings/DrivingModeSettings;->mIncomingCallNotification:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 421
    const-string v6, "driving_mode_incoming_call_notification"

    iget-object v5, p0, Lcom/android/settings/DrivingModeSettings;->mIncomingCallNotification:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_5

    move v5, v3

    :goto_2
    invoke-static {v1, v6, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 450
    :cond_1
    :goto_3
    invoke-static {v1}, Lcom/android/settings/DrivingModeSettings;->areAllDrivingModeOptionsDisabled(Landroid/content/ContentResolver;)Z

    move-result v5

    if-eqz v5, :cond_16

    .line 451
    iget-object v3, p0, Lcom/android/settings/DrivingModeSettings;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v3, v4}, Landroid/widget/Switch;->setChecked(Z)V

    .line 452
    invoke-virtual {p0}, Lcom/android/settings/DrivingModeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const v5, 0x7f0a0d99

    invoke-static {v3, v5, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 457
    :goto_4
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v3

    return v3

    .end local v1    # "cr":Landroid/content/ContentResolver;
    :cond_2
    move v2, v4

    .line 406
    goto :goto_0

    .line 412
    .restart local v0    # "checkBoxStatePreference":Landroid/preference/CheckBoxPreference;
    .restart local v2    # "value":Z
    :cond_3
    if-nez v2, :cond_4

    move v5, v3

    :goto_5
    invoke-virtual {v0, v5}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_1

    :cond_4
    move v5, v4

    goto :goto_5

    .end local v0    # "checkBoxStatePreference":Landroid/preference/CheckBoxPreference;
    .end local v2    # "value":Z
    .restart local v1    # "cr":Landroid/content/ContentResolver;
    :cond_5
    move v5, v4

    .line 421
    goto :goto_2

    .line 423
    :cond_6
    iget-object v5, p0, Lcom/android/settings/DrivingModeSettings;->mChatonNotification:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 424
    const-string v6, "driving_mode_chaton_call_notification"

    iget-object v5, p0, Lcom/android/settings/DrivingModeSettings;->mChatonNotification:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_7

    move v5, v3

    :goto_6
    invoke-static {v1, v6, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_3

    :cond_7
    move v5, v4

    goto :goto_6

    .line 426
    :cond_8
    iget-object v5, p0, Lcom/android/settings/DrivingModeSettings;->mAirCallAccept:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 427
    const-string v6, "driving_mode_air_call_accept"

    iget-object v5, p0, Lcom/android/settings/DrivingModeSettings;->mAirCallAccept:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_9

    move v5, v3

    :goto_7
    invoke-static {v1, v6, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 429
    iget-object v5, p0, Lcom/android/settings/DrivingModeSettings;->mAirCallAccept:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v5

    invoke-direct {p0, v5}, Lcom/android/settings/DrivingModeSettings;->EnablingAirCallAccept(Z)V

    goto :goto_3

    :cond_9
    move v5, v4

    .line 427
    goto :goto_7

    .line 430
    :cond_a
    iget-object v5, p0, Lcom/android/settings/DrivingModeSettings;->mMessageNotification:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 431
    const-string v6, "driving_mode_message_notification"

    iget-object v5, p0, Lcom/android/settings/DrivingModeSettings;->mMessageNotification:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_b

    move v5, v3

    :goto_8
    invoke-static {v1, v6, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_3

    :cond_b
    move v5, v4

    goto :goto_8

    .line 433
    :cond_c
    iget-object v5, p0, Lcom/android/settings/DrivingModeSettings;->mEmailNotification:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_e

    .line 434
    const-string v6, "driving_mode_email_notification"

    iget-object v5, p0, Lcom/android/settings/DrivingModeSettings;->mEmailNotification:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_d

    move v5, v3

    :goto_9
    invoke-static {v1, v6, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_3

    :cond_d
    move v5, v4

    goto :goto_9

    .line 436
    :cond_e
    iget-object v5, p0, Lcom/android/settings/DrivingModeSettings;->mVoiceMailNotification:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_10

    .line 437
    const-string v6, "driving_mode_voice_mail_notification"

    iget-object v5, p0, Lcom/android/settings/DrivingModeSettings;->mVoiceMailNotification:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_f

    move v5, v3

    :goto_a
    invoke-static {v1, v6, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_3

    :cond_f
    move v5, v4

    goto :goto_a

    .line 439
    :cond_10
    iget-object v5, p0, Lcom/android/settings/DrivingModeSettings;->mAlarmNotification:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_12

    .line 440
    const-string v6, "driving_mode_alarm_notification"

    iget-object v5, p0, Lcom/android/settings/DrivingModeSettings;->mAlarmNotification:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_11

    move v5, v3

    :goto_b
    invoke-static {v1, v6, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_3

    :cond_11
    move v5, v4

    goto :goto_b

    .line 442
    :cond_12
    iget-object v5, p0, Lcom/android/settings/DrivingModeSettings;->mScheduleNotification:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_14

    .line 443
    const-string v6, "driving_mode_schedule_notification"

    iget-object v5, p0, Lcom/android/settings/DrivingModeSettings;->mScheduleNotification:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_13

    move v5, v3

    :goto_c
    invoke-static {v1, v6, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_3

    :cond_13
    move v5, v4

    goto :goto_c

    .line 445
    :cond_14
    iget-object v5, p0, Lcom/android/settings/DrivingModeSettings;->mUnlockScreenContents:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 446
    const-string v6, "driving_mode_unlock_screen_contents"

    iget-object v5, p0, Lcom/android/settings/DrivingModeSettings;->mUnlockScreenContents:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_15

    move v5, v3

    :goto_d
    invoke-static {v1, v6, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_3

    :cond_15
    move v5, v4

    goto :goto_d

    .line 454
    :cond_16
    iget-object v4, p0, Lcom/android/settings/DrivingModeSettings;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v4, v3}, Landroid/widget/Switch;->setEnabled(Z)V

    goto/16 :goto_4
.end method

.method public onResume()V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 312
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 314
    invoke-direct {p0}, Lcom/android/settings/DrivingModeSettings;->updateState()V

    .line 316
    iget-object v0, p0, Lcom/android/settings/DrivingModeSettings;->mIncomingCallNotification:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_0

    .line 317
    iget-object v3, p0, Lcom/android/settings/DrivingModeSettings;->mIncomingCallNotification:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/DrivingModeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "driving_mode_incoming_call_notification"

    invoke-static {v0, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_7

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 321
    :cond_0
    iget-object v0, p0, Lcom/android/settings/DrivingModeSettings;->mChatonNotification:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_1

    .line 322
    iget-object v3, p0, Lcom/android/settings/DrivingModeSettings;->mChatonNotification:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/DrivingModeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "driving_mode_chaton_call_notification"

    invoke-static {v0, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_8

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 326
    :cond_1
    iget-object v0, p0, Lcom/android/settings/DrivingModeSettings;->mAirCallAccept:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_2

    .line 327
    iget-object v3, p0, Lcom/android/settings/DrivingModeSettings;->mAirCallAccept:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/DrivingModeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "driving_mode_air_call_accept"

    invoke-static {v0, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_9

    move v0, v1

    :goto_2
    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 331
    :cond_2
    iget-object v0, p0, Lcom/android/settings/DrivingModeSettings;->mMessageNotification:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_3

    .line 332
    iget-object v3, p0, Lcom/android/settings/DrivingModeSettings;->mMessageNotification:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/DrivingModeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "driving_mode_message_notification"

    invoke-static {v0, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_a

    move v0, v1

    :goto_3
    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 336
    :cond_3
    iget-object v3, p0, Lcom/android/settings/DrivingModeSettings;->mEmailNotification:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/DrivingModeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "driving_mode_email_notification"

    invoke-static {v0, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_b

    move v0, v1

    :goto_4
    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 339
    iget-object v0, p0, Lcom/android/settings/DrivingModeSettings;->mVoiceMailNotification:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_4

    .line 340
    iget-object v3, p0, Lcom/android/settings/DrivingModeSettings;->mVoiceMailNotification:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/DrivingModeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "driving_mode_voice_mail_notification"

    invoke-static {v0, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_c

    move v0, v1

    :goto_5
    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 344
    :cond_4
    iget-object v0, p0, Lcom/android/settings/DrivingModeSettings;->mAlarmNotification:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_5

    .line 345
    iget-object v3, p0, Lcom/android/settings/DrivingModeSettings;->mAlarmNotification:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/DrivingModeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "driving_mode_alarm_notification"

    invoke-static {v0, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_d

    move v0, v1

    :goto_6
    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 349
    :cond_5
    iget-object v3, p0, Lcom/android/settings/DrivingModeSettings;->mScheduleNotification:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/DrivingModeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "driving_mode_schedule_notification"

    invoke-static {v0, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_e

    move v0, v1

    :goto_7
    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 352
    iget-object v0, p0, Lcom/android/settings/DrivingModeSettings;->mUnlockScreenContents:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/DrivingModeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "driving_mode_unlock_screen_contents"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_f

    :goto_8
    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 355
    sget-object v0, Lcom/android/settings/DrivingModeSettings;->sSettingsObserver:Lcom/android/settings/DrivingModeSettings$SettingsObserver;

    if-nez v0, :cond_6

    .line 356
    new-instance v0, Lcom/android/settings/DrivingModeSettings$SettingsObserver;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-virtual {p0}, Lcom/android/settings/DrivingModeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lcom/android/settings/DrivingModeSettings$SettingsObserver;-><init>(Lcom/android/settings/DrivingModeSettings;Landroid/os/Handler;Landroid/content/Context;)V

    sput-object v0, Lcom/android/settings/DrivingModeSettings;->sSettingsObserver:Lcom/android/settings/DrivingModeSettings$SettingsObserver;

    .line 357
    sget-object v0, Lcom/android/settings/DrivingModeSettings;->sSettingsObserver:Lcom/android/settings/DrivingModeSettings$SettingsObserver;

    invoke-virtual {v0}, Lcom/android/settings/DrivingModeSettings$SettingsObserver;->startObserving()V

    .line 360
    :cond_6
    return-void

    :cond_7
    move v0, v2

    .line 317
    goto/16 :goto_0

    :cond_8
    move v0, v2

    .line 322
    goto/16 :goto_1

    :cond_9
    move v0, v2

    .line 327
    goto/16 :goto_2

    :cond_a
    move v0, v2

    .line 332
    goto/16 :goto_3

    :cond_b
    move v0, v2

    .line 336
    goto :goto_4

    :cond_c
    move v0, v2

    .line 340
    goto :goto_5

    :cond_d
    move v0, v2

    .line 345
    goto :goto_6

    :cond_e
    move v0, v2

    .line 349
    goto :goto_7

    :cond_f
    move v1, v2

    .line 352
    goto :goto_8
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 303
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onStart()V

    .line 304
    iget-object v0, p0, Lcom/android/settings/DrivingModeSettings;->mActionBarLayout:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 305
    iget-object v0, p0, Lcom/android/settings/DrivingModeSettings;->mActionBarLayout:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 306
    invoke-virtual {p0}, Lcom/android/settings/DrivingModeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 308
    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 364
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onStop()V

    .line 366
    iget-object v0, p0, Lcom/android/settings/DrivingModeSettings;->mActionBarLayout:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 367
    iget-object v0, p0, Lcom/android/settings/DrivingModeSettings;->mActionBarLayout:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 368
    invoke-virtual {p0}, Lcom/android/settings/DrivingModeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 370
    :cond_0
    return-void
.end method

.method public showDrivingModeOnDialog()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 547
    iget-object v6, p0, Lcom/android/settings/DrivingModeSettings;->mDrivingModeOnDialog:Landroid/app/AlertDialog;

    if-eqz v6, :cond_0

    .line 548
    iget-object v6, p0, Lcom/android/settings/DrivingModeSettings;->mDrivingModeOnDialog:Landroid/app/AlertDialog;

    invoke-virtual {v6}, Landroid/app/AlertDialog;->dismiss()V

    .line 549
    iput-object v9, p0, Lcom/android/settings/DrivingModeSettings;->mDrivingModeOnDialog:Landroid/app/AlertDialog;

    .line 552
    :cond_0
    iget-object v6, p0, Lcom/android/settings/DrivingModeSettings;->mContext:Landroid/content/Context;

    const-string v7, "layout_inflater"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    .line 554
    .local v2, "inflater":Landroid/view/LayoutInflater;
    const v6, 0x7f040087

    invoke-virtual {v2, v6, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 555
    .local v3, "layout":Landroid/view/View;
    const v6, 0x7f10016f

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 556
    .local v0, "checkBox":Landroid/widget/CheckBox;
    new-instance v6, Lcom/android/settings/DrivingModeSettings$2;

    invoke-direct {v6, p0}, Lcom/android/settings/DrivingModeSettings$2;-><init>(Lcom/android/settings/DrivingModeSettings;)V

    invoke-virtual {v0, v6}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 560
    const v6, 0x7f10016e

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 561
    .local v4, "message":Landroid/widget/TextView;
    const/4 v1, 0x0

    .line 562
    .local v1, "drivingModeText":Ljava/lang/String;
    const-string v6, "p4notelteusc"

    const-string v7, "ro.product.name"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 563
    iget-object v6, p0, Lcom/android/settings/DrivingModeSettings;->mContext:Landroid/content/Context;

    const v7, 0x7f0a0d9d

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 566
    :goto_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/settings/DrivingModeSettings;->mContext:Landroid/content/Context;

    const v8, 0x7f0a0d9c

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 567
    .local v5, "messageString":Ljava/lang/String;
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 569
    new-instance v6, Landroid/app/AlertDialog$Builder;

    iget-object v7, p0, Lcom/android/settings/DrivingModeSettings;->mContext:Landroid/content/Context;

    invoke-direct {v6, v7}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v7, 0x7f0a0d86

    invoke-virtual {v6, v7}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    const v7, 0x104000a

    invoke-virtual {v6, v7, v9}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    invoke-virtual {v6, v3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings/DrivingModeSettings;->mDrivingModeOnDialog:Landroid/app/AlertDialog;

    .line 572
    iget-object v6, p0, Lcom/android/settings/DrivingModeSettings;->mDrivingModeOnDialog:Landroid/app/AlertDialog;

    invoke-virtual {v6}, Landroid/app/AlertDialog;->show()V

    .line 573
    iget-object v6, p0, Lcom/android/settings/DrivingModeSettings;->mDrivingModeOnDialog:Landroid/app/AlertDialog;

    new-instance v7, Lcom/android/settings/DrivingModeSettings$3;

    invoke-direct {v7, p0, v0}, Lcom/android/settings/DrivingModeSettings$3;-><init>(Lcom/android/settings/DrivingModeSettings;Landroid/widget/CheckBox;)V

    invoke-virtual {v6, v7}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 584
    return-void

    .line 565
    .end local v5    # "messageString":Ljava/lang/String;
    :cond_1
    iget-object v6, p0, Lcom/android/settings/DrivingModeSettings;->mContext:Landroid/content/Context;

    const v7, 0x7f0a0d9b

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method
