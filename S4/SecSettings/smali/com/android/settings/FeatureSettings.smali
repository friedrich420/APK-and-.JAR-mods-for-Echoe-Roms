.class public Lcom/android/settings/FeatureSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "FeatureSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# static fields
.field private static mPackageName:[Ljava/lang/String;


# instance fields
.field private inflater:Landroid/view/LayoutInflater;

.field private mAdapt:Landroid/preference/SwitchPreferenceScreen;

.field private mAirMotion:Landroid/preference/SwitchPreferenceScreen;

.field private mAirView:Landroid/preference/SwitchPreferenceScreen;

.field private mEasyMode:Landroid/preference/SwitchPreferenceScreen;

.field private mEnabler:Lcom/android/settings/nfc/SBeamEnabler;

.field private mGuideDialog:Landroid/app/AlertDialog;

.field private mMulti:Landroid/preference/SwitchPreferenceScreen;

.field private mMultiUser:Landroid/preference/Preference;

.field private mOPMode:Landroid/preference/SwitchPreferenceScreen;

.field private mPm:Landroid/content/pm/PackageManager;

.field mResolver:Landroid/content/ContentResolver;

.field private mSBeam:Landroid/preference/SwitchPreferenceScreen;

.field private mSmartBlock:Landroid/preference/SwitchPreferenceScreen;

.field private mSmartPause:Landroid/preference/SwitchPreferenceScreen;

.field private mSmartScroll:Landroid/preference/SwitchPreferenceScreen;

.field private mSmartStay:Landroid/preference/SwitchPreferenceScreen;

.field private mSupportFolderType:Z

.field protected mSwitchUncheckHandler:Landroid/os/Handler;

.field private mTalkbackDisableDialog:Landroid/app/AlertDialog;

.field private mVoiceCmd:Landroid/preference/SwitchPreferenceScreen;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 105
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "com.sec.android.gallery3d"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "com.sec.android.app.camera"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "com.sec.android.app.sbrowser"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "com.samsung.everglades.video"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "tv.peel.samsung.app"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "com.sec.readershub"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "com.google.android.apps.books"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/settings/FeatureSettings;->mPackageName:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 72
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 99
    iput-object v0, p0, Lcom/android/settings/FeatureSettings;->mEnabler:Lcom/android/settings/nfc/SBeamEnabler;

    .line 101
    iput-object v0, p0, Lcom/android/settings/FeatureSettings;->mGuideDialog:Landroid/app/AlertDialog;

    .line 102
    iput-object v0, p0, Lcom/android/settings/FeatureSettings;->mTalkbackDisableDialog:Landroid/app/AlertDialog;

    .line 115
    new-instance v0, Lcom/android/settings/FeatureSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings/FeatureSettings$1;-><init>(Lcom/android/settings/FeatureSettings;)V

    iput-object v0, p0, Lcom/android/settings/FeatureSettings;->mSwitchUncheckHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/FeatureSettings;)Landroid/preference/SwitchPreferenceScreen;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/FeatureSettings;

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/settings/FeatureSettings;->mAirMotion:Landroid/preference/SwitchPreferenceScreen;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/FeatureSettings;)Landroid/preference/SwitchPreferenceScreen;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/FeatureSettings;

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/settings/FeatureSettings;->mAirView:Landroid/preference/SwitchPreferenceScreen;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/FeatureSettings;)Landroid/preference/SwitchPreferenceScreen;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/FeatureSettings;

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/settings/FeatureSettings;->mSmartStay:Landroid/preference/SwitchPreferenceScreen;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/FeatureSettings;)Landroid/preference/SwitchPreferenceScreen;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/FeatureSettings;

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/settings/FeatureSettings;->mSmartPause:Landroid/preference/SwitchPreferenceScreen;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings/FeatureSettings;)Landroid/preference/SwitchPreferenceScreen;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/FeatureSettings;

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/settings/FeatureSettings;->mSmartScroll:Landroid/preference/SwitchPreferenceScreen;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/settings/FeatureSettings;)Landroid/app/AlertDialog;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/FeatureSettings;

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/settings/FeatureSettings;->mGuideDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/settings/FeatureSettings;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/FeatureSettings;
    .param p1, "x1"    # Z

    .prologue
    .line 72
    invoke-direct {p0, p1}, Lcom/android/settings/FeatureSettings;->turnOnEasyMode(Z)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/settings/FeatureSettings;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/FeatureSettings;
    .param p1, "x1"    # Z

    .prologue
    .line 72
    invoke-direct {p0, p1}, Lcom/android/settings/FeatureSettings;->turnOnOPMode(Z)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/settings/FeatureSettings;)Landroid/preference/SwitchPreferenceScreen;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/FeatureSettings;

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/settings/FeatureSettings;->mMulti:Landroid/preference/SwitchPreferenceScreen;

    return-object v0
.end method

