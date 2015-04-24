.class public Lcom/android/settings/notification/NotificationSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "NotificationSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settings/search/Indexable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/notification/NotificationSettings$H;,
        Lcom/android/settings/notification/NotificationSettings$SettingsObserver;,
        Lcom/android/settings/notification/NotificationSettings$VolumePreferenceCallback;
    }
.end annotation


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

.field private static final SEEKBAR_MUTED_RES_ID:[I

.field private static final SEEKBAR_UNMUTED_RES_ID:[I


# instance fields
.field private isKioskContainer:Z

.field private mAudioManager:Landroid/media/AudioManager;

.field private mAudioOutput:Landroid/preference/ListPreference;

.field private mContext:Landroid/content/Context;

.field private mDirect:I

.field mDirectUri:Landroid/net/Uri;

.field private final mHandler:Lcom/android/settings/notification/NotificationSettings$H;

.field private mHandlerForMode:Landroid/os/Handler;

.field private mHeadsUpNotification:Landroid/preference/CheckBoxPreference;

.field private mLockscreen:Landroid/preference/ListPreference;

.field private final mLookupRingtoneNames:Ljava/lang/Runnable;

.field private mMediaVolPref:Lcom/android/settings/notification/VolumeSeekBarPreference;

.field private mMySound:Landroid/preference/PreferenceScreen;

.field private mNotiVolPref:Lcom/android/settings/notification/VolumeSeekBarPreference;

.field private mNotificationAccess:Landroid/preference/Preference;

.field private mNotificationHeads:Landroid/preference/TwoStatePreference;

.field private mNotificationRingtonePreference:Landroid/preference/Preference;

.field private mPM:Landroid/content/pm/PackageManager;

.field private mPhoneProfile:Landroid/preference/Preference;

.field private mPhoneRingtone2Preference:Landroid/preference/Preference;

.field private mPhoneRingtonePreference:Landroid/preference/Preference;

.field private mPhoneVibration:Landroid/preference/Preference;

.field private mRingModeChangedReceiver:Landroid/content/BroadcastReceiver;

.field private mRingVolPref:Lcom/android/settings/notification/VolumeSeekBarPreference;

.field private mRingtone:Lcom/android/settings/DefaultRingtonePreference;

.field private mRingtone2:Lcom/android/settings/DefaultRingtonePreference;

.field private mRingtonePreference_DS:Landroid/preference/Preference;

.field private mRingtoyou:Landroid/preference/Preference;

.field private final mSettingsObserver:Lcom/android/settings/notification/NotificationSettings$SettingsObserver;

.field private mSysVolPref:Lcom/android/settings/notification/VolumeSeekBarPreference;

.field private mTcoloring:Landroid/preference/Preference;

.field private mVibrateWhenRinging:Landroid/preference/CheckBoxPreference;

.field private mVoiceCapable:Z

.field private final mVolumeCallback:Lcom/android/settings/notification/NotificationSettings$VolumePreferenceCallback;

.field private mWaitToneVolPref:Lcom/android/settings/notification/VolumeSeekBarPreference;

.field private notification:Landroid/preference/PreferenceCategory;

.field private offset:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x5

    .line 171
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/settings/notification/NotificationSettings;->SEEKBAR_MUTED_RES_ID:[I

    .line 179
    new-array v0, v1, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/settings/notification/NotificationSettings;->SEEKBAR_UNMUTED_RES_ID:[I

    .line 1056
    new-instance v0, Lcom/android/settings/notification/NotificationSettings$8;

    invoke-direct {v0}, Lcom/android/settings/notification/NotificationSettings$8;-><init>()V

    sput-object v0, Lcom/android/settings/notification/NotificationSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    return-void

    .line 171
    nop

    :array_0
    .array-data 4
        0x1080a46
        0x1080a37
        0x1080a30
        0x1080a42
        0x1080a35
    .end array-data

    .line 179
    :array_1
    .array-data 4
        0x1080a46
        0x1080a35
        0x1080a2e
        0x1080a40
        0x1080a35
    .end array-data
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 96
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 134
    new-instance v0, Lcom/android/settings/notification/NotificationSettings$VolumePreferenceCallback;

    invoke-direct {v0, p0, v1}, Lcom/android/settings/notification/NotificationSettings$VolumePreferenceCallback;-><init>(Lcom/android/settings/notification/NotificationSettings;Lcom/android/settings/notification/NotificationSettings$1;)V

    iput-object v0, p0, Lcom/android/settings/notification/NotificationSettings;->mVolumeCallback:Lcom/android/settings/notification/NotificationSettings$VolumePreferenceCallback;

    .line 135
    new-instance v0, Lcom/android/settings/notification/NotificationSettings$H;

    invoke-direct {v0, p0, v1}, Lcom/android/settings/notification/NotificationSettings$H;-><init>(Lcom/android/settings/notification/NotificationSettings;Lcom/android/settings/notification/NotificationSettings$1;)V

    iput-object v0, p0, Lcom/android/settings/notification/NotificationSettings;->mHandler:Lcom/android/settings/notification/NotificationSettings$H;

    .line 136
    new-instance v0, Lcom/android/settings/notification/NotificationSettings$SettingsObserver;

    invoke-direct {v0, p0}, Lcom/android/settings/notification/NotificationSettings$SettingsObserver;-><init>(Lcom/android/settings/notification/NotificationSettings;)V

    iput-object v0, p0, Lcom/android/settings/notification/NotificationSettings;->mSettingsObserver:Lcom/android/settings/notification/NotificationSettings$SettingsObserver;

    .line 188
    iput v2, p0, Lcom/android/settings/notification/NotificationSettings;->mDirect:I

    .line 189
    iput-object v1, p0, Lcom/android/settings/notification/NotificationSettings;->mDirectUri:Landroid/net/Uri;

    .line 204
    iput-boolean v2, p0, Lcom/android/settings/notification/NotificationSettings;->isKioskContainer:Z

    .line 675
    new-instance v0, Lcom/android/settings/notification/NotificationSettings$3;

    invoke-direct {v0, p0}, Lcom/android/settings/notification/NotificationSettings$3;-><init>(Lcom/android/settings/notification/NotificationSettings;)V

    iput-object v0, p0, Lcom/android/settings/notification/NotificationSettings;->mLookupRingtoneNames:Ljava/lang/Runnable;

    .line 867
    new-instance v0, Lcom/android/settings/notification/NotificationSettings$7;

    invoke-direct {v0, p0}, Lcom/android/settings/notification/NotificationSettings$7;-><init>(Lcom/android/settings/notification/NotificationSettings;)V

    iput-object v0, p0, Lcom/android/settings/notification/NotificationSettings;->mHandlerForMode:Landroid/os/Handler;

    .line 1025
    return-void
.end method

.method public static SupportDockSettings(Landroid/content/Context;)Z
    .locals 2
    .param p0, "c"    # Landroid/content/Context;

    .prologue
    .line 475
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x7f0d0000

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_DOCK"

    invoke-static {v0}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic access$1000(Lcom/android/settings/notification/NotificationSettings;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/notification/NotificationSettings;

    .prologue
    .line 96
    invoke-virtual {p0}, Lcom/android/settings/notification/NotificationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/settings/notification/NotificationSettings;)Landroid/preference/CheckBoxPreference;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/notification/NotificationSettings;

    .prologue
    .line 96
    iget-object v0, p0, Lcom/android/settings/notification/NotificationSettings;->mVibrateWhenRinging:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/settings/notification/NotificationSettings;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/notification/NotificationSettings;

    .prologue
    .line 96
    invoke-direct {p0}, Lcom/android/settings/notification/NotificationSettings;->getPhoneSilentModeSettingValue()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/settings/notification/NotificationSettings;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/notification/NotificationSettings;

    .prologue
    .line 96
    iget-object v0, p0, Lcom/android/settings/notification/NotificationSettings;->mHandlerForMode:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/settings/notification/NotificationSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/notification/NotificationSettings;

    .prologue
    .line 96
    invoke-direct {p0}, Lcom/android/settings/notification/NotificationSettings;->refreshVolumePrefs()V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/settings/notification/NotificationSettings;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/notification/NotificationSettings;

    .prologue
    .line 96
    invoke-virtual {p0}, Lcom/android/settings/notification/NotificationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/settings/notification/NotificationSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/notification/NotificationSettings;

    .prologue
    .line 96
    invoke-direct {p0}, Lcom/android/settings/notification/NotificationSettings;->updateVibrateWhenRinging()V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/settings/notification/NotificationSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/notification/NotificationSettings;

    .prologue
    .line 96
    invoke-direct {p0}, Lcom/android/settings/notification/NotificationSettings;->updateHeads()V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/settings/notification/NotificationSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/notification/NotificationSettings;

    .prologue
    .line 96
    invoke-direct {p0}, Lcom/android/settings/notification/NotificationSettings;->updateLockscreenNotifications()V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/settings/notification/NotificationSettings;)Lcom/android/settings/notification/NotificationSettings$VolumePreferenceCallback;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/notification/NotificationSettings;

    .prologue
    .line 96
    iget-object v0, p0, Lcom/android/settings/notification/NotificationSettings;->mVolumeCallback:Lcom/android/settings/notification/NotificationSettings$VolumePreferenceCallback;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/notification/NotificationSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/notification/NotificationSettings;

    .prologue
    .line 96
    invoke-direct {p0}, Lcom/android/settings/notification/NotificationSettings;->startRingtoneSetting()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/settings/notification/NotificationSettings;)Landroid/preference/Preference;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/notification/NotificationSettings;

    .prologue
    .line 96
    iget-object v0, p0, Lcom/android/settings/notification/NotificationSettings;->mPhoneRingtonePreference:Landroid/preference/Preference;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings/notification/NotificationSettings;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/notification/NotificationSettings;

    .prologue
    .line 96
    iget-object v0, p0, Lcom/android/settings/notification/NotificationSettings;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$500(Landroid/content/Context;I)Ljava/lang/CharSequence;
    .locals 1
    .param p0, "x0"    # Landroid/content/Context;
    .param p1, "x1"    # I

    .prologue
    .line 96
    invoke-static {p0, p1}, Lcom/android/settings/notification/NotificationSettings;->updateRingtoneName(Landroid/content/Context;I)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/settings/notification/NotificationSettings;)Lcom/android/settings/notification/NotificationSettings$H;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/notification/NotificationSettings;

    .prologue
    .line 96
    iget-object v0, p0, Lcom/android/settings/notification/NotificationSettings;->mHandler:Lcom/android/settings/notification/NotificationSettings$H;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/settings/notification/NotificationSettings;)Landroid/preference/Preference;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/notification/NotificationSettings;

    .prologue
    .line 96
    iget-object v0, p0, Lcom/android/settings/notification/NotificationSettings;->mPhoneRingtone2Preference:Landroid/preference/Preference;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/settings/notification/NotificationSettings;)Landroid/preference/Preference;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/notification/NotificationSettings;

    .prologue
    .line 96
    iget-object v0, p0, Lcom/android/settings/notification/NotificationSettings;->mNotificationRingtonePreference:Landroid/preference/Preference;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/settings/notification/NotificationSettings;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/notification/NotificationSettings;

    .prologue
    .line 96
    invoke-virtual {p0}, Lcom/android/settings/notification/NotificationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method private getImgIndexOfStream(I)I
    .locals 1
    .param p1, "stream"    # I

    .prologue
    .line 920
    const/4 v0, 0x0

    .line 921
    .local v0, "index":I
    packed-switch p1, :pswitch_data_0

    .line 938
    :goto_0
    :pswitch_0
    return v0

    .line 923
    :pswitch_1
    const/4 v0, 0x0

    .line 924
    goto :goto_0

    .line 926
    :pswitch_2
    const/4 v0, 0x1

    .line 927
    goto :goto_0

    .line 929
    :pswitch_3
    const/4 v0, 0x2

    .line 930
    goto :goto_0

    .line 932
    :pswitch_4
    const/4 v0, 0x3

    .line 933
    goto :goto_0

    .line 935
    :pswitch_5
    const/4 v0, 0x4

    goto :goto_0

    .line 921
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_5
    .end packed-switch
