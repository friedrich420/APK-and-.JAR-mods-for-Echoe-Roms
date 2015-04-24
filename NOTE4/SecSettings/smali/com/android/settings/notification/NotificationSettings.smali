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

.field private mAppNotifications:Landroid/preference/Preference;

.field private mAudioManager:Landroid/media/AudioManager;

.field private mAudioOutput:Landroid/preference/ListPreference;

.field private mContext:Landroid/content/Context;

.field private mDNDZenMode:Landroid/preference/Preference;

.field private mDirect:I

.field mDirectUri:Landroid/net/Uri;

.field private final mHandler:Lcom/android/settings/notification/NotificationSettings$H;

.field private mHandlerForMode:Landroid/os/Handler;

.field private mHeadsUpNotification:Landroid/preference/CheckBoxPreference;

.field private mInterruptions:Landroid/preference/Preference;

.field private mLockscreen:Landroid/preference/ListPreference;

.field private final mLookupRingtoneNames:Ljava/lang/Runnable;

.field private mMediaVolPref:Lcom/android/settings/notification/VolumeSeekBarPreference;

.field private mMySound:Landroid/preference/PreferenceScreen;

.field private mNotiVolPref:Lcom/android/settings/notification/VolumeSeekBarPreference;

.field private mNotificationAccess:Landroid/preference/Preference;

.field private mNotificationHeads:Landroid/preference/TwoStatePreference;

.field private mNotificationRingtonePreference:Landroid/preference/Preference;

.field private mOtherSounds:Landroid/preference/Preference;

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

.field private mSoundMode:Landroid/preference/ListPreference;

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

    .line 180
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/settings/notification/NotificationSettings;->SEEKBAR_MUTED_RES_ID:[I

    .line 188
    new-array v0, v1, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/settings/notification/NotificationSettings;->SEEKBAR_UNMUTED_RES_ID:[I

    .line 1121
    new-instance v0, Lcom/android/settings/notification/NotificationSettings$9;

    invoke-direct {v0}, Lcom/android/settings/notification/NotificationSettings$9;-><init>()V

    sput-object v0, Lcom/android/settings/notification/NotificationSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    return-void

    .line 180
    nop

    :array_0
    .array-data 4
        0x1080a68
        0x1080a5d
        0x1080a56
        0x1080a64
        0x1080a5b
    .end array-data

    .line 188
    :array_1
    .array-data 4
        0x1080a68
        0x1080a5b
        0x1080a54
        0x1080a62
        0x1080a5b
    .end array-data
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 98
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 140
    new-instance v0, Lcom/android/settings/notification/NotificationSettings$VolumePreferenceCallback;

    invoke-direct {v0, p0, v1}, Lcom/android/settings/notification/NotificationSettings$VolumePreferenceCallback;-><init>(Lcom/android/settings/notification/NotificationSettings;Lcom/android/settings/notification/NotificationSettings$1;)V

    iput-object v0, p0, Lcom/android/settings/notification/NotificationSettings;->mVolumeCallback:Lcom/android/settings/notification/NotificationSettings$VolumePreferenceCallback;

    .line 141
    new-instance v0, Lcom/android/settings/notification/NotificationSettings$H;

    invoke-direct {v0, p0, v1}, Lcom/android/settings/notification/NotificationSettings$H;-><init>(Lcom/android/settings/notification/NotificationSettings;Lcom/android/settings/notification/NotificationSettings$1;)V

    iput-object v0, p0, Lcom/android/settings/notification/NotificationSettings;->mHandler:Lcom/android/settings/notification/NotificationSettings$H;

    .line 142
    new-instance v0, Lcom/android/settings/notification/NotificationSettings$SettingsObserver;

    invoke-direct {v0, p0}, Lcom/android/settings/notification/NotificationSettings$SettingsObserver;-><init>(Lcom/android/settings/notification/NotificationSettings;)V

    iput-object v0, p0, Lcom/android/settings/notification/NotificationSettings;->mSettingsObserver:Lcom/android/settings/notification/NotificationSettings$SettingsObserver;

    .line 197
    iput v2, p0, Lcom/android/settings/notification/NotificationSettings;->mDirect:I

    .line 198
    iput-object v1, p0, Lcom/android/settings/notification/NotificationSettings;->mDirectUri:Landroid/net/Uri;

    .line 213
    iput-boolean v2, p0, Lcom/android/settings/notification/NotificationSettings;->isKioskContainer:Z

    .line 730
    new-instance v0, Lcom/android/settings/notification/NotificationSettings$4;

    invoke-direct {v0, p0}, Lcom/android/settings/notification/NotificationSettings$4;-><init>(Lcom/android/settings/notification/NotificationSettings;)V

    iput-object v0, p0, Lcom/android/settings/notification/NotificationSettings;->mLookupRingtoneNames:Ljava/lang/Runnable;

    .line 932
    new-instance v0, Lcom/android/settings/notification/NotificationSettings$8;

    invoke-direct {v0, p0}, Lcom/android/settings/notification/NotificationSettings$8;-><init>(Lcom/android/settings/notification/NotificationSettings;)V

    iput-object v0, p0, Lcom/android/settings/notification/NotificationSettings;->mHandlerForMode:Landroid/os/Handler;

    .line 1090
    return-void
.end method

.method public static SupportDockSettings(Landroid/content/Context;)Z
    .locals 2
    .param p0, "c"    # Landroid/content/Context;

    .prologue
    .line 500
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

.method static synthetic access$1000(Lcom/android/settings/notification/NotificationSettings;)Landroid/preference/Preference;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/notification/NotificationSettings;

    .prologue
    .line 98
    iget-object v0, p0, Lcom/android/settings/notification/NotificationSettings;->mNotificationRingtonePreference:Landroid/preference/Preference;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/settings/notification/NotificationSettings;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/notification/NotificationSettings;

    .prologue
    .line 98
    invoke-virtual {p0}, Lcom/android/settings/notification/NotificationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/settings/notification/NotificationSettings;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/notification/NotificationSettings;

    .prologue
    .line 98
    invoke-virtual {p0}, Lcom/android/settings/notification/NotificationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/settings/notification/NotificationSettings;)Landroid/preference/CheckBoxPreference;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/notification/NotificationSettings;

    .prologue
    .line 98
    iget-object v0, p0, Lcom/android/settings/notification/NotificationSettings;->mVibrateWhenRinging:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/settings/notification/NotificationSettings;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/notification/NotificationSettings;

    .prologue
    .line 98
    invoke-direct {p0}, Lcom/android/settings/notification/NotificationSettings;->getPhoneSilentModeSettingValue()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/settings/notification/NotificationSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/notification/NotificationSettings;

    .prologue
    .line 98
    invoke-direct {p0}, Lcom/android/settings/notification/NotificationSettings;->refreshSoundMode()V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/settings/notification/NotificationSettings;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/notification/NotificationSettings;

    .prologue
    .line 98
    iget-object v0, p0, Lcom/android/settings/notification/NotificationSettings;->mHandlerForMode:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/settings/notification/NotificationSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/notification/NotificationSettings;

    .prologue
    .line 98
    invoke-direct {p0}, Lcom/android/settings/notification/NotificationSettings;->refreshVolumePrefs()V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/settings/notification/NotificationSettings;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/notification/NotificationSettings;

    .prologue
    .line 98
    invoke-virtual {p0}, Lcom/android/settings/notification/NotificationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/settings/notification/NotificationSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/notification/NotificationSettings;

    .prologue
    .line 98
    invoke-direct {p0}, Lcom/android/settings/notification/NotificationSettings;->updateVibrateWhenRinging()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/settings/notification/NotificationSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/notification/NotificationSettings;

    .prologue
    .line 98
    invoke-direct {p0}, Lcom/android/settings/notification/NotificationSettings;->startRingtoneSetting()V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/settings/notification/NotificationSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/notification/NotificationSettings;

    .prologue
    .line 98
    invoke-direct {p0}, Lcom/android/settings/notification/NotificationSettings;->updateHeads()V

    return-void
.end method

.method static synthetic access$2100(Lcom/android/settings/notification/NotificationSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/notification/NotificationSettings;

    .prologue
    .line 98
    invoke-direct {p0}, Lcom/android/settings/notification/NotificationSettings;->updateLockscreenNotifications()V

    return-void
.end method

.method static synthetic access$2200(Lcom/android/settings/notification/NotificationSettings;)Lcom/android/settings/notification/NotificationSettings$VolumePreferenceCallback;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/notification/NotificationSettings;

    .prologue
    .line 98
    iget-object v0, p0, Lcom/android/settings/notification/NotificationSettings;->mVolumeCallback:Lcom/android/settings/notification/NotificationSettings$VolumePreferenceCallback;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/notification/NotificationSettings;)Landroid/media/AudioManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/notification/NotificationSettings;

    .prologue
    .line 98
    iget-object v0, p0, Lcom/android/settings/notification/NotificationSettings;->mAudioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings/notification/NotificationSettings;)Landroid/preference/ListPreference;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/notification/NotificationSettings;

    .prologue
    .line 98
    iget-object v0, p0, Lcom/android/settings/notification/NotificationSettings;->mSoundMode:Landroid/preference/ListPreference;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/settings/notification/NotificationSettings;)Landroid/preference/Preference;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/notification/NotificationSettings;

    .prologue
    .line 98
    iget-object v0, p0, Lcom/android/settings/notification/NotificationSettings;->mPhoneRingtonePreference:Landroid/preference/Preference;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/settings/notification/NotificationSettings;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/notification/NotificationSettings;

    .prologue
    .line 98
    iget-object v0, p0, Lcom/android/settings/notification/NotificationSettings;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$700(Landroid/content/Context;I)Ljava/lang/CharSequence;
    .locals 1
    .param p0, "x0"    # Landroid/content/Context;
    .param p1, "x1"    # I

    .prologue
    .line 98
    invoke-static {p0, p1}, Lcom/android/settings/notification/NotificationSettings;->updateRingtoneName(Landroid/content/Context;I)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/settings/notification/NotificationSettings;)Lcom/android/settings/notification/NotificationSettings$H;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/notification/NotificationSettings;

    .prologue
    .line 98
    iget-object v0, p0, Lcom/android/settings/notification/NotificationSettings;->mHandler:Lcom/android/settings/notification/NotificationSettings$H;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/settings/notification/NotificationSettings;)Landroid/preference/Preference;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/notification/NotificationSettings;

    .prologue
    .line 98
    iget-object v0, p0, Lcom/android/settings/notification/NotificationSettings;->mPhoneRingtone2Preference:Landroid/preference/Preference;

    return-object v0
.end method