.method private initUI()V
    .locals 13

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 174
    invoke-virtual {p0}, Lcom/android/settings/FeatureSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    iput-object v8, p0, Lcom/android/settings/FeatureSettings;->mResolver:Landroid/content/ContentResolver;

    .line 176
    invoke-static {}, Lcom/android/settings/Utils;->isAutoAirViewSupported()Z

    move-result v8

    if-eqz v8, :cond_13

    .line 177
    iget-object v11, p0, Lcom/android/settings/FeatureSettings;->mAirView:Landroid/preference/SwitchPreferenceScreen;

    iget-object v8, p0, Lcom/android/settings/FeatureSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v12, "air_view_master_onoff"

    invoke-static {v8, v12, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    if-ne v8, v9, :cond_12

    move v8, v9

    :goto_0
    invoke-virtual {v11, v8}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 181
    :goto_1
    iget-object v11, p0, Lcom/android/settings/FeatureSettings;->mAirMotion:Landroid/preference/SwitchPreferenceScreen;

    iget-object v8, p0, Lcom/android/settings/FeatureSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v12, "air_motion_engine"

    invoke-static {v8, v12, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    if-ne v8, v9, :cond_15

    move v8, v9

    :goto_2
    invoke-virtual {v11, v8}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 182
    iget-object v11, p0, Lcom/android/settings/FeatureSettings;->mVoiceCmd:Landroid/preference/SwitchPreferenceScreen;

    iget-object v8, p0, Lcom/android/settings/FeatureSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v12, "voice_input_control"

    invoke-static {v8, v12, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    if-ne v8, v9, :cond_16

    move v8, v9

    :goto_3
    invoke-virtual {v11, v8}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 183
    iget-object v11, p0, Lcom/android/settings/FeatureSettings;->mSmartStay:Landroid/preference/SwitchPreferenceScreen;

    iget-object v8, p0, Lcom/android/settings/FeatureSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v12, "intelligent_sleep_mode"

    invoke-static {v8, v12, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    if-ne v8, v9, :cond_17

    move v8, v9

    :goto_4
    invoke-virtual {v11, v8}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 184
    iget-object v11, p0, Lcom/android/settings/FeatureSettings;->mSmartPause:Landroid/preference/SwitchPreferenceScreen;

    iget-object v8, p0, Lcom/android/settings/FeatureSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v12, "smart_pause"

    invoke-static {v8, v12, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    if-ne v8, v9, :cond_18

    move v8, v9

    :goto_5
    invoke-virtual {v11, v8}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 185
    iget-object v11, p0, Lcom/android/settings/FeatureSettings;->mSmartScroll:Landroid/preference/SwitchPreferenceScreen;

    iget-object v8, p0, Lcom/android/settings/FeatureSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v12, "smart_scroll"

    invoke-static {v8, v12, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    if-ne v8, v9, :cond_19

    move v8, v9

    :goto_6
    invoke-virtual {v11, v8}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 186
    iget-object v11, p0, Lcom/android/settings/FeatureSettings;->mEasyMode:Landroid/preference/SwitchPreferenceScreen;

    iget-object v8, p0, Lcom/android/settings/FeatureSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v12, "easy_mode_switch"

    invoke-static {v8, v12, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    if-nez v8, :cond_1a

    move v8, v9

    :goto_7
    invoke-virtual {v11, v8}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 187
    iget-object v11, p0, Lcom/android/settings/FeatureSettings;->mSmartBlock:Landroid/preference/SwitchPreferenceScreen;

    iget-object v8, p0, Lcom/android/settings/FeatureSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v12, "key_spam_smart"

    invoke-static {v8, v12, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    if-ne v8, v9, :cond_1b

    move v8, v9

    :goto_8
    invoke-virtual {v11, v8}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 188
    iget-object v11, p0, Lcom/android/settings/FeatureSettings;->mAdapt:Landroid/preference/SwitchPreferenceScreen;

    iget-object v8, p0, Lcom/android/settings/FeatureSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v12, "screen_mode_automatic_setting"

    invoke-static {v8, v12, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    if-ne v8, v9, :cond_1c

    move v8, v9

    :goto_9
    invoke-virtual {v11, v8}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 190
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v8

    const-string v11, "CscFeature_Setting_ConfigOpeartorHomeMode"

    invoke-virtual {v8, v11}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v11, "teasymode"

    invoke-virtual {v8, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 191
    iget-object v8, p0, Lcom/android/settings/FeatureSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v11, "op_mode_switch"

    invoke-static {v8, v11, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    .line 193
    .local v5, "mOPModestate":I
    if-ne v5, v9, :cond_0

    .line 194
    iget-object v8, p0, Lcom/android/settings/FeatureSettings;->mEasyMode:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v8, v10}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 195
    :cond_0
    iget-object v11, p0, Lcom/android/settings/FeatureSettings;->mOPMode:Landroid/preference/SwitchPreferenceScreen;

    if-ne v5, v9, :cond_1d

    move v8, v9

    :goto_a
    invoke-virtual {v11, v8}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 196
    iget-object v8, p0, Lcom/android/settings/FeatureSettings;->mOPMode:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v8, p0}, Landroid/preference/SwitchPreferenceScreen;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 197
    iget-object v8, p0, Lcom/android/settings/FeatureSettings;->mOPMode:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v8, p0}, Landroid/preference/SwitchPreferenceScreen;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 199
    .end local v5    # "mOPModestate":I
    :cond_1
    iget-object v8, p0, Lcom/android/settings/FeatureSettings;->mMulti:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {p0}, Lcom/android/settings/FeatureSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "multi_window_enabled"

    invoke-static {v11, v12, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v11

    if-ne v11, v9, :cond_1e

    :goto_b
    invoke-virtual {v8, v9}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 201
    iget-object v8, p0, Lcom/android/settings/FeatureSettings;->mSBeam:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v8, p0}, Landroid/preference/SwitchPreferenceScreen;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 203
    iget-object v8, p0, Lcom/android/settings/FeatureSettings;->mAirView:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v8, p0}, Landroid/preference/SwitchPreferenceScreen;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 204
    iget-object v8, p0, Lcom/android/settings/FeatureSettings;->mAirView:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v8, p0}, Landroid/preference/SwitchPreferenceScreen;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 205
    iget-object v8, p0, Lcom/android/settings/FeatureSettings;->mAirMotion:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v8, p0}, Landroid/preference/SwitchPreferenceScreen;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 206
    iget-object v8, p0, Lcom/android/settings/FeatureSettings;->mAirMotion:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v8, p0}, Landroid/preference/SwitchPreferenceScreen;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 207
    iget-object v8, p0, Lcom/android/settings/FeatureSettings;->mVoiceCmd:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v8, p0}, Landroid/preference/SwitchPreferenceScreen;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 208
    iget-object v8, p0, Lcom/android/settings/FeatureSettings;->mVoiceCmd:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v8, p0}, Landroid/preference/SwitchPreferenceScreen;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 209
    iget-object v8, p0, Lcom/android/settings/FeatureSettings;->mSmartStay:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v8, p0}, Landroid/preference/SwitchPreferenceScreen;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 210
    iget-object v8, p0, Lcom/android/settings/FeatureSettings;->mSmartStay:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v8, p0}, Landroid/preference/SwitchPreferenceScreen;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 211
    iget-object v8, p0, Lcom/android/settings/FeatureSettings;->mSmartPause:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v8, p0}, Landroid/preference/SwitchPreferenceScreen;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 212
    iget-object v8, p0, Lcom/android/settings/FeatureSettings;->mSmartPause:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v8, p0}, Landroid/preference/SwitchPreferenceScreen;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 213
    iget-object v8, p0, Lcom/android/settings/FeatureSettings;->mSmartScroll:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v8, p0}, Landroid/preference/SwitchPreferenceScreen;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 214
    iget-object v8, p0, Lcom/android/settings/FeatureSettings;->mSmartScroll:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v8, p0}, Landroid/preference/SwitchPreferenceScreen;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 215
    iget-object v8, p0, Lcom/android/settings/FeatureSettings;->mEasyMode:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v8, p0}, Landroid/preference/SwitchPreferenceScreen;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 216
    iget-object v8, p0, Lcom/android/settings/FeatureSettings;->mEasyMode:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v8, p0}, Landroid/preference/SwitchPreferenceScreen;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 217
    iget-object v8, p0, Lcom/android/settings/FeatureSettings;->mSmartBlock:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v8, p0}, Landroid/preference/SwitchPreferenceScreen;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 218
    iget-object v8, p0, Lcom/android/settings/FeatureSettings;->mSmartBlock:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v8, p0}, Landroid/preference/SwitchPreferenceScreen;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 219
    iget-object v8, p0, Lcom/android/settings/FeatureSettings;->mAdapt:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v8, p0}, Landroid/preference/SwitchPreferenceScreen;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 220
    iget-object v8, p0, Lcom/android/settings/FeatureSettings;->mAdapt:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v8, p0}, Landroid/preference/SwitchPreferenceScreen;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 221
    iget-object v8, p0, Lcom/android/settings/FeatureSettings;->mMulti:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v8, p0}, Landroid/preference/SwitchPreferenceScreen;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 222
    iget-object v8, p0, Lcom/android/settings/FeatureSettings;->mMulti:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v8, p0}, Landroid/preference/SwitchPreferenceScreen;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 223
    iget-object v8, p0, Lcom/android/settings/FeatureSettings;->mMultiUser:Landroid/preference/Preference;

    invoke-virtual {v8, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 225
    invoke-virtual {p0}, Lcom/android/settings/FeatureSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v6

    .line 226
    .local v6, "ps":Landroid/preference/PreferenceScreen;
    invoke-virtual {p0}, Lcom/android/settings/FeatureSettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-static {v8}, Lcom/android/settings/nfc/SBeamEnabler;->isSBeamSupported(Landroid/content/Context;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 227
    iget-object v8, p0, Lcom/android/settings/FeatureSettings;->mSBeam:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v6, v8}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 229
    :cond_2
    const-string v8, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_FINGER_AIR_VIEW"

    invoke-static {v8}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_3

    .line 230
    iget-object v8, p0, Lcom/android/settings/FeatureSettings;->mAirView:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v6, v8}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 232
    :cond_3
    const-string v8, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_AIR_MOTION"

    invoke-static {v8}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_4

    .line 233
    iget-object v8, p0, Lcom/android/settings/FeatureSettings;->mAirMotion:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v6, v8}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 238
    :cond_4
    const-string v8, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_EASY_MODE"

    invoke-static {v8}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-virtual {p0}, Lcom/android/settings/FeatureSettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-static {v8}, Lcom/android/settings/Utils;->hasDCMhome(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 239
    :cond_5
    iget-object v8, p0, Lcom/android/settings/FeatureSettings;->mEasyMode:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v6, v8}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 241
    :cond_6
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v8

    const-string v9, "CscFeature_Setting_ConfigOpeartorHomeMode"

    invoke-virtual {v8, v9}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "teasymode"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_7

    .line 242
    iget-object v8, p0, Lcom/android/settings/FeatureSettings;->mOPMode:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v6, v8}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 244
    :cond_7
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    .line 245
    .local v1, "cscFeature":Lcom/sec/android/app/CscFeature;
    const-string v8, "CscFeature_Setting_EnableMenuBlockCallMsg"

    invoke-virtual {v1, v8}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v3

    .line 246
    .local v3, "enableBlackListForCHN":Z
    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v7

    .line 247
    .local v7, "salesCode":Ljava/lang/String;
    if-eqz v3, :cond_8

    const-string v8, "CTC"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 248
    :cond_8
    iget-object v8, p0, Lcom/android/settings/FeatureSettings;->mSmartBlock:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v6, v8}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 250
    :cond_9
    invoke-static {}, Lcom/android/settings/Utils;->isSupportStart_J_project()Z

    move-result v8

    if-nez v8, :cond_a

    .line 251
    iget-object v8, p0, Lcom/android/settings/FeatureSettings;->mSmartPause:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v6, v8}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 252
    iget-object v8, p0, Lcom/android/settings/FeatureSettings;->mSmartScroll:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v6, v8}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 254
    :cond_a
    invoke-static {}, Lcom/android/settings/Utils;->isSupportStart_J_project()Z

    move-result v8

    if-nez v8, :cond_b

    .line 255
    iget-object v8, p0, Lcom/android/settings/FeatureSettings;->mAdapt:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v6, v8}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 258
    :cond_b
    invoke-virtual {p0}, Lcom/android/settings/FeatureSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v8

    iget-object v9, p0, Lcom/android/settings/FeatureSettings;->mAdapt:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v8, v9}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 261
    invoke-virtual {p0}, Lcom/android/settings/FeatureSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v8

    iget-object v9, p0, Lcom/android/settings/FeatureSettings;->mSmartScroll:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v8, v9}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 268
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/FeatureSettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    const-string v9, "com.vlingo.midas"

    const/4 v10, 0x1

    invoke-virtual {v8, v9, v10}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 272
    :goto_c
    iget-object v8, p0, Lcom/android/settings/FeatureSettings;->mVoiceCmd:Landroid/preference/SwitchPreferenceScreen;

    if-eqz v8, :cond_c

    const-string v8, "SEC_FLOATING_FEATURE_COMMON_SUPPORT_SVOICE"

    invoke-static {v8}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_c

    .line 273
    iget-object v8, p0, Lcom/android/settings/FeatureSettings;->mVoiceCmd:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v6, v8}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 276
    :cond_c
    new-instance v4, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;

    invoke-direct {v4}, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;-><init>()V

    .line 277
    .local v4, "mBargeInRecognizer":Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;
    iget-object v8, p0, Lcom/android/settings/FeatureSettings;->mVoiceCmd:Landroid/preference/SwitchPreferenceScreen;

    if-eqz v8, :cond_d

    if-eqz v4, :cond_d

    iget-boolean v8, v4, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->isEnableBargeIn:Z

    if-nez v8, :cond_d

    .line 278
    iget-object v8, p0, Lcom/android/settings/FeatureSettings;->mVoiceCmd:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v6, v8}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 281
    :cond_d
    invoke-virtual {p0}, Lcom/android/settings/FeatureSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    const-string v9, "com.sec.feature.multiwindow"

    invoke-virtual {v8, v9}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    .line 282
    .local v0, "UseMultiWindow":Z
    if-eqz v0, :cond_e

    const-string v8, "ATT"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_f

    .line 283
    :cond_e
    invoke-virtual {p0}, Lcom/android/settings/FeatureSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v8

    iget-object v9, p0, Lcom/android/settings/FeatureSettings;->mMulti:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v8, v9}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 286
    :cond_f
    const-string v8, "ATT"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_10

    const-string v8, "ro.product.name"

    invoke-static {v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "lt02"

    invoke-virtual {v8, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_11

    .line 287
    :cond_10
    iget-object v8, p0, Lcom/android/settings/FeatureSettings;->mMultiUser:Landroid/preference/Preference;

    invoke-virtual {v6, v8}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 290
    :cond_11
    return-void

    .end local v0    # "UseMultiWindow":Z
    .end local v1    # "cscFeature":Lcom/sec/android/app/CscFeature;
    .end local v3    # "enableBlackListForCHN":Z
    .end local v4    # "mBargeInRecognizer":Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;
    .end local v6    # "ps":Landroid/preference/PreferenceScreen;
    .end local v7    # "salesCode":Ljava/lang/String;
    :cond_12
    move v8, v10

    .line 177
    goto/16 :goto_0

    .line 179
    :cond_13
    iget-object v11, p0, Lcom/android/settings/FeatureSettings;->mAirView:Landroid/preference/SwitchPreferenceScreen;

    iget-object v8, p0, Lcom/android/settings/FeatureSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v12, "finger_air_view"

    invoke-static {v8, v12, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    if-ne v8, v9, :cond_14

    move v8, v9

    :goto_d
    invoke-virtual {v11, v8}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    goto/16 :goto_1

    :cond_14
    move v8, v10

    goto :goto_d

    :cond_15
    move v8, v10

    .line 181
    goto/16 :goto_2

    :cond_16
    move v8, v10

    .line 182
    goto/16 :goto_3

    :cond_17
    move v8, v10

    .line 183
    goto/16 :goto_4

    :cond_18
    move v8, v10

    .line 184
    goto/16 :goto_5

    :cond_19
    move v8, v10

    .line 185
    goto/16 :goto_6

    :cond_1a
    move v8, v10

    .line 186
    goto/16 :goto_7

    :cond_1b
    move v8, v10

    .line 187
    goto/16 :goto_8

    :cond_1c
    move v8, v10

    .line 188
    goto/16 :goto_9

    .restart local v5    # "mOPModestate":I
    :cond_1d
    move v8, v10

    .line 195
    goto/16 :goto_a

    .end local v5    # "mOPModestate":I
    :cond_1e
    move v9, v10

    .line 199
    goto/16 :goto_b

    .line 269
    .restart local v1    # "cscFeature":Lcom/sec/android/app/CscFeature;
    .restart local v3    # "enableBlackListForCHN":Z
    .restart local v6    # "ps":Landroid/preference/PreferenceScreen;
    .restart local v7    # "salesCode":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 270
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    iget-object v8, p0, Lcom/android/settings/FeatureSettings;->mVoiceCmd:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v6, v8}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_c
.end method

.method private showTalkBackDisableDialog(IILjava/lang/String;)V
    .locals 4
    .param p1, "title_res_id"    # I
    .param p2, "message_res_id"    # I
    .param p3, "key"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 1235
    iget-object v1, p0, Lcom/android/settings/FeatureSettings;->mGuideDialog:Landroid/app/AlertDialog;

    if-eqz v1, :cond_0

    .line 1236
    iget-object v1, p0, Lcom/android/settings/FeatureSettings;->mGuideDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    .line 1237
    iput-object v2, p0, Lcom/android/settings/FeatureSettings;->mGuideDialog:Landroid/app/AlertDialog;

    .line 1240
    :cond_0
    iget-object v1, p0, Lcom/android/settings/FeatureSettings;->mTalkbackDisableDialog:Landroid/app/AlertDialog;

    if-eqz v1, :cond_1

    .line 1241
    iget-object v1, p0, Lcom/android/settings/FeatureSettings;->mTalkbackDisableDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    .line 1242
    iput-object v2, p0, Lcom/android/settings/FeatureSettings;->mTalkbackDisableDialog:Landroid/app/AlertDialog;

    .line 1245
    :cond_1
    move-object v0, p3

    .line 1246
    .local v0, "setting_type":Ljava/lang/String;
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/FeatureSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, p2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x104000a

    new-instance v3, Lcom/android/settings/FeatureSettings$11;

    invoke-direct {v3, p0, v0}, Lcom/android/settings/FeatureSettings$11;-><init>(Lcom/android/settings/FeatureSettings;Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/high16 v2, 0x1040000

    new-instance v3, Lcom/android/settings/FeatureSettings$10;

    invoke-direct {v3, p0, v0}, Lcom/android/settings/FeatureSettings$10;-><init>(Lcom/android/settings/FeatureSettings;Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/FeatureSettings;->mTalkbackDisableDialog:Landroid/app/AlertDialog;

    .line 1317
    iget-object v1, p0, Lcom/android/settings/FeatureSettings;->mTalkbackDisableDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 1319
    iget-object v1, p0, Lcom/android/settings/FeatureSettings;->mTalkbackDisableDialog:Landroid/app/AlertDialog;

    new-instance v2, Lcom/android/settings/FeatureSettings$12;

    invoke-direct {v2, p0, v0}, Lcom/android/settings/FeatureSettings$12;-><init>(Lcom/android/settings/FeatureSettings;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 1340
    return-void
.end method

.method private turnOnEasyMode(Z)V
    .locals 9
    .param p1, "value"    # Z

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1154
    iget-object v4, p0, Lcom/android/settings/FeatureSettings;->mEasyMode:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v4, p1}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 1155
    iget-object v7, p0, Lcom/android/settings/FeatureSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v8, "easy_mode_switch"

    if-eqz p1, :cond_2

    move v4, v5

    :goto_0
    invoke-static {v7, v8, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1157
    if-ne p1, v6, :cond_1

    .line 1158
    iget-object v4, p0, Lcom/android/settings/FeatureSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v7, "smart_scroll"

    invoke-static {v4, v7, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1159
    iget-object v4, p0, Lcom/android/settings/FeatureSettings;->mSmartScroll:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v4, v5}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 1160
    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.sec.SMART_SCROLL_CHANGED"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1161
    .local v3, "smart_scroll_changed":Landroid/content/Intent;
    const-string v4, "isEnable"

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1162
    invoke-virtual {p0}, Lcom/android/settings/FeatureSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 1164
    iget-object v4, p0, Lcom/android/settings/FeatureSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v7, "smart_pause"

    invoke-static {v4, v7, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1165
    iget-object v4, p0, Lcom/android/settings/FeatureSettings;->mSmartPause:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v4, v5}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 1166
    new-instance v2, Landroid/content/Intent;

    const-string v4, "com.sec.SMART_PAUSE_CHANGED"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1167
    .local v2, "smart_pause_changed":Landroid/content/Intent;
    const-string v4, "isEnable"

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1168
    invoke-virtual {p0}, Lcom/android/settings/FeatureSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 1170
    invoke-static {}, Lcom/android/settings/Utils;->isAutoAirViewSupported()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1171
    iget-object v4, p0, Lcom/android/settings/FeatureSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v7, "air_view_master_onoff"

    invoke-static {v4, v7, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1175
    :goto_1
    iget-object v4, p0, Lcom/android/settings/FeatureSettings;->mAirView:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v4, v5}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 1177
    new-instance v0, Landroid/content/Intent;

    const-string v4, "com.sec.gesture.FINGER_AIR_VIEW_SETTINGS_CHANGED"

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1178
    .local v0, "finger_air_view_changed":Landroid/content/Intent;
    const-string v4, "isEnable"

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1179
    invoke-virtual {p0}, Lcom/android/settings/FeatureSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 1181
    iget-object v4, p0, Lcom/android/settings/FeatureSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v7, "multi_window_enabled"

    invoke-static {v4, v7, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1183
    const-string v4, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_OPERATOR_MODE"

    invoke-static {v4}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1184
    iget-object v4, p0, Lcom/android/settings/FeatureSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v7, "op_mode_switch"

    invoke-static {v4, v7, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 1185
    .local v1, "mOPModecurrent":I
    if-ne v1, v6, :cond_0

    .line 1186
    invoke-virtual {p0}, Lcom/android/settings/FeatureSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const v6, 0x7f0a16ee

    invoke-static {v4, v6, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 1188
    :cond_0
    iget-object v4, p0, Lcom/android/settings/FeatureSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v6, "op_mode_switch"

    invoke-static {v4, v6, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1189
    iget-object v4, p0, Lcom/android/settings/FeatureSettings;->mOPMode:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v4, v5}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 1192
    .end local v0    # "finger_air_view_changed":Landroid/content/Intent;
    .end local v1    # "mOPModecurrent":I
    .end local v2    # "smart_pause_changed":Landroid/content/Intent;
    .end local v3    # "smart_scroll_changed":Landroid/content/Intent;
    :cond_1
    return-void

    :cond_2
    move v4, v6

    .line 1155
    goto/16 :goto_0

    .line 1173
    .restart local v2    # "smart_pause_changed":Landroid/content/Intent;
    .restart local v3    # "smart_scroll_changed":Landroid/content/Intent;
    :cond_3
    iget-object v4, p0, Lcom/android/settings/FeatureSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v7, "finger_air_view"

    invoke-static {v4, v7, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1
.end method

.method private turnOnOPMode(Z)V
    .locals 9
    .param p1, "value"    # Z

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 1195
    iget-object v4, p0, Lcom/android/settings/FeatureSettings;->mOPMode:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v4, p1}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 1196
    iget-object v7, p0, Lcom/android/settings/FeatureSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v8, "op_mode_switch"

    if-eqz p1, :cond_1

    move v4, v5

    :goto_0
    invoke-static {v7, v8, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1197
    iget-object v4, p0, Lcom/android/settings/FeatureSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v7, "easy_mode_switch"

    invoke-static {v4, v7, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 1199
    .local v1, "mEasymodecurrent":I
    if-ne p1, v5, :cond_3

    .line 1200
    if-nez v1, :cond_0

    .line 1201
    invoke-virtual {p0}, Lcom/android/settings/FeatureSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const v5, 0x7f0a16d8

    invoke-static {v4, v5, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 1203
    :cond_0
    iget-object v4, p0, Lcom/android/settings/FeatureSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v5, "easy_mode_switch"

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1204
    iget-object v4, p0, Lcom/android/settings/FeatureSettings;->mEasyMode:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v4, v6}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 1205
    iget-object v4, p0, Lcom/android/settings/FeatureSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v5, "smart_scroll"

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1206
    iget-object v4, p0, Lcom/android/settings/FeatureSettings;->mSmartScroll:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v4, v6}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 1207
    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.sec.SMART_SCROLL_CHANGED"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1208
    .local v3, "smart_scroll_changed":Landroid/content/Intent;
    const-string v4, "isEnable"

    invoke-virtual {v3, v4, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1209
    invoke-virtual {p0}, Lcom/android/settings/FeatureSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 1211
    iget-object v4, p0, Lcom/android/settings/FeatureSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v5, "smart_pause"

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1212
    iget-object v4, p0, Lcom/android/settings/FeatureSettings;->mSmartPause:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v4, v6}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 1213
    new-instance v2, Landroid/content/Intent;

    const-string v4, "com.sec.SMART_PAUSE_CHANGED"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1214
    .local v2, "smart_pause_changed":Landroid/content/Intent;
    const-string v4, "isEnable"

    invoke-virtual {v2, v4, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1215
    invoke-virtual {p0}, Lcom/android/settings/FeatureSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 1217
    invoke-static {}, Lcom/android/settings/Utils;->isAutoAirViewSupported()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1218
    iget-object v4, p0, Lcom/android/settings/FeatureSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v5, "air_view_master_onoff"

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1222
    :goto_1
    iget-object v4, p0, Lcom/android/settings/FeatureSettings;->mAirView:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v4, v6}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 1224
    new-instance v0, Landroid/content/Intent;

    const-string v4, "com.sec.gesture.FINGER_AIR_VIEW_SETTINGS_CHANGED"

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1225
    .local v0, "finger_air_view_changed":Landroid/content/Intent;
    const-string v4, "isEnable"

    invoke-virtual {v0, v4, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1226
    invoke-virtual {p0}, Lcom/android/settings/FeatureSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 1228
    iget-object v4, p0, Lcom/android/settings/FeatureSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v5, "multi_window_enabled"

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1232
    .end local v0    # "finger_air_view_changed":Landroid/content/Intent;
    .end local v2    # "smart_pause_changed":Landroid/content/Intent;
    .end local v3    # "smart_scroll_changed":Landroid/content/Intent;
    :goto_2
    return-void

    .end local v1    # "mEasymodecurrent":I
    :cond_1
    move v4, v6

    .line 1196
    goto/16 :goto_0

    .line 1220
    .restart local v1    # "mEasymodecurrent":I
    .restart local v2    # "smart_pause_changed":Landroid/content/Intent;
    .restart local v3    # "smart_scroll_changed":Landroid/content/Intent;
    :cond_2
    iget-object v4, p0, Lcom/android/settings/FeatureSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v5, "finger_air_view"

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    .line 1230
    .end local v2    # "smart_pause_changed":Landroid/content/Intent;
    .end local v3    # "smart_scroll_changed":Landroid/content/Intent;
    :cond_3
    iget-object v4, p0, Lcom/android/settings/FeatureSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v6, "easy_mode_switch"

    invoke-static {v4, v6, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_2
.end method


# virtual methods
.method public makeAdaptDisplayLayout()Landroid/view/View;
    .locals 8

    .prologue
    const/16 v7, 0x8

    .line 887
    const/4 v2, 0x0

    .line 888
    .local v2, "view":Landroid/view/View;
    iget-object v3, p0, Lcom/android/settings/FeatureSettings;->inflater:Landroid/view/LayoutInflater;

    const v4, 0x7f0400b9

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 889
    const v3, 0x7f1001d1

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 891
    .local v1, "helpContent":Landroid/widget/LinearLayout;
    new-instance v0, Lcom/android/settings/HelpItem;

    iget-object v3, p0, Lcom/android/settings/FeatureSettings;->inflater:Landroid/view/LayoutInflater;

    invoke-direct {v0, v3}, Lcom/android/settings/HelpItem;-><init>(Landroid/view/LayoutInflater;)V

    .line 892
    .local v0, "first":Lcom/android/settings/HelpItem;
    invoke-virtual {p0}, Lcom/android/settings/FeatureSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/settings/HelpItem;->changePaddingForPopup(Landroid/content/Context;)V

    .line 893
    invoke-virtual {v0, v7}, Lcom/android/settings/HelpItem;->setTitleVisibility(I)V

    .line 894
    const v3, 0x7f0a0fbf

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {p0}, Lcom/android/settings/FeatureSettings;->makeContentsString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {p0, v3, v4}, Lcom/android/settings/FeatureSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/settings/HelpItem;->setContentText(Ljava/lang/String;)V

    .line 895
    const v3, 0x7f0204bf

    invoke-virtual {v0, v3}, Lcom/android/settings/HelpItem;->setContentImage(I)V

    .line 896
    invoke-virtual {v0, v7}, Lcom/android/settings/HelpItem;->setTitle2Visibility(I)V

    .line 898
    invoke-virtual {v0}, Lcom/android/settings/HelpItem;->getHelpView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 900
    return-object v2
.end method

.method public makeAirMotionLayout()Landroid/view/View;
    .locals 24

    .prologue
    .line 485
    const/16 v18, 0x0

    .line 486
    .local v18, "view":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/FeatureSettings;->inflater:Landroid/view/LayoutInflater;

    move-object/from16 v19, v0

    const v20, 0x7f0400b9

    const/16 v21, 0x0

    invoke-virtual/range {v19 .. v21}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v18

    .line 487
    const v19, 0x7f1001d1

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout;

    .line 489
    .local v6, "helpContent":Landroid/widget/LinearLayout;
    new-instance v4, Lcom/android/settings/HelpItem;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/FeatureSettings;->inflater:Landroid/view/LayoutInflater;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-direct {v4, v0}, Lcom/android/settings/HelpItem;-><init>(Landroid/view/LayoutInflater;)V

    .line 490
    .local v4, "first":Lcom/android/settings/HelpItem;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/FeatureSettings;->getActivity()Landroid/app/Activity;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Lcom/android/settings/HelpItem;->changePaddingForPopup(Landroid/content/Context;)V

    .line 491
    const v19, 0x7f0a125d

    move/from16 v0, v19

    invoke-virtual {v4, v0}, Lcom/android/settings/HelpItem;->setTitleTextWithOutCategory(I)V

    .line 493
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/FeatureSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    .line 494
    .local v14, "res":Landroid/content/res/Resources;
    const v19, 0x7f0a1275

    move/from16 v0, v19

    invoke-virtual {v14, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 495
    .local v11, "part1":Ljava/lang/String;
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v19

    add-int/lit8 v19, v19, -0x1

    move/from16 v0, v19

    invoke-virtual {v11, v0}, Ljava/lang/String;->charAt(I)C

    move-result v19

    const/16 v20, 0x2e

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_0

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v19

    add-int/lit8 v19, v19, -0x1

    move/from16 v0, v19

    invoke-virtual {v11, v0}, Ljava/lang/String;->charAt(I)C

    move-result v19

    const/16 v20, 0x3002

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_d

    .line 496
    :cond_0
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 500
    :goto_0
    const v19, 0x7f0e0010

    move/from16 v0, v19

    invoke-virtual {v14, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v13

    .line 501
    .local v13, "proper_distance":I
    const v19, 0x7f0a1277

    move/from16 v0, v19

    invoke-virtual {v14, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v19

    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    aput-object v22, v20, v21

    invoke-static/range {v19 .. v20}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    .line 502
    .local v12, "part3":Ljava/lang/String;
    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v15

    .line 503
    .local v15, "salesCode":Ljava/lang/String;
    const-string v19, "ATT"

    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_1

    const-string v19, "SPR"

    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_1

    const-string v19, "VZW"

    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_1

    const-string v19, "TMB"

    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_1

    const-string v19, "USC"

    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_1

    const-string v19, "CRI"

    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_1

    const-string v19, "VMU"

    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_1

    const-string v19, "BST"

    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_1

    const-string v19, "XAS"

    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_1

    const-string v19, "TFN"

    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_1

    const-string v19, "XAR"

    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_1

    const-string v19, "CSP"

    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_2

    .line 506
    :cond_1
    const v19, 0x7f0e0011

    move/from16 v0, v19

    invoke-virtual {v14, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v13

    .line 507
    const v19, 0x7f0a1278

    move/from16 v0, v19

    invoke-virtual {v14, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v19

    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    aput-object v22, v20, v21

    invoke-static/range {v19 .. v20}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    .line 509
    :cond_2
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v19

    add-int/lit8 v19, v19, -0x1

    move/from16 v0, v19

    invoke-virtual {v12, v0}, Ljava/lang/String;->charAt(I)C

    move-result v19

    const/16 v20, 0x2e

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_3

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v19

    add-int/lit8 v19, v19, -0x1

    move/from16 v0, v19

    invoke-virtual {v12, v0}, Ljava/lang/String;->charAt(I)C

    move-result v19

    const/16 v20, 0x3002

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_e

    .line 510
    :cond_3
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "\n"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 514
    :goto_1
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const v20, 0x7f0a1276

    move/from16 v0, v20

    invoke-virtual {v14, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 515
    .local v9, "original_str":Ljava/lang/String;
    const-string v19, "ja"

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/FeatureSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v20

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_4

    const-string v19, "hi"

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/FeatureSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v20

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_5

    .line 516
    :cond_4
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const v20, 0x7f0a1275

    move/from16 v0, v20

    invoke-virtual {v14, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const v20, 0x7f0a1277

    move/from16 v0, v20

    invoke-virtual {v14, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v20

    const/16 v21, 0x1

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    const/16 v23, 0x7

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    aput-object v23, v21, v22

    invoke-static/range {v20 .. v21}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "\n"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const v20, 0x7f0a1276

    move/from16 v0, v20

    invoke-virtual {v14, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 520
    :cond_5
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/FeatureSettings;->mSupportFolderType:Z

    move/from16 v19, v0

    if-eqz v19, :cond_6

    .line 521
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const v20, 0x7f0a1276

    move/from16 v0, v20

    invoke-virtual {v14, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const v20, 0x7f0a1bd2

    move/from16 v0, v20

    invoke-virtual {v14, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 523
    :cond_6
    const v19, 0x7f02001f

    move/from16 v0, v19

    invoke-virtual {v14, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-static {v9, v0}, Lcom/android/settings/Utils;->makeStringWithImage(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)Landroid/text/SpannableString;

    move-result-object v8

    .line 524
    .local v8, "message_str":Landroid/text/SpannableString;
    if-eqz v8, :cond_f

    .line 525
    invoke-virtual {v4, v8}, Lcom/android/settings/HelpItem;->setContentText(Landroid/text/SpannableString;)V

    .line 529
    :goto_2
    const v19, 0x7f020615

    move/from16 v0, v19

    invoke-virtual {v4, v0}, Lcom/android/settings/HelpItem;->setContentImage(I)V

    .line 531
    invoke-virtual {v4}, Lcom/android/settings/HelpItem;->getHelpView()Landroid/view/View;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 533
    new-instance v17, Lcom/android/settings/HelpItem;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/FeatureSettings;->inflater:Landroid/view/LayoutInflater;

    move-object/from16 v19, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/settings/HelpItem;-><init>(Landroid/view/LayoutInflater;)V

    .line 534
    .local v17, "third":Lcom/android/settings/HelpItem;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/FeatureSettings;->getActivity()Landroid/app/Activity;

    move-result-object v19

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/settings/HelpItem;->changePaddingForPopup(Landroid/content/Context;)V

    .line 535
    const v19, 0x7f0a1264

    move-object/from16 v0, v17

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/settings/HelpItem;->setTitleTextWithOutCategory(I)V

    .line 536
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const v20, 0x7f0a127e

    move/from16 v0, v20

    invoke-virtual {v14, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "\n\n"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const v20, 0x7f0a1270

    move/from16 v0, v20

    invoke-virtual {v14, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "\n- "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const v20, 0x7f0a12ba

    move/from16 v0, v20

    invoke-virtual {v14, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "\n- "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const v20, 0x7f0a12c3

    move/from16 v0, v20

    invoke-virtual {v14, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 540
    .local v7, "mGuideContent":Ljava/lang/String;
    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Lcom/android/settings/HelpItem;->setContentText(Ljava/lang/String;)V

    .line 541
    const v19, 0x7f020020

    move-object/from16 v0, v17

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/settings/HelpItem;->setContentImage(I)V

    .line 542
    const/16 v19, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/settings/HelpItem;->usePlayButton(Z)V

    .line 543
    const-string v19, "ro.product.device"

    invoke-static/range {v19 .. v19}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 544
    .local v2, "devicename":Ljava/lang/String;
    const-string v19, "ja3g"

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v19

    if-nez v19, :cond_7

    const-string v19, "hlte"

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v19

    if-nez v19, :cond_7

    const-string v19, "jftdd"

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v19

    if-nez v19, :cond_7

    const-string v19, "h3g"

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v19

    if-nez v19, :cond_7

    const-string v19, "jsglte"

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v19

    if-nez v19, :cond_7

    .line 546
    invoke-virtual/range {v17 .. v17}, Lcom/android/settings/HelpItem;->getHelpView()Landroid/view/View;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 549
    :cond_7
    new-instance v16, Lcom/android/settings/HelpItem;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/FeatureSettings;->inflater:Landroid/view/LayoutInflater;

    move-object/from16 v19, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/settings/HelpItem;-><init>(Landroid/view/LayoutInflater;)V

    .line 550
    .local v16, "second":Lcom/android/settings/HelpItem;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/FeatureSettings;->getActivity()Landroid/app/Activity;

    move-result-object v19

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/settings/HelpItem;->changePaddingForPopup(Landroid/content/Context;)V

    .line 551
    const v19, 0x7f0a1266

    move-object/from16 v0, v16

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/settings/HelpItem;->setTitleTextWithOutCategory(I)V

    .line 553
    const/4 v10, 0x0

    .line 554
    .local v10, "packageInfo":Landroid/content/pm/PackageInfo;
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/FeatureSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v19

    const-string v20, "com.samsung.android.snote"

    const/16 v21, 0x5

    invoke-virtual/range {v19 .. v21}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v10

    .line 556
    if-eqz v10, :cond_10

    .line 557
    const-string v19, "FeatureSettings"

    const-string v20, "S note is Installed."

    invoke-static/range {v19 .. v20}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 558
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const v20, 0x7f0a1280

    move/from16 v0, v20

    invoke-virtual {v14, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "\n\n"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const v20, 0x7f0a1270

    move/from16 v0, v20

    invoke-virtual {v14, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "\n- "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const v20, 0x7f0a12cb

    move/from16 v0, v20

    invoke-virtual {v14, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "\n- "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const v20, 0x7f0a12ce

    move/from16 v0, v20

    invoke-virtual {v14, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "\n- "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const v20, 0x7f0a12d1

    move/from16 v0, v20

    invoke-virtual {v14, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "\n- "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const v20, 0x7f0a12d3

    move/from16 v0, v20

    invoke-virtual {v14, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "\n- "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const v20, 0x7f0a12d8

    move/from16 v0, v20

    invoke-virtual {v14, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    .line 585
    :goto_3
    move-object/from16 v0, v16

    invoke-virtual {v0, v7}, Lcom/android/settings/HelpItem;->setContentText(Ljava/lang/String;)V

    .line 586
    const v19, 0x7f020022

    move-object/from16 v0, v16

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/settings/HelpItem;->setContentImage(I)V

    .line 587
    const/16 v19, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/settings/HelpItem;->usePlayButton(Z)V

    .line 588
    invoke-virtual/range {v16 .. v16}, Lcom/android/settings/HelpItem;->getHelpView()Landroid/view/View;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 591
    invoke-static {}, Lcom/android/settings/Utils;->isSettingsUI2013Supported()Z

    move-result v19

    if-nez v19, :cond_8

    invoke-static {}, Lcom/android/settings/Utils;->isChinaModel()Z

    move-result v19

    if-eqz v19, :cond_9

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/FeatureSettings;->getActivity()Landroid/app/Activity;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcom/android/settings/Utils;->isDualFolderType(Landroid/content/Context;)Z

    move-result v19

    if-eqz v19, :cond_9

    :cond_8
    const-string v19, "jflterefreshspr"

    const-string v20, "ro.product.name"

    invoke-static/range {v20 .. v20}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_c

    .line 592
    :cond_9
    new-instance v5, Lcom/android/settings/HelpItem;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/FeatureSettings;->inflater:Landroid/view/LayoutInflater;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-direct {v5, v0}, Lcom/android/settings/HelpItem;-><init>(Landroid/view/LayoutInflater;)V

    .line 593
    .local v5, "fourth":Lcom/android/settings/HelpItem;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/FeatureSettings;->getActivity()Landroid/app/Activity;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v5, v0}, Lcom/android/settings/HelpItem;->changePaddingForPopup(Landroid/content/Context;)V

    .line 594
    const v19, 0x7f0a1283

    move/from16 v0, v19

    invoke-virtual {v14, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 595
    const-string v19, "ATT"

    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_a

    const-string v19, "SPR"

    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_a

    const-string v19, "VZW"

    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_a

    const-string v19, "TMB"

    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_a

    const-string v19, "USC"

    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_a

    const-string v19, "BMC"

    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_a

    const-string v19, "CRI"

    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_a

    const-string v19, "LRA"

    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_a

    const-string v19, "CSP"

    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_a

    const-string v19, "XAR"

    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_a

    const-string v19, "XAC"

    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_b

    .line 597
    :cond_a
    const v19, 0x7f0a1285

    move/from16 v0, v19

    invoke-virtual {v14, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 600
    :cond_b
    const v19, 0x7f0a1268

    move/from16 v0, v19

    invoke-virtual {v5, v0}, Lcom/android/settings/HelpItem;->setTitleTextWithOutCategory(I)V

    .line 601
    invoke-virtual {v5, v7}, Lcom/android/settings/HelpItem;->setContentText(Ljava/lang/String;)V

    .line 602
    const v19, 0x7f02001c

    move/from16 v0, v19

    invoke-virtual {v5, v0}, Lcom/android/settings/HelpItem;->setContentImage(I)V

    .line 603
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v5, v0}, Lcom/android/settings/HelpItem;->usePlayButton(Z)V

    .line 604
    invoke-virtual {v5}, Lcom/android/settings/HelpItem;->getHelpView()Landroid/view/View;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 607
    .end local v5    # "fourth":Lcom/android/settings/HelpItem;
    :cond_c
    return-object v18

    .line 498
    .end local v2    # "devicename":Ljava/lang/String;
    .end local v7    # "mGuideContent":Ljava/lang/String;
    .end local v8    # "message_str":Landroid/text/SpannableString;
    .end local v9    # "original_str":Ljava/lang/String;
    .end local v10    # "packageInfo":Landroid/content/pm/PackageInfo;
    .end local v12    # "part3":Ljava/lang/String;
    .end local v13    # "proper_distance":I
    .end local v15    # "salesCode":Ljava/lang/String;
    .end local v16    # "second":Lcom/android/settings/HelpItem;
    .end local v17    # "third":Lcom/android/settings/HelpItem;
    :cond_d
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ". "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    goto/16 :goto_0

    .line 512
    .restart local v12    # "part3":Ljava/lang/String;
    .restart local v13    # "proper_distance":I
    .restart local v15    # "salesCode":Ljava/lang/String;
    :cond_e
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ".\n"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    goto/16 :goto_1

    .line 527
    .restart local v8    # "message_str":Landroid/text/SpannableString;
    .restart local v9    # "original_str":Ljava/lang/String;
    :cond_f
    const v19, 0x7f0a1274

    move/from16 v0, v19

    invoke-virtual {v4, v0}, Lcom/android/settings/HelpItem;->setContentText(I)V

    goto/16 :goto_2

    .line 566
    .restart local v2    # "devicename":Ljava/lang/String;
    .restart local v7    # "mGuideContent":Ljava/lang/String;
    .restart local v10    # "packageInfo":Landroid/content/pm/PackageInfo;
    .restart local v16    # "second":Lcom/android/settings/HelpItem;
    .restart local v17    # "third":Lcom/android/settings/HelpItem;
    :cond_10
    :try_start_1
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const v20, 0x7f0a1280

    move/from16 v0, v20

    invoke-virtual {v14, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "\n\n"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const v20, 0x7f0a1270

    move/from16 v0, v20

    invoke-virtual {v14, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "\n- "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const v20, 0x7f0a12cb

    move/from16 v0, v20

    invoke-virtual {v14, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "\n- "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const v20, 0x7f0a12ce

    move/from16 v0, v20

    invoke-virtual {v14, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "\n- "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const v20, 0x7f0a12d1

    move/from16 v0, v20

    invoke-virtual {v14, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "\n- "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const v20, 0x7f0a12d3

    move/from16 v0, v20

    invoke-virtual {v14, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "\n- "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const v20, 0x7f0a12d6

    move/from16 v0, v20

    invoke-virtual {v14, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v7

    goto/16 :goto_3

    .line 574
    :catch_0
    move-exception v3

    .line 575
    .local v3, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v3}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 576
    const-string v19, "FeatureSettings"

    const-string v20, "S note is NOT Installed"

    invoke-static/range {v19 .. v20}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 577
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const v20, 0x7f0a1280

    move/from16 v0, v20

    invoke-virtual {v14, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "\n\n"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const v20, 0x7f0a1270

    move/from16 v0, v20

    invoke-virtual {v14, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "\n- "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const v20, 0x7f0a12cb

    move/from16 v0, v20

    invoke-virtual {v14, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "\n- "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const v20, 0x7f0a12ce

    move/from16 v0, v20

    invoke-virtual {v14, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "\n- "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const v20, 0x7f0a12d1

    move/from16 v0, v20

    invoke-virtual {v14, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "\n- "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const v20, 0x7f0a12d3

    move/from16 v0, v20

    invoke-virtual {v14, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "\n- "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const v20, 0x7f0a12d6

    move/from16 v0, v20

    invoke-virtual {v14, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_3
.end method

.method public makeAirViewLayout()Landroid/view/View;
    .locals 10

    .prologue
    .line 415
    const/4 v6, 0x0

    .line 416
    .local v6, "view":Landroid/view/View;
    iget-object v7, p0, Lcom/android/settings/FeatureSettings;->inflater:Landroid/view/LayoutInflater;

    const v8, 0x7f0400b9

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    .line 417
    const v7, 0x7f1001d1

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 429
    .local v1, "helpContent":Landroid/widget/LinearLayout;
    new-instance v2, Lcom/android/settings/HelpItem;

    iget-object v7, p0, Lcom/android/settings/FeatureSettings;->inflater:Landroid/view/LayoutInflater;

    invoke-direct {v2, v7}, Lcom/android/settings/HelpItem;-><init>(Landroid/view/LayoutInflater;)V

    .line 430
    .local v2, "infoPreview":Lcom/android/settings/HelpItem;
    const v7, 0x7f0a1338

    invoke-virtual {v2, v7}, Lcom/android/settings/HelpItem;->setTitleTextWithOutCategory(I)V

    .line 431
    const v7, 0x7f0a1339

    invoke-virtual {v2, v7}, Lcom/android/settings/HelpItem;->setContentText(I)V

    .line 432
    const v7, 0x7f020564

    invoke-virtual {v2, v7}, Lcom/android/settings/HelpItem;->setContentImage(I)V

    .line 433
    invoke-virtual {p0}, Lcom/android/settings/FeatureSettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v2, v7}, Lcom/android/settings/HelpItem;->changePaddingForPopup(Landroid/content/Context;)V

    .line 435
    invoke-virtual {v2}, Lcom/android/settings/HelpItem;->getHelpView()Landroid/view/View;

    move-result-object v7

    invoke-virtual {v1, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 438
    new-instance v0, Lcom/android/settings/HelpItem;

    iget-object v7, p0, Lcom/android/settings/FeatureSettings;->inflater:Landroid/view/LayoutInflater;

    invoke-direct {v0, v7}, Lcom/android/settings/HelpItem;-><init>(Landroid/view/LayoutInflater;)V

    .line 439
    .local v0, "barPreview":Lcom/android/settings/HelpItem;
    const v7, 0x7f0a1341

    invoke-virtual {v0, v7}, Lcom/android/settings/HelpItem;->setTitleTextWithOutCategory(I)V

    .line 440
    const v7, 0x7f0a1342

    invoke-virtual {v0, v7}, Lcom/android/settings/HelpItem;->setContentText(I)V

    .line 441
    const v7, 0x7f020561

    invoke-virtual {v0, v7}, Lcom/android/settings/HelpItem;->setContentImage(I)V

    .line 442
    invoke-virtual {p0}, Lcom/android/settings/FeatureSettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v0, v7}, Lcom/android/settings/HelpItem;->changePaddingForPopup(Landroid/content/Context;)V

    .line 444
    invoke-virtual {v0}, Lcom/android/settings/HelpItem;->getHelpView()Landroid/view/View;

    move-result-object v7

    invoke-virtual {v1, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 447
    new-instance v5, Lcom/android/settings/HelpItem;

    iget-object v7, p0, Lcom/android/settings/FeatureSettings;->inflater:Landroid/view/LayoutInflater;

    invoke-direct {v5, v7}, Lcom/android/settings/HelpItem;-><init>(Landroid/view/LayoutInflater;)V

    .line 448
    .local v5, "speedPreview":Lcom/android/settings/HelpItem;
    const v7, 0x7f0a1343

    invoke-virtual {v5, v7}, Lcom/android/settings/HelpItem;->setTitleTextWithOutCategory(I)V

    .line 449
    const v7, 0x7f0a1344

    invoke-virtual {v5, v7}, Lcom/android/settings/HelpItem;->setContentText(I)V

    .line 450
    invoke-virtual {p0}, Lcom/android/settings/FeatureSettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/android/settings/HelpItem;->changePaddingForPopup(Landroid/content/Context;)V

    .line 451
    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v4

    .line 452
    .local v4, "salesCode":Ljava/lang/String;
    const-string v7, "ATT"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    const-string v7, "SPR"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    const-string v7, "VZW"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    const-string v7, "TMB"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    const-string v7, "USC"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 454
    :cond_0
    const v7, 0x7f020563

    invoke-virtual {v5, v7}, Lcom/android/settings/HelpItem;->setContentImage(I)V

    .line 459
    :goto_0
    invoke-virtual {v5}, Lcom/android/settings/HelpItem;->getHelpView()Landroid/view/View;

    move-result-object v7

    invoke-virtual {v1, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 462
    new-instance v3, Lcom/android/settings/HelpItem;

    iget-object v7, p0, Lcom/android/settings/FeatureSettings;->inflater:Landroid/view/LayoutInflater;

    invoke-direct {v3, v7}, Lcom/android/settings/HelpItem;-><init>(Landroid/view/LayoutInflater;)V

    .line 463
    .local v3, "magniPreview":Lcom/android/settings/HelpItem;
    invoke-virtual {p0}, Lcom/android/settings/FeatureSettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v3, v7}, Lcom/android/settings/HelpItem;->changePaddingForPopup(Landroid/content/Context;)V

    .line 464
    const v7, 0x7f0a1334

    invoke-virtual {v3, v7}, Lcom/android/settings/HelpItem;->setTitleTextWithOutCategory(I)V

    .line 465
    const v7, 0x7f0a1335

    invoke-virtual {v3, v7}, Lcom/android/settings/HelpItem;->setContentText(I)V

    .line 466
    const v7, 0x7f020560

    invoke-virtual {v3, v7}, Lcom/android/settings/HelpItem;->setContentImage(I)V

    .line 468
    invoke-virtual {v3}, Lcom/android/settings/HelpItem;->getHelpView()Landroid/view/View;

    move-result-object v7

    invoke-virtual {v1, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 480
    return-object v6

    .line 456
    .end local v3    # "magniPreview":Lcom/android/settings/HelpItem;
    :cond_1
    const v7, 0x7f020562

    invoke-virtual {v5, v7}, Lcom/android/settings/HelpItem;->setContentImage(I)V

    goto :goto_0
.end method

.method public makeContentsString()Ljava/lang/String;
    .locals 10

    .prologue
    .line 904
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 905
    .local v0, "b":Ljava/lang/StringBuilder;
    sget-object v7, Lcom/android/settings/FeatureSettings;->mPackageName:[Ljava/lang/String;

    array-length v5, v7

    .line 906
    .local v5, "length":I
    invoke-virtual {p0}, Lcom/android/settings/FeatureSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    .line 907
    .local v6, "pm":Landroid/content/pm/PackageManager;
    const/4 v4, 0x0

    .line 908
    .local v4, "info":Landroid/content/pm/ApplicationInfo;
    const/4 v1, 0x0

    .line 910
    .local v1, "count":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v5, :cond_1

    .line 912
    :try_start_0
    sget-object v7, Lcom/android/settings/FeatureSettings;->mPackageName:[Ljava/lang/String;

    aget-object v7, v7, v3

    const/16 v8, 0x80

    invoke-virtual {v6, v7, v8}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    .line 913
    if-lez v1, :cond_0

    .line 914
    const-string v7, "\n"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 915
    :cond_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "- "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v4, v6}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-interface {v8}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 916
    add-int/lit8 v1, v1, 0x1

    .line 910
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 917
    :catch_0
    move-exception v2

    .line 918
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v7, "FeatureSettings"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Package not found : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Lcom/android/settings/FeatureSettings;->mPackageName:[Ljava/lang/String;

    aget-object v9, v9, v3

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 921
    .end local v2    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    return-object v7
.end method

.method public makeEasyModeLayout()Landroid/view/View;
    .locals 8

    .prologue
    const/16 v7, 0x8

    .line 840
    const/4 v3, 0x0

    .line 841
    .local v3, "view":Landroid/view/View;
    iget-object v4, p0, Lcom/android/settings/FeatureSettings;->inflater:Landroid/view/LayoutInflater;

    const v5, 0x7f0400b9

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 842
    const v4, 0x7f1001d1

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 844
    .local v1, "helpContent":Landroid/widget/LinearLayout;
    const v4, 0x7f0a004b

    invoke-virtual {p0, v4}, Lcom/android/settings/FeatureSettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 846
    .local v2, "s":Ljava/lang/String;
    new-instance v0, Lcom/android/settings/HelpItem;

    iget-object v4, p0, Lcom/android/settings/FeatureSettings;->inflater:Landroid/view/LayoutInflater;

    invoke-direct {v0, v4}, Lcom/android/settings/HelpItem;-><init>(Landroid/view/LayoutInflater;)V

    .line 847
    .local v0, "first":Lcom/android/settings/HelpItem;
    invoke-virtual {p0}, Lcom/android/settings/FeatureSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/android/settings/HelpItem;->changePaddingForPopup(Landroid/content/Context;)V

    .line 849
    invoke-virtual {v0, v7}, Lcom/android/settings/HelpItem;->setTitleVisibility(I)V

    .line 850
    invoke-virtual {v0, v7}, Lcom/android/settings/HelpItem;->setTitle2Visibility(I)V

    .line 851
    invoke-virtual {v0, v2}, Lcom/android/settings/HelpItem;->setContentText(Ljava/lang/String;)V

    .line 852
    const v4, 0x7f020571

    invoke-virtual {v0, v4}, Lcom/android/settings/HelpItem;->setContentImage(I)V

    .line 854
    invoke-virtual {v0}, Lcom/android/settings/HelpItem;->getHelpView()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 856
    return-object v3
.end method

.method public makeMultiWindowLayout()Landroid/view/View;
    .locals 9

    .prologue
    const/16 v8, 0x8

    .line 925
    const/4 v4, 0x0

    .line 926
    .local v4, "view":Landroid/view/View;
    iget-object v5, p0, Lcom/android/settings/FeatureSettings;->inflater:Landroid/view/LayoutInflater;

    const v6, 0x7f0400b9

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 927
    const v5, 0x7f1001d1

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 929
    .local v1, "helpContent":Landroid/widget/LinearLayout;
    const v5, 0x7f0a06d5

    invoke-virtual {p0, v5}, Lcom/android/settings/FeatureSettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 931
    .local v2, "s":Ljava/lang/String;
    new-instance v0, Lcom/android/settings/HelpItem;

    iget-object v5, p0, Lcom/android/settings/FeatureSettings;->inflater:Landroid/view/LayoutInflater;

    invoke-direct {v0, v5}, Lcom/android/settings/HelpItem;-><init>(Landroid/view/LayoutInflater;)V

    .line 932
    .local v0, "first":Lcom/android/settings/HelpItem;
    invoke-virtual {p0}, Lcom/android/settings/FeatureSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/android/settings/HelpItem;->changePaddingForPopup(Landroid/content/Context;)V

    .line 933
    invoke-virtual {v0, v8}, Lcom/android/settings/HelpItem;->setTitleVisibility(I)V

    .line 934
    invoke-virtual {v0, v2}, Lcom/android/settings/HelpItem;->setContentText(Ljava/lang/String;)V

    .line 935
    const v5, 0x7f020425

    invoke-virtual {v0, v5}, Lcom/android/settings/HelpItem;->setContentImage(I)V

    .line 936
    invoke-virtual {v0, v8}, Lcom/android/settings/HelpItem;->setTitle2Visibility(I)V

    .line 938
    invoke-virtual {v0}, Lcom/android/settings/HelpItem;->getHelpView()Landroid/view/View;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 940
    new-instance v3, Lcom/android/settings/HelpItem;

    iget-object v5, p0, Lcom/android/settings/FeatureSettings;->inflater:Landroid/view/LayoutInflater;

    invoke-direct {v3, v5}, Lcom/android/settings/HelpItem;-><init>(Landroid/view/LayoutInflater;)V

    .line 941
    .local v3, "second":Lcom/android/settings/HelpItem;
    invoke-virtual {p0}, Lcom/android/settings/FeatureSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/android/settings/HelpItem;->changePaddingForPopup(Landroid/content/Context;)V

    .line 942
    invoke-virtual {v3, v8}, Lcom/android/settings/HelpItem;->setTitleVisibility(I)V

    .line 943
    invoke-virtual {v3, v8}, Lcom/android/settings/HelpItem;->setContentVisibility(I)V

    .line 944
    const v5, 0x7f020426

    invoke-virtual {v3, v5}, Lcom/android/settings/HelpItem;->setContentImage(I)V

    .line 945
    invoke-virtual {v3, v8}, Lcom/android/settings/HelpItem;->setTitle2Visibility(I)V

    .line 947
    invoke-virtual {v3}, Lcom/android/settings/HelpItem;->getHelpView()Landroid/view/View;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 949
    return-object v4
.end method

.method public makeOPModeLayout()Landroid/view/View;
    .locals 8

    .prologue
    const/16 v7, 0x8

    .line 861
    const/4 v3, 0x0

    .line 862
    .local v3, "view":Landroid/view/View;
    iget-object v4, p0, Lcom/android/settings/FeatureSettings;->inflater:Landroid/view/LayoutInflater;

    const v5, 0x7f0400b9

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 863
    const v4, 0x7f1001d1

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 865
    .local v1, "helpContent":Landroid/widget/LinearLayout;
    const v4, 0x7f0a16ed

    invoke-virtual {p0, v4}, Lcom/android/settings/FeatureSettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 867
    .local v2, "s":Ljava/lang/String;
    new-instance v0, Lcom/android/settings/HelpItem;

    iget-object v4, p0, Lcom/android/settings/FeatureSettings;->inflater:Landroid/view/LayoutInflater;

    invoke-direct {v0, v4}, Lcom/android/settings/HelpItem;-><init>(Landroid/view/LayoutInflater;)V

    .line 868
    .local v0, "first":Lcom/android/settings/HelpItem;
    invoke-virtual {p0}, Lcom/android/settings/FeatureSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/android/settings/HelpItem;->changePaddingForPopup(Landroid/content/Context;)V

    .line 870
    invoke-virtual {v0, v7}, Lcom/android/settings/HelpItem;->setTitleVisibility(I)V

    .line 871
    invoke-virtual {v0, v7}, Lcom/android/settings/HelpItem;->setTitle2Visibility(I)V

    .line 872
    invoke-virtual {v0, v2}, Lcom/android/settings/HelpItem;->setContentText(Ljava/lang/String;)V

    .line 873
    const v4, 0x7f020572

    invoke-virtual {v0, v4}, Lcom/android/settings/HelpItem;->setContentImage(I)V

    .line 874
    invoke-virtual {v0}, Lcom/android/settings/HelpItem;->getHelpView()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 876
    return-object v3
.end method

.method public makeSBeamLayout()Landroid/view/View;
    .locals 9

    .prologue
    const/16 v8, 0x8

    const/4 v7, 0x0

    .line 394
    const/4 v3, 0x0

    .line 395
    .local v3, "view":Landroid/view/View;
    iget-object v4, p0, Lcom/android/settings/FeatureSettings;->inflater:Landroid/view/LayoutInflater;

    const v5, 0x7f0400b9

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 396
    const v4, 0x7f1001d1

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 398
    .local v1, "helpContent":Landroid/widget/LinearLayout;
    const v4, 0x7f0a03a0

    invoke-virtual {p0, v4}, Lcom/android/settings/FeatureSettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 400
    .local v2, "s":Ljava/lang/String;
    new-instance v0, Lcom/android/settings/HelpItem;

    iget-object v4, p0, Lcom/android/settings/FeatureSettings;->inflater:Landroid/view/LayoutInflater;

    invoke-direct {v0, v4}, Lcom/android/settings/HelpItem;-><init>(Landroid/view/LayoutInflater;)V

    .line 401
    .local v0, "first":Lcom/android/settings/HelpItem;
    invoke-virtual {v0, v8}, Lcom/android/settings/HelpItem;->setTitleVisibility(I)V

    .line 402
    invoke-virtual {v0, v8}, Lcom/android/settings/HelpItem;->setTitle2Visibility(I)V

    .line 403
    invoke-virtual {p0}, Lcom/android/settings/FeatureSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/android/settings/HelpItem;->changePaddingForPopup(Landroid/content/Context;)V

    .line 404
    invoke-virtual {v0, v7}, Lcom/android/settings/HelpItem;->setImageMarginTop(I)V

    .line 405
    invoke-virtual {v0, v2}, Lcom/android/settings/HelpItem;->setContentText(Ljava/lang/String;)V

    .line 406
    const v4, 0x7f050009

    invoke-virtual {v0, v4}, Lcom/android/settings/HelpItem;->setContentImage(I)V

    .line 407
    invoke-virtual {v0, v7}, Lcom/android/settings/HelpItem;->usePlayButton(Z)V

    .line 408
    invoke-virtual {v0}, Lcom/android/settings/HelpItem;->getHelpView()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 410
    return-object v3
.end method

.method public makeSmartBlockLayout()Landroid/view/View;
    .locals 4

    .prologue
    .line 880
    iget-object v1, p0, Lcom/android/settings/FeatureSettings;->inflater:Landroid/view/LayoutInflater;

    const v2, 0x7f0400d9

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 882
    .local v0, "view":Landroid/view/View;
    return-object v0
.end method

.method public makeSmartPauseLayout()Landroid/view/View;
    .locals 9

    .prologue
    const/16 v8, 0x8

    .line 754
    const/4 v4, 0x0

    .line 755
    .local v4, "view":Landroid/view/View;
    iget-object v5, p0, Lcom/android/settings/FeatureSettings;->inflater:Landroid/view/LayoutInflater;

    const v6, 0x7f0400b9

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 756
    const v5, 0x7f1001d1

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 758
    .local v1, "helpContent":Landroid/widget/LinearLayout;
    const v5, 0x7f0a14ad

    invoke-virtual {p0, v5}, Lcom/android/settings/FeatureSettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 760
    .local v2, "s":Ljava/lang/String;
    new-instance v0, Lcom/android/settings/HelpItem;

    iget-object v5, p0, Lcom/android/settings/FeatureSettings;->inflater:Landroid/view/LayoutInflater;

    invoke-direct {v0, v5}, Lcom/android/settings/HelpItem;-><init>(Landroid/view/LayoutInflater;)V

    .line 761
    .local v0, "first":Lcom/android/settings/HelpItem;
    invoke-virtual {p0}, Lcom/android/settings/FeatureSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/android/settings/HelpItem;->changePaddingForPopup(Landroid/content/Context;)V

    .line 762
    invoke-virtual {v0, v8}, Lcom/android/settings/HelpItem;->setTitleVisibility(I)V

    .line 763
    invoke-virtual {v0, v2}, Lcom/android/settings/HelpItem;->setContentText(Ljava/lang/String;)V

    .line 764
    const v5, 0x7f0205ac

    invoke-virtual {v0, v5}, Lcom/android/settings/HelpItem;->setContentImage(I)V

    .line 765
    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Lcom/android/settings/HelpItem;->usePlayButton(Z)V

    .line 766
    invoke-virtual {v0}, Lcom/android/settings/HelpItem;->getHelpView()Landroid/view/View;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 768
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const v5, 0x7f0a14ae

    invoke-virtual {p0, v5}, Lcom/android/settings/FeatureSettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 769
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "- "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const v5, 0x7f0a14af

    invoke-virtual {p0, v5}, Lcom/android/settings/FeatureSettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 770
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "- "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const v5, 0x7f0a14b0

    invoke-virtual {p0, v5}, Lcom/android/settings/FeatureSettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 771
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const v5, 0x7f0a14b1

    invoke-virtual {p0, v5}, Lcom/android/settings/FeatureSettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 772
    iget-boolean v5, p0, Lcom/android/settings/FeatureSettings;->mSupportFolderType:Z

    if-eqz v5, :cond_0

    .line 773
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const v5, 0x7f0a1bd2

    invoke-virtual {p0, v5}, Lcom/android/settings/FeatureSettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 775
    :cond_0
    new-instance v3, Lcom/android/settings/HelpItem;

    iget-object v5, p0, Lcom/android/settings/FeatureSettings;->inflater:Landroid/view/LayoutInflater;

    invoke-direct {v3, v5}, Lcom/android/settings/HelpItem;-><init>(Landroid/view/LayoutInflater;)V

    .line 776
    .local v3, "second":Lcom/android/settings/HelpItem;
    invoke-virtual {p0}, Lcom/android/settings/FeatureSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/android/settings/HelpItem;->changePaddingForPopup(Landroid/content/Context;)V

    .line 777
    invoke-virtual {v3, v8}, Lcom/android/settings/HelpItem;->setTitleVisibility(I)V

    .line 778
    invoke-virtual {v3, v8}, Lcom/android/settings/HelpItem;->setImageVisibility(I)V

    .line 779
    invoke-virtual {v3, v2}, Lcom/android/settings/HelpItem;->setContentText(Ljava/lang/String;)V

    .line 780
    invoke-virtual {v3}, Lcom/android/settings/HelpItem;->getHelpView()Landroid/view/View;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 782
    return-object v4
.end method

.method public makeSmartScrollLayout()Landroid/view/View;
    .locals 12

    .prologue
    const/4 v11, 0x0

    const/16 v10, 0x8

    .line 787
    const/4 v6, 0x0

    .line 788
    .local v6, "view":Landroid/view/View;
    iget-object v7, p0, Lcom/android/settings/FeatureSettings;->inflater:Landroid/view/LayoutInflater;

    const v8, 0x7f0400b9

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    .line 789
    const v7, 0x7f1001d1

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 791
    .local v2, "helpContent":Landroid/widget/LinearLayout;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const v7, 0x7f0a14b5

    invoke-virtual {p0, v7}, Lcom/android/settings/FeatureSettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\n\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 792
    .local v4, "s":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const v7, 0x7f0a14b6    # 1.83541E38f

    invoke-virtual {p0, v7}, Lcom/android/settings/FeatureSettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 793
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "- "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const v8, 0x7f0a14b7

    invoke-virtual {p0, v8}, Lcom/android/settings/FeatureSettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 794
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "- "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const v8, 0x7f0a14b8

    invoke-virtual {p0, v8}, Lcom/android/settings/FeatureSettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 795
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const v7, 0x7f0a14b9

    invoke-virtual {p0, v7}, Lcom/android/settings/FeatureSettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\n\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 796
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const v8, 0x7f0a14ba

    invoke-virtual {p0, v8}, Lcom/android/settings/FeatureSettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 798
    new-instance v3, Lcom/android/settings/HelpItem;

    iget-object v7, p0, Lcom/android/settings/FeatureSettings;->inflater:Landroid/view/LayoutInflater;

    invoke-direct {v3, v7}, Lcom/android/settings/HelpItem;-><init>(Landroid/view/LayoutInflater;)V

    .line 799
    .local v3, "helpTop":Lcom/android/settings/HelpItem;
    invoke-virtual {p0}, Lcom/android/settings/FeatureSettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v3, v7}, Lcom/android/settings/HelpItem;->changePaddingForPopup(Landroid/content/Context;)V

    .line 800
    invoke-virtual {v3, v10}, Lcom/android/settings/HelpItem;->setTitleVisibility(I)V

    .line 801
    invoke-virtual {v3, v10}, Lcom/android/settings/HelpItem;->setImageVisibility(I)V

    .line 802
    invoke-virtual {v3, v4}, Lcom/android/settings/HelpItem;->setContentText(Ljava/lang/String;)V

    .line 803
    invoke-virtual {v3}, Lcom/android/settings/HelpItem;->getHelpView()Landroid/view/View;

    move-result-object v7

    invoke-virtual {v2, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 806
    new-instance v0, Lcom/android/settings/HelpItem;

    iget-object v7, p0, Lcom/android/settings/FeatureSettings;->inflater:Landroid/view/LayoutInflater;

    invoke-direct {v0, v7}, Lcom/android/settings/HelpItem;-><init>(Landroid/view/LayoutInflater;)V

    .line 807
    .local v0, "first":Lcom/android/settings/HelpItem;
    invoke-virtual {p0}, Lcom/android/settings/FeatureSettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v0, v7}, Lcom/android/settings/HelpItem;->changePaddingForPopup(Landroid/content/Context;)V

    .line 808
    const v7, 0x7f0a14c5

    invoke-virtual {v0, v7}, Lcom/android/settings/HelpItem;->setTitleTextWithOutCategory(I)V

    .line 809
    const v7, 0x7f0a14bb

    invoke-virtual {p0, v7}, Lcom/android/settings/FeatureSettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v0, v7}, Lcom/android/settings/HelpItem;->setContentText(Ljava/lang/String;)V

    .line 810
    const v7, 0x7f0205af

    invoke-virtual {v0, v7}, Lcom/android/settings/HelpItem;->setContentImage(I)V

    .line 811
    invoke-virtual {v0, v11}, Lcom/android/settings/HelpItem;->usePlayButton(Z)V

    .line 812
    invoke-virtual {v0}, Lcom/android/settings/HelpItem;->getHelpView()Landroid/view/View;

    move-result-object v7

    invoke-virtual {v2, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 814
    new-instance v5, Lcom/android/settings/HelpItem;

    iget-object v7, p0, Lcom/android/settings/FeatureSettings;->inflater:Landroid/view/LayoutInflater;

    invoke-direct {v5, v7}, Lcom/android/settings/HelpItem;-><init>(Landroid/view/LayoutInflater;)V

    .line 815
    .local v5, "second":Lcom/android/settings/HelpItem;
    invoke-virtual {p0}, Lcom/android/settings/FeatureSettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/android/settings/HelpItem;->changePaddingForPopup(Landroid/content/Context;)V

    .line 816
    const v7, 0x7f0a14c4

    invoke-virtual {v5, v7}, Lcom/android/settings/HelpItem;->setTitleTextWithOutCategory(I)V

    .line 817
    const v7, 0x7f0a14bc

    invoke-virtual {p0, v7}, Lcom/android/settings/FeatureSettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v5, v7}, Lcom/android/settings/HelpItem;->setContentText(Ljava/lang/String;)V

    .line 818
    const v7, 0x7f0205ae

    invoke-virtual {v5, v7}, Lcom/android/settings/HelpItem;->setContentImage(I)V

    .line 819
    invoke-virtual {v5, v11}, Lcom/android/settings/HelpItem;->usePlayButton(Z)V

    .line 820
    invoke-virtual {v5}, Lcom/android/settings/HelpItem;->getHelpView()Landroid/view/View;

    move-result-object v7

    invoke-virtual {v2, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 822
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const v7, 0x7f0a14bd

    invoke-virtual {p0, v7}, Lcom/android/settings/FeatureSettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\n\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 823
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "- "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const v7, 0x7f0a14be

    invoke-virtual {p0, v7}, Lcom/android/settings/FeatureSettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 824
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "- "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const v7, 0x7f0a14bf

    invoke-virtual {p0, v7}, Lcom/android/settings/FeatureSettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\n\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 825
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const v7, 0x7f0a14c0

    invoke-virtual {p0, v7}, Lcom/android/settings/FeatureSettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 826
    iget-boolean v7, p0, Lcom/android/settings/FeatureSettings;->mSupportFolderType:Z

    if-eqz v7, :cond_0

    .line 827
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const v7, 0x7f0a1bd2

    invoke-virtual {p0, v7}, Lcom/android/settings/FeatureSettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 829
    :cond_0
    new-instance v1, Lcom/android/settings/HelpItem;

    iget-object v7, p0, Lcom/android/settings/FeatureSettings;->inflater:Landroid/view/LayoutInflater;

    invoke-direct {v1, v7}, Lcom/android/settings/HelpItem;-><init>(Landroid/view/LayoutInflater;)V

    .line 830
    .local v1, "helpBottom":Lcom/android/settings/HelpItem;
    invoke-virtual {p0}, Lcom/android/settings/FeatureSettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v1, v7}, Lcom/android/settings/HelpItem;->changePaddingForPopup(Landroid/content/Context;)V

    .line 831
    invoke-virtual {v1, v10}, Lcom/android/settings/HelpItem;->setTitleVisibility(I)V

    .line 832
    invoke-virtual {v1, v10}, Lcom/android/settings/HelpItem;->setImageVisibility(I)V

    .line 833
    invoke-virtual {v1, v4}, Lcom/android/settings/HelpItem;->setContentText(Ljava/lang/String;)V

    .line 834
    invoke-virtual {v1}, Lcom/android/settings/HelpItem;->getHelpView()Landroid/view/View;

    move-result-object v7

    invoke-virtual {v2, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 836
    return-object v6
.end method

.method public makeSmartStayLayout()Landroid/view/View;
    .locals 9

    .prologue
    const/16 v8, 0x8

    .line 721
    const/4 v4, 0x0

    .line 722
    .local v4, "view":Landroid/view/View;
    iget-object v5, p0, Lcom/android/settings/FeatureSettings;->inflater:Landroid/view/LayoutInflater;

    const v6, 0x7f0400b9

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 723
    const v5, 0x7f1001d1

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 725
    .local v1, "helpContent":Landroid/widget/LinearLayout;
    const v5, 0x7f0a1484

    invoke-virtual {p0, v5}, Lcom/android/settings/FeatureSettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 727
    .local v2, "s":Ljava/lang/String;
    new-instance v0, Lcom/android/settings/HelpItem;

    iget-object v5, p0, Lcom/android/settings/FeatureSettings;->inflater:Landroid/view/LayoutInflater;

    invoke-direct {v0, v5}, Lcom/android/settings/HelpItem;-><init>(Landroid/view/LayoutInflater;)V

    .line 728
    .local v0, "first":Lcom/android/settings/HelpItem;
    invoke-virtual {p0}, Lcom/android/settings/FeatureSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/android/settings/HelpItem;->changePaddingForPopup(Landroid/content/Context;)V

    .line 729
    invoke-virtual {v0, v8}, Lcom/android/settings/HelpItem;->setTitleVisibility(I)V

    .line 730
    invoke-virtual {v0, v2}, Lcom/android/settings/HelpItem;->setContentText(Ljava/lang/String;)V

    .line 731
    const v5, 0x7f0205a5

    invoke-virtual {v0, v5}, Lcom/android/settings/HelpItem;->setContentImage(I)V

    .line 732
    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Lcom/android/settings/HelpItem;->usePlayButton(Z)V

    .line 733
    invoke-virtual {v0}, Lcom/android/settings/HelpItem;->getHelpView()Landroid/view/View;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 735
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const v6, 0x7f0a1485    # 1.8354E38f

    invoke-virtual {p0, v6}, Lcom/android/settings/FeatureSettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 736
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "- "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const v6, 0x7f0a1486

    invoke-virtual {p0, v6}, Lcom/android/settings/FeatureSettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 737
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "- "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const v6, 0x7f0a1487

    invoke-virtual {p0, v6}, Lcom/android/settings/FeatureSettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 738
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "- "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const v6, 0x7f0a1488

    invoke-virtual {p0, v6}, Lcom/android/settings/FeatureSettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 739
    iget-boolean v5, p0, Lcom/android/settings/FeatureSettings;->mSupportFolderType:Z

    if-eqz v5, :cond_0

    .line 740
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const v6, 0x7f0a1bd2

    invoke-virtual {p0, v6}, Lcom/android/settings/FeatureSettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 742
    :cond_0
    new-instance v3, Lcom/android/settings/HelpItem;

    iget-object v5, p0, Lcom/android/settings/FeatureSettings;->inflater:Landroid/view/LayoutInflater;

    invoke-direct {v3, v5}, Lcom/android/settings/HelpItem;-><init>(Landroid/view/LayoutInflater;)V

    .line 743
    .local v3, "second":Lcom/android/settings/HelpItem;
    invoke-virtual {p0}, Lcom/android/settings/FeatureSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/android/settings/HelpItem;->changePaddingForPopup(Landroid/content/Context;)V

    .line 744
    invoke-virtual {v3, v8}, Lcom/android/settings/HelpItem;->setTitleVisibility(I)V

    .line 745
    invoke-virtual {v3, v8}, Lcom/android/settings/HelpItem;->setImageVisibility(I)V

    .line 746
    invoke-virtual {v3, v2}, Lcom/android/settings/HelpItem;->setContentText(Ljava/lang/String;)V

    .line 747
    invoke-virtual {v3}, Lcom/android/settings/HelpItem;->getHelpView()Landroid/view/View;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 749
    return-object v4
.end method

.method public makeVoiceCmdLayout()Landroid/view/View;
    .locals 18

    .prologue
    .line 624
    const/4 v14, 0x0

    .line 625
    .local v14, "view":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/FeatureSettings;->inflater:Landroid/view/LayoutInflater;

    const v16, 0x7f0400b9

    const/16 v17, 0x0

    invoke-virtual/range {v15 .. v17}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v14

    .line 626
    const v15, 0x7f1001d1

    invoke-virtual {v14, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/LinearLayout;

    .line 627
    .local v9, "helpContent":Landroid/widget/LinearLayout;
    const/4 v1, 0x0

    .line 629
    .local v1, "c":Landroid/content/Context;
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/FeatureSettings;->getActivity()Landroid/app/Activity;

    move-result-object v15

    const-string v16, "com.vlingo.midas"

    const/16 v17, 0x0

    invoke-virtual/range {v15 .. v17}, Landroid/app/Activity;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 635
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/FeatureSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x7f0c0014

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 636
    .local v2, "cmds":[Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/FeatureSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x7f0a15bc

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 637
    .local v13, "title":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/FeatureSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x7f0a15c7

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 638
    .local v11, "templ":Ljava/lang/String;
    const/4 v15, 0x2

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    const/16 v17, 0x0

    aget-object v17, v2, v17

    aput-object v17, v15, v16

    const/16 v16, 0x1

    const/16 v17, 0x1

    aget-object v17, v2, v17

    aput-object v17, v15, v16

    invoke-static {v11, v15}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 640
    .local v3, "contents":Ljava/lang/String;
    new-instance v7, Lcom/android/settings/HelpItem;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/FeatureSettings;->inflater:Landroid/view/LayoutInflater;

    invoke-direct {v7, v15}, Lcom/android/settings/HelpItem;-><init>(Landroid/view/LayoutInflater;)V

    .line 641
    .local v7, "first":Lcom/android/settings/HelpItem;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/FeatureSettings;->getActivity()Landroid/app/Activity;

    move-result-object v15

    invoke-virtual {v7, v15}, Lcom/android/settings/HelpItem;->changePaddingForPopup(Landroid/content/Context;)V

    .line 642
    invoke-virtual {v7, v13}, Lcom/android/settings/HelpItem;->setTitleTextWithOutCategory(Ljava/lang/String;)V

    .line 643
    invoke-virtual {v7, v3}, Lcom/android/settings/HelpItem;->setContentText(Ljava/lang/String;)V

    .line 644
    const/16 v15, 0x8

    invoke-virtual {v7, v15}, Lcom/android/settings/HelpItem;->setImageVisibility(I)V

    .line 645
    const-string v15, ""

    invoke-virtual {v15, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_0

    const-string v15, ""

    invoke-virtual {v15, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/FeatureSettings;->getActivity()Landroid/app/Activity;

    move-result-object v15

    invoke-static {v15}, Lcom/android/settings/Utils;->isVoiceCapable(Landroid/content/Context;)Z

    move-result v15

    if-eqz v15, :cond_0

    .line 646
    invoke-virtual {v7}, Lcom/android/settings/HelpItem;->getHelpView()Landroid/view/View;

    move-result-object v15

    invoke-virtual {v9, v15}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 649
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/FeatureSettings;->getActivity()Landroid/app/Activity;

    move-result-object v15

    const-string v16, "com.coolots.chaton"

    invoke-static/range {v15 .. v16}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_1

    invoke-static {}, Lcom/android/settings/Utils;->isChinaModel()Z

    move-result v15

    if-nez v15, :cond_1

    .line 650
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/FeatureSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x7f0c0014

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 651
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/FeatureSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x7f0a15bd

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 652
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/FeatureSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x7f0a15c8

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 653
    const/4 v15, 0x2

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    const/16 v17, 0x0

    aget-object v17, v2, v17

    aput-object v17, v15, v16

    const/16 v16, 0x1

    const/16 v17, 0x1

    aget-object v17, v2, v17

    aput-object v17, v15, v16

    invoke-static {v11, v15}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 655
    new-instance v5, Lcom/android/settings/HelpItem;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/FeatureSettings;->inflater:Landroid/view/LayoutInflater;

    invoke-direct {v5, v15}, Lcom/android/settings/HelpItem;-><init>(Landroid/view/LayoutInflater;)V

    .line 656
    .local v5, "extra":Lcom/android/settings/HelpItem;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/FeatureSettings;->getActivity()Landroid/app/Activity;

    move-result-object v15

    invoke-virtual {v5, v15}, Lcom/android/settings/HelpItem;->changePaddingForPopup(Landroid/content/Context;)V

    .line 657
    invoke-virtual {v5, v13}, Lcom/android/settings/HelpItem;->setTitleTextWithOutCategory(Ljava/lang/String;)V

    .line 658
    invoke-virtual {v5, v3}, Lcom/android/settings/HelpItem;->setContentText(Ljava/lang/String;)V

    .line 659
    const/16 v15, 0x8

    invoke-virtual {v5, v15}, Lcom/android/settings/HelpItem;->setImageVisibility(I)V

    .line 660
    const-string v15, ""

    invoke-virtual {v15, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_1

    const-string v15, ""

    invoke-virtual {v15, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_1

    .line 661
    invoke-virtual {v5}, Lcom/android/settings/HelpItem;->getHelpView()Landroid/view/View;

    move-result-object v15

    invoke-virtual {v9, v15}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 666
    .end local v5    # "extra":Lcom/android/settings/HelpItem;
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/FeatureSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x7f0c0015

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 667
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/FeatureSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x7f0a15bf

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 668
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/FeatureSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x7f0a15c9

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 669
    const/4 v15, 0x2

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    const/16 v17, 0x0

    aget-object v17, v2, v17

    aput-object v17, v15, v16

    const/16 v16, 0x1

    const/16 v17, 0x1

    aget-object v17, v2, v17

    aput-object v17, v15, v16

    invoke-static {v11, v15}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 671
    new-instance v10, Lcom/android/settings/HelpItem;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/FeatureSettings;->inflater:Landroid/view/LayoutInflater;

    invoke-direct {v10, v15}, Lcom/android/settings/HelpItem;-><init>(Landroid/view/LayoutInflater;)V

    .line 672
    .local v10, "second":Lcom/android/settings/HelpItem;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/FeatureSettings;->getActivity()Landroid/app/Activity;

    move-result-object v15

    invoke-virtual {v10, v15}, Lcom/android/settings/HelpItem;->changePaddingForPopup(Landroid/content/Context;)V

    .line 673
    invoke-virtual {v10, v13}, Lcom/android/settings/HelpItem;->setTitleTextWithOutCategory(Ljava/lang/String;)V

    .line 674
    invoke-virtual {v10, v3}, Lcom/android/settings/HelpItem;->setContentText(Ljava/lang/String;)V

    .line 675
    const/16 v15, 0x8

    invoke-virtual {v10, v15}, Lcom/android/settings/HelpItem;->setImageVisibility(I)V

    .line 676
    const-string v15, ""

    invoke-virtual {v15, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_2

    const-string v15, ""

    invoke-virtual {v15, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_2

    .line 677
    invoke-virtual {v10}, Lcom/android/settings/HelpItem;->getHelpView()Landroid/view/View;

    move-result-object v15

    invoke-virtual {v9, v15}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 680
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/FeatureSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x7f0c0016

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 681
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/FeatureSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x7f0a15c1

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 682
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/FeatureSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x7f0a15ca

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 683
    const/4 v15, 0x4

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    const/16 v17, 0x0

    aget-object v17, v2, v17

    aput-object v17, v15, v16

    const/16 v16, 0x1

    const/16 v17, 0x1

    aget-object v17, v2, v17

    aput-object v17, v15, v16

    const/16 v16, 0x2

    const/16 v17, 0x2

    aget-object v17, v2, v17

    aput-object v17, v15, v16

    const/16 v16, 0x3

    const/16 v17, 0x3

    aget-object v17, v2, v17

    aput-object v17, v15, v16

    invoke-static {v11, v15}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 685
    new-instance v12, Lcom/android/settings/HelpItem;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/FeatureSettings;->inflater:Landroid/view/LayoutInflater;

    invoke-direct {v12, v15}, Lcom/android/settings/HelpItem;-><init>(Landroid/view/LayoutInflater;)V

    .line 686
    .local v12, "third":Lcom/android/settings/HelpItem;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/FeatureSettings;->getActivity()Landroid/app/Activity;

    move-result-object v15

    invoke-virtual {v12, v15}, Lcom/android/settings/HelpItem;->changePaddingForPopup(Landroid/content/Context;)V

    .line 687
    invoke-virtual {v12, v13}, Lcom/android/settings/HelpItem;->setTitleTextWithOutCategory(Ljava/lang/String;)V

    .line 688
    invoke-virtual {v12, v3}, Lcom/android/settings/HelpItem;->setContentText(Ljava/lang/String;)V

    .line 689
    const/16 v15, 0x8

    invoke-virtual {v12, v15}, Lcom/android/settings/HelpItem;->setImageVisibility(I)V

    .line 690
    const-string v15, ""

    invoke-virtual {v15, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_3

    const-string v15, ""

    invoke-virtual {v15, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_3

    .line 691
    invoke-virtual {v12}, Lcom/android/settings/HelpItem;->getHelpView()Landroid/view/View;

    move-result-object v15

    invoke-virtual {v9, v15}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 694
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/FeatureSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x7f0c0017

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 695
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/FeatureSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x7f0a15c3

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 696
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/FeatureSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x7f0a15cc

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 697
    const/4 v15, 0x6

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    const/16 v17, 0x0

    aget-object v17, v2, v17

    aput-object v17, v15, v16

    const/16 v16, 0x1

    const/16 v17, 0x1

    aget-object v17, v2, v17

    aput-object v17, v15, v16

    const/16 v16, 0x2

    const/16 v17, 0x2

    aget-object v17, v2, v17

    aput-object v17, v15, v16

    const/16 v16, 0x3

    const/16 v17, 0x3

    aget-object v17, v2, v17

    aput-object v17, v15, v16

    const/16 v16, 0x4

    const/16 v17, 0x4

    aget-object v17, v2, v17

    aput-object v17, v15, v16

    const/16 v16, 0x5

    const/16 v17, 0x5

    aget-object v17, v2, v17

    aput-object v17, v15, v16

    invoke-static {v11, v15}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 699
    new-instance v8, Lcom/android/settings/HelpItem;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/FeatureSettings;->inflater:Landroid/view/LayoutInflater;

    invoke-direct {v8, v15}, Lcom/android/settings/HelpItem;-><init>(Landroid/view/LayoutInflater;)V

    .line 700
    .local v8, "fourth":Lcom/android/settings/HelpItem;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/FeatureSettings;->getActivity()Landroid/app/Activity;

    move-result-object v15

    invoke-virtual {v8, v15}, Lcom/android/settings/HelpItem;->changePaddingForPopup(Landroid/content/Context;)V

    .line 701
    invoke-virtual {v8, v13}, Lcom/android/settings/HelpItem;->setTitleTextWithOutCategory(Ljava/lang/String;)V

    .line 702
    invoke-virtual {v8, v3}, Lcom/android/settings/HelpItem;->setContentText(Ljava/lang/String;)V

    .line 703
    const/16 v15, 0x8

    invoke-virtual {v8, v15}, Lcom/android/settings/HelpItem;->setImageVisibility(I)V

    .line 704
    const-string v15, ""

    invoke-virtual {v15, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_4

    const-string v15, ""

    invoke-virtual {v15, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_4

    .line 705
    invoke-virtual {v8}, Lcom/android/settings/HelpItem;->getHelpView()Landroid/view/View;

    move-result-object v15

    invoke-virtual {v9, v15}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 708
    :cond_4
    new-instance v6, Lcom/android/settings/HelpItem;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/FeatureSettings;->inflater:Landroid/view/LayoutInflater;

    invoke-direct {v6, v15}, Lcom/android/settings/HelpItem;-><init>(Landroid/view/LayoutInflater;)V

    .line 709
    .local v6, "fifth":Lcom/android/settings/HelpItem;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/FeatureSettings;->getActivity()Landroid/app/Activity;

    move-result-object v15

    invoke-virtual {v6, v15}, Lcom/android/settings/HelpItem;->changePaddingForPopup(Landroid/content/Context;)V

    .line 710
    const/16 v15, 0x8

    invoke-virtual {v6, v15}, Lcom/android/settings/HelpItem;->setTitleVisibility(I)V

    .line 711
    const/16 v15, 0x8

    invoke-virtual {v6, v15}, Lcom/android/settings/HelpItem;->setTitle2Visibility(I)V

    .line 712
    const/16 v15, 0x8

    invoke-virtual {v6, v15}, Lcom/android/settings/HelpItem;->setContentVisibility(I)V

    .line 713
    const v15, 0x7f020738

    invoke-virtual {v6, v15}, Lcom/android/settings/HelpItem;->setContentImage(I)V

    .line 714
    invoke-virtual {v6}, Lcom/android/settings/HelpItem;->getHelpView()Landroid/view/View;

    move-result-object v15

    invoke-virtual {v9, v15}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 716
    return-object v14

    .line 630
    .end local v2    # "cmds":[Ljava/lang/String;
    .end local v3    # "contents":Ljava/lang/String;
    .end local v6    # "fifth":Lcom/android/settings/HelpItem;
    .end local v7    # "first":Lcom/android/settings/HelpItem;
    .end local v8    # "fourth":Lcom/android/settings/HelpItem;
    .end local v10    # "second":Lcom/android/settings/HelpItem;
    .end local v11    # "templ":Ljava/lang/String;
    .end local v12    # "third":Lcom/android/settings/HelpItem;
    .end local v13    # "title":Ljava/lang/String;
    :catch_0
    move-exception v4

    .line 632
    .local v4, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v4}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto/16 :goto_0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 311
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 312
    invoke-virtual {p0}, Lcom/android/settings/FeatureSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->isDualFolderType(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 313
    invoke-virtual {p0}, Lcom/android/settings/FeatureSettings;->getListView()Landroid/widget/ListView;

    move-result-object v0

    new-instance v1, Lcom/android/settings/FeatureSettings$2;

    invoke-direct {v1, p0}, Lcom/android/settings/FeatureSettings$2;-><init>(Lcom/android/settings/FeatureSettings;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 335
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x0

    .line 139
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 141
    invoke-virtual {p0}, Lcom/android/settings/FeatureSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/Utils;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 142
    const-string v1, "FeatureSettings"

    const-string v3, "talkback is enabled, so samsung features are off"

    invoke-static {v1, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    invoke-virtual {p0}, Lcom/android/settings/FeatureSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/Utils;->isTalkBackExclusiveOptionEnabled(Landroid/content/Context;)Landroid/os/Bundle;

    move-result-object v1

    const-string v3, "option_flag"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 144
    .local v0, "mDisableExclusiveOptionsFlag":I
    invoke-virtual {p0}, Lcom/android/settings/FeatureSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/android/settings/Utils;->turnOffTalkBackExclusiveOptions(Landroid/content/Context;I)V

    .line 147
    .end local v0    # "mDisableExclusiveOptionsFlag":I
    :cond_0
    const v1, 0x7f070055

    invoke-virtual {p0, v1}, Lcom/android/settings/FeatureSettings;->addPreferencesFromResource(I)V

    .line 149
    const-string v1, "sbeam"

    invoke-virtual {p0, v1}, Lcom/android/settings/FeatureSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/SwitchPreferenceScreen;

    iput-object v1, p0, Lcom/android/settings/FeatureSettings;->mSBeam:Landroid/preference/SwitchPreferenceScreen;

    .line 150
    const-string v1, "air_view"

    invoke-virtual {p0, v1}, Lcom/android/settings/FeatureSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/SwitchPreferenceScreen;

    iput-object v1, p0, Lcom/android/settings/FeatureSettings;->mAirView:Landroid/preference/SwitchPreferenceScreen;

    .line 151
    const-string v1, "air_motion"

    invoke-virtual {p0, v1}, Lcom/android/settings/FeatureSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/SwitchPreferenceScreen;

    iput-object v1, p0, Lcom/android/settings/FeatureSettings;->mAirMotion:Landroid/preference/SwitchPreferenceScreen;

    .line 152
    const-string v1, "voice_cmd"

    invoke-virtual {p0, v1}, Lcom/android/settings/FeatureSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/SwitchPreferenceScreen;

    iput-object v1, p0, Lcom/android/settings/FeatureSettings;->mVoiceCmd:Landroid/preference/SwitchPreferenceScreen;

    .line 153
    const-string v1, "smart_stay"

    invoke-virtual {p0, v1}, Lcom/android/settings/FeatureSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/SwitchPreferenceScreen;

    iput-object v1, p0, Lcom/android/settings/FeatureSettings;->mSmartStay:Landroid/preference/SwitchPreferenceScreen;

    .line 154
    const-string v1, "smart_pause"

    invoke-virtual {p0, v1}, Lcom/android/settings/FeatureSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/SwitchPreferenceScreen;

    iput-object v1, p0, Lcom/android/settings/FeatureSettings;->mSmartPause:Landroid/preference/SwitchPreferenceScreen;

    .line 155
    const-string v1, "smart_scroll"

    invoke-virtual {p0, v1}, Lcom/android/settings/FeatureSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/SwitchPreferenceScreen;

    iput-object v1, p0, Lcom/android/settings/FeatureSettings;->mSmartScroll:Landroid/preference/SwitchPreferenceScreen;

    .line 156
    const-string v1, "easy_mode"

    invoke-virtual {p0, v1}, Lcom/android/settings/FeatureSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/SwitchPreferenceScreen;

    iput-object v1, p0, Lcom/android/settings/FeatureSettings;->mEasyMode:Landroid/preference/SwitchPreferenceScreen;

    .line 157
    const-string v1, "op_mode"

    invoke-virtual {p0, v1}, Lcom/android/settings/FeatureSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/SwitchPreferenceScreen;

    iput-object v1, p0, Lcom/android/settings/FeatureSettings;->mOPMode:Landroid/preference/SwitchPreferenceScreen;

    .line 158
    const-string v1, "smart_block"

    invoke-virtual {p0, v1}, Lcom/android/settings/FeatureSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/SwitchPreferenceScreen;

    iput-object v1, p0, Lcom/android/settings/FeatureSettings;->mSmartBlock:Landroid/preference/SwitchPreferenceScreen;

    .line 159
    const-string v1, "adapt_display"

    invoke-virtual {p0, v1}, Lcom/android/settings/FeatureSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/SwitchPreferenceScreen;

    iput-object v1, p0, Lcom/android/settings/FeatureSettings;->mAdapt:Landroid/preference/SwitchPreferenceScreen;

    .line 160
    const-string v1, "multi_window"

    invoke-virtual {p0, v1}, Lcom/android/settings/FeatureSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/SwitchPreferenceScreen;

    iput-object v1, p0, Lcom/android/settings/FeatureSettings;->mMulti:Landroid/preference/SwitchPreferenceScreen;

    .line 161
    const-string v1, "multi_user"

    invoke-virtual {p0, v1}, Lcom/android/settings/FeatureSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/FeatureSettings;->mMultiUser:Landroid/preference/Preference;

    .line 162
    invoke-virtual {p0}, Lcom/android/settings/FeatureSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/FeatureSettings;->mPm:Landroid/content/pm/PackageManager;

    .line 164
    invoke-virtual {p0}, Lcom/android/settings/FeatureSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/FeatureSettings;->inflater:Landroid/view/LayoutInflater;

    .line 166
    invoke-virtual {p0}, Lcom/android/settings/FeatureSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/nfc/SBeamEnabler;->isSBeamSupported(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 167
    new-instance v1, Lcom/android/settings/nfc/SBeamEnabler;

    invoke-virtual {p0}, Lcom/android/settings/FeatureSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/FeatureSettings;->mSBeam:Landroid/preference/SwitchPreferenceScreen;

    invoke-direct {v1, v3, v4}, Lcom/android/settings/nfc/SBeamEnabler;-><init>(Landroid/content/Context;Landroid/preference/SwitchPreferenceScreen;)V

    iput-object v1, p0, Lcom/android/settings/FeatureSettings;->mEnabler:Lcom/android/settings/nfc/SBeamEnabler;

    .line 170
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/FeatureSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/Utils;->isDualFolderType(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/android/settings/Utils;->isChinaModel()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    :goto_0
    iput-boolean v1, p0, Lcom/android/settings/FeatureSettings;->mSupportFolderType:Z

    .line 171
    return-void

    :cond_2
    move v1, v2

    .line 170
    goto :goto_0
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 303
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 304
    iget-object v0, p0, Lcom/android/settings/FeatureSettings;->mEnabler:Lcom/android/settings/nfc/SBeamEnabler;

    if-eqz v0, :cond_0

    .line 305
    iget-object v0, p0, Lcom/android/settings/FeatureSettings;->mEnabler:Lcom/android/settings/nfc/SBeamEnabler;

    invoke-virtual {v0}, Lcom/android/settings/nfc/SBeamEnabler;->procOnPause()V

    .line 307
    :cond_0
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 14
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "objValue"    # Ljava/lang/Object;

    .prologue
    .line 1004
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "objValue":Ljava/lang/Object;
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    .line 1005
    .local v9, "value":Z
    iget-object v10, p0, Lcom/android/settings/FeatureSettings;->mSBeam:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {p1, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 1006
    iget-object v11, p0, Lcom/android/settings/FeatureSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v12, "sbeam_mode"

    if-eqz v9, :cond_1

    const/4 v10, 0x1

    :goto_0
    invoke-static {v11, v12, v10}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1150
    :cond_0
    :goto_1
    const/4 v10, 0x1

    return v10

    .line 1006
    :cond_1
    const/4 v10, 0x0

    goto :goto_0

    .line 1007
    :cond_2
    iget-object v10, p0, Lcom/android/settings/FeatureSettings;->mAirView:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {p1, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_7

    .line 1008
    invoke-virtual {p0}, Lcom/android/settings/FeatureSettings;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-static {v10}, Lcom/android/settings/Utils;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 1009
    const v10, 0x7f0a132e

    const v11, 0x7f0a1123

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v12

    invoke-direct {p0, v10, v11, v12}, Lcom/android/settings/FeatureSettings;->showTalkBackDisableDialog(IILjava/lang/String;)V

    goto :goto_1

    .line 1011
    :cond_3
    invoke-static {}, Lcom/android/settings/Utils;->isAutoAirViewSupported()Z

    move-result v10

    if-eqz v10, :cond_5

    .line 1012
    iget-object v11, p0, Lcom/android/settings/FeatureSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v12, "air_view_master_onoff"

    if-eqz v9, :cond_4

    const/4 v10, 0x1

    :goto_2
    invoke-static {v11, v12, v10}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1017
    :goto_3
    new-instance v0, Landroid/content/Intent;

    const-string v10, "com.sec.gesture.FINGER_AIR_VIEW_SETTINGS_CHANGED"

    invoke-direct {v0, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1018
    .local v0, "finger_air_view_changed":Landroid/content/Intent;
    const-string v10, "isEnable"

    invoke-virtual {v0, v10, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1019
    invoke-virtual {p0}, Lcom/android/settings/FeatureSettings;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-virtual {v10, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_1

    .line 1012
    .end local v0    # "finger_air_view_changed":Landroid/content/Intent;
    :cond_4
    const/4 v10, 0x0

    goto :goto_2

    .line 1014
    :cond_5
    iget-object v11, p0, Lcom/android/settings/FeatureSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v12, "finger_air_view"

    if-eqz v9, :cond_6

    const/4 v10, 0x1

    :goto_4
    invoke-static {v11, v12, v10}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_3

    :cond_6
    const/4 v10, 0x0

    goto :goto_4

    .line 1021
    :cond_7
    iget-object v10, p0, Lcom/android/settings/FeatureSettings;->mAirMotion:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {p1, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_d

    .line 1022
    invoke-virtual {p0}, Lcom/android/settings/FeatureSettings;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-static {v10}, Lcom/android/settings/Utils;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result v10

    if-eqz v10, :cond_8

    .line 1023
    const v10, 0x7f0a1258

    const v11, 0x7f0a125c

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v12

    invoke-direct {p0, v10, v11, v12}, Lcom/android/settings/FeatureSettings;->showTalkBackDisableDialog(IILjava/lang/String;)V

    goto :goto_1

    .line 1025
    :cond_8
    iget-object v11, p0, Lcom/android/settings/FeatureSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v12, "air_motion_engine"

    if-eqz v9, :cond_9

    const/4 v10, 0x1

    :goto_5
    invoke-static {v11, v12, v10}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1026
    new-instance v4, Landroid/content/Intent;

    const-string v10, "com.sec.gesture.AIR_MOTION_SETTINGS_CHANGED"

    invoke-direct {v4, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1027
    .local v4, "motion_changed":Landroid/content/Intent;
    const-string v10, "isEnable"

    invoke-virtual {v4, v10, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1028
    invoke-virtual {p0}, Lcom/android/settings/FeatureSettings;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-virtual {v10, v4}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 1030
    iget-object v11, p0, Lcom/android/settings/FeatureSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v12, "air_motion_scroll"

    if-eqz v9, :cond_a

    const/4 v10, 0x1

    :goto_6
    invoke-static {v11, v12, v10}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1031
    new-instance v6, Landroid/content/Intent;

    const-string v10, "com.sec.gesture.AIR_SCROLL_SETTINGS_CHANGED"

    invoke-direct {v6, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1032
    .local v6, "motion_scroll_changed":Landroid/content/Intent;
    const-string v10, "isEnable"

    invoke-virtual {v6, v10, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1033
    invoke-virtual {p0}, Lcom/android/settings/FeatureSettings;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-virtual {v10, v6}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 1035
    iget-object v11, p0, Lcom/android/settings/FeatureSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v12, "air_motion_turn"

    if-eqz v9, :cond_b

    const/4 v10, 0x1

    :goto_7
    invoke-static {v11, v12, v10}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1036
    new-instance v3, Landroid/content/Intent;

    const-string v10, "com.sec.gesture.AIR_BROWSE_SETTINGS_CHANGED"

    invoke-direct {v3, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1037
    .local v3, "motion_browse_changed":Landroid/content/Intent;
    const-string v10, "isEnable"

    invoke-virtual {v3, v10, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1038
    invoke-virtual {p0}, Lcom/android/settings/FeatureSettings;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-virtual {v10, v3}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 1040
    iget-object v11, p0, Lcom/android/settings/FeatureSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v12, "air_motion_item_move"

    if-eqz v9, :cond_c

    const/4 v10, 0x1

    :goto_8
    invoke-static {v11, v12, v10}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1041
    new-instance v5, Landroid/content/Intent;

    const-string v10, "com.sec.gesture.AIR_MOVE_SETTINGS_CHANGED"

    invoke-direct {v5, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1042
    .local v5, "motion_move_changed":Landroid/content/Intent;
    const-string v10, "isEnable"

    invoke-virtual {v5, v10, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1043
    invoke-virtual {p0}, Lcom/android/settings/FeatureSettings;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-virtual {v10, v5}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 1025
    .end local v3    # "motion_browse_changed":Landroid/content/Intent;
    .end local v4    # "motion_changed":Landroid/content/Intent;
    .end local v5    # "motion_move_changed":Landroid/content/Intent;
    .end local v6    # "motion_scroll_changed":Landroid/content/Intent;
    :cond_9
    const/4 v10, 0x0

    goto :goto_5

    .line 1030
    .restart local v4    # "motion_changed":Landroid/content/Intent;
    :cond_a
    const/4 v10, 0x0

    goto :goto_6

    .line 1035
    .restart local v6    # "motion_scroll_changed":Landroid/content/Intent;
    :cond_b
    const/4 v10, 0x0

    goto :goto_7

    .line 1040
    .restart local v3    # "motion_browse_changed":Landroid/content/Intent;
    :cond_c
    const/4 v10, 0x0

    goto :goto_8

    .line 1046
    .end local v3    # "motion_browse_changed":Landroid/content/Intent;
    .end local v4    # "motion_changed":Landroid/content/Intent;
    .end local v6    # "motion_scroll_changed":Landroid/content/Intent;
    :cond_d
    iget-object v10, p0, Lcom/android/settings/FeatureSettings;->mVoiceCmd:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {p1, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_f

    .line 1047
    iget-object v11, p0, Lcom/android/settings/FeatureSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v12, "voice_input_control"

    if-eqz v9, :cond_e

    const/4 v10, 0x1

    :goto_9
    invoke-static {v11, v12, v10}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1

    :cond_e
    const/4 v10, 0x0

    goto :goto_9

    .line 1048
    :cond_f
    iget-object v10, p0, Lcom/android/settings/FeatureSettings;->mSmartStay:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {p1, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_12

    .line 1049
    invoke-virtual {p0}, Lcom/android/settings/FeatureSettings;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-static {v10}, Lcom/android/settings/Utils;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result v10

    if-eqz v10, :cond_10

    .line 1050
    const v10, 0x7f0a1480

    const v11, 0x7f0a14da

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v12

    invoke-direct {p0, v10, v11, v12}, Lcom/android/settings/FeatureSettings;->showTalkBackDisableDialog(IILjava/lang/String;)V

    goto/16 :goto_1

    .line 1052
    :cond_10
    iget-object v11, p0, Lcom/android/settings/FeatureSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v12, "intelligent_sleep_mode"

    if-eqz v9, :cond_11

    const/4 v10, 0x1

    :goto_a
    invoke-static {v11, v12, v10}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1

    :cond_11
    const/4 v10, 0x0

    goto :goto_a

    .line 1054
    :cond_12
    iget-object v10, p0, Lcom/android/settings/FeatureSettings;->mSmartPause:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {p1, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_15

    .line 1055
    invoke-virtual {p0}, Lcom/android/settings/FeatureSettings;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-static {v10}, Lcom/android/settings/Utils;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result v10

    if-eqz v10, :cond_13

    .line 1056
    const v10, 0x7f0a148d

    const v11, 0x7f0a14da

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v12

    invoke-direct {p0, v10, v11, v12}, Lcom/android/settings/FeatureSettings;->showTalkBackDisableDialog(IILjava/lang/String;)V

    goto/16 :goto_1

    .line 1058
    :cond_13
    iget-object v11, p0, Lcom/android/settings/FeatureSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v12, "smart_pause"

    if-eqz v9, :cond_14

    const/4 v10, 0x1

    :goto_b
    invoke-static {v11, v12, v10}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1060
    new-instance v7, Landroid/content/Intent;

    const-string v10, "com.sec.SMART_PAUSE_CHANGED"

    invoke-direct {v7, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1061
    .local v7, "smart_pause_changed":Landroid/content/Intent;
    const-string v10, "isEnable"

    invoke-virtual {v7, v10, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1062
    invoke-virtual {p0}, Lcom/android/settings/FeatureSettings;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-virtual {v10, v7}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 1058
    .end local v7    # "smart_pause_changed":Landroid/content/Intent;
    :cond_14
    const/4 v10, 0x0

    goto :goto_b

    .line 1064
    :cond_15
    iget-object v10, p0, Lcom/android/settings/FeatureSettings;->mSmartScroll:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {p1, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_18

    .line 1065
    invoke-virtual {p0}, Lcom/android/settings/FeatureSettings;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-static {v10}, Lcom/android/settings/Utils;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result v10

    if-eqz v10, :cond_16

    .line 1066
    const v10, 0x7f0a148f

    const v11, 0x7f0a14da

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v12

    invoke-direct {p0, v10, v11, v12}, Lcom/android/settings/FeatureSettings;->showTalkBackDisableDialog(IILjava/lang/String;)V

    goto/16 :goto_1

    .line 1068
    :cond_16
    iget-object v11, p0, Lcom/android/settings/FeatureSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v12, "smart_scroll"

    if-eqz v9, :cond_17

    const/4 v10, 0x1

    :goto_c
    invoke-static {v11, v12, v10}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1070
    new-instance v8, Landroid/content/Intent;

    const-string v10, "com.sec.SMART_SCROLL_CHANGED"

    invoke-direct {v8, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1071
    .local v8, "smart_scroll_changed":Landroid/content/Intent;
    const-string v10, "isEnable"

    invoke-virtual {v8, v10, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1072
    invoke-virtual {p0}, Lcom/android/settings/FeatureSettings;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-virtual {v10, v8}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 1068
    .end local v8    # "smart_scroll_changed":Landroid/content/Intent;
    :cond_17
    const/4 v10, 0x0

    goto :goto_c

    .line 1074
    :cond_18
    iget-object v10, p0, Lcom/android/settings/FeatureSettings;->mEasyMode:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {p1, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1a

    .line 1075
    if-eqz v9, :cond_19

    .line 1077
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/FeatureSettings;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-direct {v1, v10}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1078
    .local v1, "mAlertDialog":Landroid/app/AlertDialog$Builder;
    const v10, 0x7f0a16e2

    invoke-virtual {v1, v10}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 1079
    const v10, 0x7f0a004b

    invoke-virtual {v1, v10}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 1080
    const v10, 0x104000a

    new-instance v11, Lcom/android/settings/FeatureSettings$5;

    invoke-direct {v11, p0}, Lcom/android/settings/FeatureSettings$5;-><init>(Lcom/android/settings/FeatureSettings;)V

    invoke-virtual {v1, v10, v11}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1086
    const/high16 v10, 0x1040000

    new-instance v11, Lcom/android/settings/FeatureSettings$6;

    invoke-direct {v11, p0}, Lcom/android/settings/FeatureSettings$6;-><init>(Lcom/android/settings/FeatureSettings;)V

    invoke-virtual {v1, v10, v11}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1092
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_1

    .line 1094
    .end local v1    # "mAlertDialog":Landroid/app/AlertDialog$Builder;
    :cond_19
    const/4 v10, 0x0

    invoke-direct {p0, v10}, Lcom/android/settings/FeatureSettings;->turnOnEasyMode(Z)V

    goto/16 :goto_1

    .line 1097
    :cond_1a
    iget-object v10, p0, Lcom/android/settings/FeatureSettings;->mOPMode:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {p1, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1c

    .line 1098
    if-eqz v9, :cond_1b

    .line 1100
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/FeatureSettings;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-direct {v1, v10}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1101
    .restart local v1    # "mAlertDialog":Landroid/app/AlertDialog$Builder;
    const v10, 0x7f0a16ea

    invoke-virtual {v1, v10}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 1102
    const v10, 0x7f0a16ed

    invoke-virtual {v1, v10}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 1103
    const v10, 0x104000a

    new-instance v11, Lcom/android/settings/FeatureSettings$7;

    invoke-direct {v11, p0}, Lcom/android/settings/FeatureSettings$7;-><init>(Lcom/android/settings/FeatureSettings;)V

    invoke-virtual {v1, v10, v11}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1109
    const/high16 v10, 0x1040000

    new-instance v11, Lcom/android/settings/FeatureSettings$8;

    invoke-direct {v11, p0}, Lcom/android/settings/FeatureSettings$8;-><init>(Lcom/android/settings/FeatureSettings;)V

    invoke-virtual {v1, v10, v11}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1115
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_1

    .line 1117
    .end local v1    # "mAlertDialog":Landroid/app/AlertDialog$Builder;
    :cond_1b
    const/4 v10, 0x0

    invoke-direct {p0, v10}, Lcom/android/settings/FeatureSettings;->turnOnOPMode(Z)V

    goto/16 :goto_1

    .line 1120
    :cond_1c
    iget-object v10, p0, Lcom/android/settings/FeatureSettings;->mSmartBlock:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {p1, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1e

    .line 1121
    iget-object v11, p0, Lcom/android/settings/FeatureSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v12, "key_spam_smart"

    if-eqz v9, :cond_1d

    const/4 v10, 0x1

    :goto_d
    invoke-static {v11, v12, v10}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1

    :cond_1d
    const/4 v10, 0x0

    goto :goto_d

    .line 1123
    :cond_1e
    iget-object v10, p0, Lcom/android/settings/FeatureSettings;->mAdapt:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {p1, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_20

    .line 1124
    if-eqz v9, :cond_1f

    .line 1126
    const/4 v10, 0x4

    invoke-static {v10}, Lcom/sec/android/hardware/SecHardwareInterface;->setmDNIeUserMode(I)Z

    .line 1130
    iget-object v10, p0, Lcom/android/settings/FeatureSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v11, "screen_mode_automatic_setting"

    const/4 v12, 0x1

    invoke-static {v10, v11, v12}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1

    .line 1132
    :cond_1f
    iget-object v10, p0, Lcom/android/settings/FeatureSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v11, "screen_mode_setting"

    const/4 v12, 0x1

    invoke-static {v10, v11, v12}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    invoke-static {v10}, Lcom/sec/android/hardware/SecHardwareInterface;->setmDNIeUserMode(I)Z

    .line 1133
    iget-object v10, p0, Lcom/android/settings/FeatureSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v11, "screen_mode_automatic_setting"

    const/4 v12, 0x0

    invoke-static {v10, v11, v12}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1

    .line 1136
    :cond_20
    iget-object v10, p0, Lcom/android/settings/FeatureSettings;->mMulti:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {p1, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 1137
    invoke-virtual {p0}, Lcom/android/settings/FeatureSettings;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-static {v10}, Lcom/android/settings/Utils;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result v10

    if-eqz v10, :cond_21

    .line 1138
    const v10, 0x7f0a1120

    const v11, 0x7f0a1121

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v12

    invoke-direct {p0, v10, v11, v12}, Lcom/android/settings/FeatureSettings;->showTalkBackDisableDialog(IILjava/lang/String;)V

    goto/16 :goto_1

    .line 1140
    :cond_21
    invoke-virtual {p0}, Lcom/android/settings/FeatureSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "multi_window_enabled"

    if-eqz v9, :cond_22

    const/4 v10, 0x1

    :goto_e
    invoke-static {v11, v12, v10}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1141
    iget-object v10, p0, Lcom/android/settings/FeatureSettings;->mMulti:Landroid/preference/SwitchPreferenceScreen;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/preference/SwitchPreferenceScreen;->setEnabled(Z)V

    .line 1142
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    .line 1143
    .local v2, "mHandler":Landroid/os/Handler;
    new-instance v10, Lcom/android/settings/FeatureSettings$9;

    invoke-direct {v10, p0}, Lcom/android/settings/FeatureSettings$9;-><init>(Lcom/android/settings/FeatureSettings;)V

    const-wide/16 v12, 0x3e8

    invoke-virtual {v2, v10, v12, v13}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_1

    .line 1140
    .end local v2    # "mHandler":Landroid/os/Handler;
    :cond_22
    const/4 v10, 0x0

    goto :goto_e
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 3
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 955
    iget-object v1, p0, Lcom/android/settings/FeatureSettings;->mSBeam:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 956
    invoke-virtual {p0}, Lcom/android/settings/FeatureSettings;->makeSBeamLayout()Landroid/view/View;

    move-result-object v0

    .line 957
    .local v0, "layout":Landroid/view/View;
    invoke-virtual {p0}, Lcom/android/settings/FeatureSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a039b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/FeatureSettings;->showGuideDialog(Landroid/view/View;Ljava/lang/String;)V

    .line 998
    .end local v0    # "layout":Landroid/view/View;
    :cond_0
    :goto_0
    const/4 v1, 0x0

    return v1

    .line 958
    :cond_1
    iget-object v1, p0, Lcom/android/settings/FeatureSettings;->mAirView:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 959
    invoke-virtual {p0}, Lcom/android/settings/FeatureSettings;->makeAirViewLayout()Landroid/view/View;

    move-result-object v0

    .line 960
    .restart local v0    # "layout":Landroid/view/View;
    invoke-virtual {p0}, Lcom/android/settings/FeatureSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a1124

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/FeatureSettings;->showGuideDialog(Landroid/view/View;Ljava/lang/String;)V

    goto :goto_0

    .line 961
    .end local v0    # "layout":Landroid/view/View;
    :cond_2
    iget-object v1, p0, Lcom/android/settings/FeatureSettings;->mAirMotion:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 962
    invoke-virtual {p0}, Lcom/android/settings/FeatureSettings;->makeAirMotionLayout()Landroid/view/View;

    move-result-object v0

    .line 963
    .restart local v0    # "layout":Landroid/view/View;
    invoke-virtual {p0}, Lcom/android/settings/FeatureSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a1258

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/FeatureSettings;->showGuideDialog(Landroid/view/View;Ljava/lang/String;)V

    goto :goto_0

    .line 964
    .end local v0    # "layout":Landroid/view/View;
    :cond_3
    iget-object v1, p0, Lcom/android/settings/FeatureSettings;->mVoiceCmd:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 965
    invoke-virtual {p0}, Lcom/android/settings/FeatureSettings;->makeVoiceCmdLayout()Landroid/view/View;

    move-result-object v0

    .line 966
    .restart local v0    # "layout":Landroid/view/View;
    invoke-virtual {p0}, Lcom/android/settings/FeatureSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a15b5

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/FeatureSettings;->showGuideDialog(Landroid/view/View;Ljava/lang/String;)V

    goto :goto_0

    .line 967
    .end local v0    # "layout":Landroid/view/View;
    :cond_4
    iget-object v1, p0, Lcom/android/settings/FeatureSettings;->mSmartStay:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 968
    invoke-virtual {p0}, Lcom/android/settings/FeatureSettings;->makeSmartStayLayout()Landroid/view/View;

    move-result-object v0

    .line 969
    .restart local v0    # "layout":Landroid/view/View;
    invoke-virtual {p0}, Lcom/android/settings/FeatureSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a1480

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/FeatureSettings;->showGuideDialog(Landroid/view/View;Ljava/lang/String;)V

    goto :goto_0

    .line 970
    .end local v0    # "layout":Landroid/view/View;
    :cond_5
    iget-object v1, p0, Lcom/android/settings/FeatureSettings;->mSmartPause:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 971
    invoke-virtual {p0}, Lcom/android/settings/FeatureSettings;->makeSmartPauseLayout()Landroid/view/View;

    move-result-object v0

    .line 972
    .restart local v0    # "layout":Landroid/view/View;
    invoke-virtual {p0}, Lcom/android/settings/FeatureSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a148d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/FeatureSettings;->showGuideDialog(Landroid/view/View;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 973
    .end local v0    # "layout":Landroid/view/View;
    :cond_6
    iget-object v1, p0, Lcom/android/settings/FeatureSettings;->mSmartScroll:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 974
    invoke-virtual {p0}, Lcom/android/settings/FeatureSettings;->makeSmartScrollLayout()Landroid/view/View;

    move-result-object v0

    .line 975
    .restart local v0    # "layout":Landroid/view/View;
    invoke-virtual {p0}, Lcom/android/settings/FeatureSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a148f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/FeatureSettings;->showGuideDialog(Landroid/view/View;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 976
    .end local v0    # "layout":Landroid/view/View;
    :cond_7
    iget-object v1, p0, Lcom/android/settings/FeatureSettings;->mEasyMode:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 977
    invoke-virtual {p0}, Lcom/android/settings/FeatureSettings;->makeEasyModeLayout()Landroid/view/View;

    move-result-object v0

    .line 978
    .restart local v0    # "layout":Landroid/view/View;
    invoke-virtual {p0}, Lcom/android/settings/FeatureSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a16cc

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/FeatureSettings;->showGuideDialog(Landroid/view/View;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 980
    .end local v0    # "layout":Landroid/view/View;
    :cond_8
    iget-object v1, p0, Lcom/android/settings/FeatureSettings;->mSmartBlock:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 981
    invoke-virtual {p0}, Lcom/android/settings/FeatureSettings;->makeSmartBlockLayout()Landroid/view/View;

    move-result-object v0

    .line 982
    .restart local v0    # "layout":Landroid/view/View;
    invoke-virtual {p0}, Lcom/android/settings/FeatureSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a1495

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/FeatureSettings;->showGuideDialog(Landroid/view/View;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 984
    .end local v0    # "layout":Landroid/view/View;
    :cond_9
    iget-object v1, p0, Lcom/android/settings/FeatureSettings;->mAdapt:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 985
    invoke-virtual {p0}, Lcom/android/settings/FeatureSettings;->makeAdaptDisplayLayout()Landroid/view/View;

    move-result-object v0

    .line 986
    .restart local v0    # "layout":Landroid/view/View;
    invoke-virtual {p0}, Lcom/android/settings/FeatureSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0fbc

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/FeatureSettings;->showGuideDialog(Landroid/view/View;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 988
    .end local v0    # "layout":Landroid/view/View;
    :cond_a
    iget-object v1, p0, Lcom/android/settings/FeatureSettings;->mOPMode:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 989
    invoke-virtual {p0}, Lcom/android/settings/FeatureSettings;->makeOPModeLayout()Landroid/view/View;

    move-result-object v0

    .line 990
    .restart local v0    # "layout":Landroid/view/View;
    invoke-virtual {p0}, Lcom/android/settings/FeatureSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a16e8

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/FeatureSettings;->showGuideDialog(Landroid/view/View;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 992
    .end local v0    # "layout":Landroid/view/View;
    :cond_b
    iget-object v1, p0, Lcom/android/settings/FeatureSettings;->mMulti:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 993
    invoke-virtual {p0}, Lcom/android/settings/FeatureSettings;->makeMultiWindowLayout()Landroid/view/View;

    move-result-object v0

    .line 994
    .restart local v0    # "layout":Landroid/view/View;
    invoke-virtual {p0}, Lcom/android/settings/FeatureSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a06d3

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/FeatureSettings;->showGuideDialog(Landroid/view/View;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 995
    .end local v0    # "layout":Landroid/view/View;
    :cond_c
    iget-object v1, p0, Lcom/android/settings/FeatureSettings;->mMultiUser:Landroid/preference/Preference;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 996
    const v1, 0x7f0a1df0

    const v2, 0x7f0a1df2

    invoke-virtual {p0, v1, v2}, Lcom/android/settings/FeatureSettings;->showMessageOnlyGuideDialog(II)V

    goto/16 :goto_0
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 294
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 295
    iget-object v0, p0, Lcom/android/settings/FeatureSettings;->mEnabler:Lcom/android/settings/nfc/SBeamEnabler;

    if-eqz v0, :cond_0

    .line 296
    iget-object v0, p0, Lcom/android/settings/FeatureSettings;->mEnabler:Lcom/android/settings/nfc/SBeamEnabler;

    invoke-virtual {v0}, Lcom/android/settings/nfc/SBeamEnabler;->procOnResume()V

    .line 298
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/FeatureSettings;->initUI()V

    .line 299
    return-void
.end method

.method public showGuideDialog(Landroid/view/View;Ljava/lang/String;)V
    .locals 3
    .param p1, "layout"    # Landroid/view/View;
    .param p2, "title"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 367
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/FeatureSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 369
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    iget-object v1, p0, Lcom/android/settings/FeatureSettings;->mGuideDialog:Landroid/app/AlertDialog;

    if-eqz v1, :cond_0

    .line 370
    iget-object v1, p0, Lcom/android/settings/FeatureSettings;->mGuideDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    .line 371
    iput-object v2, p0, Lcom/android/settings/FeatureSettings;->mGuideDialog:Landroid/app/AlertDialog;

    .line 374
    :cond_0
    iget-object v1, p0, Lcom/android/settings/FeatureSettings;->mTalkbackDisableDialog:Landroid/app/AlertDialog;

    if-eqz v1, :cond_1

    .line 375
    iget-object v1, p0, Lcom/android/settings/FeatureSettings;->mTalkbackDisableDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    .line 376
    iput-object v2, p0, Lcom/android/settings/FeatureSettings;->mTalkbackDisableDialog:Landroid/app/AlertDialog;

    .line 379
    :cond_1
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 380
    invoke-virtual {v0, p2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 382
    const v1, 0x104000a

    new-instance v2, Lcom/android/settings/FeatureSettings$4;

    invoke-direct {v2, p0}, Lcom/android/settings/FeatureSettings$4;-><init>(Lcom/android/settings/FeatureSettings;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 388
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/FeatureSettings;->mGuideDialog:Landroid/app/AlertDialog;

    .line 389
    iget-object v1, p0, Lcom/android/settings/FeatureSettings;->mGuideDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 390
    return-void
.end method

.method public showMessageOnlyGuideDialog(II)V
    .locals 3
    .param p1, "title_resID"    # I
    .param p2, "message_resID"    # I

    .prologue
    const/4 v2, 0x0

    .line 340
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/FeatureSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 342
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    iget-object v1, p0, Lcom/android/settings/FeatureSettings;->mGuideDialog:Landroid/app/AlertDialog;

    if-eqz v1, :cond_0

    .line 343
    iget-object v1, p0, Lcom/android/settings/FeatureSettings;->mGuideDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    .line 344
    iput-object v2, p0, Lcom/android/settings/FeatureSettings;->mGuideDialog:Landroid/app/AlertDialog;

    .line 347
    :cond_0
    iget-object v1, p0, Lcom/android/settings/FeatureSettings;->mTalkbackDisableDialog:Landroid/app/AlertDialog;

    if-eqz v1, :cond_1

    .line 348
    iget-object v1, p0, Lcom/android/settings/FeatureSettings;->mTalkbackDisableDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    .line 349
    iput-object v2, p0, Lcom/android/settings/FeatureSettings;->mTalkbackDisableDialog:Landroid/app/AlertDialog;

    .line 352
    :cond_1
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 353
    invoke-virtual {v0, p2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 355
    const v1, 0x104000a

    new-instance v2, Lcom/android/settings/FeatureSettings$3;

    invoke-direct {v2, p0}, Lcom/android/settings/FeatureSettings$3;-><init>(Lcom/android/settings/FeatureSettings;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 361
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/FeatureSettings;->mGuideDialog:Landroid/app/AlertDialog;

    .line 362
    iget-object v1, p0, Lcom/android/settings/FeatureSettings;->mGuideDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 363
    return-void
.end method