.end method

.method private getLockscreenAllowPrivateNotifications()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 839
    invoke-virtual {p0}, Lcom/android/settings/notification/NotificationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "lock_screen_allow_private_notifications"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private getLockscreenNotificationsEnabled()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 834
    invoke-virtual {p0}, Lcom/android/settings/notification/NotificationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "lock_screen_show_notifications"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private getPhoneSilentModeSettingValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 942
    iget-object v0, p0, Lcom/android/settings/notification/NotificationSettings;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 951
    const-string v0, "off"

    :goto_0
    return-object v0

    .line 944
    :pswitch_0
    const-string v0, "off"

    goto :goto_0

    .line 946
    :pswitch_1
    const-string v0, "vibrate"

    goto :goto_0

    .line 948
    :pswitch_2
    const-string v0, "mute"

    goto :goto_0

    .line 942
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private initHeads(Landroid/preference/PreferenceCategory;)V
    .locals 2
    .param p1, "parent"    # Landroid/preference/PreferenceCategory;

    .prologue
    .line 808
    const-string v0, "heads_up_notifications_enabled"

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/TwoStatePreference;

    iput-object v0, p0, Lcom/android/settings/notification/NotificationSettings;->mNotificationHeads:Landroid/preference/TwoStatePreference;

    .line 809
    iget-object v0, p0, Lcom/android/settings/notification/NotificationSettings;->mNotificationHeads:Landroid/preference/TwoStatePreference;

    if-nez v0, :cond_0

    .line 810
    const-string v0, "NotificationSettings"

    const-string v1, "Preference not found: notification_Heads Up"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 828
    :goto_0
    return-void

    .line 813
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/notification/NotificationSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1120030

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 815
    iget-object v0, p0, Lcom/android/settings/notification/NotificationSettings;->mNotificationHeads:Landroid/preference/TwoStatePreference;

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_0

    .line 817
    :cond_1
    invoke-direct {p0}, Lcom/android/settings/notification/NotificationSettings;->updateHeads()V

    .line 818
    iget-object v0, p0, Lcom/android/settings/notification/NotificationSettings;->mNotificationHeads:Landroid/preference/TwoStatePreference;

    new-instance v1, Lcom/android/settings/notification/NotificationSettings$6;

    invoke-direct {v1, p0}, Lcom/android/settings/notification/NotificationSettings$6;-><init>(Lcom/android/settings/notification/NotificationSettings;)V

    invoke-virtual {v0, v1}, Landroid/preference/TwoStatePreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    goto :goto_0
.end method