.method private getImgIndexOfStream(I)I
    .locals 1
    .param p1, "stream"    # I

    .prologue
    .line 985
    const/4 v0, 0x0

    .line 986
    .local v0, "index":I
    packed-switch p1, :pswitch_data_0

    .line 1003
    :goto_0
    :pswitch_0
    return v0

    .line 988
    :pswitch_1
    const/4 v0, 0x0

    .line 989
    goto :goto_0

    .line 991
    :pswitch_2
    const/4 v0, 0x1

    .line 992
    goto :goto_0

    .line 994
    :pswitch_3
    const/4 v0, 0x2

    .line 995
    goto :goto_0

    .line 997
    :pswitch_4
    const/4 v0, 0x3

    .line 998
    goto :goto_0

    .line 1000
    :pswitch_5
    const/4 v0, 0x4

    goto :goto_0

    .line 986
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

    .line 894
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

    .line 889
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
    .line 1007
    iget-object v0, p0, Lcom/android/settings/notification/NotificationSettings;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 1016
    const-string v0, "off"

    :goto_0
    return-object v0

    .line 1009
    :pswitch_0
    const-string v0, "off"

    goto :goto_0

    .line 1011
    :pswitch_1
    const-string v0, "vibrate"

    goto :goto_0

    .line 1013
    :pswitch_2
    const-string v0, "mute"

    goto :goto_0

    .line 1007
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
    .line 861
    const-string v1, "lock_screen_notifications"

    invoke-virtual {p1, v1}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/ListPreference;

    iput-object v1, p0, Lcom/android/settings/notification/NotificationSettings;->mLockscreen:Landroid/preference/ListPreference;

    .line 862
    iget-object v1, p0, Lcom/android/settings/notification/NotificationSettings;->mLockscreen:Landroid/preference/ListPreference;

    if-nez v1, :cond_0

    .line 863
    const-string v1, "NotificationSettings"

    const-string v2, "Preference not found: lock_screen_notifications"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 873
    :goto_0
    return-void

    .line 866
    :cond_0
    iget-object v1, p0, Lcom/android/settings/notification/NotificationSettings;->mLockscreen:Landroid/preference/ListPreference;

    invoke-virtual {v1, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 867
    const/4 v1, 0x3

    new-array v0, v1, [Ljava/lang/CharSequence;

    const/4 v1, 0x0

    const v2, 0x7f0a0eec

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const v2, 0x7f0a0eed

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const v2, 0x7f0a0eee

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 871
    .local v0, "entryValues":[Ljava/lang/CharSequence;
    iget-object v1, p0, Lcom/android/settings/notification/NotificationSettings;->mLockscreen:Landroid/preference/ListPreference;

    invoke-virtual {v1, v0}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 872
    invoke-direct {p0}, Lcom/android/settings/notification/NotificationSettings;->updateLockscreenNotifications()V

    goto :goto_0
.end method

.method private initRingtones(Landroid/preference/PreferenceCategory;)V
    .locals 1
    .param p1, "root"    # Landroid/preference/PreferenceCategory;

    .prologue
    .line 717
    const-string v0, "ringtone"

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/notification/NotificationSettings;->mPhoneRingtonePreference:Landroid/preference/Preference;

    .line 718
    const-string v0, "ringtone2"

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/notification/NotificationSettings;->mPhoneRingtone2Preference:Landroid/preference/Preference;

    .line 719
    iget-object v0, p0, Lcom/android/settings/notification/NotificationSettings;->mPhoneRingtonePreference:Landroid/preference/Preference;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/settings/notification/NotificationSettings;->mVoiceCapable:Z

    if-nez v0, :cond_0

    .line 720
    iget-object v0, p0, Lcom/android/settings/notification/NotificationSettings;->mPhoneRingtonePreference:Landroid/preference/Preference;

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 721
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/notification/NotificationSettings;->mPhoneRingtonePreference:Landroid/preference/Preference;

    .line 723
    :cond_0
    const-string v0, "notification_ringtone"

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/notification/NotificationSettings;->mNotificationRingtonePreference:Landroid/preference/Preference;

    .line 724
    return-void
.end method

.method private initSoundMode(Landroid/preference/PreferenceCategory;)V
    .locals 2
    .param p1, "root"    # Landroid/preference/PreferenceCategory;

    .prologue
    .line 690
    const-string v0, "sound_mode"

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    iput-object v0, p0, Lcom/android/settings/notification/NotificationSettings;->mSoundMode:Landroid/preference/ListPreference;

    .line 692
    iget-object v0, p0, Lcom/android/settings/notification/NotificationSettings;->mSoundMode:Landroid/preference/ListPreference;

    if-eqz v0, :cond_0

    .line 702
    :cond_0
    iget-object v0, p0, Lcom/android/settings/notification/NotificationSettings;->mSoundMode:Landroid/preference/ListPreference;

    if-eqz v0, :cond_1

    .line 703
    iget-object v0, p0, Lcom/android/settings/notification/NotificationSettings;->mSoundMode:Landroid/preference/ListPreference;

    new-instance v1, Lcom/android/settings/notification/NotificationSettings$3;

    invoke-direct {v1, p0}, Lcom/android/settings/notification/NotificationSettings$3;-><init>(Lcom/android/settings/notification/NotificationSettings;)V

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 714
    :cond_1
    return-void
.end method

.method private initVibrateWhenRinging(Landroid/preference/PreferenceCategory;)V
    .locals 2
    .param p1, "root"    # Landroid/preference/PreferenceCategory;

    .prologue
    .line 792
    const-string v0, "vibrate_when_ringing"

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/notification/NotificationSettings;->mVibrateWhenRinging:Landroid/preference/CheckBoxPreference;

    .line 793
    iget-object v0, p0, Lcom/android/settings/notification/NotificationSettings;->mVibrateWhenRinging:Landroid/preference/CheckBoxPreference;

    if-nez v0, :cond_0

    .line 794
    const-string v0, "NotificationSettings"

    const-string v1, "Preference not found: vibrate_when_ringing"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 813
    :goto_0
    return-void

    .line 797
    :cond_0
    iget-boolean v0, p0, Lcom/android/settings/notification/NotificationSettings;->mVoiceCapable:Z

    if-nez v0, :cond_1

    .line 798
    iget-object v0, p0, Lcom/android/settings/notification/NotificationSettings;->mVibrateWhenRinging:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 799
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/notification/NotificationSettings;->mVibrateWhenRinging:Landroid/preference/CheckBoxPreference;

    goto :goto_0

    .line 802
    :cond_1
    iget-object v0, p0, Lcom/android/settings/notification/NotificationSettings;->mVibrateWhenRinging:Landroid/preference/CheckBoxPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setPersistent(Z)V

    .line 803
    invoke-direct {p0}, Lcom/android/settings/notification/NotificationSettings;->updateVibrateWhenRinging()V

    .line 804
    iget-object v0, p0, Lcom/android/settings/notification/NotificationSettings;->mVibrateWhenRinging:Landroid/preference/CheckBoxPreference;

    new-instance v1, Lcom/android/settings/notification/NotificationSettings$5;

    invoke-direct {v1, p0}, Lcom/android/settings/notification/NotificationSettings$5;-><init>(Lcom/android/settings/notification/NotificationSettings;)V

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    goto :goto_0
.end method

.method private initVolumePreference(Landroid/preference/PreferenceCategory;)V
    .locals 2
    .param p1, "root"    # Landroid/preference/PreferenceCategory;

    .prologue
    .line 574
    const-string v0, "media_volume"

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/notification/VolumeSeekBarPreference;

    iput-object v0, p0, Lcom/android/settings/notification/NotificationSettings;->mMediaVolPref:Lcom/android/settings/notification/VolumeSeekBarPreference;

    .line 575
    iget-object v0, p0, Lcom/android/settings/notification/NotificationSettings;->mMediaVolPref:Lcom/android/settings/notification/VolumeSeekBarPreference;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/android/settings/notification/VolumeSeekBarPreference;->setStream(I)V

    .line 576
    iget-object v0, p0, Lcom/android/settings/notification/NotificationSettings;->mMediaVolPref:Lcom/android/settings/notification/VolumeSeekBarPreference;

    iget-object v1, p0, Lcom/android/settings/notification/NotificationSettings;->mVolumeCallback:Lcom/android/settings/notification/NotificationSettings$VolumePreferenceCallback;

    invoke-virtual {v0, v1}, Lcom/android/settings/notification/VolumeSeekBarPreference;->setCallback(Lcom/android/settings/notification/VolumeSeekBarPreference$Callback;)V

    .line 578
    const-string v0, "notification_volume"

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/notification/VolumeSeekBarPreference;

    iput-object v0, p0, Lcom/android/settings/notification/NotificationSettings;->mNotiVolPref:Lcom/android/settings/notification/VolumeSeekBarPreference;

    .line 579
    iget-object v0, p0, Lcom/android/settings/notification/NotificationSettings;->mNotiVolPref:Lcom/android/settings/notification/VolumeSeekBarPreference;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/android/settings/notification/VolumeSeekBarPreference;->setStream(I)V

    .line 580
    iget-object v0, p0, Lcom/android/settings/notification/NotificationSettings;->mNotiVolPref:Lcom/android/settings/notification/VolumeSeekBarPreference;

    iget-object v1, p0, Lcom/android/settings/notification/NotificationSettings;->mVolumeCallback:Lcom/android/settings/notification/NotificationSettings$VolumePreferenceCallback;

    invoke-virtual {v0, v1}, Lcom/android/settings/notification/VolumeSeekBarPreference;->setCallback(Lcom/android/settings/notification/VolumeSeekBarPreference$Callback;)V

    .line 582
    const-string v0, "system_volume"

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/notification/VolumeSeekBarPreference;

    iput-object v0, p0, Lcom/android/settings/notification/NotificationSettings;->mSysVolPref:Lcom/android/settings/notification/VolumeSeekBarPreference;

    .line 583
    iget-object v0, p0, Lcom/android/settings/notification/NotificationSettings;->mSysVolPref:Lcom/android/settings/notification/VolumeSeekBarPreference;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/settings/notification/VolumeSeekBarPreference;->setStream(I)V

    .line 584
    iget-object v0, p0, Lcom/android/settings/notification/NotificationSettings;->mSysVolPref:Lcom/android/settings/notification/VolumeSeekBarPreference;

    iget-object v1, p0, Lcom/android/settings/notification/NotificationSettings;->mVolumeCallback:Lcom/android/settings/notification/NotificationSettings$VolumePreferenceCallback;

    invoke-virtual {v0, v1}, Lcom/android/settings/notification/VolumeSeekBarPreference;->setCallback(Lcom/android/settings/notification/VolumeSeekBarPreference$Callback;)V

    .line 586
    const-string v0, "alarm_volume"

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 587
    iget-boolean v0, p0, Lcom/android/settings/notification/NotificationSettings;->mVoiceCapable:Z

    if-eqz v0, :cond_1

    .line 588
    const-string v0, "ring_volume"

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/notification/VolumeSeekBarPreference;

    iput-object v0, p0, Lcom/android/settings/notification/NotificationSettings;->mRingVolPref:Lcom/android/settings/notification/VolumeSeekBarPreference;

    .line 589
    iget-object v0, p0, Lcom/android/settings/notification/NotificationSettings;->mRingVolPref:Lcom/android/settings/notification/VolumeSeekBarPreference;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/settings/notification/VolumeSeekBarPreference;->setStream(I)V

    .line 590
    iget-object v0, p0, Lcom/android/settings/notification/NotificationSettings;->mRingVolPref:Lcom/android/settings/notification/VolumeSeekBarPreference;

    iget-object v1, p0, Lcom/android/settings/notification/NotificationSettings;->mVolumeCallback:Lcom/android/settings/notification/NotificationSettings$VolumePreferenceCallback;

    invoke-virtual {v0, v1}, Lcom/android/settings/notification/VolumeSeekBarPreference;->setCallback(Lcom/android/settings/notification/VolumeSeekBarPreference$Callback;)V

    .line 595
    :goto_0
    invoke-static {}, Lcom/android/settings/Utils;->isDomesticSKTModel()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    if-eqz v0, :cond_2

    .line 596
    :cond_0
    const-string v0, "waiting_tone_volume"

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 602
    :goto_1
    return-void

    .line 592
    :cond_1
    const-string v0, "ring_volume"

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_0

    .line 598
    :cond_2
    const-string v0, "waiting_tone_volume"

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/notification/VolumeSeekBarPreference;

    iput-object v0, p0, Lcom/android/settings/notification/NotificationSettings;->mWaitToneVolPref:Lcom/android/settings/notification/VolumeSeekBarPreference;

    .line 599
    iget-object v0, p0, Lcom/android/settings/notification/NotificationSettings;->mWaitToneVolPref:Lcom/android/settings/notification/VolumeSeekBarPreference;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/settings/notification/VolumeSeekBarPreference;->setStream(I)V

    .line 600
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

    .line 1331
    const-string v6, "connectivity"

    invoke-virtual {p0, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 1334
    .local v1, "connectivityManager":Landroid/net/ConnectivityManager;
    if-eqz v1, :cond_3

    .line 1335
    invoke-virtual {v1, v4}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v3

    .line 1337
    .local v3, "wifiNetwork":Landroid/net/NetworkInfo;
    invoke-virtual {v1, v5}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v2

    .line 1339
    .local v2, "mobileNetwork":Landroid/net/NetworkInfo;
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 1341
    .local v0, "activeNetwork":Landroid/net/NetworkInfo;
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1349
    .end local v0    # "activeNetwork":Landroid/net/NetworkInfo;
    .end local v2    # "mobileNetwork":Landroid/net/NetworkInfo;
    .end local v3    # "wifiNetwork":Landroid/net/NetworkInfo;
    :cond_0
    :goto_0
    return v4

    .line 1343
    .restart local v0    # "activeNetwork":Landroid/net/NetworkInfo;
    .restart local v2    # "mobileNetwork":Landroid/net/NetworkInfo;
    .restart local v3    # "wifiNetwork":Landroid/net/NetworkInfo;
    :cond_1
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v6

    if-nez v6, :cond_0

    .line 1345
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

    .line 1349
    goto :goto_0
.end method

.method private isContainerOnlyMode(Landroid/content/Context;)Z
    .locals 4
    .param p1, "mCtx"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 1354
    if-nez p1, :cond_1

    .line 1364
    :cond_0
    :goto_0
    return v1

    .line 1358
    :cond_1
    const-string v2, "isKioskModeEnabled"

    invoke-static {p1, v2}, Landroid/os/PersonaManager;->getKnoxInfoForApp(Landroid/content/Context;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 1360
    .local v0, "bundle":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    const-string v2, "true"

    const-string v3, "isKioskModeEnabled"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1361
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private lookupRingtoneNames()V
    .locals 1

    .prologue
    .line 727
    iget-object v0, p0, Lcom/android/settings/notification/NotificationSettings;->mLookupRingtoneNames:Ljava/lang/Runnable;

    invoke-static {v0}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    .line 728
    return-void
.end method

.method private refreshNotificationListeners()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 1029
    iget-object v2, p0, Lcom/android/settings/notification/NotificationSettings;->mNotificationAccess:Landroid/preference/Preference;

    if-eqz v2, :cond_0

    .line 1030
    iget-object v2, p0, Lcom/android/settings/notification/NotificationSettings;->mPM:Landroid/content/pm/PackageManager;

    invoke-static {v2}, Lcom/android/settings/notification/NotificationAccessSettings;->getListenersCount(Landroid/content/pm/PackageManager;)I

    move-result v1

    .line 1031
    .local v1, "total":I
    if-nez v1, :cond_1

    .line 1032
    iget-object v2, p0, Lcom/android/settings/notification/NotificationSettings;->notification:Landroid/preference/PreferenceCategory;

    iget-object v3, p0, Lcom/android/settings/notification/NotificationSettings;->mNotificationAccess:Landroid/preference/Preference;

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 1045
    .end local v1    # "total":I
    :cond_0
    :goto_0
    return-void

    .line 1034
    .restart local v1    # "total":I
    :cond_1
    iget-object v2, p0, Lcom/android/settings/notification/NotificationSettings;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/settings/notification/NotificationAccessSettings;->getEnabledListenersCount(Landroid/content/Context;)I

    move-result v0

    .line 1035
    .local v0, "n":I
    if-nez v0, :cond_2

    .line 1036
    iget-object v2, p0, Lcom/android/settings/notification/NotificationSettings;->mNotificationAccess:Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settings/notification/NotificationSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a02c5

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1039
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

.method private refreshSoundMode()V
    .locals 3

    .prologue
    .line 899
    iget-object v1, p0, Lcom/android/settings/notification/NotificationSettings;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v0

    .line 900
    .local v0, "ringerMode":I
    iget-object v1, p0, Lcom/android/settings/notification/NotificationSettings;->mSoundMode:Landroid/preference/ListPreference;

    if-eqz v1, :cond_0

    .line 901
    iget-object v1, p0, Lcom/android/settings/notification/NotificationSettings;->mSoundMode:Landroid/preference/ListPreference;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 902
    iget-object v1, p0, Lcom/android/settings/notification/NotificationSettings;->mSoundMode:Landroid/preference/ListPreference;

    iget-object v2, p0, Lcom/android/settings/notification/NotificationSettings;->mSoundMode:Landroid/preference/ListPreference;

    invoke-virtual {v2}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 904
    :cond_0
    return-void
.end method

.method private refreshVolumePrefs()V
    .locals 2

    .prologue
    .line 939
    iget-boolean v0, p0, Lcom/android/settings/notification/NotificationSettings;->mVoiceCapable:Z

    if-eqz v0, :cond_0

    .line 940
    iget-object v0, p0, Lcom/android/settings/notification/NotificationSettings;->mRingVolPref:Lcom/android/settings/notification/VolumeSeekBarPreference;

    const/4 v1, 0x2

    invoke-direct {p0, v0, v1}, Lcom/android/settings/notification/NotificationSettings;->updateVolumePref(Lcom/android/settings/notification/VolumeSeekBarPreference;I)V

    .line 942
    :cond_0
    iget-object v0, p0, Lcom/android/settings/notification/NotificationSettings;->mMediaVolPref:Lcom/android/settings/notification/VolumeSeekBarPreference;

    const/4 v1, 0x3

    invoke-direct {p0, v0, v1}, Lcom/android/settings/notification/NotificationSettings;->updateVolumePref(Lcom/android/settings/notification/VolumeSeekBarPreference;I)V

    .line 943
    iget-object v0, p0, Lcom/android/settings/notification/NotificationSettings;->mNotiVolPref:Lcom/android/settings/notification/VolumeSeekBarPreference;

    const/4 v1, 0x5

    invoke-direct {p0, v0, v1}, Lcom/android/settings/notification/NotificationSettings;->updateVolumePref(Lcom/android/settings/notification/VolumeSeekBarPreference;I)V

    .line 944
    iget-object v0, p0, Lcom/android/settings/notification/NotificationSettings;->mSysVolPref:Lcom/android/settings/notification/VolumeSeekBarPreference;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/settings/notification/NotificationSettings;->updateVolumePref(Lcom/android/settings/notification/VolumeSeekBarPreference;I)V

    .line 945
    iget-object v0, p0, Lcom/android/settings/notification/NotificationSettings;->mWaitToneVolPref:Lcom/android/settings/notification/VolumeSeekBarPreference;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/notification/NotificationSettings;->mWaitToneVolPref:Lcom/android/settings/notification/VolumeSeekBarPreference;

    const/16 v1, 0x8

    invoke-direct {p0, v0, v1}, Lcom/android/settings/notification/NotificationSettings;->updateVolumePref(Lcom/android/settings/notification/VolumeSeekBarPreference;I)V

    .line 946
    :cond_1
    return-void
.end method

.method private registerListeners()V
    .locals 3

    .prologue
    .line 907
    iget-object v1, p0, Lcom/android/settings/notification/NotificationSettings;->mRingModeChangedReceiver:Landroid/content/BroadcastReceiver;

    if-nez v1, :cond_0

    .line 908
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 909
    .local v0, "mfilter":Landroid/content/IntentFilter;
    const-string v1, "android.media.RINGER_MODE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 910
    new-instance v1, Lcom/android/settings/notification/NotificationSettings$7;

    invoke-direct {v1, p0}, Lcom/android/settings/notification/NotificationSettings$7;-><init>(Lcom/android/settings/notification/NotificationSettings;)V

    iput-object v1, p0, Lcom/android/settings/notification/NotificationSettings;->mRingModeChangedReceiver:Landroid/content/BroadcastReceiver;

    .line 928
    invoke-virtual {p0}, Lcom/android/settings/notification/NotificationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/notification/NotificationSettings;->mRingModeChangedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 930
    .end local v0    # "mfilter":Landroid/content/IntentFilter;
    :cond_0
    return-void
.end method

.method private releaseListeners()V
    .locals 2

    .prologue
    .line 1020
    iget-object v0, p0, Lcom/android/settings/notification/NotificationSettings;->mRingModeChangedReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 1021
    invoke-virtual {p0}, Lcom/android/settings/notification/NotificationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/notification/NotificationSettings;->mRingModeChangedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1022
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/notification/NotificationSettings;->mRingModeChangedReceiver:Landroid/content/BroadcastReceiver;

    .line 1024
    :cond_0
    return-void
.end method

.method private startRingtoneSetting()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 478
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 479
    .local v2, "intent":Landroid/content/Intent;
    const-string v5, "com.android.settings"

    invoke-virtual {v2, v5}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 480
    const-string v5, "sound title"

    iget-object v6, p0, Lcom/android/settings/notification/NotificationSettings;->mRingtonePreference_DS:Landroid/preference/Preference;

    invoke-virtual {v6}, Landroid/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 481
    const-string v5, "gsm.sim.state"

    const-string v6, "UNKNOWN"

    invoke-static {v5, v7, v6}, Lcom/samsung/android/telephony/MultiSimManager;->getTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 482
    .local v3, "simState1":Ljava/lang/String;
    const-string v5, "gsm.sim.state"

    const-string v6, "UNKNOWN"

    invoke-static {v5, v8, v6}, Lcom/samsung/android/telephony/MultiSimManager;->getTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 483
    .local v4, "simState2":Ljava/lang/String;
    const-string v5, "gsm.sim.currentcardstatus"

    const-string v6, "9"

    invoke-static {v5, v7, v6}, Lcom/samsung/android/telephony/MultiSimManager;->getTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 484
    .local v0, "cardStatus1":Ljava/lang/String;
    const-string v5, "gsm.sim.currentcardstatus"

    const-string v6, "9"

    invoke-static {v5, v8, v6}, Lcom/samsung/android/telephony/MultiSimManager;->getTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 485
    .local v1, "cardStatus2":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/settings/notification/NotificationSettings;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/samsung/android/telephony/MultiSimManager;->getEnabledSimCount(Landroid/content/Context;)I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_0

    .line 486
    const-string v5, "sound title"

    iget-object v6, p0, Lcom/android/settings/notification/NotificationSettings;->mRingtonePreference_DS:Landroid/preference/Preference;

    invoke-virtual {v6}, Landroid/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 487
    invoke-virtual {p0}, Lcom/android/settings/notification/NotificationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const-string v6, "com.android.settings.RingtoneSettingTabActivity"

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 496
    :goto_0
    invoke-virtual {p0, v2}, Lcom/android/settings/notification/NotificationSettings;->startActivity(Landroid/content/Intent;)V

    .line 497
    return-void

    .line 488
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

    .line 490
    :cond_2
    const-string v5, "sim Id"

    invoke-virtual {v2, v5, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 491
    invoke-virtual {p0}, Lcom/android/settings/notification/NotificationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const-string v6, "com.android.settings.DualSoundRingtoneSettings"

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 493
    :cond_3
    const-string v5, "sim Id"

    invoke-virtual {v2, v5, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 494
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
    .line 876
    iget-object v3, p0, Lcom/android/settings/notification/NotificationSettings;->mLockscreen:Landroid/preference/ListPreference;

    if-nez v3, :cond_0

    .line 886
    :goto_0
    return-void

    .line 879
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/notification/NotificationSettings;->getLockscreenAllowPrivateNotifications()Z

    move-result v0

    .line 880
    .local v0, "allowPrivate":Z
    invoke-direct {p0}, Lcom/android/settings/notification/NotificationSettings;->getLockscreenNotificationsEnabled()Z

    move-result v1

    .line 881
    .local v1, "enabled":Z
    if-nez v1, :cond_1

    const v2, 0x7f0a0eee

    .line 884
    .local v2, "selectedVal":I
    :goto_1
    iget-object v3, p0, Lcom/android/settings/notification/NotificationSettings;->mLockscreen:Landroid/preference/ListPreference;

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 885
    iget-object v3, p0, Lcom/android/settings/notification/NotificationSettings;->mLockscreen:Landroid/preference/ListPreference;

    iget-object v4, p0, Lcom/android/settings/notification/NotificationSettings;->mLockscreen:Landroid/preference/ListPreference;

    invoke-virtual {v4}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 881
    .end local v2    # "selectedVal":I
    :cond_1
    if-eqz v0, :cond_2

    const v2, 0x7f0a0eec

    goto :goto_1

    :cond_2
    const v2, 0x7f0a0eed

    goto :goto_1
.end method

.method private updateMediaDB(Landroid/net/Uri;)Landroid/net/Uri;
    .locals 12
    .param p1, "originalUri"    # Landroid/net/Uri;

    .prologue
    const/4 v6, 0x0

    .line 1252
    const-string v9, "NotificationSettings"

    const-string v10, "UpdateMediaDB"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1253
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v3

    .line 1254
    .local v3, "filePath":Ljava/lang/String;
    invoke-static {v3}, Landroid/webkit/MimeTypeMap;->getFileExtensionFromUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1255
    .local v2, "extension":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 1256
    const/16 v9, 0x2e

    invoke-virtual {v3, v9}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 1257
    .local v0, "dotPos":I
    if-ltz v0, :cond_0

    .line 1258
    add-int/lit8 v9, v0, 0x1

    invoke-virtual {v3, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 1263
    .end local v0    # "dotPos":I
    :cond_0
    :try_start_0
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v9

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1264
    .local v4, "mimeType":Ljava/lang/String;
    if-eqz v4, :cond_1

    .line 1265
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

    .line 1266
    const-string v9, "audio"

    invoke-virtual {v4, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_1

    .line 1267
    const-string v9, "NotificationSettings"

    const-string v10, "updateMediaDB - mimeType is not audio - return null"

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1309
    .end local v4    # "mimeType":Ljava/lang/String;
    :goto_0
    return-object v6

    .line 1273
    .restart local v4    # "mimeType":Ljava/lang/String;
    :cond_1
    if-nez v4, :cond_2

    const-string v9, "3ga"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 1275
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

    .line 1282
    :cond_2
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1298
    .local v5, "newSoundFile":Ljava/io/File;
    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    .line 1299
    .local v8, "values":Landroid/content/ContentValues;
    const-string v9, "_data"

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1300
    const-string v9, "title"

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1301
    const-string v9, "mime_type"

    const-string v10, "audio/*"

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1302
    const-string v9, "_size"

    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1304
    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/provider/MediaStore$Audio$Media;->getContentUriForPath(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    .line 1305
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

    .line 1306
    invoke-virtual {p0}, Lcom/android/settings/notification/NotificationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    invoke-virtual {v9, v7, v8}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v6

    .line 1307
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

    .line 1277
    .end local v4    # "mimeType":Ljava/lang/String;
    .end local v5    # "newSoundFile":Ljava/io/File;
    .end local v6    # "newUri":Landroid/net/Uri;
    .end local v7    # "tempUri":Landroid/net/Uri;
    .end local v8    # "values":Landroid/content/ContentValues;
    :catch_0
    move-exception v1

    .line 1278
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
    .line 1313
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 1314
    iget-object v0, p0, Lcom/android/settings/notification/NotificationSettings;->mRingtone:Lcom/android/settings/DefaultRingtonePreference;

    if-eqz v0, :cond_0

    .line 1315
    invoke-direct {p0}, Lcom/android/settings/notification/NotificationSettings;->lookupRingtoneNames()V

    .line 1322
    :cond_0
    :goto_0
    return-void

    .line 1318
    :cond_1
    iget-object v0, p0, Lcom/android/settings/notification/NotificationSettings;->mRingtone2:Lcom/android/settings/DefaultRingtonePreference;

    if-eqz v0, :cond_0

    .line 1319
    invoke-direct {p0}, Lcom/android/settings/notification/NotificationSettings;->lookupRingtoneNames()V

    goto :goto_0
.end method

.method private static updateRingtoneName(Landroid/content/Context;I)Ljava/lang/CharSequence;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "type"    # I

    .prologue
    const/4 v7, 0x0

    .line 758
    if-nez p0, :cond_1

    .line 759
    const-string v0, "NotificationSettings"

    const-string v2, "Unable to update ringtone name, no context provided"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 786
    :cond_0
    :goto_0
    return-object v7

    .line 762
    :cond_1
    invoke-static {p0, p1}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v1

    .line 763
    .local v1, "ringtoneUri":Landroid/net/Uri;
    const v0, 0x10404b5

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 765
    .local v7, "summary":Ljava/lang/CharSequence;
    if-nez v1, :cond_2

    .line 766
    const v0, 0x10404b3

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    goto :goto_0

    .line 769
    :cond_2
    const/4 v6, 0x0

    .line 771
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

    .line 773
    if-eqz v6, :cond_3

    .line 774
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 775
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v7

    .line 781
    :cond_3
    if-eqz v6, :cond_0

    .line 782
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 778
    :catch_0
    move-exception v0

    .line 781
    if-eqz v6, :cond_0

    .line 782
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 781
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_4

    .line 782
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v0
.end method

.method private updateVibrateWhenRinging()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 816
    iget-object v1, p0, Lcom/android/settings/notification/NotificationSettings;->mVibrateWhenRinging:Landroid/preference/CheckBoxPreference;

    if-nez v1, :cond_0

    .line 819
    :goto_0
    return-void

    .line 817
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
    .locals 4
    .param p1, "volSeekbarPref"    # Lcom/android/settings/notification/VolumeSeekBarPreference;
    .param p2, "streamType"    # I

    .prologue
    const/4 v3, 0x1

    .line 949
    iget-object v2, p0, Lcom/android/settings/notification/NotificationSettings;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v2, p2}, Landroid/media/AudioManager;->isStreamMute(I)Z

    move-result v1

    .line 950
    .local v1, "muted":Z
    iget-object v2, p0, Lcom/android/settings/notification/NotificationSettings;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v2}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v2

    if-ne v2, v3, :cond_4

    .line 951
    const/4 v2, 0x2

    if-ne p2, v2, :cond_2

    .line 952
    const v2, 0x1080a5f

    invoke-virtual {p1, v2}, Lcom/android/settings/notification/VolumeSeekBarPreference;->setIcon(I)V

    .line 969
    :cond_0
    :goto_0
    if-eqz p1, :cond_1

    const/16 v2, 0x8

    if-eq p2, v2, :cond_1

    .line 972
    iget-object v2, p0, Lcom/android/settings/notification/NotificationSettings;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v2}, Landroid/media/AudioManager;->getMasterStreamType()I

    move-result v2

    if-eq p2, v2, :cond_6

    if-eqz v1, :cond_6

    .line 973
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Lcom/android/settings/notification/VolumeSeekBarPreference;->setEnabled(Z)V

    .line 982
    :cond_1
    :goto_1
    return-void

    .line 955
    :cond_2
    const/4 v2, 0x5

    if-ne p2, v2, :cond_3

    .line 956
    const v2, 0x1080a58

    invoke-virtual {p1, v2}, Lcom/android/settings/notification/VolumeSeekBarPreference;->setIcon(I)V

    goto :goto_0

    .line 959
    :cond_3
    if-ne p2, v3, :cond_0

    .line 960
    const v2, 0x1080a66

    invoke-virtual {p1, v2}, Lcom/android/settings/notification/VolumeSeekBarPreference;->setIcon(I)V

    goto :goto_0

    .line 964
    :cond_4
    invoke-direct {p0, p2}, Lcom/android/settings/notification/NotificationSettings;->getImgIndexOfStream(I)I

    move-result v0

    .line 965
    .local v0, "iconIndex":I
    if-eqz v1, :cond_5

    sget-object v2, Lcom/android/settings/notification/NotificationSettings;->SEEKBAR_MUTED_RES_ID:[I

    aget v2, v2, v0

    :goto_2
    invoke-virtual {p1, v2}, Lcom/android/settings/notification/VolumeSeekBarPreference;->setIcon(I)V

    goto :goto_0

    :cond_5
    sget-object v2, Lcom/android/settings/notification/NotificationSettings;->SEEKBAR_UNMUTED_RES_ID:[I

    aget v2, v2, v0

    goto :goto_2

    .line 979
    .end local v0    # "iconIndex":I
    :cond_6
    invoke-virtual {p1, v3}, Lcom/android/settings/notification/VolumeSeekBarPreference;->setEnabled(Z)V

    goto :goto_1
.end method


# virtual methods
.method public handleRingtonePicked(Landroid/net/Uri;I)V
    .locals 7
    .param p1, "pickedUri"    # Landroid/net/Uri;
    .param p2, "ringtoneType"    # I

    .prologue
    const v6, 0x7f0a068f

    const/4 v5, 0x0

    .line 1212
    if-eqz p1, :cond_0

    invoke-static {p1}, Landroid/media/RingtoneManager;->isDefault(Landroid/net/Uri;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1247
    :cond_0
    :goto_0
    const-string v2, "NotificationSettings"

    const-string v3, "updateRingtoneData(ringtoneType)"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1248
    invoke-direct {p0, p2}, Lcom/android/settings/notification/NotificationSettings;->updateRingtoneData(I)V

    .line 1249
    :goto_1
    return-void

    .line 1217
    :cond_1
    const-string v2, "NotificationSettings"

    const-string v3, "handleRingtonePicked updating media DB"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1218
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    const-string v3, "file"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1219
    invoke-direct {p0, p1}, Lcom/android/settings/notification/NotificationSettings;->updateMediaDB(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object p1

    .line 1221
    if-nez p1, :cond_2

    .line 1222
    const-string v2, "NotificationSettings"

    const-string v3, "handleRingtonePicked - pickedUri is null"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1223
    invoke-virtual {p0}, Lcom/android/settings/notification/NotificationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2, v6, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 1228
    :cond_2
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 1229
    .local v1, "values":Landroid/content/ContentValues;
    const-string v2, "is_ringtone"

    const-string v3, "1"

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1231
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/notification/NotificationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v2, p1, v1, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1232
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

    .line 1233
    invoke-virtual {p0}, Lcom/android/settings/notification/NotificationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2, p2, p1}, Landroid/media/RingtoneManager;->setActualDefaultRingtoneUri(Landroid/content/Context;ILandroid/net/Uri;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1239
    :goto_2
    iget-object v2, p0, Lcom/android/settings/notification/NotificationSettings;->offset:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 1240
    const/16 v2, 0x8

    if-ne p2, v2, :cond_3

    .line 1241
    invoke-virtual {p0}, Lcom/android/settings/notification/NotificationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "recommendation_time_2"

    iget-object v4, p0, Lcom/android/settings/notification/NotificationSettings;->offset:Ljava/lang/String;

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_0

    .line 1234
    :catch_0
    move-exception v0

    .line 1236
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {p0}, Lcom/android/settings/notification/NotificationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2, v6, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_2

    .line 1243
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
    .line 536
    const-string v0, "NotificationSettings"

    const-string v1, "onActivityCreated"

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 537
    invoke-virtual {p0}, Lcom/android/settings/notification/NotificationSettings;->getListView()Landroid/widget/ListView;

    move-result-object v0

    new-instance v1, Lcom/android/settings/notification/NotificationSettings$2;

    invoke-direct {v1, p0}, Lcom/android/settings/notification/NotificationSettings$2;-><init>(Lcom/android/settings/notification/NotificationSettings;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 569
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 570
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 6
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v4, -0x1

    .line 1147
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 1149
    packed-switch p1, :pswitch_data_0

    .line 1195
    :cond_0
    :goto_0
    return-void

    .line 1151
    :pswitch_0
    if-ne p2, v4, :cond_0

    .line 1152
    invoke-virtual {p3}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 1153
    .local v2, "pickedUri":Landroid/net/Uri;
    const-string v4, "highlight_offset"

    invoke-virtual {v2, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/notification/NotificationSettings;->offset:Ljava/lang/String;

    .line 1159
    const/4 v4, 0x1

    invoke-virtual {p0, v2, v4}, Lcom/android/settings/notification/NotificationSettings;->handleRingtonePicked(Landroid/net/Uri;I)V

    goto :goto_0

    .line 1163
    .end local v2    # "pickedUri":Landroid/net/Uri;
    :pswitch_1
    if-ne p2, v4, :cond_0

    .line 1164
    invoke-virtual {p3}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 1165
    .restart local v2    # "pickedUri":Landroid/net/Uri;
    const-string v4, "highlight_offset"

    invoke-virtual {v2, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/notification/NotificationSettings;->offset:Ljava/lang/String;

    .line 1171
    const/16 v4, 0x8

    invoke-virtual {p0, v2, v4}, Lcom/android/settings/notification/NotificationSettings;->handleRingtonePicked(Landroid/net/Uri;I)V

    goto :goto_0

    .line 1175
    .end local v2    # "pickedUri":Landroid/net/Uri;
    :pswitch_2
    invoke-virtual {p0}, Lcom/android/settings/notification/NotificationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Lcom/android/settings/notification/NotificationSettings;->isConnected(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1176
    new-instance v0, Landroid/content/Intent;

    const-string v4, "android.intent.action.VIEW"

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1177
    .local v0, "intent":Landroid/content/Intent;
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v4

    const-string v5, "CscFeature_Setting_ConfigOpRngToneLink"

    invoke-virtual {v4, v5}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1179
    .local v1, "mRingtoneType":Ljava/lang/String;
    const-string v4, "Tcoloring"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1180
    const-string v4, "http://www.tcoloring.com"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 1181
    .local v3, "u":Landroid/net/Uri;
    invoke-virtual {v0, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1182
    invoke-virtual {p0, v0}, Lcom/android/settings/notification/NotificationSettings;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 1183
    .end local v3    # "u":Landroid/net/Uri;
    :cond_1
    const-string v4, "Ringtoyou"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1184
    const-string v4, "http://ringtoyou.olleh.com"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 1185
    .restart local v3    # "u":Landroid/net/Uri;
    invoke-virtual {v0, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1186
    invoke-virtual {p0, v0}, Lcom/android/settings/notification/NotificationSettings;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 1188
    .end local v3    # "u":Landroid/net/Uri;
    :cond_2
    const-string v4, "NotificationSettings"

    const-string v5, "Preference not found: "

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1149
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 17
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 219
    invoke-super/range {p0 .. p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 220
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/notification/NotificationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/settings/notification/NotificationSettings;->mContext:Landroid/content/Context;

    .line 221
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/notification/NotificationSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/settings/notification/NotificationSettings;->mPM:Landroid/content/pm/PackageManager;

    .line 222
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/notification/NotificationSettings;->mContext:Landroid/content/Context;

    invoke-static {v14}, Lcom/android/settings/Utils;->isVoiceCapable(Landroid/content/Context;)Z

    move-result v14

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/settings/notification/NotificationSettings;->mVoiceCapable:Z

    .line 223
    const-string v14, "audio"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/settings/notification/NotificationSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/media/AudioManager;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/settings/notification/NotificationSettings;->mAudioManager:Landroid/media/AudioManager;

    .line 224
    const v14, 0x7f070088

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/settings/notification/NotificationSettings;->addPreferencesFromResource(I)V

    .line 227
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/notification/NotificationSettings;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/settings/notification/NotificationSettings;->isContainerOnlyMode(Landroid/content/Context;)Z

    move-result v14

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/settings/notification/NotificationSettings;->isKioskContainer:Z

    .line 230
    const-string v14, "sound"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/settings/notification/NotificationSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v12

    check-cast v12, Landroid/preference/PreferenceCategory;

    .line 231
    .local v12, "sound":Landroid/preference/PreferenceCategory;
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/android/settings/notification/NotificationSettings;->initVolumePreference(Landroid/preference/PreferenceCategory;)V

    .line 233
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/android/settings/notification/NotificationSettings;->initSoundMode(Landroid/preference/PreferenceCategory;)V

    .line 235
    const-string v14, "phone_vibration"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/settings/notification/NotificationSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/settings/notification/NotificationSettings;->mPhoneVibration:Landroid/preference/Preference;

    .line 236
    const-string v14, "ds_ring_tone"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/settings/notification/NotificationSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/settings/notification/NotificationSettings;->mRingtonePreference_DS:Landroid/preference/Preference;

    .line 238
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/android/settings/notification/NotificationSettings;->initRingtones(Landroid/preference/PreferenceCategory;)V

    .line 239
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/android/settings/notification/NotificationSettings;->initVibrateWhenRinging(Landroid/preference/PreferenceCategory;)V

    .line 241
    const-string v14, "notification"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/settings/notification/NotificationSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v14

    check-cast v14, Landroid/preference/PreferenceCategory;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/settings/notification/NotificationSettings;->notification:Landroid/preference/PreferenceCategory;

    .line 242
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/notification/NotificationSettings;->notification:Landroid/preference/PreferenceCategory;

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/settings/notification/NotificationSettings;->initHeads(Landroid/preference/PreferenceCategory;)V

    .line 243
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/notification/NotificationSettings;->notification:Landroid/preference/PreferenceCategory;

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/settings/notification/NotificationSettings;->initLockscreenNotifications(Landroid/preference/PreferenceCategory;)V

    .line 246
    const-string v14, "zen_mode"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/settings/notification/NotificationSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/settings/notification/NotificationSettings;->mInterruptions:Landroid/preference/Preference;

    .line 247
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/notification/NotificationSettings;->mInterruptions:Landroid/preference/Preference;

    if-eqz v14, :cond_0

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/notification/NotificationSettings;->notification:Landroid/preference/PreferenceCategory;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/notification/NotificationSettings;->mInterruptions:Landroid/preference/Preference;

    invoke-virtual {v14, v15}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 253
    :cond_0
    const-string v14, "manage_notification_access"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/settings/notification/NotificationSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/settings/notification/NotificationSettings;->mNotificationAccess:Landroid/preference/Preference;

    .line 254
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/notification/NotificationSettings;->refreshNotificationListeners()V

    .line 256
    const-string v14, "phone_profile"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/settings/notification/NotificationSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/settings/notification/NotificationSettings;->mPhoneProfile:Landroid/preference/Preference;

    .line 258
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/notification/NotificationSettings;->mPhoneProfile:Landroid/preference/Preference;

    invoke-virtual {v12, v14}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 262
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/notification/NotificationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v14

    invoke-static {v14}, Lcom/android/settings/Utils;->isVoiceCapable(Landroid/content/Context;)Z

    move-result v14

    if-nez v14, :cond_22

    .line 263
    const-string v14, "notification_ringtone"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/settings/notification/NotificationSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v14

    check-cast v14, Lcom/android/settings/DefaultRingtonePreference;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/settings/notification/NotificationSettings;->mRingtone:Lcom/android/settings/DefaultRingtonePreference;

    .line 267
    :goto_0
    const-string v14, "ringtone2"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/settings/notification/NotificationSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v14

    check-cast v14, Lcom/android/settings/DefaultRingtonePreference;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/settings/notification/NotificationSettings;->mRingtone2:Lcom/android/settings/DefaultRingtonePreference;

    .line 269
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/notification/NotificationSettings;->mRingtone:Lcom/android/settings/DefaultRingtonePreference;

    move-object/from16 v0, p0

    invoke-virtual {v14, v0}, Lcom/android/settings/DefaultRingtonePreference;->setObject(Lcom/android/settings/notification/NotificationSettings;)V

    .line 271
    const-string v14, "tcoloring"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/settings/notification/NotificationSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/settings/notification/NotificationSettings;->mTcoloring:Landroid/preference/Preference;

    .line 272
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v14

    const-string v15, "CscFeature_Setting_ConfigOpRngToneLink"

    invoke-virtual {v14, v15}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 273
    .local v8, "mRingtoneType":Ljava/lang/String;
    const-string v14, "Tcoloring"

    invoke-virtual {v14, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_1

    .line 274
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/notification/NotificationSettings;->mTcoloring:Landroid/preference/Preference;

    invoke-virtual {v12, v14}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 277
    :cond_1
    const-string v14, "ringtoyou"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/settings/notification/NotificationSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/settings/notification/NotificationSettings;->mRingtoyou:Landroid/preference/Preference;

    .line 278
    const-string v14, "Ringtoyou"

    invoke-virtual {v14, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_2

    .line 279
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/notification/NotificationSettings;->mRingtoyou:Landroid/preference/Preference;

    invoke-virtual {v12, v14}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 283
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/notification/NotificationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v14

    invoke-virtual {v14}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    .line 284
    .local v3, "activity":Landroid/content/Intent;
    invoke-virtual {v3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/settings/notification/NotificationSettings;->mDirectUri:Landroid/net/Uri;

    .line 285
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/notification/NotificationSettings;->mDirectUri:Landroid/net/Uri;

    if-eqz v14, :cond_3

    .line 286
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/notification/NotificationSettings;->mDirectUri:Landroid/net/Uri;

    invoke-virtual {v14}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/settings/notification/NotificationSettings;->mDirect:I

    .line 289
    :cond_3
    const/4 v14, 0x0

    invoke-virtual {v3, v14}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 293
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/settings/notification/NotificationSettings;->isKioskContainer:Z

    if-eqz v14, :cond_4

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/notification/NotificationSettings;->notification:Landroid/preference/PreferenceCategory;

    if-eqz v14, :cond_4

    .line 294
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/notification/NotificationSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/notification/NotificationSettings;->notification:Landroid/preference/PreferenceCategory;

    invoke-virtual {v14, v15}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 298
    :cond_4
    const-string v14, "vibrator"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/settings/notification/NotificationSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/os/Vibrator;

    .line 299
    .local v13, "vibrator":Landroid/os/Vibrator;
    if-eqz v13, :cond_5

    invoke-virtual {v13}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result v14

    if-nez v14, :cond_23

    .line 300
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/notification/NotificationSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v14

    const-string v15, "vibration_feedback_intensity"

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/settings/notification/NotificationSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v15

    invoke-virtual {v14, v15}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 301
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/notification/NotificationSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/notification/NotificationSettings;->mPhoneVibration:Landroid/preference/Preference;

    invoke-virtual {v14, v15}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 309
    :cond_6
    :goto_1
    invoke-static {}, Lcom/android/settings/Utils;->isMultisimModel()Z

    move-result v14

    if-eqz v14, :cond_26

    .line 310
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/notification/NotificationSettings;->mNotificationRingtonePreference:Landroid/preference/Preference;

    invoke-virtual {v12, v14}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 311
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/notification/NotificationSettings;->mRingtone:Lcom/android/settings/DefaultRingtonePreference;

    invoke-virtual {v12, v14}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 312
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/notification/NotificationSettings;->mRingtone2:Lcom/android/settings/DefaultRingtonePreference;

    invoke-virtual {v12, v14}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 317
    :goto_2
    const-string v14, "ds_ring_tone"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/settings/notification/NotificationSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/settings/notification/NotificationSettings;->mRingtonePreference_DS:Landroid/preference/Preference;

    .line 318
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/notification/NotificationSettings;->mRingtonePreference_DS:Landroid/preference/Preference;

    if-eqz v14, :cond_7

    .line 319
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/notification/NotificationSettings;->mRingtonePreference_DS:Landroid/preference/Preference;

    new-instance v15, Lcom/android/settings/notification/NotificationSettings$1;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Lcom/android/settings/notification/NotificationSettings$1;-><init>(Lcom/android/settings/notification/NotificationSettings;)V

    invoke-virtual {v14, v15}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 327
    :cond_7
    const-string v14, "audio_output"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/settings/notification/NotificationSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v14

    check-cast v14, Landroid/preference/ListPreference;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/settings/notification/NotificationSettings;->mAudioOutput:Landroid/preference/ListPreference;

    .line 328
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v14

    const/16 v15, 0x64

    if-ge v14, v15, :cond_8

    invoke-static {}, Lcom/android/settings/Utils;->isSupportMenuTreeForK()Z

    move-result v14

    if-nez v14, :cond_8

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/notification/NotificationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v14

    invoke-static {v14}, Lcom/android/settings/notification/NotificationSettings;->SupportDockSettings(Landroid/content/Context;)Z

    move-result v14

    if-eqz v14, :cond_27

    .line 331
    :cond_8
    const-string v14, "hdmi"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/settings/notification/NotificationSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/PreferenceGroup;

    .line 332
    .local v6, "hdmiSettingsCategory":Landroid/preference/PreferenceGroup;
    if-eqz v6, :cond_9

    .line 333
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/notification/NotificationSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v14

    invoke-virtual {v14, v6}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 334
    :cond_9
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/notification/NotificationSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v14

    const-string v15, "audio_output"

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/settings/notification/NotificationSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v15

    invoke-virtual {v14, v15}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 338
    .end local v6    # "hdmiSettingsCategory":Landroid/preference/PreferenceGroup;
    :goto_3
    const-string v14, "my_sound"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/settings/notification/NotificationSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v14

    check-cast v14, Landroid/preference/PreferenceScreen;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/settings/notification/NotificationSettings;->mMySound:Landroid/preference/PreferenceScreen;

    .line 340
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/notification/NotificationSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/notification/NotificationSettings;->mMySound:Landroid/preference/PreferenceScreen;

    invoke-virtual {v14, v15}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 341
    const-string v14, "category_more_settings"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/settings/notification/NotificationSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    check-cast v10, Landroid/preference/PreferenceGroup;

    .line 342
    .local v10, "moreSettingsCategory":Landroid/preference/PreferenceGroup;
    if-eqz v10, :cond_a

    .line 343
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/notification/NotificationSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v14

    invoke-virtual {v14, v10}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 348
    :cond_a
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/notification/NotificationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v14

    invoke-static {v14}, Lcom/sec/android/emergencymode/EmergencyManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/emergencymode/EmergencyManager;

    move-result-object v5

    .line 349
    .local v5, "em":Lcom/sec/android/emergencymode/EmergencyManager;
    invoke-virtual {v5}, Lcom/sec/android/emergencymode/EmergencyManager;->isEmergencyMode()Z

    move-result v14

    if-eqz v14, :cond_20

    .line 350
    const-string v14, "sound_mode"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/settings/notification/NotificationSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v14

    check-cast v14, Landroid/preference/ListPreference;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/settings/notification/NotificationSettings;->mSoundMode:Landroid/preference/ListPreference;

    .line 351
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/notification/NotificationSettings;->mSoundMode:Landroid/preference/ListPreference;

    if-eqz v14, :cond_b

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/notification/NotificationSettings;->mSoundMode:Landroid/preference/ListPreference;

    invoke-virtual {v12, v14}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 352
    :cond_b
    const-string v14, "vibrate_when_ringing"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/settings/notification/NotificationSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v14

    check-cast v14, Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/settings/notification/NotificationSettings;->mVibrateWhenRinging:Landroid/preference/CheckBoxPreference;

    .line 353
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/notification/NotificationSettings;->mVibrateWhenRinging:Landroid/preference/CheckBoxPreference;

    if-eqz v14, :cond_c

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/notification/NotificationSettings;->mVibrateWhenRinging:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v12, v14}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 354
    :cond_c
    const-string v14, "ringtone"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/settings/notification/NotificationSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v14

    check-cast v14, Lcom/android/settings/DefaultRingtonePreference;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/settings/notification/NotificationSettings;->mRingtone:Lcom/android/settings/DefaultRingtonePreference;

    .line 355
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/notification/NotificationSettings;->mRingtone:Lcom/android/settings/DefaultRingtonePreference;

    if-eqz v14, :cond_d

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/notification/NotificationSettings;->mRingtone:Lcom/android/settings/DefaultRingtonePreference;

    invoke-virtual {v12, v14}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 356
    :cond_d
    const-string v14, "tcoloring"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/settings/notification/NotificationSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/settings/notification/NotificationSettings;->mTcoloring:Landroid/preference/Preference;

    .line 357
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/notification/NotificationSettings;->mTcoloring:Landroid/preference/Preference;

    if-eqz v14, :cond_e

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/notification/NotificationSettings;->mTcoloring:Landroid/preference/Preference;

    invoke-virtual {v12, v14}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 358
    :cond_e
    const-string v14, "ringtoyou"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/settings/notification/NotificationSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/settings/notification/NotificationSettings;->mRingtoyou:Landroid/preference/Preference;

    .line 359
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/notification/NotificationSettings;->mRingtoyou:Landroid/preference/Preference;

    if-eqz v14, :cond_f

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/notification/NotificationSettings;->mRingtoyou:Landroid/preference/Preference;

    invoke-virtual {v12, v14}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 360
    :cond_f
    const-string v14, "phone_vibration"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/settings/notification/NotificationSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/settings/notification/NotificationSettings;->mPhoneVibration:Landroid/preference/Preference;

    .line 361
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/notification/NotificationSettings;->mPhoneVibration:Landroid/preference/Preference;

    if-eqz v14, :cond_10

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/notification/NotificationSettings;->mPhoneVibration:Landroid/preference/Preference;

    invoke-virtual {v12, v14}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 362
    :cond_10
    const-string v14, "notification_ringtone"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/settings/notification/NotificationSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v14

    check-cast v14, Lcom/android/settings/DefaultRingtonePreference;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/settings/notification/NotificationSettings;->mRingtone:Lcom/android/settings/DefaultRingtonePreference;

    .line 363
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/notification/NotificationSettings;->mRingtone:Lcom/android/settings/DefaultRingtonePreference;

    if-eqz v14, :cond_11

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/notification/NotificationSettings;->mRingtone:Lcom/android/settings/DefaultRingtonePreference;

    invoke-virtual {v12, v14}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 364
    :cond_11
    const-string v14, "ds_ring_tone"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/settings/notification/NotificationSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/settings/notification/NotificationSettings;->mRingtonePreference_DS:Landroid/preference/Preference;

    .line 365
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/notification/NotificationSettings;->mRingtonePreference_DS:Landroid/preference/Preference;

    if-eqz v14, :cond_12

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/notification/NotificationSettings;->mRingtonePreference_DS:Landroid/preference/Preference;

    invoke-virtual {v12, v14}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 366
    :cond_12
    const-string v14, "zen_mode"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/settings/notification/NotificationSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/settings/notification/NotificationSettings;->mInterruptions:Landroid/preference/Preference;

    .line 367
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/notification/NotificationSettings;->mInterruptions:Landroid/preference/Preference;

    if-eqz v14, :cond_13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/notification/NotificationSettings;->notification:Landroid/preference/PreferenceCategory;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/notification/NotificationSettings;->mInterruptions:Landroid/preference/Preference;

    invoke-virtual {v14, v15}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 368
    :cond_13
    const-string v14, "other_sounds"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/settings/notification/NotificationSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/settings/notification/NotificationSettings;->mOtherSounds:Landroid/preference/Preference;

    .line 369
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/notification/NotificationSettings;->mOtherSounds:Landroid/preference/Preference;

    if-eqz v14, :cond_14

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/notification/NotificationSettings;->mOtherSounds:Landroid/preference/Preference;

    invoke-virtual {v12, v14}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 370
    :cond_14
    const-string v14, "phone_profile"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/settings/notification/NotificationSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/settings/notification/NotificationSettings;->mPhoneProfile:Landroid/preference/Preference;

    .line 371
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/notification/NotificationSettings;->mPhoneProfile:Landroid/preference/Preference;

    if-eqz v14, :cond_15

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/notification/NotificationSettings;->mPhoneProfile:Landroid/preference/Preference;

    invoke-virtual {v12, v14}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 372
    :cond_15
    const-string v14, "notification"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/settings/notification/NotificationSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v11

    check-cast v11, Landroid/preference/PreferenceGroup;

    .line 373
    .local v11, "notificationCategory":Landroid/preference/PreferenceGroup;
    if-eqz v11, :cond_16

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/notification/NotificationSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v14

    invoke-virtual {v14, v11}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 374
    :cond_16
    const-string v14, "heads_up_notifications_enabled"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/settings/notification/NotificationSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v14

    check-cast v14, Landroid/preference/TwoStatePreference;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/settings/notification/NotificationSettings;->mNotificationHeads:Landroid/preference/TwoStatePreference;

    .line 375
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/notification/NotificationSettings;->mNotificationHeads:Landroid/preference/TwoStatePreference;

    if-eqz v14, :cond_17

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/notification/NotificationSettings;->notification:Landroid/preference/PreferenceCategory;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/notification/NotificationSettings;->mNotificationHeads:Landroid/preference/TwoStatePreference;

    invoke-virtual {v14, v15}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 376
    :cond_17
    const-string v14, "lock_screen_notifications"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/settings/notification/NotificationSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v14

    check-cast v14, Landroid/preference/ListPreference;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/settings/notification/NotificationSettings;->mLockscreen:Landroid/preference/ListPreference;

    .line 377
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/notification/NotificationSettings;->mLockscreen:Landroid/preference/ListPreference;

    if-eqz v14, :cond_18

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/notification/NotificationSettings;->notification:Landroid/preference/PreferenceCategory;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/notification/NotificationSettings;->mLockscreen:Landroid/preference/ListPreference;

    invoke-virtual {v14, v15}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 378
    :cond_18
    const-string v14, "app_notifications"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/settings/notification/NotificationSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/settings/notification/NotificationSettings;->mAppNotifications:Landroid/preference/Preference;

    .line 379
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/notification/NotificationSettings;->mAppNotifications:Landroid/preference/Preference;

    if-eqz v14, :cond_19

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/notification/NotificationSettings;->notification:Landroid/preference/PreferenceCategory;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/notification/NotificationSettings;->mAppNotifications:Landroid/preference/Preference;

    invoke-virtual {v14, v15}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 380
    :cond_19
    const-string v14, "manage_notification_access"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/settings/notification/NotificationSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/settings/notification/NotificationSettings;->mNotificationAccess:Landroid/preference/Preference;

    .line 381
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/notification/NotificationSettings;->mNotificationAccess:Landroid/preference/Preference;

    if-eqz v14, :cond_1a

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/notification/NotificationSettings;->notification:Landroid/preference/PreferenceCategory;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/notification/NotificationSettings;->mNotificationAccess:Landroid/preference/Preference;

    invoke-virtual {v14, v15}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 382
    :cond_1a
    const-string v14, "hdmi"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/settings/notification/NotificationSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceGroup;

    .line 383
    .local v1, "HdmiCategory":Landroid/preference/PreferenceGroup;
    if-eqz v1, :cond_1b

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/notification/NotificationSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v14

    invoke-virtual {v14, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 384
    :cond_1b
    const-string v14, "audio_output"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/settings/notification/NotificationSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v14

    check-cast v14, Landroid/preference/ListPreference;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/settings/notification/NotificationSettings;->mAudioOutput:Landroid/preference/ListPreference;

    .line 385
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/notification/NotificationSettings;->mAudioOutput:Landroid/preference/ListPreference;

    if-eqz v14, :cond_1c

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/notification/NotificationSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/notification/NotificationSettings;->mAudioOutput:Landroid/preference/ListPreference;

    invoke-virtual {v14, v15}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 386
    :cond_1c
    const-string v14, "category_more_settings"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/settings/notification/NotificationSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/PreferenceGroup;

    .line 387
    .local v2, "MoreSettingsCategory":Landroid/preference/PreferenceGroup;
    if-eqz v2, :cond_1d

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/notification/NotificationSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v14

    invoke-virtual {v14, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 388
    :cond_1d
    const-string v14, "my_sound"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/settings/notification/NotificationSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v14

    check-cast v14, Landroid/preference/PreferenceScreen;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/settings/notification/NotificationSettings;->mMySound:Landroid/preference/PreferenceScreen;

    .line 389
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/notification/NotificationSettings;->mMySound:Landroid/preference/PreferenceScreen;

    if-eqz v14, :cond_1e

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/notification/NotificationSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/notification/NotificationSettings;->mMySound:Landroid/preference/PreferenceScreen;

    invoke-virtual {v14, v15}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 390
    :cond_1e
    const-string v14, "sound"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/settings/notification/NotificationSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    check-cast v9, Landroid/preference/PreferenceCategory;

    .line 391
    .local v9, "mSound":Landroid/preference/PreferenceCategory;
    const-string v14, "sound_mode"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/settings/notification/NotificationSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v14

    check-cast v14, Landroid/preference/ListPreference;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/settings/notification/NotificationSettings;->mSoundMode:Landroid/preference/ListPreference;

    .line 392
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/notification/NotificationSettings;->mSoundMode:Landroid/preference/ListPreference;

    if-eqz v14, :cond_1f

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/notification/NotificationSettings;->mSoundMode:Landroid/preference/ListPreference;

    invoke-virtual {v9, v14}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 393
    :cond_1f
    const-string v14, "zen_mode_dnd"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/settings/notification/NotificationSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v14

    check-cast v14, Landroid/preference/PreferenceScreen;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/settings/notification/NotificationSettings;->mDNDZenMode:Landroid/preference/Preference;

    .line 394
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/notification/NotificationSettings;->mDNDZenMode:Landroid/preference/Preference;

    if-eqz v14, :cond_20

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/notification/NotificationSettings;->notification:Landroid/preference/PreferenceCategory;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/notification/NotificationSettings;->mDNDZenMode:Landroid/preference/Preference;

    invoke-virtual {v14, v15}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 400
    .end local v1    # "HdmiCategory":Landroid/preference/PreferenceGroup;
    .end local v2    # "MoreSettingsCategory":Landroid/preference/PreferenceGroup;
    .end local v9    # "mSound":Landroid/preference/PreferenceCategory;
    .end local v11    # "notificationCategory":Landroid/preference/PreferenceGroup;
    :cond_20
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/notification/NotificationSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    const-string v15, "all_sound_off"

    const/16 v16, 0x0

    invoke-static/range {v14 .. v16}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    .line 401
    .local v4, "allSoundOff":I
    const/4 v14, 0x1

    if-ne v4, v14, :cond_21

    .line 402
    new-instance v7, Landroid/content/Intent;

    const-string v14, "android.intent.action.SOUND_OFF_TOAST"

    invoke-direct {v7, v14}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 403
    .local v7, "intent":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/notification/NotificationSettings;->mContext:Landroid/content/Context;

    sget-object v15, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v14, v7, v15}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 405
    .end local v7    # "intent":Landroid/content/Intent;
    :cond_21
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/notification/NotificationSettings;->refreshSoundMode()V

    .line 406
    return-void

    .line 265
    .end local v3    # "activity":Landroid/content/Intent;
    .end local v4    # "allSoundOff":I
    .end local v5    # "em":Lcom/sec/android/emergencymode/EmergencyManager;
    .end local v8    # "mRingtoneType":Ljava/lang/String;
    .end local v10    # "moreSettingsCategory":Landroid/preference/PreferenceGroup;
    .end local v13    # "vibrator":Landroid/os/Vibrator;
    :cond_22
    const-string v14, "ringtone"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/settings/notification/NotificationSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v14

    check-cast v14, Lcom/android/settings/DefaultRingtonePreference;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/settings/notification/NotificationSettings;->mRingtone:Lcom/android/settings/DefaultRingtonePreference;

    goto/16 :goto_0

    .line 303
    .restart local v3    # "activity":Landroid/content/Intent;
    .restart local v8    # "mRingtoneType":Ljava/lang/String;
    .restart local v13    # "vibrator":Landroid/os/Vibrator;
    :cond_23
    const-string v14, "SEC_FLOATING_FEATURE_FRAMEWORK_SUPPORT_VIBETONZ"

    invoke-static {v14}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_24

    .line 304
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/notification/NotificationSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v14

    const-string v15, "vibration_feedback_intensity"

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/settings/notification/NotificationSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v15

    invoke-virtual {v14, v15}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 306
    :cond_24
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/notification/NotificationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v14

    invoke-static {v14}, Lcom/android/settings/Utils;->isVoiceCapable(Landroid/content/Context;)Z

    move-result v14

    if-eqz v14, :cond_25

    const-string v14, "SEC_FLOATING_FEATURE_SETTINGS_CAMERA_ONLY_MODEL"

    invoke-static {v14}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_6

    .line 307
    :cond_25
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/notification/NotificationSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/notification/NotificationSettings;->mPhoneVibration:Landroid/preference/Preference;

    invoke-virtual {v14, v15}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_1

    .line 314
    :cond_26
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/notification/NotificationSettings;->mRingtone2:Lcom/android/settings/DefaultRingtonePreference;

    invoke-virtual {v12, v14}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 315
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/notification/NotificationSettings;->mRingtonePreference_DS:Landroid/preference/Preference;

    invoke-virtual {v12, v14}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_2

    .line 336
    :cond_27
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/notification/NotificationSettings;->mAudioOutput:Landroid/preference/ListPreference;

    move-object/from16 v0, p0

    invoke-virtual {v14, v0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    goto/16 :goto_3
.end method

.method public onMusicPickerChosen(I)V
    .locals 4
    .param p1, "ringtoneType"    # I

    .prologue
    const v3, 0x7f0a0660

    const/4 v2, 0x1

    .line 1198
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1199
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "android.intent.action.GET_CONTENT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1200
    const-string v1, "audio/*"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 1201
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1202
    const-string v1, "enable_ringtone_recommender"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1203
    const-string v1, "DocumentsUIPolicy"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1204
    if-ne p1, v2, :cond_0

    .line 1205
    invoke-virtual {p0, v3}, Lcom/android/settings/notification/NotificationSettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0, v1, v2}, Lcom/android/settings/notification/NotificationSettings;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1209
    :goto_0
    return-void

    .line 1207
    :cond_0
    invoke-virtual {p0, v3}, Lcom/android/settings/notification/NotificationSettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {p0, v1, v2}, Lcom/android/settings/notification/NotificationSettings;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 527
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 528
    invoke-direct {p0}, Lcom/android/settings/notification/NotificationSettings;->releaseListeners()V

    .line 529
    iget-object v0, p0, Lcom/android/settings/notification/NotificationSettings;->mVolumeCallback:Lcom/android/settings/notification/NotificationSettings$VolumePreferenceCallback;

    invoke-virtual {v0}, Lcom/android/settings/notification/NotificationSettings$VolumePreferenceCallback;->stopSample()V

    .line 530
    iget-object v0, p0, Lcom/android/settings/notification/NotificationSettings;->mSettingsObserver:Lcom/android/settings/notification/NotificationSettings$SettingsObserver;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings/notification/NotificationSettings$SettingsObserver;->register(Z)V

    .line 531
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 9
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "objValue"    # Ljava/lang/Object;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 410
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    .line 412
    .local v1, "key":Ljava/lang/String;
    const-string v6, "lock_screen_notifications"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 414
    check-cast p2, Ljava/lang/String;

    .end local p2    # "objValue":Ljava/lang/Object;
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 415
    .local v3, "value":I
    const v6, 0x7f0a0eee

    if-eq v3, v6, :cond_2

    move v0, v4

    .line 416
    .local v0, "enabled":Z
    :goto_0
    const v6, 0x7f0a0eec

    if-ne v3, v6, :cond_3

    move v2, v4

    .line 417
    .local v2, "show":Z
    :goto_1
    invoke-virtual {p0}, Lcom/android/settings/notification/NotificationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "lock_screen_allow_private_notifications"

    if-eqz v2, :cond_4

    move v6, v4

    :goto_2
    invoke-static {v7, v8, v6}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 419
    invoke-virtual {p0}, Lcom/android/settings/notification/NotificationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "lock_screen_show_notifications"

    if-eqz v0, :cond_0

    move v5, v4

    :cond_0
    invoke-static {v6, v7, v5}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 421
    iget-object v5, p0, Lcom/android/settings/notification/NotificationSettings;->mLockscreen:Landroid/preference/ListPreference;

    iget-object v6, p0, Lcom/android/settings/notification/NotificationSettings;->mLockscreen:Landroid/preference/ListPreference;

    invoke-virtual {v6}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 430
    .end local v0    # "enabled":Z
    .end local v2    # "show":Z
    .end local v3    # "value":I
    :cond_1
    :goto_3
    return v4

    .restart local v3    # "value":I
    :cond_2
    move v0, v5

    .line 415
    goto :goto_0

    .restart local v0    # "enabled":Z
    :cond_3
    move v2, v5

    .line 416
    goto :goto_1

    .restart local v2    # "show":Z
    :cond_4
    move v6, v5

    .line 417
    goto :goto_2

    .line 422
    .end local v0    # "enabled":Z
    .end local v2    # "show":Z
    .end local v3    # "value":I
    .restart local p2    # "objValue":Ljava/lang/Object;
    :cond_5
    const-string v5, "audio_output"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 423
    check-cast p2, Ljava/lang/String;

    .end local p2    # "objValue":Ljava/lang/Object;
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 424
    .restart local v3    # "value":I
    invoke-virtual {p0}, Lcom/android/settings/notification/NotificationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    if-eqz v5, :cond_6

    .line 425
    invoke-virtual {p0}, Lcom/android/settings/notification/NotificationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "hdmi_audio_output"

    invoke-static {v5, v6, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 426
    :cond_6
    iget-object v5, p0, Lcom/android/settings/notification/NotificationSettings;->mAudioOutput:Landroid/preference/ListPreference;

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 427
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

    .line 606
    iget-object v3, p0, Lcom/android/settings/notification/NotificationSettings;->mVolumeCallback:Lcom/android/settings/notification/NotificationSettings$VolumePreferenceCallback;

    invoke-virtual {v3}, Lcom/android/settings/notification/NotificationSettings$VolumePreferenceCallback;->stopSample()V

    .line 607
    iget-object v3, p0, Lcom/android/settings/notification/NotificationSettings;->mTcoloring:Landroid/preference/Preference;

    if-eq p2, v3, :cond_0

    iget-object v3, p0, Lcom/android/settings/notification/NotificationSettings;->mRingtoyou:Landroid/preference/Preference;

    if-ne p2, v3, :cond_5

    .line 608
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/notification/NotificationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings/notification/NotificationSettings;->isConnected(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 609
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.net.wifi.PICK_WIFI_NETWORK"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 610
    .local v0, "intent":Landroid/content/Intent;
    const-string v3, "extra_prefs_show_button_bar"

    invoke-virtual {v0, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 611
    const-string v3, "extra_prefs_set_back_text"

    const v4, 0x7f0a0c2a

    invoke-virtual {p0, v4}, Lcom/android/settings/notification/NotificationSettings;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 612
    const-string v3, "wifi_enable_next_on_connect"

    invoke-virtual {v0, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 614
    const/4 v3, 0x3

    invoke-virtual {p0, v0, v3}, Lcom/android/settings/notification/NotificationSettings;->startActivityForResult(Landroid/content/Intent;I)V

    .line 634
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_1
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v3

    return v3

    .line 616
    :cond_2
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 618
    .restart local v0    # "intent":Landroid/content/Intent;
    iget-object v3, p0, Lcom/android/settings/notification/NotificationSettings;->mTcoloring:Landroid/preference/Preference;

    if-ne p2, v3, :cond_3

    .line 619
    const-string v3, "http://www.tcoloring.com"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 620
    .local v2, "u":Landroid/net/Uri;
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 621
    invoke-virtual {p0, v0}, Lcom/android/settings/notification/NotificationSettings;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 622
    .end local v2    # "u":Landroid/net/Uri;
    :cond_3
    iget-object v3, p0, Lcom/android/settings/notification/NotificationSettings;->mRingtoyou:Landroid/preference/Preference;

    if-ne p2, v3, :cond_4

    .line 623
    const-string v3, "http://ringtoyou.olleh.com"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 624
    .restart local v2    # "u":Landroid/net/Uri;
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 625
    invoke-virtual {p0, v0}, Lcom/android/settings/notification/NotificationSettings;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 627
    .end local v2    # "u":Landroid/net/Uri;
    :cond_4
    const-string v3, "NotificationSettings"

    const-string v4, "Preference not found: "

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 630
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_5
    iget-object v3, p0, Lcom/android/settings/notification/NotificationSettings;->mMySound:Landroid/preference/PreferenceScreen;

    if-ne p2, v3, :cond_1

    .line 631
    new-instance v1, Landroid/content/Intent;

    const-string v3, "com.sec.hearingadjust.launch"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 632
    .local v1, "intent1":Landroid/content/Intent;
    invoke-virtual {p0, v1}, Lcom/android/settings/notification/NotificationSettings;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 505
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 506
    invoke-direct {p0}, Lcom/android/settings/notification/NotificationSettings;->refreshSoundMode()V

    .line 507
    invoke-virtual {p0}, Lcom/android/settings/notification/NotificationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "hdmi_audio_output"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 508
    .local v0, "mHdmiValue":I
    iget-object v1, p0, Lcom/android/settings/notification/NotificationSettings;->mAudioOutput:Landroid/preference/ListPreference;

    if-eqz v1, :cond_0

    .line 509
    iget-object v1, p0, Lcom/android/settings/notification/NotificationSettings;->mAudioOutput:Landroid/preference/ListPreference;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 510
    iget-object v1, p0, Lcom/android/settings/notification/NotificationSettings;->mAudioOutput:Landroid/preference/ListPreference;

    iget-object v2, p0, Lcom/android/settings/notification/NotificationSettings;->mAudioOutput:Landroid/preference/ListPreference;

    invoke-virtual {v2}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 512
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/notification/NotificationSettings;->registerListeners()V

    .line 513
    invoke-direct {p0}, Lcom/android/settings/notification/NotificationSettings;->refreshNotificationListeners()V

    .line 514
    invoke-virtual {p0}, Lcom/android/settings/notification/NotificationSettings;->updateDeviceVibrationName()V

    .line 515
    invoke-direct {p0}, Lcom/android/settings/notification/NotificationSettings;->lookupRingtoneNames()V

    .line 516
    iget-object v1, p0, Lcom/android/settings/notification/NotificationSettings;->mSettingsObserver:Lcom/android/settings/notification/NotificationSettings$SettingsObserver;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/settings/notification/NotificationSettings$SettingsObserver;->register(Z)V

    .line 522
    invoke-virtual {p0}, Lcom/android/settings/notification/NotificationSettings;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListView;->invalidateViews()V

    .line 523
    return-void
.end method

.method public updateDeviceVibrationName()V
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 668
    invoke-virtual {p0}, Lcom/android/settings/notification/NotificationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "default_vibration_pattern"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 671
    .local v7, "temp":Ljava/lang/String;
    if-nez v7, :cond_2

    .line 672
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

    .line 673
    .local v6, "c":Landroid/database/Cursor;
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 674
    iget-object v0, p0, Lcom/android/settings/notification/NotificationSettings;->mPhoneVibration:Landroid/preference/Preference;

    const-string v1, "vibration_name"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 675
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 686
    :cond_1
    :goto_0
    return-void

    .line 679
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

    .line 681
    .restart local v6    # "c":Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 682
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 683
    iget-object v0, p0, Lcom/android/settings/notification/NotificationSettings;->mPhoneVibration:Landroid/preference/Preference;

    const-string v1, "vibration_name"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 684
    :cond_3
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method