.method private initLockscreenNotifications(Landroid/preference/PreferenceCategory;)V
    .locals 3
    .param p1, "parent"    # Landroid/preference/PreferenceCategory;

    .prologue
    .line 806
    const-string v1, "lock_screen_notifications"

    invoke-virtual {p1, v1}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/ListPreference;

    iput-object v1, p0, Lcom/android/settings/notification/NotificationSettings;->mLockscreen:Landroid/preference/ListPreference;

    .line 807
    iget-object v1, p0, Lcom/android/settings/notification/NotificationSettings;->mLockscreen:Landroid/preference/ListPreference;

    if-nez v1, :cond_0

    .line 808
    const-string v1, "NotificationSettings"

    const-string v2, "Preference not found: lock_screen_notifications"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 818
    :goto_0
    return-void

    .line 811
    :cond_0
    iget-object v1, p0, Lcom/android/settings/notification/NotificationSettings;->mLockscreen:Landroid/preference/ListPreference;

    invoke-virtual {v1, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 812
    const/4 v1, 0x3

    new-array v0, v1, [Ljava/lang/CharSequence;

    const/4 v1, 0x0

    const v2, 0x7f0a0ef2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const v2, 0x7f0a0ef3

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const v2, 0x7f0a0ef4

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 816
    .local v0, "entryValues":[Ljava/lang/CharSequence;
    iget-object v1, p0, Lcom/android/settings/notification/NotificationSettings;->mLockscreen:Landroid/preference/ListPreference;

    invoke-virtual {v1, v0}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 817
    invoke-direct {p0}, Lcom/android/settings/notification/NotificationSettings;->updateLockscreenNotifications()V

    goto :goto_0
.end method

.method private initRingtones(Landroid/preference/PreferenceCategory;)V
    .locals 1
    .param p1, "root"    # Landroid/preference/PreferenceCategory;

    .prologue
    .line 662
    const-string v0, "ringtone"

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/notification/NotificationSettings;->mPhoneRingtonePreference:Landroid/preference/Preference;

    .line 663
    const-string v0, "ringtone2"

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/notification/NotificationSettings;->mPhoneRingtone2Preference:Landroid/preference/Preference;

    .line 664
    iget-object v0, p0, Lcom/android/settings/notification/NotificationSettings;->mPhoneRingtonePreference:Landroid/preference/Preference;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/settings/notification/NotificationSettings;->mVoiceCapable:Z

    if-nez v0, :cond_0

    .line 665
    iget-object v0, p0, Lcom/android/settings/notification/NotificationSettings;->mPhoneRingtonePreference:Landroid/preference/Preference;

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 666
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/notification/NotificationSettings;->mPhoneRingtonePreference:Landroid/preference/Preference;

    .line 668
    :cond_0
    const-string v0, "notification_ringtone"

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/notification/NotificationSettings;->mNotificationRingtonePreference:Landroid/preference/Preference;

    .line 669
    return-void
.end method

.method private initVibrateWhenRinging(Landroid/preference/PreferenceCategory;)V
    .locals 2
    .param p1, "root"    # Landroid/preference/PreferenceCategory;

    .prologue
    .line 737
    const-string v0, "vibrate_when_ringing"

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/notification/NotificationSettings;->mVibrateWhenRinging:Landroid/preference/CheckBoxPreference;

    .line 738
    iget-object v0, p0, Lcom/android/settings/notification/NotificationSettings;->mVibrateWhenRinging:Landroid/preference/CheckBoxPreference;

    if-nez v0, :cond_0

    .line 739
    const-string v0, "NotificationSettings"

    const-string v1, "Preference not found: vibrate_when_ringing"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 758
    :goto_0
    return-void

    .line 742
    :cond_0
    iget-boolean v0, p0, Lcom/android/settings/notification/NotificationSettings;->mVoiceCapable:Z

    if-nez v0, :cond_1

    .line 743
    iget-object v0, p0, Lcom/android/settings/notification/NotificationSettings;->mVibrateWhenRinging:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 744
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/notification/NotificationSettings;->mVibrateWhenRinging:Landroid/preference/CheckBoxPreference;

    goto :goto_0

    .line 747
    :cond_1
    iget-object v0, p0, Lcom/android/settings/notification/NotificationSettings;->mVibrateWhenRinging:Landroid/preference/CheckBoxPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setPersistent(Z)V

    .line 748
    invoke-direct {p0}, Lcom/android/settings/notification/NotificationSettings;->updateVibrateWhenRinging()V

    .line 749
    iget-object v0, p0, Lcom/android/settings/notification/NotificationSettings;->mVibrateWhenRinging:Landroid/preference/CheckBoxPreference;

    new-instance v1, Lcom/android/settings/notification/NotificationSettings$4;

    invoke-direct {v1, p0}, Lcom/android/settings/notification/NotificationSettings$4;-><init>(Lcom/android/settings/notification/NotificationSettings;)V

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    goto :goto_0
.end method

.method private initVolumePreference(Landroid/preference/PreferenceCategory;)V
    .locals 2
    .param p1, "root"    # Landroid/preference/PreferenceCategory;

    .prologue
    .line 546
    const-string v0, "media_volume"

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/notification/VolumeSeekBarPreference;

    iput-object v0, p0, Lcom/android/settings/notification/NotificationSettings;->mMediaVolPref:Lcom/android/settings/notification/VolumeSeekBarPreference;

    .line 547
    iget-object v0, p0, Lcom/android/settings/notification/NotificationSettings;->mMediaVolPref:Lcom/android/settings/notification/VolumeSeekBarPreference;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/android/settings/notification/VolumeSeekBarPreference;->setStream(I)V

    .line 548
    iget-object v0, p0, Lcom/android/settings/notification/NotificationSettings;->mMediaVolPref:Lcom/android/settings/notification/VolumeSeekBarPreference;

    iget-object v1, p0, Lcom/android/settings/notification/NotificationSettings;->mVolumeCallback:Lcom/android/settings/notification/NotificationSettings$VolumePreferenceCallback;

    invoke-virtual {v0, v1}, Lcom/android/settings/notification/VolumeSeekBarPreference;->setCallback(Lcom/android/settings/notification/VolumeSeekBarPreference$Callback;)V

    .line 550
    const-string v0, "notification_volume"

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/notification/VolumeSeekBarPreference;

    iput-object v0, p0, Lcom/android/settings/notification/NotificationSettings;->mNotiVolPref:Lcom/android/settings/notification/VolumeSeekBarPreference;

    .line 551
    iget-object v0, p0, Lcom/android/settings/notification/NotificationSettings;->mNotiVolPref:Lcom/android/settings/notification/VolumeSeekBarPreference;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/android/settings/notification/VolumeSeekBarPreference;->setStream(I)V

    .line 552
    iget-object v0, p0, Lcom/android/settings/notification/NotificationSettings;->mNotiVolPref:Lcom/android/settings/notification/VolumeSeekBarPreference;

    iget-object v1, p0, Lcom/android/settings/notification/NotificationSettings;->mVolumeCallback:Lcom/android/settings/notification/NotificationSettings$VolumePreferenceCallback;

    invoke-virtual {v0, v1}, Lcom/android/settings/notification/VolumeSeekBarPreference;->setCallback(Lcom/android/settings/notification/VolumeSeekBarPreference$Callback;)V

    .line 554
    const-string v0, "system_volume"

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/notification/VolumeSeekBarPreference;

    iput-object v0, p0, Lcom/android/settings/notification/NotificationSettings;->mSysVolPref:Lcom/android/settings/notification/VolumeSeekBarPreference;

    .line 555
    iget-object v0, p0, Lcom/android/settings/notification/NotificationSettings;->mSysVolPref:Lcom/android/settings/notification/VolumeSeekBarPreference;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/settings/notification/VolumeSeekBarPreference;->setStream(I)V

    .line 556
    iget-object v0, p0, Lcom/android/settings/notification/NotificationSettings;->mSysVolPref:Lcom/android/settings/notification/VolumeSeekBarPreference;

    iget-object v1, p0, Lcom/android/settings/notification/NotificationSettings;->mVolumeCallback:Lcom/android/settings/notification/NotificationSettings$VolumePreferenceCallback;

    invoke-virtual {v0, v1}, Lcom/android/settings/notification/VolumeSeekBarPreference;->setCallback(Lcom/android/settings/notification/VolumeSeekBarPreference$Callback;)V

    .line 558
    const-string v0, "alarm_volume"

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 559
    iget-boolean v0, p0, Lcom/android/settings/notification/NotificationSettings;->mVoiceCapable:Z

    if-eqz v0, :cond_1

    .line 560
    const-string v0, "ring_volume"

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/notification/VolumeSeekBarPreference;

    iput-object v0, p0, Lcom/android/settings/notification/NotificationSettings;->mRingVolPref:Lcom/android/settings/notification/VolumeSeekBarPreference;

    .line 561
    iget-object v0, p0, Lcom/android/settings/notification/NotificationSettings;->mRingVolPref:Lcom/android/settings/notification/VolumeSeekBarPreference;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/settings/notification/VolumeSeekBarPreference;->setStream(I)V

    .line 562
    iget-object v0, p0, Lcom/android/settings/notification/NotificationSettings;->mRingVolPref:Lcom/android/settings/notification/VolumeSeekBarPreference;

    iget-object v1, p0, Lcom/android/settings/notification/NotificationSettings;->mVolumeCallback:Lcom/android/settings/notification/NotificationSettings$VolumePreferenceCallback;

    invoke-virtual {v0, v1}, Lcom/android/settings/notification/VolumeSeekBarPreference;->setCallback(Lcom/android/settings/notification/VolumeSeekBarPreference$Callback;)V

    .line 567
    :goto_0
    invoke-static {}, Lcom/android/settings/Utils;->isDomesticSKTModel()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    if-eqz v0, :cond_2

    .line 568
    :cond_0
    const-string v0, "waiting_tone_volume"

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 574
    :goto_1
    return-void

    .line 564
    :cond_1
    const-string v0, "ring_volume"

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_0

    .line 570
    :cond_2
    const-string v0, "waiting_tone_volume"

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/notification/VolumeSeekBarPreference;

    iput-object v0, p0, Lcom/android/settings/notification/NotificationSettings;->mWaitToneVolPref:Lcom/android/settings/notification/VolumeSeekBarPreference;

    .line 571
    iget-object v0, p0, Lcom/android/settings/notification/NotificationSettings;->mWaitToneVolPref:Lcom/android/settings/notification/VolumeSeekBarPreference;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/settings/notification/VolumeSeekBarPreference;->setStream(I)V

    .line 572
    iget-object v0, p0, Lcom/android/settings/notification/NotificationSettings;->mWaitToneVolPref:Lcom/android/settings/notification/VolumeSeekBarPreference;

    iget-object v1, p0, Lcom/android/settings/notification/NotificationSettings;->mVolumeCallback:Lcom/android/settings/notification/NotificationSettings$VolumePreferenceCallback;

    invoke-virtual {v0, v1}, Lcom/android/settings/notification/VolumeSeekBarPreference;->setCallback(Lcom/android/settings/notification/VolumeSeekBarPreference$Callback;)V

    goto :goto_1
.end method

.method public static isConnected(Landroid/content/Context;)Z
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 1265
    const-string v6, "connectivity"

    invoke-virtual {p0, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 1268
    .local v1, "connectivityManager":Landroid/net/ConnectivityManager;
    if-eqz v1, :cond_3

    .line 1269
    invoke-virtual {v1, v4}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v3

    .line 1271
    .local v3, "wifiNetwork":Landroid/net/NetworkInfo;
    invoke-virtual {v1, v5}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v2

    .line 1273
    .local v2, "mobileNetwork":Landroid/net/NetworkInfo;
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 1275
    .local v0, "activeNetwork":Landroid/net/NetworkInfo;
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1283
    .end local v0    # "activeNetwork":Landroid/net/NetworkInfo;
    .end local v2    # "mobileNetwork":Landroid/net/NetworkInfo;
    .end local v3    # "wifiNetwork":Landroid/net/NetworkInfo;
    :cond_0
    :goto_0
    return v4

    .line 1277
    .restart local v0    # "activeNetwork":Landroid/net/NetworkInfo;
    .restart local v2    # "mobileNetwork":Landroid/net/NetworkInfo;
    .restart local v3    # "wifiNetwork":Landroid/net/NetworkInfo;
    :cond_1
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v6

    if-nez v6, :cond_0

    .line 1279
    :cond_2
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v6

    if-nez v6, :cond_0

    .end local v0    # "activeNetwork":Landroid/net/NetworkInfo;
    .end local v2    # "mobileNetwork":Landroid/net/NetworkInfo;
    .end local v3    # "wifiNetwork":Landroid/net/NetworkInfo;
    :cond_3
    move v4, v5

    .line 1283
    goto :goto_0
.end method

.method private isContainerOnlyMode(Landroid/content/Context;)Z
    .locals 4
    .param p1, "mCtx"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 1288
    if-nez p1, :cond_1

    .line 1298
    :cond_0
    :goto_0
    return v1

    .line 1292
    :cond_1
    const-string v2, "isKioskModeEnabled"

    invoke-static {p1, v2}, Landroid/os/PersonaManager;->getKnoxInfoForApp(Landroid/content/Context;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 1294
    .local v0, "bundle":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    const-string v2, "true"

    const-string v3, "isKioskModeEnabled"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1295
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private lookupRingtoneNames()V
    .locals 1

    .prologue
    .line 672
    iget-object v0, p0, Lcom/android/settings/notification/NotificationSettings;->mLookupRingtoneNames:Ljava/lang/Runnable;

    invoke-static {v0}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    .line 673
    return-void
.end method

.method private refreshNotificationListeners()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 964
    iget-object v2, p0, Lcom/android/settings/notification/NotificationSettings;->mNotificationAccess:Landroid/preference/Preference;

    if-eqz v2, :cond_0

    .line 965
    iget-object v2, p0, Lcom/android/settings/notification/NotificationSettings;->mPM:Landroid/content/pm/PackageManager;

    invoke-static {v2}, Lcom/android/settings/notification/NotificationAccessSettings;->getListenersCount(Landroid/content/pm/PackageManager;)I

    move-result v1

    .line 966
    .local v1, "total":I
    if-nez v1, :cond_1

    .line 967
    iget-object v2, p0, Lcom/android/settings/notification/NotificationSettings;->notification:Landroid/preference/PreferenceCategory;

    iget-object v3, p0, Lcom/android/settings/notification/NotificationSettings;->mNotificationAccess:Landroid/preference/Preference;

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 980
    .end local v1    # "total":I
    :cond_0
    :goto_0
    return-void

    .line 969
    .restart local v1    # "total":I
    :cond_1
    iget-object v2, p0, Lcom/android/settings/notification/NotificationSettings;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/settings/notification/NotificationAccessSettings;->getEnabledListenersCount(Landroid/content/Context;)I

    move-result v0

    .line 970
    .local v0, "n":I
    if-nez v0, :cond_2

    .line 971
    iget-object v2, p0, Lcom/android/settings/notification/NotificationSettings;->mNotificationAccess:Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settings/notification/NotificationSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a02c6

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 974
    :cond_2
    iget-object v2, p0, Lcom/android/settings/notification/NotificationSettings;->mNotificationAccess:Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settings/notification/NotificationSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f110007

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-virtual {v3, v4, v0, v5}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-array v4, v7, [Ljava/lang/Object;

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private refreshVolumePrefs()V
    .locals 2

    .prologue
    .line 874
    iget-boolean v0, p0, Lcom/android/settings/notification/NotificationSettings;->mVoiceCapable:Z

    if-eqz v0, :cond_0

    .line 875
    iget-object v0, p0, Lcom/android/settings/notification/NotificationSettings;->mRingVolPref:Lcom/android/settings/notification/VolumeSeekBarPreference;

    const/4 v1, 0x2

    invoke-direct {p0, v0, v1}, Lcom/android/settings/notification/NotificationSettings;->updateVolumePref(Lcom/android/settings/notification/VolumeSeekBarPreference;I)V

    .line 877
    :cond_0
    iget-object v0, p0, Lcom/android/settings/notification/NotificationSettings;->mMediaVolPref:Lcom/android/settings/notification/VolumeSeekBarPreference;

    const/4 v1, 0x3

    invoke-direct {p0, v0, v1}, Lcom/android/settings/notification/NotificationSettings;->updateVolumePref(Lcom/android/settings/notification/VolumeSeekBarPreference;I)V

    .line 878
    iget-object v0, p0, Lcom/android/settings/notification/NotificationSettings;->mNotiVolPref:Lcom/android/settings/notification/VolumeSeekBarPreference;

    const/4 v1, 0x5

    invoke-direct {p0, v0, v1}, Lcom/android/settings/notification/NotificationSettings;->updateVolumePref(Lcom/android/settings/notification/VolumeSeekBarPreference;I)V

    .line 879
    iget-object v0, p0, Lcom/android/settings/notification/NotificationSettings;->mSysVolPref:Lcom/android/settings/notification/VolumeSeekBarPreference;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/settings/notification/NotificationSettings;->updateVolumePref(Lcom/android/settings/notification/VolumeSeekBarPreference;I)V

    .line 880
    iget-object v0, p0, Lcom/android/settings/notification/NotificationSettings;->mWaitToneVolPref:Lcom/android/settings/notification/VolumeSeekBarPreference;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/notification/NotificationSettings;->mWaitToneVolPref:Lcom/android/settings/notification/VolumeSeekBarPreference;

    const/16 v1, 0x8

    invoke-direct {p0, v0, v1}, Lcom/android/settings/notification/NotificationSettings;->updateVolumePref(Lcom/android/settings/notification/VolumeSeekBarPreference;I)V

    .line 881
    :cond_1
    return-void
.end method

.method private registerListeners()V
    .locals 3

    .prologue
    .line 844
    iget-object v1, p0, Lcom/android/settings/notification/NotificationSettings;->mRingModeChangedReceiver:Landroid/content/BroadcastReceiver;

    if-nez v1, :cond_0

    .line 845
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 846
    .local v0, "mfilter":Landroid/content/IntentFilter;
    const-string v1, "android.media.RINGER_MODE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 847
    new-instance v1, Lcom/android/settings/notification/NotificationSettings$6;

    invoke-direct {v1, p0}, Lcom/android/settings/notification/NotificationSettings$6;-><init>(Lcom/android/settings/notification/NotificationSettings;)V

    iput-object v1, p0, Lcom/android/settings/notification/NotificationSettings;->mRingModeChangedReceiver:Landroid/content/BroadcastReceiver;

    .line 863
    invoke-virtual {p0}, Lcom/android/settings/notification/NotificationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/notification/NotificationSettings;->mRingModeChangedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 865
    .end local v0    # "mfilter":Landroid/content/IntentFilter;
    :cond_0
    return-void
.end method

.method private releaseListeners()V
    .locals 2

    .prologue
    .line 955
    iget-object v0, p0, Lcom/android/settings/notification/NotificationSettings;->mRingModeChangedReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 956
    invoke-virtual {p0}, Lcom/android/settings/notification/NotificationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/notification/NotificationSettings;->mRingModeChangedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 957
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/notification/NotificationSettings;->mRingModeChangedReceiver:Landroid/content/BroadcastReceiver;

    .line 959
    :cond_0
    return-void
.end method

.method private startRingtoneSetting()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 453
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 454
    .local v2, "intent":Landroid/content/Intent;
    const-string v5, "com.android.settings"

    invoke-virtual {v2, v5}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 455
    const-string v5, "sound title"

    iget-object v6, p0, Lcom/android/settings/notification/NotificationSettings;->mRingtonePreference_DS:Landroid/preference/Preference;

    invoke-virtual {v6}, Landroid/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 456
    const-string v5, "gsm.sim.state"

    const-string v6, "UNKNOWN"

    invoke-static {v5, v7, v6}, Lcom/samsung/android/telephony/MultiSimManager;->getTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 457
    .local v3, "simState1":Ljava/lang/String;
    const-string v5, "gsm.sim.state"

    const-string v6, "UNKNOWN"

    invoke-static {v5, v8, v6}, Lcom/samsung/android/telephony/MultiSimManager;->getTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 458
    .local v4, "simState2":Ljava/lang/String;
    const-string v5, "gsm.sim.currentcardstatus"

    const-string v6, "9"

    invoke-static {v5, v7, v6}, Lcom/samsung/android/telephony/MultiSimManager;->getTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 459
    .local v0, "cardStatus1":Ljava/lang/String;
    const-string v5, "gsm.sim.currentcardstatus"

    const-string v6, "9"

    invoke-static {v5, v8, v6}, Lcom/samsung/android/telephony/MultiSimManager;->getTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 460
    .local v1, "cardStatus2":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/settings/notification/NotificationSettings;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/samsung/android/telephony/MultiSimManager;->getEnabledSimCount(Landroid/content/Context;)I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_0

    .line 461
    const-string v5, "sound title"

    iget-object v6, p0, Lcom/android/settings/notification/NotificationSettings;->mRingtonePreference_DS:Landroid/preference/Preference;

    invoke-virtual {v6}, Landroid/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 462
    invoke-virtual {p0}, Lcom/android/settings/notification/NotificationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const-string v6, "com.android.settings.RingtoneSettingTabActivity"

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 471
    :goto_0
    invoke-virtual {p0, v2}, Lcom/android/settings/notification/NotificationSettings;->startActivity(Landroid/content/Intent;)V

    .line 472
    return-void

    .line 463
    :cond_0
    const-string v5, "3"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    const-string v5, "3"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    :cond_1
    const-string v5, "READY"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    const-string v5, "READY"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 465
    :cond_2
    const-string v5, "sim Id"

    invoke-virtual {v2, v5, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 466
    invoke-virtual {p0}, Lcom/android/settings/notification/NotificationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const-string v6, "com.android.settings.DualSoundRingtoneSettings"

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 468
    :cond_3
    const-string v5, "sim Id"

    invoke-virtual {v2, v5, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 469
    invoke-virtual {p0}, Lcom/android/settings/notification/NotificationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const-string v6, "com.android.settings.DualSoundRingtoneSettings"

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0
.end method

.method private updateHeads()V
    .locals 5

    .prologue
    const/4 v1, 0x1

    .line 831
    iget-object v2, p0, Lcom/android/settings/notification/NotificationSettings;->mNotificationHeads:Landroid/preference/TwoStatePreference;

    if-nez v2, :cond_0

    .line 840
    :goto_0
    return-void

    .line 835
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/android/settings/notification/NotificationSettings;->mNotificationHeads:Landroid/preference/TwoStatePreference;

    invoke-virtual {p0}, Lcom/android/settings/notification/NotificationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "heads_up_notifications_enabled"

    invoke-static {v3, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v3

    if-ne v3, v1, :cond_1

    :goto_1
    invoke-virtual {v2, v1}, Landroid/preference/TwoStatePreference;->setChecked(Z)V
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 837
    :catch_0
    move-exception v0

    .line 838
    .local v0, "snfe":Landroid/provider/Settings$SettingNotFoundException;
    const-string v1, "NotificationSettings"

    const-string v2, "notification_light_headsup not found"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 835
    .end local v0    # "snfe":Landroid/provider/Settings$SettingNotFoundException;
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private updateLockscreenNotifications()V
    .locals 5

    .prologue
    .line 821
    iget-object v3, p0, Lcom/android/settings/notification/NotificationSettings;->mLockscreen:Landroid/preference/ListPreference;

    if-nez v3, :cond_0

    .line 831
    :goto_0
    return-void

    .line 824
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/notification/NotificationSettings;->getLockscreenAllowPrivateNotifications()Z

    move-result v0

    .line 825
    .local v0, "allowPrivate":Z
    invoke-direct {p0}, Lcom/android/settings/notification/NotificationSettings;->getLockscreenNotificationsEnabled()Z

    move-result v1

    .line 826
    .local v1, "enabled":Z
    if-nez v1, :cond_1

    const v2, 0x7f0a0ef4

    .line 829
    .local v2, "selectedVal":I
    :goto_1
    iget-object v3, p0, Lcom/android/settings/notification/NotificationSettings;->mLockscreen:Landroid/preference/ListPreference;

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 830
    iget-object v3, p0, Lcom/android/settings/notification/NotificationSettings;->mLockscreen:Landroid/preference/ListPreference;

    iget-object v4, p0, Lcom/android/settings/notification/NotificationSettings;->mLockscreen:Landroid/preference/ListPreference;

    invoke-virtual {v4}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 826
    .end local v2    # "selectedVal":I
    :cond_1
    if-eqz v0, :cond_2

    const v2, 0x7f0a0ef2

    goto :goto_1

    :cond_2
    const v2, 0x7f0a0ef3

    goto :goto_1
.end method

.method private updateMediaDB(Landroid/net/Uri;)Landroid/net/Uri;
    .locals 12
    .param p1, "originalUri"    # Landroid/net/Uri;

    .prologue
    const/4 v6, 0x0

    .line 1186
    const-string v9, "NotificationSettings"

    const-string v10, "UpdateMediaDB"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1187
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v3

    .line 1188
    .local v3, "filePath":Ljava/lang/String;
    invoke-static {v3}, Landroid/webkit/MimeTypeMap;->getFileExtensionFromUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1189
    .local v2, "extension":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 1190
    const/16 v9, 0x2e

    invoke-virtual {v3, v9}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 1191
    .local v0, "dotPos":I
    if-ltz v0, :cond_0

    .line 1192
    add-int/lit8 v9, v0, 0x1

    invoke-virtual {v3, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 1197
    .end local v0    # "dotPos":I
    :cond_0
    :try_start_0
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v9

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1198
    .local v4, "mimeType":Ljava/lang/String;
    if-eqz v4, :cond_1

    .line 1199
    const-string v9, "NotificationSettings"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "updateMediaDB - extension("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "), mimeType("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ")"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1200
    const-string v9, "audio"

    invoke-virtual {v4, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_1

    .line 1201
    const-string v9, "NotificationSettings"

    const-string v10, "updateMediaDB - mimeType is not audio - return null"

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1243
    .end local v4    # "mimeType":Ljava/lang/String;
    :goto_0
    return-object v6

    .line 1207
    .restart local v4    # "mimeType":Ljava/lang/String;
    :cond_1
    if-nez v4, :cond_2

    const-string v9, "3ga"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 1209
    const-string v9, "NotificationSettings"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "updateMediaDB - no mimeType, but it\'s audio file extension - "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1216
    :cond_2
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1232
    .local v5, "newSoundFile":Ljava/io/File;
    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    .line 1233
    .local v8, "values":Landroid/content/ContentValues;
    const-string v9, "_data"

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1234
    const-string v9, "title"

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1235
    const-string v9, "mime_type"

    const-string v10, "audio/*"

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1236
    const-string v9, "_size"

    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1238
    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/provider/MediaStore$Audio$Media;->getContentUriForPath(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    .line 1239
    .local v7, "tempUri":Landroid/net/Uri;
    invoke-virtual {p0}, Lcom/android/settings/notification/NotificationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "_data=\""

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\""

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v7, v10, v6}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1240
    invoke-virtual {p0}, Lcom/android/settings/notification/NotificationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    invoke-virtual {v9, v7, v8}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v6

    .line 1241
    .local v6, "newUri":Landroid/net/Uri;
    const-string v9, "NotificationSettings"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "updateMediaDB - tempUri("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "), newUri("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ")"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1211
    .end local v4    # "mimeType":Ljava/lang/String;
    .end local v5    # "newSoundFile":Ljava/io/File;
    .end local v6    # "newUri":Landroid/net/Uri;
    .end local v7    # "tempUri":Landroid/net/Uri;
    .end local v8    # "values":Landroid/content/ContentValues;
    :catch_0
    move-exception v1

    .line 1212
    .local v1, "e":Ljava/lang/Exception;
    const-string v9, "NotificationSettings"

    const-string v10, "updateMediaDB - exception is Occured - return null"

    invoke-static {v9, v10, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0
.end method

.method private updateRingtoneData(I)V
    .locals 1
    .param p1, "ringtoneType"    # I

    .prologue
    .line 1247
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 1248
    iget-object v0, p0, Lcom/android/settings/notification/NotificationSettings;->mRingtone:Lcom/android/settings/DefaultRingtonePreference;

    if-eqz v0, :cond_0

    .line 1249
    invoke-direct {p0}, Lcom/android/settings/notification/NotificationSettings;->lookupRingtoneNames()V

    .line 1256
    :cond_0
    :goto_0
    return-void

    .line 1252
    :cond_1
    iget-object v0, p0, Lcom/android/settings/notification/NotificationSettings;->mRingtone2:Lcom/android/settings/DefaultRingtonePreference;

    if-eqz v0, :cond_0

    .line 1253
    invoke-direct {p0}, Lcom/android/settings/notification/NotificationSettings;->lookupRingtoneNames()V

    goto :goto_0
.end method

.method private static updateRingtoneName(Landroid/content/Context;I)Ljava/lang/CharSequence;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "type"    # I

    .prologue
    const/4 v7, 0x0

    .line 703
    if-nez p0, :cond_1

    .line 704
    const-string v0, "NotificationSettings"

    const-string v2, "Unable to update ringtone name, no context provided"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 731
    :cond_0
    :goto_0
    return-object v7

    .line 707
    :cond_1
    invoke-static {p0, p1}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v1

    .line 708
    .local v1, "ringtoneUri":Landroid/net/Uri;
    const v0, 0x10404b5

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 710
    .local v7, "summary":Ljava/lang/CharSequence;
    if-nez v1, :cond_2

    .line 711
    const v0, 0x10404b3

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    goto :goto_0

    .line 714
    :cond_2
    const/4 v6, 0x0

    .line 716
    .local v6, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "title"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 718
    if-eqz v6, :cond_3

    .line 719
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 720
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v7

    .line 726
    :cond_3
    if-eqz v6, :cond_0

    .line 727
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 723
    :catch_0
    move-exception v0

    .line 726
    if-eqz v6, :cond_0

    .line 727
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 726
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_4

    .line 727
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v0
.end method

.method private updateVibrateWhenRinging()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 761
    iget-object v1, p0, Lcom/android/settings/notification/NotificationSettings;->mVibrateWhenRinging:Landroid/preference/CheckBoxPreference;

    if-nez v1, :cond_0

    .line 764
    :goto_0
    return-void

    .line 762
    :cond_0
    iget-object v1, p0, Lcom/android/settings/notification/NotificationSettings;->mVibrateWhenRinging:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/notification/NotificationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "vibrate_when_ringing"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_1

    const/4 v0, 0x1

    :cond_1
    invoke-virtual {v1, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_0
.end method

.method private updateVolumePref(Lcom/android/settings/notification/VolumeSeekBarPreference;I)V
    .locals 8
    .param p1, "volSeekbarPref"    # Lcom/android/settings/notification/VolumeSeekBarPreference;
    .param p2, "streamType"    # I

    .prologue
    const/4 v7, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 884
    iget-object v3, p0, Lcom/android/settings/notification/NotificationSettings;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v3, p2}, Landroid/media/AudioManager;->isStreamMute(I)Z

    move-result v2

    .line 885
    .local v2, "muted":Z
    iget-object v3, p0, Lcom/android/settings/notification/NotificationSettings;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v3}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v3

    if-ne v3, v4, :cond_4

    .line 886
    if-ne p2, v7, :cond_2

    .line 887
    const v3, 0x1080a3b

    invoke-virtual {p1, v3}, Lcom/android/settings/notification/VolumeSeekBarPreference;->setIcon(I)V

    .line 904
    :cond_0
    :goto_0
    if-eqz p1, :cond_1

    const/16 v3, 0x8

    if-eq p2, v3, :cond_1

    .line 907
    iget-object v3, p0, Lcom/android/settings/notification/NotificationSettings;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v3}, Landroid/media/AudioManager;->getMasterStreamType()I

    move-result v3

    if-eq p2, v3, :cond_6

    if-eqz v2, :cond_6

    .line 908
    invoke-virtual {p1, v5}, Lcom/android/settings/notification/VolumeSeekBarPreference;->setEnabled(Z)V

    .line 917
    :cond_1
    :goto_1
    return-void

    .line 890
    :cond_2
    const/4 v3, 0x5

    if-ne p2, v3, :cond_3

    .line 891
    const v3, 0x1080a32

    invoke-virtual {p1, v3}, Lcom/android/settings/notification/VolumeSeekBarPreference;->setIcon(I)V

    goto :goto_0

    .line 894
    :cond_3
    if-ne p2, v4, :cond_0

    .line 895
    const v3, 0x1080a44

    invoke-virtual {p1, v3}, Lcom/android/settings/notification/VolumeSeekBarPreference;->setIcon(I)V

    goto :goto_0

    .line 899
    :cond_4
    invoke-direct {p0, p2}, Lcom/android/settings/notification/NotificationSettings;->getImgIndexOfStream(I)I

    move-result v0

    .line 900
    .local v0, "iconIndex":I
    if-eqz v2, :cond_5

    sget-object v3, Lcom/android/settings/notification/NotificationSettings;->SEEKBAR_MUTED_RES_ID:[I

    aget v3, v3, v0

    :goto_2
    invoke-virtual {p1, v3}, Lcom/android/settings/notification/VolumeSeekBarPreference;->setIcon(I)V

    goto :goto_0

    :cond_5
    sget-object v3, Lcom/android/settings/notification/NotificationSettings;->SEEKBAR_UNMUTED_RES_ID:[I

    aget v3, v3, v0

    goto :goto_2

    .line 910
    .end local v0    # "iconIndex":I
    :cond_6
    invoke-virtual {p0}, Lcom/android/settings/notification/NotificationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v6, "zen_mode"

    invoke-static {v3, v6, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v7, :cond_7

    move v1, v4

    .line 911
    .local v1, "isZenModeNone":Z
    :goto_3
    if-ne p2, v7, :cond_8

    if-eqz v1, :cond_8

    .line 912
    invoke-virtual {p1, v5}, Lcom/android/settings/notification/VolumeSeekBarPreference;->setEnabled(Z)V

    goto :goto_1

    .end local v1    # "isZenModeNone":Z
    :cond_7
    move v1, v5

    .line 910
    goto :goto_3

    .line 914
    .restart local v1    # "isZenModeNone":Z
    :cond_8
    invoke-virtual {p1, v4}, Lcom/android/settings/notification/VolumeSeekBarPreference;->setEnabled(Z)V

    goto :goto_1
.end method


# virtual methods
.method public handleRingtonePicked(Landroid/net/Uri;I)V
    .locals 7
    .param p1, "pickedUri"    # Landroid/net/Uri;
    .param p2, "ringtoneType"    # I

    .prologue
    const v6, 0x7f0a0694

    const/4 v5, 0x0

    .line 1146
    if-eqz p1, :cond_0

    invoke-static {p1}, Landroid/media/RingtoneManager;->isDefault(Landroid/net/Uri;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1181
    :cond_0
    :goto_0
    const-string v2, "NotificationSettings"

    const-string v3, "updateRingtoneData(ringtoneType)"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1182
    invoke-direct {p0, p2}, Lcom/android/settings/notification/NotificationSettings;->updateRingtoneData(I)V

    .line 1183
    :goto_1
    return-void

    .line 1151
    :cond_1
    const-string v2, "NotificationSettings"

    const-string v3, "handleRingtonePicked updating media DB"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1152
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    const-string v3, "file"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1153
    invoke-direct {p0, p1}, Lcom/android/settings/notification/NotificationSettings;->updateMediaDB(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object p1

    .line 1155
    if-nez p1, :cond_2

    .line 1156
    const-string v2, "NotificationSettings"

    const-string v3, "handleRingtonePicked - pickedUri is null"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1157
    invoke-virtual {p0}, Lcom/android/settings/notification/NotificationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2, v6, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 1162
    :cond_2
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 1163
    .local v1, "values":Landroid/content/ContentValues;
    const-string v2, "is_ringtone"

    const-string v3, "1"

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1165
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/notification/NotificationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v2, p1, v1, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1166
    const-string v2, "NotificationSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleRingtonePicked - pickedUri("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "), ringtoneType("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1167
    invoke-virtual {p0}, Lcom/android/settings/notification/NotificationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2, p2, p1}, Landroid/media/RingtoneManager;->setActualDefaultRingtoneUri(Landroid/content/Context;ILandroid/net/Uri;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1173
    :goto_2
    iget-object v2, p0, Lcom/android/settings/notification/NotificationSettings;->offset:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 1174
    const/16 v2, 0x8

    if-ne p2, v2, :cond_3

    .line 1175
    invoke-virtual {p0}, Lcom/android/settings/notification/NotificationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "recommendation_time_2"

    iget-object v4, p0, Lcom/android/settings/notification/NotificationSettings;->offset:Ljava/lang/String;

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_0

    .line 1168
    :catch_0
    move-exception v0

    .line 1170
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {p0}, Lcom/android/settings/notification/NotificationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2, v6, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_2

    .line 1177
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_3
    invoke-virtual {p0}, Lcom/android/settings/notification/NotificationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "recommendation_time"

    iget-object v4, p0, Lcom/android/settings/notification/NotificationSettings;->offset:Ljava/lang/String;

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 508
    const-string v0, "NotificationSettings"

    const-string v1, "onActivityCreated"

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 509
    invoke-virtual {p0}, Lcom/android/settings/notification/NotificationSettings;->getListView()Landroid/widget/ListView;

    move-result-object v0

    new-instance v1, Lcom/android/settings/notification/NotificationSettings$2;

    invoke-direct {v1, p0}, Lcom/android/settings/notification/NotificationSettings$2;-><init>(Lcom/android/settings/notification/NotificationSettings;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 541
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 542
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 8
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v6, -0x1

    .line 1082
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 1084
    packed-switch p1, :pswitch_data_0

    .line 1130
    :cond_0
    :goto_0
    return-void

    .line 1086
    :pswitch_0
    if-ne p2, v6, :cond_0

    .line 1087
    invoke-virtual {p3}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 1088
    .local v3, "pickedUri":Landroid/net/Uri;
    const-string v6, "highlight_offset"

    invoke-virtual {v3, v6}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings/notification/NotificationSettings;->offset:Ljava/lang/String;

    .line 1089
    iget-object v6, p0, Lcom/android/settings/notification/NotificationSettings;->offset:Ljava/lang/String;

    if-eqz v6, :cond_1

    .line 1090
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "?highlight_offset="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/settings/notification/NotificationSettings;->offset:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1091
    .local v2, "paramaterString":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v6

    const-string v7, ""

    invoke-virtual {v6, v2, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    .line 1092
    .local v4, "splitUri":Ljava/lang/String;
    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 1094
    .end local v2    # "paramaterString":Ljava/lang/String;
    .end local v4    # "splitUri":Ljava/lang/String;
    :cond_1
    const/4 v6, 0x1

    invoke-virtual {p0, v3, v6}, Lcom/android/settings/notification/NotificationSettings;->handleRingtonePicked(Landroid/net/Uri;I)V

    goto :goto_0

    .line 1098
    .end local v3    # "pickedUri":Landroid/net/Uri;
    :pswitch_1
    if-ne p2, v6, :cond_0

    .line 1099
    invoke-virtual {p3}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 1100
    .restart local v3    # "pickedUri":Landroid/net/Uri;
    const-string v6, "highlight_offset"

    invoke-virtual {v3, v6}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings/notification/NotificationSettings;->offset:Ljava/lang/String;

    .line 1101
    iget-object v6, p0, Lcom/android/settings/notification/NotificationSettings;->offset:Ljava/lang/String;

    if-eqz v6, :cond_2

    .line 1102
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "?highlight_offset="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/settings/notification/NotificationSettings;->offset:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1103
    .restart local v2    # "paramaterString":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v6

    const-string v7, ""

    invoke-virtual {v6, v2, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    .line 1104
    .restart local v4    # "splitUri":Ljava/lang/String;
    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 1106
    .end local v2    # "paramaterString":Ljava/lang/String;
    .end local v4    # "splitUri":Ljava/lang/String;
    :cond_2
    const/16 v6, 0x8

    invoke-virtual {p0, v3, v6}, Lcom/android/settings/notification/NotificationSettings;->handleRingtonePicked(Landroid/net/Uri;I)V

    goto :goto_0

    .line 1110
    .end local v3    # "pickedUri":Landroid/net/Uri;
    :pswitch_2
    invoke-virtual {p0}, Lcom/android/settings/notification/NotificationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-static {v6}, Lcom/android/settings/notification/NotificationSettings;->isConnected(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1111
    new-instance v0, Landroid/content/Intent;

    const-string v6, "android.intent.action.VIEW"

    invoke-direct {v0, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1112
    .local v0, "intent":Landroid/content/Intent;
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v6

    const-string v7, "CscFeature_Setting_ConfigOpRngToneLink"

    invoke-virtual {v6, v7}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1114
    .local v1, "mRingtoneType":Ljava/lang/String;
    const-string v6, "Tcoloring"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 1115
    const-string v6, "http://www.tcoloring.com"

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 1116
    .local v5, "u":Landroid/net/Uri;
    invoke-virtual {v0, v5}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1117
    invoke-virtual {p0, v0}, Lcom/android/settings/notification/NotificationSettings;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 1118
    .end local v5    # "u":Landroid/net/Uri;
    :cond_3
    const-string v6, "Ringtoyou"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 1119
    const-string v6, "http://ringtoyou.olleh.com"

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 1120
    .restart local v5    # "u":Landroid/net/Uri;
    invoke-virtual {v0, v5}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1121
    invoke-virtual {p0, v0}, Lcom/android/settings/notification/NotificationSettings;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 1123
    .end local v5    # "u":Landroid/net/Uri;
    :cond_4
    const-string v6, "NotificationSettings"

    const-string v7, "Preference not found: "

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1084
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 10
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 210
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 211
    invoke-virtual {p0}, Lcom/android/settings/notification/NotificationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    iput-object v7, p0, Lcom/android/settings/notification/NotificationSettings;->mContext:Landroid/content/Context;

    .line 212
    iget-object v7, p0, Lcom/android/settings/notification/NotificationSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    iput-object v7, p0, Lcom/android/settings/notification/NotificationSettings;->mPM:Landroid/content/pm/PackageManager;

    .line 213
    iget-object v7, p0, Lcom/android/settings/notification/NotificationSettings;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/android/settings/Utils;->isVoiceCapable(Landroid/content/Context;)Z

    move-result v7

    iput-boolean v7, p0, Lcom/android/settings/notification/NotificationSettings;->mVoiceCapable:Z

    .line 214
    const-string v7, "audio"

    invoke-virtual {p0, v7}, Lcom/android/settings/notification/NotificationSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/media/AudioManager;

    iput-object v7, p0, Lcom/android/settings/notification/NotificationSettings;->mAudioManager:Landroid/media/AudioManager;

    .line 215
    const v7, 0x7f070087

    invoke-virtual {p0, v7}, Lcom/android/settings/notification/NotificationSettings;->addPreferencesFromResource(I)V

    .line 218
    iget-object v7, p0, Lcom/android/settings/notification/NotificationSettings;->mContext:Landroid/content/Context;

    invoke-direct {p0, v7}, Lcom/android/settings/notification/NotificationSettings;->isContainerOnlyMode(Landroid/content/Context;)Z

    move-result v7

    iput-boolean v7, p0, Lcom/android/settings/notification/NotificationSettings;->isKioskContainer:Z

    .line 221
    const-string v7, "sound"

    invoke-virtual {p0, v7}, Lcom/android/settings/notification/NotificationSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/PreferenceCategory;

    .line 222
    .local v5, "sound":Landroid/preference/PreferenceCategory;
    invoke-direct {p0, v5}, Lcom/android/settings/notification/NotificationSettings;->initVolumePreference(Landroid/preference/PreferenceCategory;)V

    .line 224
    const-string v7, "phone_vibration"

    invoke-virtual {p0, v7}, Lcom/android/settings/notification/NotificationSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    iput-object v7, p0, Lcom/android/settings/notification/NotificationSettings;->mPhoneVibration:Landroid/preference/Preference;

    .line 225
    const-string v7, "ds_ring_tone"

    invoke-virtual {p0, v7}, Lcom/android/settings/notification/NotificationSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    iput-object v7, p0, Lcom/android/settings/notification/NotificationSettings;->mRingtonePreference_DS:Landroid/preference/Preference;

    .line 227
    invoke-direct {p0, v5}, Lcom/android/settings/notification/NotificationSettings;->initRingtones(Landroid/preference/PreferenceCategory;)V

    .line 228
    invoke-direct {p0, v5}, Lcom/android/settings/notification/NotificationSettings;->initVibrateWhenRinging(Landroid/preference/PreferenceCategory;)V

    .line 230
    const-string v7, "notification"

    invoke-virtual {p0, v7}, Lcom/android/settings/notification/NotificationSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Landroid/preference/PreferenceCategory;

    iput-object v7, p0, Lcom/android/settings/notification/NotificationSettings;->notification:Landroid/preference/PreferenceCategory;

    .line 231
    iget-object v7, p0, Lcom/android/settings/notification/NotificationSettings;->notification:Landroid/preference/PreferenceCategory;

    invoke-direct {p0, v7}, Lcom/android/settings/notification/NotificationSettings;->initHeads(Landroid/preference/PreferenceCategory;)V

    .line 232
    iget-object v7, p0, Lcom/android/settings/notification/NotificationSettings;->notification:Landroid/preference/PreferenceCategory;

    invoke-direct {p0, v7}, Lcom/android/settings/notification/NotificationSettings;->initLockscreenNotifications(Landroid/preference/PreferenceCategory;)V

    .line 234
    const-string v7, "manage_notification_access"

    invoke-virtual {p0, v7}, Lcom/android/settings/notification/NotificationSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    iput-object v7, p0, Lcom/android/settings/notification/NotificationSettings;->mNotificationAccess:Landroid/preference/Preference;

    .line 235
    invoke-direct {p0}, Lcom/android/settings/notification/NotificationSettings;->refreshNotificationListeners()V

    .line 237
    const-string v7, "phone_profile"

    invoke-virtual {p0, v7}, Lcom/android/settings/notification/NotificationSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    iput-object v7, p0, Lcom/android/settings/notification/NotificationSettings;->mPhoneProfile:Landroid/preference/Preference;

    .line 239
    iget-object v7, p0, Lcom/android/settings/notification/NotificationSettings;->mPhoneProfile:Landroid/preference/Preference;

    invoke-virtual {v5, v7}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 243
    invoke-virtual {p0}, Lcom/android/settings/notification/NotificationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-static {v7}, Lcom/android/settings/Utils;->isVoiceCapable(Landroid/content/Context;)Z

    move-result v7

    if-nez v7, :cond_a

    .line 244
    const-string v7, "notification_ringtone"

    invoke-virtual {p0, v7}, Lcom/android/settings/notification/NotificationSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Lcom/android/settings/DefaultRingtonePreference;

    iput-object v7, p0, Lcom/android/settings/notification/NotificationSettings;->mRingtone:Lcom/android/settings/DefaultRingtonePreference;

    .line 248
    :goto_0
    const-string v7, "ringtone2"

    invoke-virtual {p0, v7}, Lcom/android/settings/notification/NotificationSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Lcom/android/settings/DefaultRingtonePreference;

    iput-object v7, p0, Lcom/android/settings/notification/NotificationSettings;->mRingtone2:Lcom/android/settings/DefaultRingtonePreference;

    .line 250
    iget-object v7, p0, Lcom/android/settings/notification/NotificationSettings;->mRingtone:Lcom/android/settings/DefaultRingtonePreference;

    invoke-virtual {v7, p0}, Lcom/android/settings/DefaultRingtonePreference;->setObject(Lcom/android/settings/notification/NotificationSettings;)V

    .line 252
    const-string v7, "tcoloring"

    invoke-virtual {p0, v7}, Lcom/android/settings/notification/NotificationSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    iput-object v7, p0, Lcom/android/settings/notification/NotificationSettings;->mTcoloring:Landroid/preference/Preference;

    .line 253
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v7

    const-string v8, "CscFeature_Setting_ConfigOpRngToneLink"

    invoke-virtual {v7, v8}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 254
    .local v4, "mRingtoneType":Ljava/lang/String;
    const-string v7, "Tcoloring"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 255
    iget-object v7, p0, Lcom/android/settings/notification/NotificationSettings;->mTcoloring:Landroid/preference/Preference;

    invoke-virtual {v5, v7}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 258
    :cond_0
    const-string v7, "ringtoyou"

    invoke-virtual {p0, v7}, Lcom/android/settings/notification/NotificationSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    iput-object v7, p0, Lcom/android/settings/notification/NotificationSettings;->mRingtoyou:Landroid/preference/Preference;

    .line 259
    const-string v7, "Ringtoyou"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 260
    iget-object v7, p0, Lcom/android/settings/notification/NotificationSettings;->mRingtoyou:Landroid/preference/Preference;

    invoke-virtual {v5, v7}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 264
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/notification/NotificationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 265
    .local v0, "activity":Landroid/content/Intent;
    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v7

    iput-object v7, p0, Lcom/android/settings/notification/NotificationSettings;->mDirectUri:Landroid/net/Uri;

    .line 266
    iget-object v7, p0, Lcom/android/settings/notification/NotificationSettings;->mDirectUri:Landroid/net/Uri;

    if-eqz v7, :cond_2

    .line 267
    iget-object v7, p0, Lcom/android/settings/notification/NotificationSettings;->mDirectUri:Landroid/net/Uri;

    invoke-virtual {v7}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    iput v7, p0, Lcom/android/settings/notification/NotificationSettings;->mDirect:I

    .line 270
    :cond_2
    const/4 v7, 0x0

    invoke-virtual {v0, v7}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 274
    iget-boolean v7, p0, Lcom/android/settings/notification/NotificationSettings;->isKioskContainer:Z

    if-eqz v7, :cond_3

    iget-object v7, p0, Lcom/android/settings/notification/NotificationSettings;->notification:Landroid/preference/PreferenceCategory;

    if-eqz v7, :cond_3

    .line 275
    invoke-virtual {p0}, Lcom/android/settings/notification/NotificationSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v7

    iget-object v8, p0, Lcom/android/settings/notification/NotificationSettings;->notification:Landroid/preference/PreferenceCategory;

    invoke-virtual {v7, v8}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 279
    :cond_3
    const-string v7, "vibrator"

    invoke-virtual {p0, v7}, Lcom/android/settings/notification/NotificationSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/Vibrator;

    .line 280
    .local v6, "vibrator":Landroid/os/Vibrator;
    if-eqz v6, :cond_4

    invoke-virtual {v6}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result v7

    if-nez v7, :cond_b

    .line 281
    :cond_4
    invoke-virtual {p0}, Lcom/android/settings/notification/NotificationSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v7

    const-string v8, "vibration_feedback_intensity"

    invoke-virtual {p0, v8}, Lcom/android/settings/notification/NotificationSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 282
    invoke-virtual {p0}, Lcom/android/settings/notification/NotificationSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v7

    iget-object v8, p0, Lcom/android/settings/notification/NotificationSettings;->mPhoneVibration:Landroid/preference/Preference;

    invoke-virtual {v7, v8}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 290
    :cond_5
    :goto_1
    invoke-static {}, Lcom/android/settings/Utils;->isMultisimModel()Z

    move-result v7

    if-eqz v7, :cond_e

    .line 291
    iget-object v7, p0, Lcom/android/settings/notification/NotificationSettings;->mNotificationRingtonePreference:Landroid/preference/Preference;

    invoke-virtual {v5, v7}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 292
    iget-object v7, p0, Lcom/android/settings/notification/NotificationSettings;->mRingtone:Lcom/android/settings/DefaultRingtonePreference;

    invoke-virtual {v5, v7}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 293
    iget-object v7, p0, Lcom/android/settings/notification/NotificationSettings;->mRingtone2:Lcom/android/settings/DefaultRingtonePreference;

    invoke-virtual {v5, v7}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 298
    :goto_2
    const-string v7, "ds_ring_tone"

    invoke-virtual {p0, v7}, Lcom/android/settings/notification/NotificationSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    iput-object v7, p0, Lcom/android/settings/notification/NotificationSettings;->mRingtonePreference_DS:Landroid/preference/Preference;

    .line 299
    iget-object v7, p0, Lcom/android/settings/notification/NotificationSettings;->mRingtonePreference_DS:Landroid/preference/Preference;

    if-eqz v7, :cond_6

    .line 300
    iget-object v7, p0, Lcom/android/settings/notification/NotificationSettings;->mRingtonePreference_DS:Landroid/preference/Preference;

    new-instance v8, Lcom/android/settings/notification/NotificationSettings$1;

    invoke-direct {v8, p0}, Lcom/android/settings/notification/NotificationSettings$1;-><init>(Lcom/android/settings/notification/NotificationSettings;)V

    invoke-virtual {v7, v8}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 308
    :cond_6
    const-string v7, "audio_output"

    invoke-virtual {p0, v7}, Lcom/android/settings/notification/NotificationSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Landroid/preference/ListPreference;

    iput-object v7, p0, Lcom/android/settings/notification/NotificationSettings;->mAudioOutput:Landroid/preference/ListPreference;

    .line 309
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v7

    const/16 v8, 0x64

    if-ge v7, v8, :cond_7

    invoke-static {}, Lcom/android/settings/Utils;->isSupportMenuTreeForK()Z

    move-result v7

    if-nez v7, :cond_7

    invoke-virtual {p0}, Lcom/android/settings/notification/NotificationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-static {v7}, Lcom/android/settings/notification/NotificationSettings;->SupportDockSettings(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_f

    .line 312
    :cond_7
    const-string v7, "hdmi"

    invoke-virtual {p0, v7}, Lcom/android/settings/notification/NotificationSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/PreferenceGroup;

    .line 313
    .local v2, "hdmiSettingsCategory":Landroid/preference/PreferenceGroup;
    if-eqz v2, :cond_8

    .line 314
    invoke-virtual {p0}, Lcom/android/settings/notification/NotificationSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v7

    invoke-virtual {v7, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 315
    :cond_8
    invoke-virtual {p0}, Lcom/android/settings/notification/NotificationSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v7

    const-string v8, "audio_output"

    invoke-virtual {p0, v8}, Lcom/android/settings/notification/NotificationSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 319
    .end local v2    # "hdmiSettingsCategory":Landroid/preference/PreferenceGroup;
    :goto_3
    const-string v7, "my_sound"

    invoke-virtual {p0, v7}, Lcom/android/settings/notification/NotificationSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Landroid/preference/PreferenceScreen;

    iput-object v7, p0, Lcom/android/settings/notification/NotificationSettings;->mMySound:Landroid/preference/PreferenceScreen;

    .line 374
    iget-object v7, p0, Lcom/android/settings/notification/NotificationSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "all_sound_off"

    const/4 v9, 0x0

    invoke-static {v7, v8, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 375
    .local v1, "allSoundOff":I
    const/4 v7, 0x1

    if-ne v1, v7, :cond_9

    .line 376
    new-instance v3, Landroid/content/Intent;

    const-string v7, "android.intent.action.SOUND_OFF_TOAST"

    invoke-direct {v3, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 377
    .local v3, "intent":Landroid/content/Intent;
    iget-object v7, p0, Lcom/android/settings/notification/NotificationSettings;->mContext:Landroid/content/Context;

    sget-object v8, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v7, v3, v8}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 379
    .end local v3    # "intent":Landroid/content/Intent;
    :cond_9
    return-void

    .line 246
    .end local v0    # "activity":Landroid/content/Intent;
    .end local v1    # "allSoundOff":I
    .end local v4    # "mRingtoneType":Ljava/lang/String;
    .end local v6    # "vibrator":Landroid/os/Vibrator;
    :cond_a
    const-string v7, "ringtone"

    invoke-virtual {p0, v7}, Lcom/android/settings/notification/NotificationSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Lcom/android/settings/DefaultRingtonePreference;

    iput-object v7, p0, Lcom/android/settings/notification/NotificationSettings;->mRingtone:Lcom/android/settings/DefaultRingtonePreference;

    goto/16 :goto_0

    .line 284
    .restart local v0    # "activity":Landroid/content/Intent;
    .restart local v4    # "mRingtoneType":Ljava/lang/String;
    .restart local v6    # "vibrator":Landroid/os/Vibrator;
    :cond_b
    const-string v7, "SEC_FLOATING_FEATURE_FRAMEWORK_SUPPORT_VIBETONZ"

    invoke-static {v7}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_c

    .line 285
    invoke-virtual {p0}, Lcom/android/settings/notification/NotificationSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v7

    const-string v8, "vibration_feedback_intensity"

    invoke-virtual {p0, v8}, Lcom/android/settings/notification/NotificationSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 287
    :cond_c
    invoke-virtual {p0}, Lcom/android/settings/notification/NotificationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-static {v7}, Lcom/android/settings/Utils;->isVoiceCapable(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_d

    const-string v7, "SEC_FLOATING_FEATURE_SETTINGS_CAMERA_ONLY_MODEL"

    invoke-static {v7}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 288
    :cond_d
    invoke-virtual {p0}, Lcom/android/settings/notification/NotificationSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v7

    iget-object v8, p0, Lcom/android/settings/notification/NotificationSettings;->mPhoneVibration:Landroid/preference/Preference;

    invoke-virtual {v7, v8}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_1

    .line 295
    :cond_e
    iget-object v7, p0, Lcom/android/settings/notification/NotificationSettings;->mRingtone2:Lcom/android/settings/DefaultRingtonePreference;

    invoke-virtual {v5, v7}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 296
    iget-object v7, p0, Lcom/android/settings/notification/NotificationSettings;->mRingtonePreference_DS:Landroid/preference/Preference;

    invoke-virtual {v5, v7}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_2

    .line 317
    :cond_f
    iget-object v7, p0, Lcom/android/settings/notification/NotificationSettings;->mAudioOutput:Landroid/preference/ListPreference;

    invoke-virtual {v7, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    goto :goto_3
.end method

.method public onMusicPickerChosen(I)V
    .locals 3
    .param p1, "ringtoneType"    # I

    .prologue
    const/4 v2, 0x1

    .line 1133
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1134
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "android.intent.action.GET_CONTENT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1135
    const-string v1, "audio/*"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 1136
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1137
    const-string v1, "enable_ringtone_recommender"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1138
    if-ne p1, v2, :cond_0

    .line 1139
    invoke-virtual {p0, v0, v2}, Lcom/android/settings/notification/NotificationSettings;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1143
    :goto_0
    return-void

    .line 1141
    :cond_0
    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/notification/NotificationSettings;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 499
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 500
    invoke-direct {p0}, Lcom/android/settings/notification/NotificationSettings;->releaseListeners()V

    .line 501
    iget-object v0, p0, Lcom/android/settings/notification/NotificationSettings;->mVolumeCallback:Lcom/android/settings/notification/NotificationSettings$VolumePreferenceCallback;

    invoke-virtual {v0}, Lcom/android/settings/notification/NotificationSettings$VolumePreferenceCallback;->stopSample()V

    .line 502
    iget-object v0, p0, Lcom/android/settings/notification/NotificationSettings;->mSettingsObserver:Lcom/android/settings/notification/NotificationSettings$SettingsObserver;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings/notification/NotificationSettings$SettingsObserver;->register(Z)V

    .line 503
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 9
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "objValue"    # Ljava/lang/Object;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 383
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    .line 385
    .local v1, "key":Ljava/lang/String;
    const-string v6, "lock_screen_notifications"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 387
    check-cast p2, Ljava/lang/String;

    .end local p2    # "objValue":Ljava/lang/Object;
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 388
    .local v3, "value":I
    const v6, 0x7f0a0ef4

    if-eq v3, v6, :cond_2

    move v0, v4

    .line 389
    .local v0, "enabled":Z
    :goto_0
    const v6, 0x7f0a0ef2

    if-ne v3, v6, :cond_3

    move v2, v4

    .line 390
    .local v2, "show":Z
    :goto_1
    invoke-virtual {p0}, Lcom/android/settings/notification/NotificationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "lock_screen_allow_private_notifications"

    if-eqz v2, :cond_4

    move v6, v4

    :goto_2
    invoke-static {v7, v8, v6}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 392
    invoke-virtual {p0}, Lcom/android/settings/notification/NotificationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "lock_screen_show_notifications"

    if-eqz v0, :cond_0

    move v5, v4

    :cond_0
    invoke-static {v6, v7, v5}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 394
    iget-object v5, p0, Lcom/android/settings/notification/NotificationSettings;->mLockscreen:Landroid/preference/ListPreference;

    iget-object v6, p0, Lcom/android/settings/notification/NotificationSettings;->mLockscreen:Landroid/preference/ListPreference;

    invoke-virtual {v6}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 403
    .end local v0    # "enabled":Z
    .end local v2    # "show":Z
    .end local v3    # "value":I
    :cond_1
    :goto_3
    return v4

    .restart local v3    # "value":I
    :cond_2
    move v0, v5

    .line 388
    goto :goto_0

    .restart local v0    # "enabled":Z
    :cond_3
    move v2, v5

    .line 389
    goto :goto_1

    .restart local v2    # "show":Z
    :cond_4
    move v6, v5

    .line 390
    goto :goto_2

    .line 395
    .end local v0    # "enabled":Z
    .end local v2    # "show":Z
    .end local v3    # "value":I
    .restart local p2    # "objValue":Ljava/lang/Object;
    :cond_5
    const-string v5, "audio_output"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 396
    check-cast p2, Ljava/lang/String;

    .end local p2    # "objValue":Ljava/lang/Object;
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 397
    .restart local v3    # "value":I
    invoke-virtual {p0}, Lcom/android/settings/notification/NotificationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    if-eqz v5, :cond_6

    .line 398
    invoke-virtual {p0}, Lcom/android/settings/notification/NotificationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "hdmi_audio_output"

    invoke-static {v5, v6, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 399
    :cond_6
    iget-object v5, p0, Lcom/android/settings/notification/NotificationSettings;->mAudioOutput:Landroid/preference/ListPreference;

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 400
    iget-object v5, p0, Lcom/android/settings/notification/NotificationSettings;->mAudioOutput:Landroid/preference/ListPreference;

    iget-object v6, p0, Lcom/android/settings/notification/NotificationSettings;->mAudioOutput:Landroid/preference/ListPreference;

    invoke-virtual {v6}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_3
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 6
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v5, 0x1

    .line 578
    iget-object v3, p0, Lcom/android/settings/notification/NotificationSettings;->mVolumeCallback:Lcom/android/settings/notification/NotificationSettings$VolumePreferenceCallback;

    invoke-virtual {v3}, Lcom/android/settings/notification/NotificationSettings$VolumePreferenceCallback;->stopSample()V

    .line 579
    iget-object v3, p0, Lcom/android/settings/notification/NotificationSettings;->mTcoloring:Landroid/preference/Preference;

    if-eq p2, v3, :cond_0

    iget-object v3, p0, Lcom/android/settings/notification/NotificationSettings;->mRingtoyou:Landroid/preference/Preference;

    if-ne p2, v3, :cond_5

    .line 580
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/notification/NotificationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings/notification/NotificationSettings;->isConnected(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 581
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.net.wifi.PICK_WIFI_NETWORK"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 582
    .local v0, "intent":Landroid/content/Intent;
    const-string v3, "extra_prefs_show_button_bar"

    invoke-virtual {v0, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 583
    const-string v3, "extra_prefs_set_back_text"

    const v4, 0x7f0a0c30

    invoke-virtual {p0, v4}, Lcom/android/settings/notification/NotificationSettings;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 584
    const-string v3, "wifi_enable_next_on_connect"

    invoke-virtual {v0, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 586
    const/4 v3, 0x3

    invoke-virtual {p0, v0, v3}, Lcom/android/settings/notification/NotificationSettings;->startActivityForResult(Landroid/content/Intent;I)V

    .line 606
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_1
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v3

    return v3

    .line 588
    :cond_2
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 590
    .restart local v0    # "intent":Landroid/content/Intent;
    iget-object v3, p0, Lcom/android/settings/notification/NotificationSettings;->mTcoloring:Landroid/preference/Preference;

    if-ne p2, v3, :cond_3

    .line 591
    const-string v3, "http://www.tcoloring.com"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 592
    .local v2, "u":Landroid/net/Uri;
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 593
    invoke-virtual {p0, v0}, Lcom/android/settings/notification/NotificationSettings;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 594
    .end local v2    # "u":Landroid/net/Uri;
    :cond_3
    iget-object v3, p0, Lcom/android/settings/notification/NotificationSettings;->mRingtoyou:Landroid/preference/Preference;

    if-ne p2, v3, :cond_4

    .line 595
    const-string v3, "http://ringtoyou.olleh.com"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 596
    .restart local v2    # "u":Landroid/net/Uri;
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 597
    invoke-virtual {p0, v0}, Lcom/android/settings/notification/NotificationSettings;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 599
    .end local v2    # "u":Landroid/net/Uri;
    :cond_4
    const-string v3, "NotificationSettings"

    const-string v4, "Preference not found: "

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 602
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_5
    iget-object v3, p0, Lcom/android/settings/notification/NotificationSettings;->mMySound:Landroid/preference/PreferenceScreen;

    if-ne p2, v3, :cond_1

    .line 603
    new-instance v1, Landroid/content/Intent;

    const-string v3, "com.sec.hearingadjust.launch"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 604
    .local v1, "intent1":Landroid/content/Intent;
    invoke-virtual {p0, v1}, Lcom/android/settings/notification/NotificationSettings;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 480
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 481
    invoke-virtual {p0}, Lcom/android/settings/notification/NotificationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "hdmi_audio_output"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 482
    .local v0, "mHdmiValue":I
    iget-object v1, p0, Lcom/android/settings/notification/NotificationSettings;->mAudioOutput:Landroid/preference/ListPreference;

    if-eqz v1, :cond_0

    .line 483
    iget-object v1, p0, Lcom/android/settings/notification/NotificationSettings;->mAudioOutput:Landroid/preference/ListPreference;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 484
    iget-object v1, p0, Lcom/android/settings/notification/NotificationSettings;->mAudioOutput:Landroid/preference/ListPreference;

    iget-object v2, p0, Lcom/android/settings/notification/NotificationSettings;->mAudioOutput:Landroid/preference/ListPreference;

    invoke-virtual {v2}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 486
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/notification/NotificationSettings;->registerListeners()V

    .line 487
    invoke-direct {p0}, Lcom/android/settings/notification/NotificationSettings;->refreshNotificationListeners()V

    .line 488
    invoke-virtual {p0}, Lcom/android/settings/notification/NotificationSettings;->updateDeviceVibrationName()V

    .line 489
    invoke-direct {p0}, Lcom/android/settings/notification/NotificationSettings;->lookupRingtoneNames()V

    .line 490
    iget-object v1, p0, Lcom/android/settings/notification/NotificationSettings;->mSettingsObserver:Lcom/android/settings/notification/NotificationSettings$SettingsObserver;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/settings/notification/NotificationSettings$SettingsObserver;->register(Z)V

    .line 495
    return-void
.end method

.method public updateDeviceVibrationName()V
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 640
    invoke-virtual {p0}, Lcom/android/settings/notification/NotificationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "default_vibration_pattern"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 643
    .local v7, "temp":Ljava/lang/String;
    if-nez v7, :cond_2

    .line 644
    invoke-virtual {p0}, Lcom/android/settings/notification/NotificationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://com.android.settings.personalvibration.PersonalVibrationProvider"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 645
    .local v6, "c":Landroid/database/Cursor;
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 646
    iget-object v0, p0, Lcom/android/settings/notification/NotificationSettings;->mPhoneVibration:Landroid/preference/Preference;

    const-string v1, "vibration_name"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 647
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 658
    :cond_1
    :goto_0
    return-void

    .line 651
    .end local v6    # "c":Landroid/database/Cursor;
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/notification/NotificationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 653
    .restart local v6    # "c":Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 654
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 655
    iget-object v0, p0, Lcom/android/settings/notification/NotificationSettings;->mPhoneVibration:Landroid/preference/Preference;

    const-string v1, "vibration_name"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 656
    :cond_3
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method
