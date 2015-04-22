.class public Landroid/media/AudioService;
.super Landroid/media/IAudioService$Stub;
.source "AudioService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/AudioService$AudioPolicyProxy;,
        Landroid/media/AudioService$AudioServiceInternal;,
        Landroid/media/AudioService$VolumeController;,
        Landroid/media/AudioService$StreamOverride;,
        Landroid/media/AudioService$MyDisplayStatusCallback;,
        Landroid/media/AudioService$AudioServiceBroadcastReceiver;,
        Landroid/media/AudioService$SettingsObserver;,
        Landroid/media/AudioService$AudioHandler;,
        Landroid/media/AudioService$AudioSystemThread;,
        Landroid/media/AudioService$VolumeStreamState;,
        Landroid/media/AudioService$ScoClient;,
        Landroid/media/AudioService$SoundPoolCallback;,
        Landroid/media/AudioService$SoundPoolListenerThread;,
        Landroid/media/AudioService$LoadSoundEffectReply;,
        Landroid/media/AudioService$SetModeDeathHandler;,
        Landroid/media/AudioService$RmtSbmxFullVolDeathHandler;,
        Landroid/media/AudioService$ForceControlStreamClient;,
        Landroid/media/AudioService$StreamVolumeCommand;,
        Landroid/media/AudioService$AudioOrientationEventListener;,
        Landroid/media/AudioService$ScoDevice;,
        Landroid/media/AudioService$MediaPlayerInfo;
    }
.end annotation


# static fields
.field private static final ACTION_WIFI_DISPLAY:Ljava/lang/String; = "android.intent.action.WIFI_DISPLAY"

.field private static final ASSET_FILE_VERSION:Ljava/lang/String; = "1.0"

.field private static final ATTR_ASSET_FILE:Ljava/lang/String; = "file"

.field private static final ATTR_ASSET_ID:Ljava/lang/String; = "id"

.field private static final ATTR_GROUP_NAME:Ljava/lang/String; = "name"

.field private static final ATTR_VERSION:Ljava/lang/String; = "version"

.field private static final BTA2DP_DOCK_TIMEOUT_MILLIS:I = 0x1f40

.field private static final BT_HEADSET_CNCT_TIMEOUT_MS:I = 0xbb8

.field protected static final DEBUG_MODE:Z

.field private static final DEBUG_SESSIONS:Z

.field protected static final DEBUG_VOL:Z

.field private static final EXTRA_DOCK_STATE_HMT:I = 0xb

.field private static final FLAG_ADJUST_VOLUME:I = 0x1

.field private static final GROUP_TOUCH_SOUNDS:Ljava/lang/String; = "touch_sounds"

.field private static final MAX_BATCH_VOLUME_ADJUST_STEPS:I = 0x4

.field private static final MAX_MASTER_VOLUME:I = 0x64

.field private static final MAX_STREAM_VOLUME:[I

.field private static final MSG_BROADCAST_AUDIO_BECOMING_NOISY:I = 0xf

.field private static final MSG_BROADCAST_AUDIO_BECOMING_NOISY_PERSONA:I = 0x18

.field private static final MSG_BROADCAST_BT_CONNECTION_STATE:I = 0x13

.field private static final MSG_BTA2DP_DOCK_TIMEOUT:I = 0x6

.field private static final MSG_BT_HEADSET_CNCT_FAILED:I = 0x9

.field private static final MSG_CHECK_MUSIC_ACTIVE:I = 0xe

.field private static final MSG_CONFIGURE_SAFE_MEDIA_VOLUME:I = 0x10

.field private static final MSG_CONFIGURE_SAFE_MEDIA_VOLUME_FORCED:I = 0x11

.field private static final MSG_LOAD_SOUND_EFFECTS:I = 0x7

.field private static final MSG_MEDIA_SERVER_DIED:I = 0x4

.field private static final MSG_PERSIST_MASTER_VOLUME:I = 0x2

.field private static final MSG_PERSIST_MASTER_VOLUME_MUTE:I = 0xb

.field private static final MSG_PERSIST_MICROPHONE_MUTE:I = 0x17

.field private static final MSG_PERSIST_MUSIC_ACTIVE_MS:I = 0x16

.field private static final MSG_PERSIST_RINGER_MODE:I = 0x3

.field private static final MSG_PERSIST_SAFE_VOLUME_STATE:I = 0x12

.field private static final MSG_PERSIST_VOLUME:I = 0x1

.field private static final MSG_PLAY_SOUND_EFFECT:I = 0x5

.field private static final MSG_REPORT_NEW_ROUTES:I = 0xc

.field private static final MSG_SET_A2DP_SINK_CONNECTION_STATE:I = 0x66

.field private static final MSG_SET_A2DP_SRC_CONNECTION_STATE:I = 0x65

.field private static final MSG_SET_ALL_VOLUMES:I = 0xa

.field private static final MSG_SET_DEVICE_VOLUME:I = 0x0

.field private static final MSG_SET_FORCE_BT_A2DP_USE:I = 0xd

.field private static final MSG_SET_FORCE_USE:I = 0x8

.field private static final MSG_SET_WIRED_DEVICE_CONNECTION_STATE:I = 0x64

.field private static final MSG_SYSTEM_READY:I = 0x15

.field private static final MSG_UNLOAD_SOUND_EFFECTS:I = 0x14

.field private static final MUSIC_ACTIVE_POLL_PERIOD_MS:I = 0xea60

.field private static final NUM_SOUNDPOOL_CHANNELS:I = 0x4

.field private static final PERSIST_DELAY:I = 0x1f4

.field private static final PLATFORM_DEFAULT:I = 0x0

.field private static final PLATFORM_TELEVISION:I = 0x2

.field private static final PLATFORM_VOICE:I = 0x1

.field public static final PLAY_SOUND_DELAY:I = 0x12c

.field private static final PREVENT_VOLUME_ADJUSTMENT_IF_SILENT:Z = false

.field private static final RINGER_MODE_NAMES:[Ljava/lang/String;

.field private static final SAFE_MEDIA_VOLUME_ACTIVE:I = 0x3

.field private static final SAFE_MEDIA_VOLUME_DISABLED:I = 0x1

.field private static final SAFE_MEDIA_VOLUME_INACTIVE:I = 0x2

.field private static final SAFE_MEDIA_VOLUME_NOT_CONFIGURED:I = 0x0

.field private static final SAFE_VOLUME_CONFIGURE_TIMEOUT_MS:I = 0x7530

.field private static final SCO_MODE_MAX:I = 0x2

.field private static final SCO_MODE_RAW:I = 0x1

.field private static final SCO_MODE_UNDEFINED:I = -0x1

.field private static final SCO_MODE_VIRTUAL_CALL:I = 0x0

.field private static final SCO_MODE_VR:I = 0x2

.field private static final SCO_STATE_ACTIVATE_REQ:I = 0x1

.field private static final SCO_STATE_ACTIVE_EXTERNAL:I = 0x2

.field private static final SCO_STATE_ACTIVE_INTERNAL:I = 0x3

.field private static final SCO_STATE_DEACTIVATE_EXT_REQ:I = 0x4

.field private static final SCO_STATE_DEACTIVATE_REQ:I = 0x5

.field private static final SCO_STATE_INACTIVE:I = 0x0

.field private static final SENDMSG_NOOP:I = 0x1

.field private static final SENDMSG_QUEUE:I = 0x2

.field private static final SENDMSG_REPLACE:I = 0x0

.field private static final SOUND_EFFECTS_LOAD_TIMEOUT_MS:I = 0x1388

.field private static final SOUND_EFFECTS_PATH:Ljava/lang/String; = "/media/audio/ui/"

.field private static final SOUND_EFFECT_FILES:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final STEAM_VOLUME_OPS:[I

.field private static final STREAM_NAMES:[Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "AudioService"

.field private static final TAG_ASSET:Ljava/lang/String; = "asset"

.field private static final TAG_AUDIO_ASSETS:Ljava/lang/String; = "audio_assets"

.field private static final TAG_GROUP:Ljava/lang/String; = "group"

.field private static final UNSAFE_VOLUME_MUSIC_ACTIVE_MS_MAX:I = 0x44aa200

.field private static final VOLUME_SETS_RINGER_MODE_SILENT:Z

.field private static final mMediaPlayers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/media/AudioService$MediaPlayerInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static sSoundEffectVolumeDb:I


# instance fields
.field private final MAX_STREAM_VOLUME2:[I

.field private final MAX_STREAM_VOLUME_DOUBLE:[I

.field private final SOUND_EFFECT_FILES_MAP:[[I

.field private final STREAM_VOLUME_ALIAS_DEFAULT:[I

.field private final STREAM_VOLUME_ALIAS_TELEVISION:[I

.field private final STREAM_VOLUME_ALIAS_VOICE:[I

.field private mA2dp:Landroid/bluetooth/BluetoothA2dp;

.field private final mA2dpAvrcpLock:Ljava/lang/Object;

.field private final mAppOps:Landroid/app/AppOpsManager;

.field private mAudioEventWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mAudioHandler:Landroid/media/AudioService$AudioHandler;

.field private mAudioPolicies:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/os/IBinder;",
            "Landroid/media/AudioService$AudioPolicyProxy;",
            ">;"
        }
    .end annotation
.end field

.field private final mAudioSystemCallback:Landroid/media/AudioSystem$ErrorCallback;

.field private mAudioSystemThread:Landroid/media/AudioService$AudioSystemThread;

.field private mAvrcpAbsVolSupported:Z

.field mBecomingNoisyIntentDevices:I

.field private mBluetoothA2dpEnabled:Z

.field private final mBluetoothA2dpEnabledLock:Ljava/lang/Object;

.field private mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

.field private mBluetoothHeadsetDevice:Landroid/bluetooth/BluetoothDevice;

.field private mBluetoothProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

.field private mBluetoothScoOndump:[I

.field private mCameraSoundForced:Ljava/lang/Boolean;

.field private final mConnectedDevices:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mContentResolver:Landroid/content/ContentResolver;

.field private final mContext:Landroid/content/Context;

.field final mCurAudioRoutes:Landroid/media/AudioRoutesInfo;

.field private mDeviceOrientation:I

.field private mDeviceRotation:I

.field private mDockAddress:Ljava/lang/String;

.field private mDockAudioMediaEnabled:Z

.field private mDockState:I

.field mFixedVolumeDevices:I

.field private mForceControlStreamClient:Landroid/media/AudioService$ForceControlStreamClient;

.field private final mForceControlStreamLock:Ljava/lang/Object;

.field private mForcedUseForComm:I

.field private mForcedUseForFMRadio:I

.field private mForcedUseForMedia:I

.field mFullVolumeDevices:I

.field private final mHasVibrator:Z

.field private mHdmiCecSink:Z

.field private mHdmiDisplayStatusCallback:Landroid/media/AudioService$MyDisplayStatusCallback;

.field private mHdmiManager:Landroid/hardware/hdmi/HdmiControlManager;

.field private mHdmiPlaybackClient:Landroid/hardware/hdmi/HdmiPlaybackClient;

.field private mHdmiSystemAudioSupported:Z

.field private mHdmiTvClient:Landroid/hardware/hdmi/HdmiTvClient;

.field private mIsCoverSafetyVolume:Z

.field private mIsTogether:Z

.field private mIsVolumeControllerVisible:Z

.field private mKeyguardManager:Landroid/app/KeyguardManager;

.field private mLateBootCompleted_WiredDevice:I

.field private final mLateBootCompleted_WiredDeviceName_real:Ljava/lang/String;

.field private final mLateBootCompleted_WiredDeviceName_temporary:Ljava/lang/String;

.field private final mMasterVolumeRamp:[I

.field private mMcc:I

.field private final mMediaFocusControl:Landroid/media/MediaFocusControl;

.field private mMediaLastAudibleIndex:I

.field private mMediaSilentMode:Z

.field private mMode:I

.field private final mMonitorOrientation:Z

.field private final mMonitorRotation:Z

.field private mMusicActiveMs:I

.field private mMuteAffectedStreams:I

.field private mOrientationListener:Landroid/media/AudioService$AudioOrientationEventListener;

.field private mPendingVolumeCommand:Landroid/media/AudioService$StreamVolumeCommand;

.field private final mPlatformType:I

.field private mPrevVolDirection:I

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mRingerMode:I

.field private mRingerModeAffectedStreams:I

.field private mRingerModeMutedStreams:I

.field private volatile mRingtonePlayer:Landroid/media/IRingtonePlayer;

.field private mRmtSbmxFullVolDeathHandlers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/media/AudioService$RmtSbmxFullVolDeathHandler;",
            ">;"
        }
    .end annotation
.end field

.field private mRmtSbmxFullVolRefCount:I

.field final mRoutesObservers:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList",
            "<",
            "Landroid/media/IAudioRoutesObserver;",
            ">;"
        }
    .end annotation
.end field

.field private final mSafeMediaVolumeDevices:I

.field private mSafeMediaVolumeIndex:I

.field private mSafeMediaVolumeState:Ljava/lang/Integer;

.field private final mSamsungAudioService:Landroid/media/SamsungAudioService;

.field private mScoAudioMode:I

.field private mScoAudioState:I

.field private final mScoClients:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/media/AudioService$ScoClient;",
            ">;"
        }
    .end annotation
.end field

.field private mScoConnectionState:I

.field private mScoDevices:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/media/AudioService$ScoDevice;",
            ">;"
        }
    .end annotation
.end field

.field private final mSetModeDeathHandlers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/media/AudioService$SetModeDeathHandler;",
            ">;"
        }
    .end annotation
.end field

.field private final mSettingsLock:Ljava/lang/Object;

.field private mSettingsObserver:Landroid/media/AudioService$SettingsObserver;

.field private final mSoundEffectsLock:Ljava/lang/Object;

.field private mSoundPool:Landroid/media/SoundPool;

.field private mSoundPoolCallBack:Landroid/media/AudioService$SoundPoolCallback;

.field private mSoundPoolListenerThread:Landroid/media/AudioService$SoundPoolListenerThread;

.field private mSoundPoolLooper:Landroid/os/Looper;

.field private mSpeakerOndump:[I

.field private mStatusbarHasVolumeSlider:Z

.field private mStreamMutedump:[I

.field private mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

.field private mStreamVolumeAlias:[I

.field private mSystemReady:Z

.field private final mUseFixedVolume:Z

.field private final mUseMasterVolume:Z

.field private mVibrateSetting:I

.field private mVolumeControlStream:I

.field private final mVolumeController:Landroid/media/AudioService$VolumeController;

.field private pIdOfsetVolume:[I

.field private pIdOfsetVolumeIndex:[I


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/16 v7, 0xa

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x3

    .line 133
    const-string v0, "AudioService.MOD"

    invoke-static {v0, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, DEBUG_MODE:Z

    .line 135
    const-string v0, "AudioService.VOL"

    invoke-static {v0, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, DEBUG_VOL:Z

    .line 138
    const-string v0, "AudioService.SESSIONS"

    invoke-static {v0, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, DEBUG_SESSIONS:Z

    .line 183
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, mMediaPlayers:Ljava/util/ArrayList;

    .line 295
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, SOUND_EFFECT_FILES:Ljava/util/List;

    .line 303
    const/16 v0, 0xe

    new-array v0, v0, [I

    fill-array-data v0, :array_9a

    sput-object v0, MAX_STREAM_VOLUME:[I

    .line 429
    new-array v0, v7, [I

    fill-array-data v0, :array_ba

    sput-object v0, STEAM_VOLUME_OPS:[I

    .line 445
    const/16 v0, 0xe

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "STREAM_VOICE_CALL"

    aput-object v1, v0, v4

    const-string v1, "STREAM_SYSTEM"

    aput-object v1, v0, v5

    const-string v1, "STREAM_RING"

    aput-object v1, v0, v6

    const-string v1, "STREAM_MUSIC"

    aput-object v1, v0, v3

    const/4 v1, 0x4

    const-string v2, "STREAM_ALARM"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "STREAM_NOTIFICATION"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "STREAM_BLUETOOTH_SCO"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "STREAM_SYSTEM_ENFORCED"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "STREAM_DTMF"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "STREAM_TTS"

    aput-object v2, v0, v1

    const-string v1, "STREAM_FM_RADIO"

    aput-object v1, v0, v7

    const/16 v1, 0xb

    const-string v2, "STREAM_VIDEO_CALL"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "STREAM_SEC_COMMUNICATION"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "STREAM_VOICENOTE"

    aput-object v2, v0, v1

    sput-object v0, STREAM_NAMES:[Ljava/lang/String;

    .line 6716
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "SILENT"

    aput-object v1, v0, v4

    const-string v1, "VIBRATE"

    aput-object v1, v0, v5

    const-string v1, "NORMAL"

    aput-object v1, v0, v6

    sput-object v0, RINGER_MODE_NAMES:[Ljava/lang/String;

    return-void

    .line 303
    nop

    :array_9a
    .array-data 4
        0x5
        0x7
        0x7
        0xf
        0x7
        0x7
        0xf
        0x7
        0xf
        0xf
        0xf
        0x5
        0x5
        0xf
    .end array-data

    .line 429
    :array_ba
    .array-data 4
        0x22
        0x24
        0x23
        0x24
        0x25
        0x26
        0x27
        0x24
        0x24
        0x24
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 16
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x1

    const/4 v2, 0x2

    const/4 v5, 0x0

    const/16 v3, 0xe

    const/4 v6, 0x0

    .line 683
    invoke-direct {p0}, Landroid/media/IAudioService$Stub;-><init>()V

    .line 213
    new-instance v0, Landroid/media/AudioService$VolumeController;

    invoke-direct {v0}, Landroid/media/AudioService$VolumeController;-><init>()V

    iput-object v0, p0, mVolumeController:Landroid/media/AudioService$VolumeController;

    .line 267
    const-string v0, "h2w"

    iput-object v0, p0, mLateBootCompleted_WiredDeviceName_real:Ljava/lang/String;

    .line 268
    const-string v0, "h2w-before-boot-completed"

    iput-object v0, p0, mLateBootCompleted_WiredDeviceName_temporary:Ljava/lang/String;

    .line 278
    iput v6, p0, mMode:I

    .line 280
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, mSettingsLock:Ljava/lang/Object;

    .line 283
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, mSoundEffectsLock:Ljava/lang/Object;

    .line 300
    filled-new-array {v3, v2}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[I

    iput-object v0, p0, SOUND_EFFECT_FILES_MAP:[[I

    .line 324
    new-array v0, v3, [I

    fill-array-data v0, :array_350

    iput-object v0, p0, MAX_STREAM_VOLUME2:[I

    .line 342
    new-array v0, v3, [I

    fill-array-data v0, :array_370

    iput-object v0, p0, MAX_STREAM_VOLUME_DOUBLE:[I

    .line 369
    new-array v0, v3, [I

    fill-array-data v0, :array_390

    iput-object v0, p0, STREAM_VOLUME_ALIAS_VOICE:[I

    .line 387
    new-array v0, v3, [I

    fill-array-data v0, :array_3b0

    iput-object v0, p0, STREAM_VOLUME_ALIAS_TELEVISION:[I

    .line 405
    new-array v0, v3, [I

    fill-array-data v0, :array_3d0

    iput-object v0, p0, STREAM_VOLUME_ALIAS_DEFAULT:[I

    .line 464
    new-instance v0, Landroid/media/AudioService$1;

    invoke-direct {v0, p0}, Landroid/media/AudioService$1;-><init>(Landroid/media/AudioService;)V

    iput-object v0, p0, mAudioSystemCallback:Landroid/media/AudioSystem$ErrorCallback;

    .line 486
    iput v6, p0, mRingerModeAffectedStreams:I

    .line 505
    new-instance v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;

    invoke-direct {v0, p0, v5}, Landroid/media/AudioService$AudioServiceBroadcastReceiver;-><init>(Landroid/media/AudioService;Landroid/media/AudioService$1;)V

    iput-object v0, p0, mReceiver:Landroid/content/BroadcastReceiver;

    .line 508
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, mConnectedDevices:Ljava/util/HashMap;

    .line 528
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, mSetModeDeathHandlers:Ljava/util/ArrayList;

    .line 531
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, mScoClients:Ljava/util/ArrayList;

    .line 582
    iput-object v5, p0, mSoundPoolLooper:Landroid/os/Looper;

    .line 586
    iput v6, p0, mPrevVolDirection:I

    .line 591
    const/4 v0, -0x1

    iput v0, p0, mVolumeControlStream:I

    .line 592
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, mForceControlStreamLock:Ljava/lang/Object;

    .line 596
    iput-object v5, p0, mForceControlStreamClient:Landroid/media/AudioService$ForceControlStreamClient;

    .line 600
    iput v6, p0, mDeviceOrientation:I

    .line 601
    iput v6, p0, mDeviceRotation:I

    .line 604
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, mBluetoothA2dpEnabledLock:Ljava/lang/Object;

    .line 607
    new-instance v0, Landroid/media/AudioRoutesInfo;

    invoke-direct {v0}, Landroid/media/AudioRoutesInfo;-><init>()V

    iput-object v0, p0, mCurAudioRoutes:Landroid/media/AudioRoutesInfo;

    .line 608
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, mRoutesObservers:Landroid/os/RemoteCallbackList;

    .line 622
    iput v6, p0, mFixedVolumeDevices:I

    .line 625
    iput v6, p0, mFullVolumeDevices:I

    .line 631
    iput-boolean v4, p0, mDockAudioMediaEnabled:Z

    .line 633
    iput v6, p0, mDockState:I

    .line 646
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, mA2dpAvrcpLock:Ljava/lang/Object;

    .line 648
    iput-boolean v6, p0, mAvrcpAbsVolSupported:Z

    .line 650
    iput-boolean v6, p0, mMediaSilentMode:Z

    .line 651
    iput v6, p0, mMediaLastAudibleIndex:I

    .line 659
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, mScoDevices:Ljava/util/ArrayList;

    .line 661
    const/4 v0, -0x1

    iput v0, p0, mLateBootCompleted_WiredDevice:I

    .line 670
    iput-boolean v6, p0, mIsTogether:Z

    .line 673
    iput-boolean v6, p0, mIsCoverSafetyVolume:Z

    .line 675
    iput-boolean v6, p0, mIsVolumeControllerVisible:Z

    .line 2126
    iput v6, p0, mRmtSbmxFullVolRefCount:I

    .line 2127
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, mRmtSbmxFullVolDeathHandlers:Ljava/util/ArrayList;

    .line 3492
    new-instance v0, Landroid/media/AudioService$2;

    invoke-direct {v0, p0}, Landroid/media/AudioService$2;-><init>(Landroid/media/AudioService;)V

    iput-object v0, p0, mBluetoothProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    .line 5661
    const v0, 0x82ff8c

    iput v0, p0, mBecomingNoisyIntentDevices:I

    .line 6478
    iput v6, p0, mMcc:I

    .line 6482
    const/16 v0, 0xc

    iput v0, p0, mSafeMediaVolumeDevices:I

    .line 6616
    iput-boolean v6, p0, mHdmiSystemAudioSupported:Z

    .line 6627
    new-instance v0, Landroid/media/AudioService$MyDisplayStatusCallback;

    invoke-direct {v0, p0, v5}, Landroid/media/AudioService$MyDisplayStatusCallback;-><init>(Landroid/media/AudioService;Landroid/media/AudioService$1;)V

    iput-object v0, p0, mHdmiDisplayStatusCallback:Landroid/media/AudioService$MyDisplayStatusCallback;

    .line 7058
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, mAudioPolicies:Ljava/util/HashMap;

    .line 684
    iput-object p1, p0, mContext:Landroid/content/Context;

    .line 685
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, mContentResolver:Landroid/content/ContentResolver;

    .line 686
    const-string v0, "appops"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    iput-object v0, p0, mAppOps:Landroid/app/AppOpsManager;

    .line 688
    iget-object v0, p0, mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1120045

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_332

    .line 690
    iput v4, p0, mPlatformType:I

    .line 698
    :goto_11a
    const-string/jumbo v0, "power"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/os/PowerManager;

    .line 699
    .local v11, "pm":Landroid/os/PowerManager;
    const-string v0, "handleAudioEvent"

    invoke-virtual {v11, v4, v0}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, mAudioEventWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 701
    const-string/jumbo v0, "vibrator"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/os/Vibrator;

    .line 702
    .local v12, "vibrator":Landroid/os/Vibrator;
    if-nez v12, :cond_346

    move v0, v6

    :goto_137
    iput-boolean v0, p0, mHasVibrator:Z

    .line 718
    sget-object v0, MAX_STREAM_VOLUME:[I

    const-string/jumbo v1, "ro.config.vc_call_vol_steps"

    sget-object v3, MAX_STREAM_VOLUME:[I

    aget v3, v3, v6

    invoke-static {v1, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    aput v1, v0, v6

    .line 721
    sget-object v0, MAX_STREAM_VOLUME:[I

    const/16 v1, 0xb

    sget-object v3, MAX_STREAM_VOLUME:[I

    aget v3, v3, v6

    aput v3, v0, v1

    .line 722
    sget-object v0, MAX_STREAM_VOLUME:[I

    const/16 v1, 0xc

    sget-object v3, MAX_STREAM_VOLUME:[I

    aget v3, v3, v6

    aput v3, v0, v1

    .line 726
    sget-object v0, MAX_STREAM_VOLUME:[I

    const/4 v1, 0x3

    const-string/jumbo v3, "ro.config.media_vol_steps"

    sget-object v4, MAX_STREAM_VOLUME:[I

    const/4 v13, 0x3

    aget v4, v4, v13

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v3

    aput v3, v0, v1

    .line 730
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e0004

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    sput v0, sSoundEffectVolumeDb:I

    .line 733
    iput v6, p0, mForcedUseForComm:I

    .line 735
    invoke-direct {p0}, createAudioSystemThread()V

    .line 737
    new-instance v0, Landroid/media/MediaFocusControl;

    iget-object v1, p0, mAudioHandler:Landroid/media/AudioService$AudioHandler;

    invoke-virtual {v1}, Landroid/media/AudioService$AudioHandler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    iget-object v3, p0, mContext:Landroid/content/Context;

    iget-object v4, p0, mVolumeController:Landroid/media/AudioService$VolumeController;

    invoke-direct {v0, v1, v3, v4, p0}, Landroid/media/MediaFocusControl;-><init>(Landroid/os/Looper;Landroid/content/Context;Landroid/media/AudioService$VolumeController;Landroid/media/AudioService;)V

    iput-object v0, p0, mMediaFocusControl:Landroid/media/MediaFocusControl;

    .line 740
    new-instance v0, Landroid/media/SamsungAudioService;

    iget-object v1, p0, mAudioHandler:Landroid/media/AudioService$AudioHandler;

    invoke-virtual {v1}, Landroid/media/AudioService$AudioHandler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    iget-object v3, p0, mContext:Landroid/content/Context;

    iget-object v4, p0, mVolumeController:Landroid/media/AudioService$VolumeController;

    invoke-direct {v0, v1, v3, v4, p0}, Landroid/media/SamsungAudioService;-><init>(Landroid/os/Looper;Landroid/content/Context;Landroid/media/AudioService$VolumeController;Landroid/media/AudioService;)V

    iput-object v0, p0, mSamsungAudioService:Landroid/media/SamsungAudioService;

    .line 742
    iget-object v0, p0, mSamsungAudioService:Landroid/media/SamsungAudioService;

    invoke-virtual {v0}, Landroid/media/SamsungAudioService;->ChangeDefaultVolume()V

    .line 744
    iget-object v0, p0, mAudioSystemCallback:Landroid/media/AudioSystem$ErrorCallback;

    invoke-static {v0}, Landroid/media/AudioSystem;->setErrorCallback(Landroid/media/AudioSystem$ErrorCallback;)V

    .line 746
    iget-object v0, p0, mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1120068

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v7

    .line 752
    .local v7, "cameraSoundForced":Z
    const/4 v7, 0x0

    .line 754
    const-string v0, "AudioService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cameraSoundForced : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " mCameraSoundForced : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, mCameraSoundForced:Ljava/lang/Boolean;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 757
    new-instance v0, Ljava/lang/Boolean;

    invoke-direct {v0, v7}, Ljava/lang/Boolean;-><init>(Z)V

    iput-object v0, p0, mCameraSoundForced:Ljava/lang/Boolean;

    .line 758
    iget-object v0, p0, mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/16 v1, 0x8

    const/4 v3, 0x4

    if-eqz v7, :cond_34c

    const/16 v4, 0xb

    :goto_1ed
    invoke-static/range {v0 .. v6}, sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 767
    new-instance v0, Ljava/lang/Integer;

    iget-object v1, p0, mContentResolver:Landroid/content/ContentResolver;

    const-string v3, "audio_safe_volume_state"

    invoke-static {v1, v3, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    iput-object v0, p0, mSafeMediaVolumeState:Ljava/lang/Integer;

    .line 777
    const/16 v0, 0x64

    iput v0, p0, mSafeMediaVolumeIndex:I

    .line 779
    iget-object v0, p0, mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1120061

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, mUseFixedVolume:Z

    .line 784
    invoke-direct {p0, v6}, updateStreamVolumeAlias(Z)V

    .line 785
    invoke-direct {p0}, readPersistedSettings()V

    .line 786
    new-instance v0, Landroid/media/AudioService$SettingsObserver;

    invoke-direct {v0, p0}, Landroid/media/AudioService$SettingsObserver;-><init>(Landroid/media/AudioService;)V

    iput-object v0, p0, mSettingsObserver:Landroid/media/AudioService$SettingsObserver;

    .line 787
    invoke-direct {p0}, createStreamStates()V

    .line 789
    invoke-static {}, readAndSetLowRamDevice()V

    .line 793
    iput v6, p0, mRingerModeMutedStreams:I

    .line 794
    invoke-virtual {p0}, getRingerMode()I

    move-result v0

    invoke-direct {p0, v0, v6}, setRingerModeInt(IZ)V

    .line 796
    iget-object v0, p0, mSamsungAudioService:Landroid/media/SamsungAudioService;

    invoke-virtual {v0}, Landroid/media/SamsungAudioService;->onAudioService()V

    .line 799
    new-instance v8, Landroid/content/IntentFilter;

    const-string v0, "android.bluetooth.headset.profile.action.AUDIO_STATE_CHANGED"

    invoke-direct {v8, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 801
    .local v8, "intentFilter":Landroid/content/IntentFilter;
    const-string v0, "android.bluetooth.headset.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v8, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 802
    const-string v0, "android.intent.action.DOCK_EVENT"

    invoke-virtual {v8, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 803
    const-string v0, "android.media.action.USB_AUDIO_ACCESSORY_PLUG"

    invoke-virtual {v8, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 804
    const-string v0, "android.media.action.USB_AUDIO_DEVICE_PLUG"

    invoke-virtual {v8, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 805
    const-string v0, "android.intent.action.SCREEN_ON"

    invoke-virtual {v8, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 806
    const-string v0, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v8, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 807
    const-string v0, "android.intent.action.WIFI_DISPLAY"

    invoke-virtual {v8, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 808
    const-string v0, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v8, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 809
    const-string v0, "android.hardware.usb.action.USB_DEVICE_ATTACHED"

    invoke-virtual {v8, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 810
    const-string v0, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v8, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 813
    const-string v0, "com.samsung.sec.knox.KNOX_MODE_CHANGED"

    invoke-virtual {v8, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 817
    const-string/jumbo v0, "ro.audio.monitorOrientation"

    invoke-static {v0, v6}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, mMonitorOrientation:Z

    .line 818
    iget-boolean v0, p0, mMonitorOrientation:Z

    if-eqz v0, :cond_289

    .line 819
    const-string v0, "AudioService"

    const-string/jumbo v1, "monitoring device orientation"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 821
    invoke-direct {p0}, setOrientationForAudioSystem()V

    .line 823
    :cond_289
    const-string/jumbo v0, "ro.audio.monitorRotation"

    invoke-static {v0, v6}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, mMonitorRotation:Z

    .line 824
    iget-boolean v0, p0, mMonitorRotation:Z

    if-eqz v0, :cond_2d7

    .line 825
    iget-object v0, p0, mContext:Landroid/content/Context;

    const-string/jumbo v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    iput v0, p0, mDeviceRotation:I

    .line 827
    const-string v0, "AudioService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "monitoring device rotation, initial="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, mDeviceRotation:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 829
    new-instance v0, Landroid/media/AudioService$AudioOrientationEventListener;

    iget-object v1, p0, mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Landroid/media/AudioService$AudioOrientationEventListener;-><init>(Landroid/media/AudioService;Landroid/content/Context;)V

    iput-object v0, p0, mOrientationListener:Landroid/media/AudioService$AudioOrientationEventListener;

    .line 830
    iget-object v0, p0, mOrientationListener:Landroid/media/AudioService$AudioOrientationEventListener;

    invoke-virtual {v0}, Landroid/media/AudioService$AudioOrientationEventListener;->enable()V

    .line 833
    invoke-direct {p0}, setRotationForAudioSystem()V

    .line 836
    :cond_2d7
    iget-object v0, p0, mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v0, v8}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 840
    new-instance v9, Landroid/content/IntentFilter;

    const-string v0, "com.samsung.sec.knox.KNOX_MODE_CHANGED"

    invoke-direct {v9, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 842
    .local v9, "knoxModeIntentFilter":Landroid/content/IntentFilter;
    iget-object v0, p0, mReceiver:Landroid/content/BroadcastReceiver;

    const-string v1, "com.samsung.container.OBSERVER"

    invoke-virtual {p1, v0, v9, v1, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 846
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1120012

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, mUseMasterVolume:Z

    .line 848
    invoke-direct {p0}, restoreMasterVolume()V

    .line 850
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x107000b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v0

    iput-object v0, p0, mMasterVolumeRamp:[I

    .line 853
    const-class v0, Landroid/media/AudioManagerInternal;

    new-instance v1, Landroid/media/AudioService$AudioServiceInternal;

    invoke-direct {v1, p0}, Landroid/media/AudioService$AudioServiceInternal;-><init>(Landroid/media/AudioService;)V

    invoke-static {v0, v1}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 857
    iget-object v0, p0, mSamsungAudioService:Landroid/media/SamsungAudioService;

    invoke-virtual {v0}, Landroid/media/SamsungAudioService;->initCPUBoost()V

    .line 859
    invoke-static {}, Landroid/media/AudioSystem;->getNumStreamTypes()I

    move-result v10

    .line 860
    .local v10, "numStreamTypes":I
    new-array v0, v10, [I

    iput-object v0, p0, mStreamMutedump:[I

    .line 861
    new-array v0, v2, [I

    iput-object v0, p0, mBluetoothScoOndump:[I

    .line 862
    new-array v0, v2, [I

    iput-object v0, p0, mSpeakerOndump:[I

    .line 863
    new-array v0, v10, [I

    iput-object v0, p0, pIdOfsetVolumeIndex:[I

    .line 864
    new-array v0, v10, [I

    iput-object v0, p0, pIdOfsetVolume:[I

    .line 867
    invoke-direct {p0}, setWiredDeviceConnectionStateBeforeBoot()V

    .line 869
    return-void

    .line 691
    .end local v7    # "cameraSoundForced":Z
    .end local v8    # "intentFilter":Landroid/content/IntentFilter;
    .end local v9    # "knoxModeIntentFilter":Landroid/content/IntentFilter;
    .end local v10    # "numStreamTypes":I
    .end local v11    # "pm":Landroid/os/PowerManager;
    .end local v12    # "vibrator":Landroid/os/Vibrator;
    :cond_332
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.type.television"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_342

    .line 693
    iput v2, p0, mPlatformType:I

    goto/16 :goto_11a

    .line 695
    :cond_342
    iput v6, p0, mPlatformType:I

    goto/16 :goto_11a

    .line 702
    .restart local v11    # "pm":Landroid/os/PowerManager;
    .restart local v12    # "vibrator":Landroid/os/Vibrator;
    :cond_346
    invoke-virtual {v12}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result v0

    goto/16 :goto_137

    .restart local v7    # "cameraSoundForced":Z
    :cond_34c
    move v4, v6

    .line 758
    goto/16 :goto_1ed

    .line 324
    nop

    :array_350
    .array-data 4
        0x5
        0xf
        0xf
        0xf
        0xf
        0xf
        0xf
        0xf
        0xf
        0xf
        0xf
        0x5
        0x5
        0xf
    .end array-data

    .line 342
    :array_370
    .array-data 4
        0x5
        0xf
        0xf
        0x1e
        0xf
        0xf
        0xf
        0xf
        0xf
        0x1e
        0x1e
        0x5
        0x5
        0x1e
    .end array-data

    .line 369
    :array_390
    .array-data 4
        0x0
        0x1
        0x2
        0x3
        0x4
        0x5
        0x6
        0x7
        0x0
        0x3
        0x3
        0x0
        0x0
        0x3
    .end array-data

    .line 387
    :array_3b0
    .array-data 4
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
    .end array-data

    .line 405
    :array_3d0
    .array-data 4
        0x0
        0x1
        0x2
        0x3
        0x4
        0x2
        0x6
        0x7
        0x3
        0x3
        0x3
        0x0
        0x0
        0x3
    .end array-data
.end method

.method static synthetic access$000(Landroid/media/AudioService;)Landroid/media/AudioService$AudioHandler;
    .registers 2
    .param p0, "x0"    # Landroid/media/AudioService;

    .prologue
    .line 128
    iget-object v0, p0, mAudioHandler:Landroid/media/AudioService$AudioHandler;

    return-object v0
.end method

.method static synthetic access$002(Landroid/media/AudioService;Landroid/media/AudioService$AudioHandler;)Landroid/media/AudioService$AudioHandler;
    .registers 2
    .param p0, "x0"    # Landroid/media/AudioService;
    .param p1, "x1"    # Landroid/media/AudioService$AudioHandler;

    .prologue
    .line 128
    iput-object p1, p0, mAudioHandler:Landroid/media/AudioService$AudioHandler;

    return-object p1
.end method

.method static synthetic access$100(Landroid/os/Handler;IIIILjava/lang/Object;I)V
    .registers 7
    .param p0, "x0"    # Landroid/os/Handler;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # I
    .param p5, "x5"    # Ljava/lang/Object;
    .param p6, "x6"    # I

    .prologue
    .line 128
    invoke-static/range {p0 .. p6}, sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    return-void
.end method

.method static synthetic access$1000(Landroid/media/AudioService;)I
    .registers 2
    .param p0, "x0"    # Landroid/media/AudioService;

    .prologue
    .line 128
    iget v0, p0, mDeviceRotation:I

    return v0
.end method

.method static synthetic access$10000(Landroid/media/AudioService;)Z
    .registers 2
    .param p0, "x0"    # Landroid/media/AudioService;

    .prologue
    .line 128
    iget-boolean v0, p0, mHdmiCecSink:Z

    return v0
.end method

.method static synthetic access$10002(Landroid/media/AudioService;Z)Z
    .registers 2
    .param p0, "x0"    # Landroid/media/AudioService;
    .param p1, "x1"    # Z

    .prologue
    .line 128
    iput-boolean p1, p0, mHdmiCecSink:Z

    return p1
.end method

.method static synthetic access$1002(Landroid/media/AudioService;I)I
    .registers 2
    .param p0, "x0"    # Landroid/media/AudioService;
    .param p1, "x1"    # I

    .prologue
    .line 128
    iput p1, p0, mDeviceRotation:I

    return p1
.end method

.method static synthetic access$10100(Landroid/media/AudioService;)V
    .registers 1
    .param p0, "x0"    # Landroid/media/AudioService;

    .prologue
    .line 128
    invoke-direct {p0}, checkAllFixedVolumeDevices()V

    return-void
.end method

.method static synthetic access$10300(Landroid/media/AudioService;)Landroid/media/AudioService$VolumeController;
    .registers 2
    .param p0, "x0"    # Landroid/media/AudioService;

    .prologue
    .line 128
    iget-object v0, p0, mVolumeController:Landroid/media/AudioService$VolumeController;

    return-object v0
.end method

.method static synthetic access$10400(Landroid/media/AudioService;IIILjava/lang/String;I)V
    .registers 6
    .param p0, "x0"    # Landroid/media/AudioService;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # Ljava/lang/String;
    .param p5, "x5"    # I

    .prologue
    .line 128
    invoke-direct/range {p0 .. p5}, adjustSuggestedStreamVolume(IIILjava/lang/String;I)V

    return-void
.end method

.method static synthetic access$10500(Landroid/media/AudioService;IIILjava/lang/String;I)V
    .registers 6
    .param p0, "x0"    # Landroid/media/AudioService;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # Ljava/lang/String;
    .param p5, "x5"    # I

    .prologue
    .line 128
    invoke-direct/range {p0 .. p5}, adjustStreamVolume(IIILjava/lang/String;I)V

    return-void
.end method

.method static synthetic access$10600(Landroid/media/AudioService;IIILjava/lang/String;I)V
    .registers 6
    .param p0, "x0"    # Landroid/media/AudioService;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # Ljava/lang/String;
    .param p5, "x5"    # I

    .prologue
    .line 128
    invoke-direct/range {p0 .. p5}, setStreamVolume(IIILjava/lang/String;I)V

    return-void
.end method

.method static synthetic access$10700(Landroid/media/AudioService;)Ljava/util/HashMap;
    .registers 2
    .param p0, "x0"    # Landroid/media/AudioService;

    .prologue
    .line 128
    iget-object v0, p0, mAudioPolicies:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$1100(Landroid/media/AudioService;)V
    .registers 1
    .param p0, "x0"    # Landroid/media/AudioService;

    .prologue
    .line 128
    invoke-direct {p0}, setRotationForAudioSystem()V

    return-void
.end method

.method static synthetic access$1200(Landroid/media/AudioService;)Ljava/lang/Object;
    .registers 2
    .param p0, "x0"    # Landroid/media/AudioService;

    .prologue
    .line 128
    iget-object v0, p0, mForceControlStreamLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1300(Landroid/media/AudioService;)Landroid/media/AudioService$ForceControlStreamClient;
    .registers 2
    .param p0, "x0"    # Landroid/media/AudioService;

    .prologue
    .line 128
    iget-object v0, p0, mForceControlStreamClient:Landroid/media/AudioService$ForceControlStreamClient;

    return-object v0
.end method

.method static synthetic access$1302(Landroid/media/AudioService;Landroid/media/AudioService$ForceControlStreamClient;)Landroid/media/AudioService$ForceControlStreamClient;
    .registers 2
    .param p0, "x0"    # Landroid/media/AudioService;
    .param p1, "x1"    # Landroid/media/AudioService$ForceControlStreamClient;

    .prologue
    .line 128
    iput-object p1, p0, mForceControlStreamClient:Landroid/media/AudioService$ForceControlStreamClient;

    return-object p1
.end method

.method static synthetic access$1402(Landroid/media/AudioService;I)I
    .registers 2
    .param p0, "x0"    # Landroid/media/AudioService;
    .param p1, "x1"    # I

    .prologue
    .line 128
    iput p1, p0, mVolumeControlStream:I

    return p1
.end method

.method static synthetic access$1500(Landroid/media/AudioService;)Ljava/util/ArrayList;
    .registers 2
    .param p0, "x0"    # Landroid/media/AudioService;

    .prologue
    .line 128
    iget-object v0, p0, mSetModeDeathHandlers:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1600(Landroid/media/AudioService;ILandroid/os/IBinder;I)I
    .registers 5
    .param p0, "x0"    # Landroid/media/AudioService;
    .param p1, "x1"    # I
    .param p2, "x2"    # Landroid/os/IBinder;
    .param p3, "x3"    # I

    .prologue
    .line 128
    invoke-direct {p0, p1, p2, p3}, setModeInt(ILandroid/os/IBinder;I)I

    move-result v0

    return v0
.end method

.method static synthetic access$1700(Landroid/media/AudioService;I)V
    .registers 2
    .param p0, "x0"    # Landroid/media/AudioService;
    .param p1, "x1"    # I

    .prologue
    .line 128
    invoke-direct {p0, p1}, disconnectBluetoothSco(I)V

    return-void
.end method

.method static synthetic access$1900(Landroid/media/AudioService;)Landroid/os/Looper;
    .registers 2
    .param p0, "x0"    # Landroid/media/AudioService;

    .prologue
    .line 128
    iget-object v0, p0, mSoundPoolLooper:Landroid/os/Looper;

    return-object v0
.end method

.method static synthetic access$1902(Landroid/media/AudioService;Landroid/os/Looper;)Landroid/os/Looper;
    .registers 2
    .param p0, "x0"    # Landroid/media/AudioService;
    .param p1, "x1"    # Landroid/os/Looper;

    .prologue
    .line 128
    iput-object p1, p0, mSoundPoolLooper:Landroid/os/Looper;

    return-object p1
.end method

.method static synthetic access$2000(Landroid/media/AudioService;)Ljava/lang/Object;
    .registers 2
    .param p0, "x0"    # Landroid/media/AudioService;

    .prologue
    .line 128
    iget-object v0, p0, mSoundEffectsLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$2100(Landroid/media/AudioService;)Landroid/media/SoundPool;
    .registers 2
    .param p0, "x0"    # Landroid/media/AudioService;

    .prologue
    .line 128
    iget-object v0, p0, mSoundPool:Landroid/media/SoundPool;

    return-object v0
.end method

.method static synthetic access$2102(Landroid/media/AudioService;Landroid/media/SoundPool;)Landroid/media/SoundPool;
    .registers 2
    .param p0, "x0"    # Landroid/media/AudioService;
    .param p1, "x1"    # Landroid/media/SoundPool;

    .prologue
    .line 128
    iput-object p1, p0, mSoundPool:Landroid/media/SoundPool;

    return-object p1
.end method

.method static synthetic access$2200(Landroid/media/AudioService;)Landroid/media/AudioService$SoundPoolCallback;
    .registers 2
    .param p0, "x0"    # Landroid/media/AudioService;

    .prologue
    .line 128
    iget-object v0, p0, mSoundPoolCallBack:Landroid/media/AudioService$SoundPoolCallback;

    return-object v0
.end method

.method static synthetic access$2202(Landroid/media/AudioService;Landroid/media/AudioService$SoundPoolCallback;)Landroid/media/AudioService$SoundPoolCallback;
    .registers 2
    .param p0, "x0"    # Landroid/media/AudioService;
    .param p1, "x1"    # Landroid/media/AudioService$SoundPoolCallback;

    .prologue
    .line 128
    iput-object p1, p0, mSoundPoolCallBack:Landroid/media/AudioService$SoundPoolCallback;

    return-object p1
.end method

.method static synthetic access$2600(Landroid/media/AudioService;)Ljava/util/ArrayList;
    .registers 2
    .param p0, "x0"    # Landroid/media/AudioService;

    .prologue
    .line 128
    iget-object v0, p0, mScoClients:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$2700(Landroid/media/AudioService;)V
    .registers 1
    .param p0, "x0"    # Landroid/media/AudioService;

    .prologue
    .line 128
    invoke-direct {p0}, checkScoAudioState()V

    return-void
.end method

.method static synthetic access$2800(Landroid/media/AudioService;I)V
    .registers 2
    .param p0, "x0"    # Landroid/media/AudioService;
    .param p1, "x1"    # I

    .prologue
    .line 128
    invoke-direct {p0, p1}, broadcastScoConnectionState(I)V

    return-void
.end method

.method static synthetic access$2900(Landroid/media/AudioService;)I
    .registers 2
    .param p0, "x0"    # Landroid/media/AudioService;

    .prologue
    .line 128
    iget v0, p0, mScoAudioState:I

    return v0
.end method

.method static synthetic access$2902(Landroid/media/AudioService;I)I
    .registers 2
    .param p0, "x0"    # Landroid/media/AudioService;
    .param p1, "x1"    # I

    .prologue
    .line 128
    iput p1, p0, mScoAudioState:I

    return p1
.end method

.method static synthetic access$3000(Landroid/media/AudioService;)I
    .registers 2
    .param p0, "x0"    # Landroid/media/AudioService;

    .prologue
    .line 128
    iget v0, p0, mScoAudioMode:I

    return v0
.end method

.method static synthetic access$3002(Landroid/media/AudioService;I)I
    .registers 2
    .param p0, "x0"    # Landroid/media/AudioService;
    .param p1, "x1"    # I

    .prologue
    .line 128
    iput p1, p0, mScoAudioMode:I

    return p1
.end method

.method static synthetic access$3100(Landroid/media/AudioService;)Landroid/bluetooth/BluetoothHeadset;
    .registers 2
    .param p0, "x0"    # Landroid/media/AudioService;

    .prologue
    .line 128
    iget-object v0, p0, mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    return-object v0
.end method

.method static synthetic access$3102(Landroid/media/AudioService;Landroid/bluetooth/BluetoothHeadset;)Landroid/bluetooth/BluetoothHeadset;
    .registers 2
    .param p0, "x0"    # Landroid/media/AudioService;
    .param p1, "x1"    # Landroid/bluetooth/BluetoothHeadset;

    .prologue
    .line 128
    iput-object p1, p0, mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    return-object p1
.end method

.method static synthetic access$3200(Landroid/media/AudioService;)Landroid/bluetooth/BluetoothDevice;
    .registers 2
    .param p0, "x0"    # Landroid/media/AudioService;

    .prologue
    .line 128
    iget-object v0, p0, mBluetoothHeadsetDevice:Landroid/bluetooth/BluetoothDevice;

    return-object v0
.end method

.method static synthetic access$3202(Landroid/media/AudioService;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;
    .registers 2
    .param p0, "x0"    # Landroid/media/AudioService;
    .param p1, "x1"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 128
    iput-object p1, p0, mBluetoothHeadsetDevice:Landroid/bluetooth/BluetoothDevice;

    return-object p1
.end method

.method static synthetic access$3300(Landroid/media/AudioService;)Z
    .registers 2
    .param p0, "x0"    # Landroid/media/AudioService;

    .prologue
    .line 128
    invoke-direct {p0}, getBluetoothHeadset()Z

    move-result v0

    return v0
.end method

.method static synthetic access$3400(Landroid/media/AudioService;)Ljava/util/ArrayList;
    .registers 2
    .param p0, "x0"    # Landroid/media/AudioService;

    .prologue
    .line 128
    iget-object v0, p0, mScoDevices:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$3500(Landroid/media/AudioService;)Ljava/lang/Object;
    .registers 2
    .param p0, "x0"    # Landroid/media/AudioService;

    .prologue
    .line 128
    iget-object v0, p0, mA2dpAvrcpLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$3600(Landroid/media/AudioService;)Landroid/bluetooth/BluetoothA2dp;
    .registers 2
    .param p0, "x0"    # Landroid/media/AudioService;

    .prologue
    .line 128
    iget-object v0, p0, mA2dp:Landroid/bluetooth/BluetoothA2dp;

    return-object v0
.end method

.method static synthetic access$3602(Landroid/media/AudioService;Landroid/bluetooth/BluetoothA2dp;)Landroid/bluetooth/BluetoothA2dp;
    .registers 2
    .param p0, "x0"    # Landroid/media/AudioService;
    .param p1, "x1"    # Landroid/bluetooth/BluetoothA2dp;

    .prologue
    .line 128
    iput-object p1, p0, mA2dp:Landroid/bluetooth/BluetoothA2dp;

    return-object p1
.end method

.method static synthetic access$3700(Landroid/media/AudioService;)Ljava/util/HashMap;
    .registers 2
    .param p0, "x0"    # Landroid/media/AudioService;

    .prologue
    .line 128
    iget-object v0, p0, mConnectedDevices:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$3800(Landroid/media/AudioService;Landroid/os/Handler;IIILjava/lang/Object;I)V
    .registers 7
    .param p0, "x0"    # Landroid/media/AudioService;
    .param p1, "x1"    # Landroid/os/Handler;
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # I
    .param p5, "x5"    # Ljava/lang/Object;
    .param p6, "x6"    # I

    .prologue
    .line 128
    invoke-direct/range {p0 .. p6}, queueMsgUnderWakeLock(Landroid/os/Handler;IIILjava/lang/Object;I)V

    return-void
.end method

.method static synthetic access$3900(Landroid/media/AudioService;Ljava/lang/String;)V
    .registers 2
    .param p0, "x0"    # Landroid/media/AudioService;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 128
    invoke-direct {p0, p1}, makeA2dpSrcUnavailable(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$4000(Landroid/media/AudioService;)I
    .registers 2
    .param p0, "x0"    # Landroid/media/AudioService;

    .prologue
    .line 128
    iget v0, p0, mForcedUseForComm:I

    return v0
.end method

.method static synthetic access$4002(Landroid/media/AudioService;I)I
    .registers 2
    .param p0, "x0"    # Landroid/media/AudioService;
    .param p1, "x1"    # I

    .prologue
    .line 128
    iput p1, p0, mForcedUseForComm:I

    return p1
.end method

.method static synthetic access$4100()[I
    .registers 1

    .prologue
    .line 128
    sget-object v0, MAX_STREAM_VOLUME:[I

    return-object v0
.end method

.method static synthetic access$4200(Landroid/media/AudioService;)Z
    .registers 2
    .param p0, "x0"    # Landroid/media/AudioService;

    .prologue
    .line 128
    iget-boolean v0, p0, mUseFixedVolume:Z

    return v0
.end method

.method static synthetic access$4300(Landroid/media/AudioService;)Landroid/content/ContentResolver;
    .registers 2
    .param p0, "x0"    # Landroid/media/AudioService;

    .prologue
    .line 128
    iget-object v0, p0, mContentResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static synthetic access$4400(Landroid/media/AudioService;)Z
    .registers 2
    .param p0, "x0"    # Landroid/media/AudioService;

    .prologue
    .line 128
    iget-boolean v0, p0, mAvrcpAbsVolSupported:Z

    return v0
.end method

.method static synthetic access$4500(Landroid/media/AudioService;)Z
    .registers 2
    .param p0, "x0"    # Landroid/media/AudioService;

    .prologue
    .line 128
    invoke-direct {p0}, isPlatformVoice()Z

    move-result v0

    return v0
.end method

.method static synthetic access$4602(Landroid/media/AudioService;Z)Z
    .registers 2
    .param p0, "x0"    # Landroid/media/AudioService;
    .param p1, "x1"    # Z

    .prologue
    .line 128
    iput-boolean p1, p0, mMediaSilentMode:Z

    return p1
.end method

.method static synthetic access$4702(Landroid/media/AudioService;I)I
    .registers 2
    .param p0, "x0"    # Landroid/media/AudioService;
    .param p1, "x1"    # I

    .prologue
    .line 128
    iput p1, p0, mMediaLastAudibleIndex:I

    return p1
.end method

.method static synthetic access$4800(Landroid/media/AudioService;)Ljava/lang/Boolean;
    .registers 2
    .param p0, "x0"    # Landroid/media/AudioService;

    .prologue
    .line 128
    iget-object v0, p0, mCameraSoundForced:Ljava/lang/Boolean;

    return-object v0
.end method

.method static synthetic access$4900(Landroid/media/AudioService;I)I
    .registers 3
    .param p0, "x0"    # Landroid/media/AudioService;
    .param p1, "x1"    # I

    .prologue
    .line 128
    invoke-direct {p0, p1}, getDeviceForStream(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$5000(Landroid/media/AudioService;)[I
    .registers 2
    .param p0, "x0"    # Landroid/media/AudioService;

    .prologue
    .line 128
    iget-object v0, p0, mStreamVolumeAlias:[I

    return-object v0
.end method

.method static synthetic access$5100(Landroid/media/AudioService;III)I
    .registers 5
    .param p0, "x0"    # Landroid/media/AudioService;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .prologue
    .line 128
    invoke-direct {p0, p1, p2, p3}, rescaleIndex(III)I

    move-result v0

    return v0
.end method

.method static synthetic access$5200(Landroid/media/AudioService;)[Landroid/media/AudioService$VolumeStreamState;
    .registers 2
    .param p0, "x0"    # Landroid/media/AudioService;

    .prologue
    .line 128
    iget-object v0, p0, mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    return-object v0
.end method

.method static synthetic access$5500(Landroid/media/AudioService;)Z
    .registers 2
    .param p0, "x0"    # Landroid/media/AudioService;

    .prologue
    .line 128
    invoke-direct {p0}, isPlatformTelevision()Z

    move-result v0

    return v0
.end method

.method static synthetic access$5600(Landroid/media/AudioService;)Z
    .registers 2
    .param p0, "x0"    # Landroid/media/AudioService;

    .prologue
    .line 128
    iget-boolean v0, p0, mSystemReady:Z

    return v0
.end method

.method static synthetic access$5700(Landroid/media/AudioService;)V
    .registers 1
    .param p0, "x0"    # Landroid/media/AudioService;

    .prologue
    .line 128
    invoke-direct {p0}, loadTouchSoundAssets()V

    return-void
.end method

.method static synthetic access$5800(Landroid/media/AudioService;)Landroid/media/AudioService$SoundPoolListenerThread;
    .registers 2
    .param p0, "x0"    # Landroid/media/AudioService;

    .prologue
    .line 128
    iget-object v0, p0, mSoundPoolListenerThread:Landroid/media/AudioService$SoundPoolListenerThread;

    return-object v0
.end method

.method static synthetic access$5802(Landroid/media/AudioService;Landroid/media/AudioService$SoundPoolListenerThread;)Landroid/media/AudioService$SoundPoolListenerThread;
    .registers 2
    .param p0, "x0"    # Landroid/media/AudioService;
    .param p1, "x1"    # Landroid/media/AudioService$SoundPoolListenerThread;

    .prologue
    .line 128
    iput-object p1, p0, mSoundPoolListenerThread:Landroid/media/AudioService$SoundPoolListenerThread;

    return-object p1
.end method

.method static synthetic access$5900()Ljava/util/List;
    .registers 1

    .prologue
    .line 128
    sget-object v0, SOUND_EFFECT_FILES:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$6000(Landroid/media/AudioService;)[[I
    .registers 2
    .param p0, "x0"    # Landroid/media/AudioService;

    .prologue
    .line 128
    iget-object v0, p0, SOUND_EFFECT_FILES_MAP:[[I

    return-object v0
.end method

.method static synthetic access$6200(Landroid/media/AudioService;)I
    .registers 2
    .param p0, "x0"    # Landroid/media/AudioService;

    .prologue
    .line 128
    iget v0, p0, mMode:I

    return v0
.end method

.method static synthetic access$6300()V
    .registers 0

    .prologue
    .line 128
    invoke-static {}, readAndSetLowRamDevice()V

    return-void
.end method

.method static synthetic access$6400(Landroid/media/AudioService;)I
    .registers 2
    .param p0, "x0"    # Landroid/media/AudioService;

    .prologue
    .line 128
    iget v0, p0, mForcedUseForFMRadio:I

    return v0
.end method

.method static synthetic access$6600(Landroid/media/AudioService;IZ)V
    .registers 3
    .param p0, "x0"    # Landroid/media/AudioService;
    .param p1, "x1"    # I
    .param p2, "x2"    # Z

    .prologue
    .line 128
    invoke-direct {p0, p1, p2}, setRingerModeInt(IZ)V

    return-void
.end method

.method static synthetic access$6700(Landroid/media/AudioService;)V
    .registers 1
    .param p0, "x0"    # Landroid/media/AudioService;

    .prologue
    .line 128
    invoke-direct {p0}, restoreMasterVolume()V

    return-void
.end method

.method static synthetic access$6800(Landroid/media/AudioService;)Z
    .registers 2
    .param p0, "x0"    # Landroid/media/AudioService;

    .prologue
    .line 128
    iget-boolean v0, p0, mMonitorOrientation:Z

    return v0
.end method

.method static synthetic access$6900(Landroid/media/AudioService;)V
    .registers 1
    .param p0, "x0"    # Landroid/media/AudioService;

    .prologue
    .line 128
    invoke-direct {p0}, setOrientationForAudioSystem()V

    return-void
.end method

.method static synthetic access$7000(Landroid/media/AudioService;)Z
    .registers 2
    .param p0, "x0"    # Landroid/media/AudioService;

    .prologue
    .line 128
    iget-boolean v0, p0, mMonitorRotation:Z

    return v0
.end method

.method static synthetic access$7100(Landroid/media/AudioService;)Ljava/lang/Object;
    .registers 2
    .param p0, "x0"    # Landroid/media/AudioService;

    .prologue
    .line 128
    iget-object v0, p0, mBluetoothA2dpEnabledLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$7200(Landroid/media/AudioService;)Z
    .registers 2
    .param p0, "x0"    # Landroid/media/AudioService;

    .prologue
    .line 128
    iget-boolean v0, p0, mBluetoothA2dpEnabled:Z

    return v0
.end method

.method static synthetic access$7300(Landroid/media/AudioService;)Ljava/lang/Object;
    .registers 2
    .param p0, "x0"    # Landroid/media/AudioService;

    .prologue
    .line 128
    iget-object v0, p0, mSettingsLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$7400(Landroid/media/AudioService;)Z
    .registers 2
    .param p0, "x0"    # Landroid/media/AudioService;

    .prologue
    .line 128
    iget-boolean v0, p0, mDockAudioMediaEnabled:Z

    return v0
.end method

.method static synthetic access$7500(Landroid/media/AudioService;)Landroid/hardware/hdmi/HdmiControlManager;
    .registers 2
    .param p0, "x0"    # Landroid/media/AudioService;

    .prologue
    .line 128
    iget-object v0, p0, mHdmiManager:Landroid/hardware/hdmi/HdmiControlManager;

    return-object v0
.end method

.method static synthetic access$7600(Landroid/media/AudioService;)Landroid/hardware/hdmi/HdmiTvClient;
    .registers 2
    .param p0, "x0"    # Landroid/media/AudioService;

    .prologue
    .line 128
    iget-object v0, p0, mHdmiTvClient:Landroid/hardware/hdmi/HdmiTvClient;

    return-object v0
.end method

.method static synthetic access$7700(Landroid/media/AudioService;)Z
    .registers 2
    .param p0, "x0"    # Landroid/media/AudioService;

    .prologue
    .line 128
    iget-boolean v0, p0, mHdmiSystemAudioSupported:Z

    return v0
.end method

.method static synthetic access$7800(Landroid/media/AudioService;)Landroid/media/SamsungAudioService;
    .registers 2
    .param p0, "x0"    # Landroid/media/AudioService;

    .prologue
    .line 128
    iget-object v0, p0, mSamsungAudioService:Landroid/media/SamsungAudioService;

    return-object v0
.end method

.method static synthetic access$7900(Landroid/media/AudioService;Ljava/lang/String;)V
    .registers 2
    .param p0, "x0"    # Landroid/media/AudioService;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 128
    invoke-direct {p0, p1}, makeA2dpDeviceUnavailableNow(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$8000(Landroid/media/AudioService;)V
    .registers 1
    .param p0, "x0"    # Landroid/media/AudioService;

    .prologue
    .line 128
    invoke-direct {p0}, resetBluetoothSco()V

    return-void
.end method

.method static synthetic access$8100(Landroid/media/AudioService;IILjava/lang/String;)V
    .registers 4
    .param p0, "x0"    # Landroid/media/AudioService;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # Ljava/lang/String;

    .prologue
    .line 128
    invoke-direct {p0, p1, p2, p3}, onSetWiredDeviceConnectionState(IILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$8202(Landroid/media/AudioService;I)I
    .registers 2
    .param p0, "x0"    # Landroid/media/AudioService;
    .param p1, "x1"    # I

    .prologue
    .line 128
    iput p1, p0, mLateBootCompleted_WiredDevice:I

    return p1
.end method

.method static synthetic access$8300(Landroid/media/AudioService;)Landroid/os/PowerManager$WakeLock;
    .registers 2
    .param p0, "x0"    # Landroid/media/AudioService;

    .prologue
    .line 128
    iget-object v0, p0, mAudioEventWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic access$8400(Landroid/media/AudioService;Landroid/bluetooth/BluetoothDevice;I)V
    .registers 3
    .param p0, "x0"    # Landroid/media/AudioService;
    .param p1, "x1"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "x2"    # I

    .prologue
    .line 128
    invoke-direct {p0, p1, p2}, onSetA2dpSourceConnectionState(Landroid/bluetooth/BluetoothDevice;I)V

    return-void
.end method

.method static synthetic access$8500(Landroid/media/AudioService;Landroid/bluetooth/BluetoothDevice;I)V
    .registers 3
    .param p0, "x0"    # Landroid/media/AudioService;
    .param p1, "x1"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "x2"    # I

    .prologue
    .line 128
    invoke-direct {p0, p1, p2}, onSetA2dpSinkConnectionState(Landroid/bluetooth/BluetoothDevice;I)V

    return-void
.end method

.method static synthetic access$8600(Landroid/media/AudioService;)V
    .registers 1
    .param p0, "x0"    # Landroid/media/AudioService;

    .prologue
    .line 128
    invoke-direct {p0}, onCheckMusicActive()V

    return-void
.end method

.method static synthetic access$8700(Landroid/media/AudioService;I)V
    .registers 2
    .param p0, "x0"    # Landroid/media/AudioService;
    .param p1, "x1"    # I

    .prologue
    .line 128
    invoke-direct {p0, p1}, onSendBecomingNoisyIntent(I)V

    return-void
.end method

.method static synthetic access$8800(Landroid/media/AudioService;II)V
    .registers 3
    .param p0, "x0"    # Landroid/media/AudioService;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 128
    invoke-direct {p0, p1, p2}, onSendBecomingNoisyIntent(II)V

    return-void
.end method

.method static synthetic access$8900(Landroid/media/AudioService;Z)V
    .registers 2
    .param p0, "x0"    # Landroid/media/AudioService;
    .param p1, "x1"    # Z

    .prologue
    .line 128
    invoke-direct {p0, p1}, onConfigureSafeVolume(Z)V

    return-void
.end method

.method static synthetic access$900(Landroid/media/AudioService;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Landroid/media/AudioService;

    .prologue
    .line 128
    iget-object v0, p0, mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$9000(Landroid/media/AudioService;I)V
    .registers 2
    .param p0, "x0"    # Landroid/media/AudioService;
    .param p1, "x1"    # I

    .prologue
    .line 128
    invoke-direct {p0, p1}, onBroadcastScoConnectionState(I)V

    return-void
.end method

.method static synthetic access$9100(Landroid/media/AudioService;Landroid/content/ContentResolver;)V
    .registers 2
    .param p0, "x0"    # Landroid/media/AudioService;
    .param p1, "x1"    # Landroid/content/ContentResolver;

    .prologue
    .line 128
    invoke-direct {p0, p1}, readDockAudioSettings(Landroid/content/ContentResolver;)V

    return-void
.end method

.method static synthetic access$9300(Landroid/media/AudioService;)I
    .registers 2
    .param p0, "x0"    # Landroid/media/AudioService;

    .prologue
    .line 128
    iget v0, p0, mDockState:I

    return v0
.end method

.method static synthetic access$9302(Landroid/media/AudioService;I)I
    .registers 2
    .param p0, "x0"    # Landroid/media/AudioService;
    .param p1, "x1"    # I

    .prologue
    .line 128
    iput p1, p0, mDockState:I

    return p1
.end method

.method static synthetic access$9400(Landroid/media/AudioService;ZILjava/lang/String;)Z
    .registers 5
    .param p0, "x0"    # Landroid/media/AudioService;
    .param p1, "x1"    # Z
    .param p2, "x2"    # I
    .param p3, "x3"    # Ljava/lang/String;

    .prologue
    .line 128
    invoke-direct {p0, p1, p2, p3}, handleDeviceConnection(ZILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$9500(Landroid/media/AudioService;Landroid/content/Intent;)V
    .registers 2
    .param p0, "x0"    # Landroid/media/AudioService;
    .param p1, "x1"    # Landroid/content/Intent;

    .prologue
    .line 128
    invoke-direct {p0, p1}, sendStickyBroadcastToAll(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$9600(Landroid/media/AudioService;)Landroid/media/AudioService$AudioOrientationEventListener;
    .registers 2
    .param p0, "x0"    # Landroid/media/AudioService;

    .prologue
    .line 128
    iget-object v0, p0, mOrientationListener:Landroid/media/AudioService$AudioOrientationEventListener;

    return-object v0
.end method

.method static synthetic access$9700(Landroid/media/AudioService;Landroid/content/Context;)V
    .registers 2
    .param p0, "x0"    # Landroid/media/AudioService;
    .param p1, "x1"    # Landroid/content/Context;

    .prologue
    .line 128
    invoke-direct {p0, p1}, handleConfigurationChanged(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$9800(Landroid/media/AudioService;)Landroid/media/MediaFocusControl;
    .registers 2
    .param p0, "x0"    # Landroid/media/AudioService;

    .prologue
    .line 128
    iget-object v0, p0, mMediaFocusControl:Landroid/media/MediaFocusControl;

    return-object v0
.end method

.method static synthetic access$9900(Landroid/media/AudioService;Z)V
    .registers 2
    .param p0, "x0"    # Landroid/media/AudioService;
    .param p1, "x1"    # Z

    .prologue
    .line 128
    invoke-direct {p0, p1}, readAudioSettings(Z)V

    return-void
.end method

.method private addScoDevice(ILjava/lang/String;)V
    .registers 5
    .param p1, "device"    # I
    .param p2, "address"    # Ljava/lang/String;

    .prologue
    .line 5562
    new-instance v0, Landroid/media/AudioService$ScoDevice;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/media/AudioService$ScoDevice;-><init>(Landroid/media/AudioService;Landroid/media/AudioService$1;)V

    .line 5563
    .local v0, "sco":Landroid/media/AudioService$ScoDevice;
    iput p1, v0, Landroid/media/AudioService$ScoDevice;->device:I

    .line 5564
    iput-object p2, v0, Landroid/media/AudioService$ScoDevice;->address:Ljava/lang/String;

    .line 5565
    iget-object v1, p0, mScoDevices:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5566
    return-void
.end method

.method private adjustStreamVolume(IIILjava/lang/String;I)V
    .registers 29
    .param p1, "streamType"    # I
    .param p2, "direction"    # I
    .param p3, "flags"    # I
    .param p4, "callingPackage"    # Ljava/lang/String;
    .param p5, "uid"    # I

    .prologue
    .line 1422
    move-object/from16 v0, p0

    iget-boolean v4, v0, mUseFixedVolume:Z

    if-eqz v4, :cond_7

    .line 1611
    :cond_6
    :goto_6
    return-void

    .line 1425
    :cond_7
    sget-boolean v4, DEBUG_VOL:Z

    if-eqz v4, :cond_3d

    const-string v4, "AudioService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "adjustStreamVolume() stream="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", dir="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p2

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", flags="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p3

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1429
    :cond_3d
    move-object/from16 v0, p0

    iget-object v4, v0, mSamsungAudioService:Landroid/media/SamsungAudioService;

    invoke-virtual {v4}, Landroid/media/SamsungAudioService;->getAllSoundMute()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_57

    .line 1430
    new-instance v14, Landroid/content/Intent;

    const-string v4, "android.intent.action.SOUND_OFF_TOAST"

    invoke-direct {v14, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1431
    .local v14, "intent":Landroid/content/Intent;
    sget-object v4, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v4}, sendBroadcastToUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto :goto_6

    .line 1435
    .end local v14    # "intent":Landroid/content/Intent;
    :cond_57
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1}, ensureValidDirection(I)V

    .line 1436
    invoke-direct/range {p0 .. p1}, ensureValidStreamType(I)V

    .line 1441
    move-object/from16 v0, p0

    iget-object v4, v0, mStreamVolumeAlias:[I

    aget v22, v4, p1

    .line 1442
    .local v22, "streamTypeAlias":I
    move-object/from16 v0, p0

    iget-object v4, v0, mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    aget-object v9, v4, v22

    .line 1444
    .local v9, "streamState":Landroid/media/AudioService$VolumeStreamState;
    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-direct {v0, v1}, getDeviceForStream(I)I

    move-result v7

    .line 1446
    .local v7, "device":I
    const/16 v4, 0xa

    move/from16 v0, p1

    if-ne v0, v4, :cond_82

    invoke-virtual/range {p0 .. p0}, isRadioSpeakerOn()Z

    move-result v4

    if-eqz v4, :cond_82

    .line 1447
    const/4 v7, 0x2

    .line 1450
    :cond_82
    invoke-virtual {v9, v7}, Landroid/media/AudioService$VolumeStreamState;->getIndex(I)I

    move-result v12

    .line 1451
    .local v12, "aliasIndex":I
    const/4 v11, 0x1

    .line 1473
    .local v11, "adjustVolume":Z
    and-int/lit16 v4, v7, 0x380

    if-nez v4, :cond_8f

    and-int/lit8 v4, p3, 0x40

    if-nez v4, :cond_6

    .line 1478
    :cond_8f
    move-object/from16 v0, p0

    iget-object v4, v0, mAppOps:Landroid/app/AppOpsManager;

    sget-object v5, STEAM_VOLUME_OPS:[I

    aget v5, v5, v22

    move/from16 v0, p5

    move-object/from16 v1, p4

    invoke-virtual {v4, v5, v0, v1}, Landroid/app/AppOpsManager;->noteOp(IILjava/lang/String;)I

    move-result v4

    if-nez v4, :cond_6

    .line 1484
    move-object/from16 v0, p0

    iget-object v5, v0, mSafeMediaVolumeState:Ljava/lang/Integer;

    monitor-enter v5

    .line 1485
    const/4 v4, 0x0

    :try_start_a7
    move-object/from16 v0, p0

    iput-object v4, v0, mPendingVolumeCommand:Landroid/media/AudioService$StreamVolumeCommand;

    .line 1486
    monitor-exit v5
    :try_end_ac
    .catchall {:try_start_a7 .. :try_end_ac} :catchall_213

    .line 1488
    and-int/lit8 p3, p3, -0x21

    .line 1489
    const/4 v4, 0x3

    move/from16 v0, v22

    if-ne v0, v4, :cond_21c

    move-object/from16 v0, p0

    iget v4, v0, mFixedVolumeDevices:I

    and-int/2addr v4, v7

    if-eqz v4, :cond_21c

    .line 1491
    or-int/lit8 p3, p3, 0x20

    .line 1496
    move-object/from16 v0, p0

    iget-object v4, v0, mSafeMediaVolumeState:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v5, 0x3

    if-ne v4, v5, :cond_216

    and-int/lit8 v4, v7, 0xc

    if-eqz v4, :cond_216

    .line 1498
    move-object/from16 v0, p0

    iget v0, v0, mSafeMediaVolumeIndex:I

    move/from16 v21, v0

    .line 1502
    .local v21, "step":I
    :goto_d1
    if-eqz v12, :cond_d5

    .line 1503
    move/from16 v12, v21

    .line 1512
    :cond_d5
    :goto_d5
    and-int/lit8 v4, p3, 0x2

    if-nez v4, :cond_e1

    invoke-virtual/range {p0 .. p0}, getMasterStreamType()I

    move-result v4

    move/from16 v0, v22

    if-ne v0, v4, :cond_107

    .line 1514
    :cond_e1
    invoke-virtual/range {p0 .. p0}, getRingerMode()I

    move-result v20

    .line 1516
    .local v20, "ringerMode":I
    const/4 v4, 0x1

    move/from16 v0, v20

    if-ne v0, v4, :cond_ec

    .line 1517
    and-int/lit8 p3, p3, -0x11

    .line 1521
    :cond_ec
    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, v21

    invoke-direct {v0, v12, v1, v2}, checkForRingerModeChange(III)I

    move-result v19

    .line 1522
    .local v19, "result":I
    and-int/lit8 v4, v19, 0x1

    if-eqz v4, :cond_22a

    const/4 v11, 0x1

    .line 1524
    :goto_fb
    move/from16 v0, v19

    and-int/lit16 v4, v0, 0x80

    if-eqz v4, :cond_107

    .line 1525
    move/from16 v0, p3

    or-int/lit16 v0, v0, 0x80

    move/from16 p3, v0

    .line 1529
    .end local v19    # "result":I
    .end local v20    # "ringerMode":I
    :cond_107
    move-object/from16 v0, p0

    iget-object v4, v0, mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    aget-object v4, v4, p1

    invoke-virtual {v4, v7}, Landroid/media/AudioService$VolumeStreamState;->getIndex(I)I

    move-result v18

    .line 1531
    .local v18, "oldIndex":I
    if-eqz v11, :cond_1fc

    if-eqz p2, :cond_1fc

    .line 1534
    const/4 v4, 0x3

    move/from16 v0, v22

    if-ne v0, v4, :cond_13d

    and-int/lit16 v4, v7, 0x380

    if-eqz v4, :cond_13d

    and-int/lit8 v4, p3, 0x40

    if-nez v4, :cond_13d

    .line 1537
    move-object/from16 v0, p0

    iget-object v5, v0, mA2dpAvrcpLock:Ljava/lang/Object;

    monitor-enter v5

    .line 1538
    :try_start_127
    move-object/from16 v0, p0

    iget-object v4, v0, mA2dp:Landroid/bluetooth/BluetoothA2dp;

    if-eqz v4, :cond_13c

    move-object/from16 v0, p0

    iget-boolean v4, v0, mAvrcpAbsVolSupported:Z

    if-eqz v4, :cond_13c

    .line 1539
    move-object/from16 v0, p0

    iget-object v4, v0, mA2dp:Landroid/bluetooth/BluetoothA2dp;

    move/from16 v0, p2

    invoke-virtual {v4, v0}, Landroid/bluetooth/BluetoothA2dp;->adjustAvrcpAbsoluteVolume(I)V

    .line 1541
    :cond_13c
    monitor-exit v5
    :try_end_13d
    .catchall {:try_start_127 .. :try_end_13d} :catchall_22d

    .line 1544
    :cond_13d
    const/4 v4, 0x1

    move/from16 v0, p2

    if-ne v0, v4, :cond_230

    add-int v4, v12, v21

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-direct {v0, v1, v4, v7}, checkSafeMediaVolume(III)Z

    move-result v4

    if-nez v4, :cond_230

    .line 1546
    const-string v4, "AudioService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "adjustStreamVolume() safe volume index = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1548
    move-object/from16 v0, p0

    iget-object v4, v0, mSamsungAudioService:Landroid/media/SamsungAudioService;

    invoke-virtual {v4}, Landroid/media/SamsungAudioService;->isCoverOpen()Z

    move-result v4

    if-nez v4, :cond_177

    .line 1549
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, mIsCoverSafetyVolume:Z

    .line 1552
    :cond_177
    move-object/from16 v0, p0

    iget-object v4, v0, mVolumeController:Landroid/media/AudioService$VolumeController;

    move/from16 v0, p3

    invoke-virtual {v4, v0}, Landroid/media/AudioService$VolumeController;->postDisplaySafeVolumeWarning(I)V

    .line 1580
    :cond_180
    :goto_180
    move-object/from16 v0, p0

    iget-object v4, v0, mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    aget-object v4, v4, p1

    invoke-virtual {v4, v7}, Landroid/media/AudioService$VolumeStreamState;->getIndex(I)I

    move-result v17

    .line 1581
    .local v17, "newIndex":I
    move-object/from16 v0, p0

    iget-object v4, v0, mHdmiManager:Landroid/hardware/hdmi/HdmiControlManager;

    if-eqz v4, :cond_1fc

    .line 1582
    move-object/from16 v0, p0

    iget-object v5, v0, mHdmiManager:Landroid/hardware/hdmi/HdmiControlManager;

    monitor-enter v5

    .line 1583
    :try_start_195
    move-object/from16 v0, p0

    iget-object v4, v0, mHdmiTvClient:Landroid/hardware/hdmi/HdmiTvClient;

    if-eqz v4, :cond_1cd

    const/4 v4, 0x3

    move/from16 v0, v22

    if-ne v0, v4, :cond_1cd

    move/from16 v0, p3

    and-int/lit16 v4, v0, 0x100

    if-nez v4, :cond_1cd

    move/from16 v0, v18

    move/from16 v1, v17

    if-eq v0, v1, :cond_1cd

    .line 1587
    invoke-virtual/range {p0 .. p1}, getStreamMaxVolume(I)I

    move-result v16

    .line 1588
    .local v16, "maxIndex":I
    move-object/from16 v0, p0

    iget-object v6, v0, mHdmiTvClient:Landroid/hardware/hdmi/HdmiTvClient;

    monitor-enter v6
    :try_end_1b5
    .catchall {:try_start_195 .. :try_end_1b5} :catchall_28c

    .line 1589
    :try_start_1b5
    move-object/from16 v0, p0

    iget-boolean v4, v0, mHdmiSystemAudioSupported:Z

    if-eqz v4, :cond_1cc

    .line 1590
    move-object/from16 v0, p0

    iget-object v4, v0, mHdmiTvClient:Landroid/hardware/hdmi/HdmiTvClient;

    add-int/lit8 v8, v18, 0x5

    div-int/lit8 v8, v8, 0xa

    add-int/lit8 v10, v17, 0x5

    div-int/lit8 v10, v10, 0xa

    move/from16 v0, v16

    invoke-virtual {v4, v8, v10, v0}, Landroid/hardware/hdmi/HdmiTvClient;->setSystemAudioVolume(III)V

    .line 1593
    :cond_1cc
    monitor-exit v6
    :try_end_1cd
    .catchall {:try_start_1b5 .. :try_end_1cd} :catchall_289

    .line 1596
    .end local v16    # "maxIndex":I
    :cond_1cd
    :try_start_1cd
    move-object/from16 v0, p0

    iget-boolean v4, v0, mHdmiCecSink:Z

    if-eqz v4, :cond_1fb

    const/4 v4, 0x3

    move/from16 v0, v22

    if-ne v0, v4, :cond_1fb

    move/from16 v0, v18

    move/from16 v1, v17

    if-eq v0, v1, :cond_1fb

    .line 1599
    move-object/from16 v0, p0

    iget-object v6, v0, mHdmiPlaybackClient:Landroid/hardware/hdmi/HdmiPlaybackClient;

    monitor-enter v6
    :try_end_1e3
    .catchall {:try_start_1cd .. :try_end_1e3} :catchall_28c

    .line 1600
    const/4 v4, -0x1

    move/from16 v0, p2

    if-ne v0, v4, :cond_28f

    const/16 v15, 0x19

    .line 1602
    .local v15, "keyCode":I
    :goto_1ea
    :try_start_1ea
    move-object/from16 v0, p0

    iget-object v4, v0, mHdmiPlaybackClient:Landroid/hardware/hdmi/HdmiPlaybackClient;

    const/4 v8, 0x1

    invoke-virtual {v4, v15, v8}, Landroid/hardware/hdmi/HdmiPlaybackClient;->sendKeyEvent(IZ)V

    .line 1603
    move-object/from16 v0, p0

    iget-object v4, v0, mHdmiPlaybackClient:Landroid/hardware/hdmi/HdmiPlaybackClient;

    const/4 v8, 0x0

    invoke-virtual {v4, v15, v8}, Landroid/hardware/hdmi/HdmiPlaybackClient;->sendKeyEvent(IZ)V

    .line 1604
    monitor-exit v6
    :try_end_1fb
    .catchall {:try_start_1ea .. :try_end_1fb} :catchall_293

    .line 1606
    .end local v15    # "keyCode":I
    :cond_1fb
    :try_start_1fb
    monitor-exit v5
    :try_end_1fc
    .catchall {:try_start_1fb .. :try_end_1fc} :catchall_28c

    .line 1609
    .end local v17    # "newIndex":I
    :cond_1fc
    move-object/from16 v0, p0

    iget-object v4, v0, mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    aget-object v4, v4, p1

    invoke-virtual {v4, v7}, Landroid/media/AudioService$VolumeStreamState;->getIndex(I)I

    move-result v13

    .line 1610
    .local v13, "index":I
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, v18

    move/from16 v3, p3

    invoke-direct {v0, v1, v2, v13, v3}, sendVolumeUpdate(IIII)V

    goto/16 :goto_6

    .line 1486
    .end local v13    # "index":I
    .end local v18    # "oldIndex":I
    .end local v21    # "step":I
    :catchall_213
    move-exception v4

    :try_start_214
    monitor-exit v5
    :try_end_215
    .catchall {:try_start_214 .. :try_end_215} :catchall_213

    throw v4

    .line 1500
    :cond_216
    invoke-virtual {v9}, Landroid/media/AudioService$VolumeStreamState;->getMaxIndex()I

    move-result v21

    .restart local v21    # "step":I
    goto/16 :goto_d1

    .line 1507
    .end local v21    # "step":I
    :cond_21c
    const/16 v4, 0xa

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, v22

    invoke-direct {v0, v4, v1, v2}, rescaleIndex(III)I

    move-result v21

    .restart local v21    # "step":I
    goto/16 :goto_d5

    .line 1522
    .restart local v19    # "result":I
    .restart local v20    # "ringerMode":I
    :cond_22a
    const/4 v11, 0x0

    goto/16 :goto_fb

    .line 1541
    .end local v19    # "result":I
    .end local v20    # "ringerMode":I
    .restart local v18    # "oldIndex":I
    :catchall_22d
    move-exception v4

    :try_start_22e
    monitor-exit v5
    :try_end_22f
    .catchall {:try_start_22e .. :try_end_22f} :catchall_22d

    throw v4

    .line 1554
    :cond_230
    const/4 v4, -0x1

    move/from16 v0, p2

    if-ne v0, v4, :cond_24c

    move-object/from16 v0, p0

    iget-object v4, v0, mVolumeController:Landroid/media/AudioService$VolumeController;

    invoke-virtual {v4}, Landroid/media/AudioService$VolumeController;->isSafeVolumeDialogShowing()Z

    move-result v4

    if-eqz v4, :cond_24c

    .line 1555
    move-object/from16 v0, p0

    iget-object v4, v0, mVolumeController:Landroid/media/AudioService$VolumeController;

    const/high16 v5, 0x20000

    invoke-virtual {v4, v5}, Landroid/media/AudioService$VolumeController;->postDisplaySafeVolumeWarning(I)V

    .line 1556
    and-int/lit8 p3, p3, -0x2

    goto/16 :goto_180

    .line 1558
    :cond_24c
    mul-int v4, p2, v21

    invoke-virtual {v9, v4, v7}, Landroid/media/AudioService$VolumeStreamState;->adjustIndex(II)Z

    move-result v4

    if-eqz v4, :cond_180

    .line 1562
    move-object/from16 v0, p0

    iget-boolean v4, v0, mIsCoverSafetyVolume:Z

    if-eqz v4, :cond_27c

    const/4 v4, -0x1

    move/from16 v0, p2

    if-ne v0, v4, :cond_27c

    .line 1563
    move-object/from16 v0, p0

    iget v4, v0, mSafeMediaVolumeIndex:I

    move/from16 v0, v18

    if-ne v0, v4, :cond_27c

    .line 1564
    const-string v4, "AudioService"

    const-string v5, "adjustStreamVolume() Remove the safeVolumeWarning pop-up on S cover."

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1565
    move-object/from16 v0, p0

    iget-object v4, v0, mVolumeController:Landroid/media/AudioService$VolumeController;

    const/high16 v5, 0x20000

    invoke-virtual {v4, v5}, Landroid/media/AudioService$VolumeController;->postDisplaySafeVolumeWarning(I)V

    .line 1566
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, mIsCoverSafetyVolume:Z

    .line 1570
    :cond_27c
    move-object/from16 v0, p0

    iget-object v4, v0, mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/4 v5, 0x0

    const/4 v6, 0x2

    const/4 v8, 0x0

    const/4 v10, 0x0

    invoke-static/range {v4 .. v10}, sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    goto/16 :goto_180

    .line 1593
    .restart local v16    # "maxIndex":I
    .restart local v17    # "newIndex":I
    :catchall_289
    move-exception v4

    :try_start_28a
    monitor-exit v6
    :try_end_28b
    .catchall {:try_start_28a .. :try_end_28b} :catchall_289

    :try_start_28b
    throw v4

    .line 1606
    .end local v16    # "maxIndex":I
    :catchall_28c
    move-exception v4

    monitor-exit v5
    :try_end_28e
    .catchall {:try_start_28b .. :try_end_28e} :catchall_28c

    throw v4

    .line 1600
    :cond_28f
    const/16 v15, 0x18

    goto/16 :goto_1ea

    .line 1604
    .restart local v15    # "keyCode":I
    :catchall_293
    move-exception v4

    :try_start_294
    monitor-exit v6
    :try_end_295
    .catchall {:try_start_294 .. :try_end_295} :catchall_293

    :try_start_295
    throw v4
    :try_end_296
    .catchall {:try_start_295 .. :try_end_296} :catchall_28c
.end method

.method private adjustSuggestedStreamVolume(IIILjava/lang/String;I)V
    .registers 14
    .param p1, "direction"    # I
    .param p2, "suggestedStreamType"    # I
    .param p3, "flags"    # I
    .param p4, "callingPackage"    # Ljava/lang/String;
    .param p5, "uid"    # I

    .prologue
    const/4 v4, 0x2

    .line 1350
    sget-boolean v0, DEBUG_VOL:Z

    if-eqz v0, :cond_27

    const-string v0, "AudioService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "adjustSuggestedStreamVolume() stream="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", flags="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1353
    :cond_27
    iget v0, p0, mVolumeControlStream:I

    const/4 v2, -0x1

    if-eq v0, v2, :cond_9c

    .line 1354
    iget v1, p0, mVolumeControlStream:I

    .line 1358
    .local v1, "streamType":I
    :goto_2e
    iget-object v0, p0, mStreamVolumeAlias:[I

    aget v7, v0, v1

    .line 1361
    .local v7, "resolvedStream":I
    and-int/lit8 v0, p3, 0x4

    if-eqz v0, :cond_3a

    if-eq v7, v4, :cond_3a

    .line 1363
    and-int/lit8 p3, p3, -0x5

    .line 1382
    :cond_3a
    and-int/lit8 v0, p3, 0x4

    if-eqz v0, :cond_52

    iget-object v0, p0, mStreamVolumeAlias:[I

    aget v0, v0, v1

    if-ne v0, v4, :cond_50

    iget-object v0, p0, mKeyguardManager:Landroid/app/KeyguardManager;

    if-eqz v0, :cond_52

    iget-object v0, p0, mKeyguardManager:Landroid/app/KeyguardManager;

    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v0

    if-eqz v0, :cond_52

    .line 1385
    :cond_50
    and-int/lit8 p3, p3, -0x5

    .line 1388
    :cond_52
    and-int/lit8 v0, p3, 0x4

    if-eqz v0, :cond_65

    iget-object v0, p0, mStreamVolumeAlias:[I

    aget v0, v0, v1

    if-ne v0, v4, :cond_65

    invoke-virtual {p0}, getMode()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_65

    .line 1391
    and-int/lit8 p3, p3, -0x5

    .line 1393
    :cond_65
    const-string/jumbo v0, "isRecordActive"

    invoke-static {v0}, Landroid/media/AudioSystem;->getParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1395
    .local v6, "isRecordActive":Ljava/lang/String;
    and-int/lit8 v0, p3, 0x4

    if-eqz v0, :cond_80

    iget-object v0, p0, mStreamVolumeAlias:[I

    aget v0, v0, v1

    if-ne v0, v4, :cond_80

    const-string v0, "TRUE"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_80

    .line 1398
    and-int/lit8 p3, p3, -0x5

    .line 1402
    :cond_80
    iget-object v0, p0, mSamsungAudioService:Landroid/media/SamsungAudioService;

    invoke-virtual {v0}, Landroid/media/SamsungAudioService;->isCoverOpen()Z

    move-result v0

    if-nez v0, :cond_a1

    iget-object v0, p0, mStreamVolumeAlias:[I

    aget v0, v0, v1

    if-ne v0, v4, :cond_a1

    .line 1403
    invoke-virtual {p0}, isInCommunication()Z

    move-result v0

    if-nez v0, :cond_a1

    .line 1404
    const-string v0, "AudioService"

    const-string v2, "Volume change disabled : cover closed."

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1412
    :goto_9b
    return-void

    .line 1356
    .end local v1    # "streamType":I
    .end local v6    # "isRecordActive":Ljava/lang/String;
    .end local v7    # "resolvedStream":I
    :cond_9c
    invoke-virtual {p0, p2}, getActiveStreamType(I)I

    move-result v1

    .restart local v1    # "streamType":I
    goto :goto_2e

    .restart local v6    # "isRecordActive":Ljava/lang/String;
    .restart local v7    # "resolvedStream":I
    :cond_a1
    move-object v0, p0

    move v2, p1

    move v3, p3

    move-object v4, p4

    move v5, p5

    .line 1411
    invoke-direct/range {v0 .. v5}, adjustStreamVolume(IIILjava/lang/String;I)V

    goto :goto_9b
.end method

.method private broadcastMasterMuteStatus(Z)V
    .registers 4
    .param p1, "muted"    # Z

    .prologue
    .line 1990
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.media.MASTER_MUTE_CHANGED_ACTION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1991
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "android.media.EXTRA_MASTER_VOLUME_MUTED"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1992
    const/high16 v1, 0x24000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1994
    invoke-direct {p0, v0}, sendStickyBroadcastToAll(Landroid/content/Intent;)V

    .line 1995
    return-void
.end method

.method private broadcastRingerMode(I)V
    .registers 4
    .param p1, "ringerMode"    # I

    .prologue
    .line 4065
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.media.RINGER_MODE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4066
    .local v0, "broadcast":Landroid/content/Intent;
    const-string v1, "android.media.EXTRA_RINGER_MODE"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 4067
    const/high16 v1, 0x24000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 4069
    invoke-direct {p0, v0}, sendStickyBroadcastToAll(Landroid/content/Intent;)V

    .line 4070
    return-void
.end method

.method private broadcastScoConnectionState(I)V
    .registers 9
    .param p1, "state"    # I

    .prologue
    const/4 v4, 0x0

    .line 3477
    iget-object v0, p0, mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/16 v1, 0x13

    const/4 v2, 0x2

    const/4 v5, 0x0

    move v3, p1

    move v6, v4

    invoke-static/range {v0 .. v6}, sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 3479
    return-void
.end method

.method private broadcastVibrateSetting(I)V
    .registers 5
    .param p1, "vibrateType"    # I

    .prologue
    .line 4074
    invoke-static {}, Landroid/app/ActivityManagerNative;->isSystemReady()Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 4075
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.media.VIBRATE_SETTING_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4076
    .local v0, "broadcast":Landroid/content/Intent;
    const-string v1, "android.media.EXTRA_VIBRATE_TYPE"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 4077
    const-string v1, "android.media.EXTRA_VIBRATE_SETTING"

    invoke-virtual {p0, p1}, getVibrateSetting(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 4078
    invoke-virtual {p0, v0}, sendBroadcastToAll(Landroid/content/Intent;)V

    .line 4080
    .end local v0    # "broadcast":Landroid/content/Intent;
    :cond_1e
    return-void
.end method

.method private cancelA2dpDeviceTimeout()V
    .registers 3

    .prologue
    .line 5431
    iget-object v0, p0, mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/media/AudioService$AudioHandler;->removeMessages(I)V

    .line 5432
    return-void
.end method

.method private checkAllAliasStreamVolumes()V
    .registers 6

    .prologue
    .line 1004
    invoke-static {}, Landroid/media/AudioSystem;->getNumStreamTypes()I

    move-result v0

    .line 1005
    .local v0, "numStreamTypes":I
    const/4 v1, 0x0

    .local v1, "streamType":I
    :goto_5
    if-ge v1, v0, :cond_30

    .line 1006
    iget-object v2, p0, mStreamVolumeAlias:[I

    aget v2, v2, v1

    if-eq v1, v2, :cond_1c

    .line 1007
    iget-object v2, p0, mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    aget-object v2, v2, v1

    iget-object v3, p0, mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    iget-object v4, p0, mStreamVolumeAlias:[I

    aget v4, v4, v1

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Landroid/media/AudioService$VolumeStreamState;->setAllIndexes(Landroid/media/AudioService$VolumeStreamState;)V

    .line 1011
    :cond_1c
    iget-object v2, p0, mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    aget-object v2, v2, v1

    # invokes: Landroid/media/AudioService$VolumeStreamState;->isMuted()Z
    invoke-static {v2}, Landroid/media/AudioService$VolumeStreamState;->access$300(Landroid/media/AudioService$VolumeStreamState;)Z

    move-result v2

    if-nez v2, :cond_2d

    .line 1012
    iget-object v2, p0, mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Landroid/media/AudioService$VolumeStreamState;->applyAllVolumes()V

    .line 1005
    :cond_2d
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 1015
    :cond_30
    return-void
.end method

.method private checkAllFixedVolumeDevices()V
    .registers 4

    .prologue
    .line 1019
    invoke-static {}, Landroid/media/AudioSystem;->getNumStreamTypes()I

    move-result v0

    .line 1020
    .local v0, "numStreamTypes":I
    const/4 v1, 0x0

    .local v1, "streamType":I
    :goto_5
    if-ge v1, v0, :cond_11

    .line 1021
    iget-object v2, p0, mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Landroid/media/AudioService$VolumeStreamState;->checkFixedVolumeDevices()V

    .line 1020
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 1023
    :cond_11
    return-void
.end method

.method private checkAllFixedVolumeDevices(I)V
    .registers 3
    .param p1, "streamType"    # I

    .prologue
    .line 1026
    iget-object v0, p0, mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Landroid/media/AudioService$VolumeStreamState;->checkFixedVolumeDevices()V

    .line 1027
    return-void
.end method

.method private checkForRingerModeChange(III)I
    .registers 10
    .param p1, "oldIndex"    # I
    .param p2, "direction"    # I
    .param p3, "step"    # I

    .prologue
    const/4 v5, 0x0

    const/4 v3, 0x1

    .line 3748
    const/4 v0, 0x1

    .line 3749
    .local v0, "result":I
    invoke-virtual {p0}, getRingerMode()I

    move-result v1

    .line 3751
    .local v1, "ringerMode":I
    packed-switch v1, :pswitch_data_82

    .line 3840
    const-string v2, "AudioService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checkForRingerModeChange() wrong ringer mode: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3844
    :cond_22
    :goto_22
    if-nez v1, :cond_7d

    .line 3845
    const-string v2, "AudioService"

    const-string v3, "Update Zen mode as NO INTERRUPTION forcilby"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3846
    iget-object v2, p0, mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "zen_mode"

    const/4 v4, 0x2

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 3851
    :goto_38
    iput p2, p0, mPrevVolDirection:I

    .line 3853
    return v0

    .line 3753
    :pswitch_3b
    const/4 v2, -0x1

    if-ne p2, v2, :cond_22

    .line 3754
    iget-boolean v2, p0, mHasVibrator:Z

    if-eqz v2, :cond_51

    .line 3764
    if-gt p3, p1, :cond_48

    mul-int/lit8 v2, p3, 0x2

    if-lt p1, v2, :cond_4a

    :cond_48
    if-ge p1, p3, :cond_4b

    .line 3766
    :cond_4a
    const/4 v1, 0x1

    .line 3781
    :cond_4b
    :goto_4b
    iget-object v2, p0, mSamsungAudioService:Landroid/media/SamsungAudioService;

    invoke-virtual {v2, v5}, Landroid/media/SamsungAudioService;->setSilentModeOff(Z)V

    goto :goto_22

    .line 3776
    :cond_51
    if-ne p1, p3, :cond_4b

    .line 3778
    const/4 v1, 0x0

    goto :goto_4b

    .line 3785
    :pswitch_55
    iget-boolean v2, p0, mHasVibrator:Z

    if-nez v2, :cond_61

    .line 3786
    const-string v2, "AudioService"

    const-string v3, "checkForRingerModeChange() current ringer mode is vibratebut no vibrator is present"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_22

    .line 3814
    :cond_61
    if-ne p2, v3, :cond_69

    .line 3815
    const/4 v1, 0x2

    .line 3816
    iget-object v2, p0, mSamsungAudioService:Landroid/media/SamsungAudioService;

    invoke-virtual {v2, v3}, Landroid/media/SamsungAudioService;->setSilentModeOff(Z)V

    .line 3820
    :cond_69
    and-int/lit8 v0, v0, -0x2

    .line 3821
    goto :goto_22

    .line 3823
    :pswitch_6c
    if-ne p2, v3, :cond_73

    .line 3827
    iget-boolean v2, p0, mHasVibrator:Z

    if-eqz v2, :cond_76

    .line 3828
    const/4 v1, 0x1

    .line 3837
    :cond_73
    :goto_73
    and-int/lit8 v0, v0, -0x2

    .line 3838
    goto :goto_22

    .line 3830
    :cond_76
    const/4 v1, 0x2

    .line 3832
    iget-object v2, p0, mSamsungAudioService:Landroid/media/SamsungAudioService;

    invoke-virtual {v2, v3}, Landroid/media/SamsungAudioService;->setSilentModeOff(Z)V

    goto :goto_73

    .line 3849
    :cond_7d
    invoke-virtual {p0, v1, v5}, setRingerMode(IZ)V

    goto :goto_38

    .line 3751
    nop

    :pswitch_data_82
    .packed-switch 0x0
        :pswitch_6c
        :pswitch_55
        :pswitch_3b
    .end packed-switch
.end method

.method private checkSafeMediaVolume(III)Z
    .registers 10
    .param p1, "streamType"    # I
    .param p2, "index"    # I
    .param p3, "device"    # I

    .prologue
    const/4 v5, 0x3

    const/4 v2, 0x1

    .line 6544
    iget-object v3, p0, mSafeMediaVolumeState:Ljava/lang/Integer;

    monitor-enter v3

    .line 6546
    :try_start_5
    iget-object v4, p0, mSamsungAudioService:Landroid/media/SamsungAudioService;

    invoke-static {}, Landroid/media/SamsungAudioService;->getFactoryMode()Z

    move-result v4

    if-nez v4, :cond_15

    iget-object v4, p0, mSamsungAudioService:Landroid/media/SamsungAudioService;

    invoke-virtual {v4}, Landroid/media/SamsungAudioService;->isFactorySim()Z

    move-result v4

    if-eqz v4, :cond_17

    .line 6547
    :cond_15
    monitor-exit v3

    .line 6569
    :goto_16
    return v2

    .line 6549
    :cond_17
    iget-object v4, p0, mSafeMediaVolumeState:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne v4, v5, :cond_5d

    iget-object v4, p0, mStreamVolumeAlias:[I

    aget v4, v4, p1

    if-ne v4, v5, :cond_5d

    and-int/lit8 v4, p3, 0xc

    if-eqz v4, :cond_5d

    iget v4, p0, mSafeMediaVolumeIndex:I

    if-le p2, v4, :cond_5d

    .line 6554
    iget-object v2, p0, mContext:Landroid/content/Context;

    const-string/jumbo v4, "power"

    invoke-virtual {v2, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 6555
    .local v0, "pm":Landroid/os/PowerManager;
    invoke-virtual {v0}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v2

    if-nez v2, :cond_57

    .line 6557
    const v2, 0x3000000a

    const-string v4, "AudioService"

    invoke-virtual {v0, v2, v4}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    .line 6560
    .local v1, "wl":Landroid/os/PowerManager$WakeLock;
    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v2

    if-nez v2, :cond_52

    .line 6561
    const-wide/16 v4, 0x1388

    invoke-virtual {v1, v4, v5}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 6564
    :cond_52
    iget-object v2, p0, mSamsungAudioService:Landroid/media/SamsungAudioService;

    invoke-virtual {v2}, Landroid/media/SamsungAudioService;->vibrateCall()V

    .line 6567
    .end local v1    # "wl":Landroid/os/PowerManager$WakeLock;
    :cond_57
    const/4 v2, 0x0

    monitor-exit v3

    goto :goto_16

    .line 6570
    .end local v0    # "pm":Landroid/os/PowerManager;
    :catchall_5a
    move-exception v2

    monitor-exit v3
    :try_end_5c
    .catchall {:try_start_5 .. :try_end_5c} :catchall_5a

    throw v2

    .line 6569
    :cond_5d
    :try_start_5d
    monitor-exit v3
    :try_end_5e
    .catchall {:try_start_5d .. :try_end_5e} :catchall_5a

    goto :goto_16
.end method

.method private checkScoAudioState()V
    .registers 3

    .prologue
    .line 3385
    iget-object v0, p0, mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    if-eqz v0, :cond_1b

    iget-object v0, p0, mBluetoothHeadsetDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz v0, :cond_1b

    iget v0, p0, mScoAudioState:I

    if-nez v0, :cond_1b

    iget-object v0, p0, mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    iget-object v1, p0, mBluetoothHeadsetDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothHeadset;->getAudioState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    const/16 v1, 0xa

    if-eq v0, v1, :cond_1b

    .line 3389
    const/4 v0, 0x2

    iput v0, p0, mScoAudioState:I

    .line 3391
    :cond_1b
    return-void
.end method

.method private checkZen(I)V
    .registers 8
    .param p1, "ringerMode"    # I

    .prologue
    const/4 v5, 0x0

    .line 2362
    iget-object v3, p0, mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v4, "zen_mode"

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 2363
    .local v2, "zen":I
    if-eqz p1, :cond_1e

    if-eqz v2, :cond_1e

    .line 2364
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2366
    .local v0, "ident":J
    :try_start_12
    iget-object v3, p0, mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v4, "zen_mode"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_1b
    .catchall {:try_start_12 .. :try_end_1b} :catchall_1f

    .line 2368
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2371
    .end local v0    # "ident":J
    :cond_1e
    return-void

    .line 2368
    .restart local v0    # "ident":J
    :catchall_1f
    move-exception v3

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method private configureHdmiPlugIntent(Landroid/content/Intent;I)V
    .registers 25
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "state"    # I

    .prologue
    .line 5900
    const-string v20, "android.media.action.HDMI_AUDIO_PLUG"

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 5901
    const-string v20, "android.media.extra.AUDIO_PLUG_STATE"

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    move/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 5902
    const/16 v20, 0x1

    move/from16 v0, p2

    move/from16 v1, v20

    if-ne v0, v1, :cond_ca

    .line 5903
    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    .line 5904
    .local v18, "ports":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/media/AudioPort;>;"
    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [I

    move-object/from16 v17, v0

    .line 5905
    .local v17, "portGeneration":[I
    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Landroid/media/AudioSystem;->listAudioPorts(Ljava/util/ArrayList;[I)I

    move-result v19

    .line 5906
    .local v19, "status":I
    if-nez v19, :cond_ca

    .line 5907
    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_37
    :goto_37
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_ca

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/media/AudioPort;

    .line 5908
    .local v16, "port":Landroid/media/AudioPort;
    move-object/from16 v0, v16

    instance-of v0, v0, Landroid/media/AudioDevicePort;

    move/from16 v20, v0

    if-eqz v20, :cond_37

    move-object/from16 v5, v16

    .line 5909
    check-cast v5, Landroid/media/AudioDevicePort;

    .line 5910
    .local v5, "devicePort":Landroid/media/AudioDevicePort;
    invoke-virtual {v5}, Landroid/media/AudioDevicePort;->type()I

    move-result v20

    const/16 v21, 0x400

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_37

    .line 5912
    invoke-virtual {v5}, Landroid/media/AudioDevicePort;->formats()[I

    move-result-object v9

    .line 5913
    .local v9, "formats":[I
    array-length v0, v9

    move/from16 v20, v0

    if-lez v20, :cond_aa

    .line 5914
    new-instance v7, Ljava/util/ArrayList;

    const/16 v20, 0x1

    move/from16 v0, v20

    invoke-direct {v7, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 5915
    .local v7, "encodingList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    move-object v3, v9

    .local v3, "arr$":[I
    array-length v13, v3

    .local v13, "len$":I
    const/4 v12, 0x0

    .local v12, "i$":I
    :goto_70
    if-ge v12, v13, :cond_82

    aget v8, v3, v12

    .line 5917
    .local v8, "format":I
    if-eqz v8, :cond_7f

    .line 5918
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5915
    :cond_7f
    add-int/lit8 v12, v12, 0x1

    goto :goto_70

    .line 5921
    .end local v8    # "format":I
    :cond_82
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v20

    move/from16 v0, v20

    new-array v6, v0, [I

    .line 5922
    .local v6, "encodingArray":[I
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_8b
    array-length v0, v6

    move/from16 v20, v0

    move/from16 v0, v20

    if-ge v10, v0, :cond_a1

    .line 5923
    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/Integer;

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Integer;->intValue()I

    move-result v20

    aput v20, v6, v10

    .line 5922
    add-int/lit8 v10, v10, 0x1

    goto :goto_8b

    .line 5925
    :cond_a1
    const-string v20, "android.media.extra.ENCODINGS"

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v1, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    .line 5928
    .end local v3    # "arr$":[I
    .end local v6    # "encodingArray":[I
    .end local v7    # "encodingList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v10    # "i":I
    .end local v12    # "i$":I
    .end local v13    # "len$":I
    :cond_aa
    const/4 v15, 0x0

    .line 5929
    .local v15, "maxChannels":I
    invoke-virtual {v5}, Landroid/media/AudioDevicePort;->channelMasks()[I

    move-result-object v3

    .restart local v3    # "arr$":[I
    array-length v13, v3

    .restart local v13    # "len$":I
    const/4 v12, 0x0

    .restart local v12    # "i$":I
    :goto_b1
    if-ge v12, v13, :cond_bf

    aget v14, v3, v12

    .line 5930
    .local v14, "mask":I
    invoke-static {v14}, Landroid/media/AudioFormat;->channelCountFromOutChannelMask(I)I

    move-result v4

    .line 5931
    .local v4, "channelCount":I
    if-le v4, v15, :cond_bc

    .line 5932
    move v15, v4

    .line 5929
    :cond_bc
    add-int/lit8 v12, v12, 0x1

    goto :goto_b1

    .line 5935
    .end local v4    # "channelCount":I
    .end local v14    # "mask":I
    :cond_bf
    const-string v20, "android.media.extra.MAX_CHANNEL_COUNT"

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v1, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto/16 :goto_37

    .line 5941
    .end local v3    # "arr$":[I
    .end local v5    # "devicePort":Landroid/media/AudioDevicePort;
    .end local v9    # "formats":[I
    .end local v12    # "i$":I
    .end local v13    # "len$":I
    .end local v15    # "maxChannels":I
    .end local v16    # "port":Landroid/media/AudioPort;
    .end local v17    # "portGeneration":[I
    .end local v18    # "ports":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/media/AudioPort;>;"
    .end local v19    # "status":I
    :cond_ca
    return-void
.end method

.method private createAudioSystemThread()V
    .registers 2

    .prologue
    .line 926
    new-instance v0, Landroid/media/AudioService$AudioSystemThread;

    invoke-direct {v0, p0}, Landroid/media/AudioService$AudioSystemThread;-><init>(Landroid/media/AudioService;)V

    iput-object v0, p0, mAudioSystemThread:Landroid/media/AudioService$AudioSystemThread;

    .line 927
    iget-object v0, p0, mAudioSystemThread:Landroid/media/AudioService$AudioSystemThread;

    invoke-virtual {v0}, Landroid/media/AudioService$AudioSystemThread;->start()V

    .line 928
    invoke-direct {p0}, waitForAudioHandlerCreation()V

    .line 929
    return-void
.end method

.method private createStreamStates()V
    .registers 7

    .prologue
    .line 1030
    invoke-static {}, Landroid/media/AudioSystem;->getNumStreamTypes()I

    move-result v1

    .line 1031
    .local v1, "numStreamTypes":I
    new-array v2, v1, [Landroid/media/AudioService$VolumeStreamState;

    iput-object v2, p0, mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    .line 1033
    .local v2, "streams":[Landroid/media/AudioService$VolumeStreamState;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_9
    if-ge v0, v1, :cond_1e

    .line 1034
    new-instance v3, Landroid/media/AudioService$VolumeStreamState;

    sget-object v4, Landroid/provider/Settings$System;->VOLUME_SETTINGS:[Ljava/lang/String;

    iget-object v5, p0, mStreamVolumeAlias:[I

    aget v5, v5, v0

    aget-object v4, v4, v5

    const/4 v5, 0x0

    invoke-direct {v3, p0, v4, v0, v5}, Landroid/media/AudioService$VolumeStreamState;-><init>(Landroid/media/AudioService;Ljava/lang/String;ILandroid/media/AudioService$1;)V

    aput-object v3, v2, v0

    .line 1033
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 1037
    :cond_1e
    invoke-direct {p0}, checkAllFixedVolumeDevices()V

    .line 1038
    invoke-direct {p0}, checkAllAliasStreamVolumes()V

    .line 1039
    return-void
.end method

.method private discardRmtSbmxFullVolDeathHandlerFor(Landroid/os/IBinder;)Z
    .registers 5
    .param p1, "cb"    # Landroid/os/IBinder;

    .prologue
    .line 2103
    iget-object v2, p0, mRmtSbmxFullVolDeathHandlers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 2104
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/media/AudioService$RmtSbmxFullVolDeathHandler;>;"
    :cond_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_22

    .line 2105
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioService$RmtSbmxFullVolDeathHandler;

    .line 2106
    .local v0, "handler":Landroid/media/AudioService$RmtSbmxFullVolDeathHandler;
    invoke-virtual {v0, p1}, Landroid/media/AudioService$RmtSbmxFullVolDeathHandler;->isHandlerFor(Landroid/os/IBinder;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 2107
    invoke-virtual {v0}, Landroid/media/AudioService$RmtSbmxFullVolDeathHandler;->forget()V

    .line 2108
    iget-object v2, p0, mRmtSbmxFullVolDeathHandlers:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2109
    const/4 v2, 0x1

    .line 2112
    .end local v0    # "handler":Landroid/media/AudioService$RmtSbmxFullVolDeathHandler;
    :goto_21
    return v2

    :cond_22
    const/4 v2, 0x0

    goto :goto_21
.end method

.method private disconnectBluetoothSco(I)V
    .registers 10
    .param p1, "exceptPid"    # I

    .prologue
    const/4 v2, 0x4

    const/4 v1, 0x2

    .line 3446
    iget-object v7, p0, mScoClients:Ljava/util/ArrayList;

    monitor-enter v7

    .line 3447
    :try_start_5
    invoke-direct {p0}, checkScoAudioState()V

    .line 3448
    iget v0, p0, mScoAudioState:I

    if-eq v0, v1, :cond_10

    iget v0, p0, mScoAudioState:I

    if-ne v0, v2, :cond_41

    .line 3450
    :cond_10
    iget-object v0, p0, mBluetoothHeadsetDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz v0, :cond_2e

    .line 3451
    iget-object v0, p0, mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    if-eqz v0, :cond_30

    .line 3452
    iget-object v0, p0, mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    iget-object v1, p0, mBluetoothHeadsetDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothHeadset;->stopVoiceRecognition(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0

    if-nez v0, :cond_2e

    .line 3454
    iget-object v0, p0, mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/16 v1, 0x9

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 3465
    :cond_2e
    :goto_2e
    monitor-exit v7

    .line 3466
    return-void

    .line 3457
    :cond_30
    iget v0, p0, mScoAudioState:I

    if-ne v0, v1, :cond_2e

    invoke-direct {p0}, getBluetoothHeadset()Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 3459
    const/4 v0, 0x4

    iput v0, p0, mScoAudioState:I

    goto :goto_2e

    .line 3465
    :catchall_3e
    move-exception v0

    monitor-exit v7
    :try_end_40
    .catchall {:try_start_5 .. :try_end_40} :catchall_3e

    throw v0

    .line 3463
    :cond_41
    const/4 v0, 0x1

    :try_start_42
    invoke-virtual {p0, p1, v0}, clearAllScoClients(IZ)V
    :try_end_45
    .catchall {:try_start_42 .. :try_end_45} :catchall_3e

    goto :goto_2e
.end method

.method private doSetMasterVolume(FI)V
    .registers 12
    .param p1, "volume"    # F
    .param p2, "flags"    # I

    .prologue
    const/4 v2, 0x0

    .line 2244
    invoke-static {}, Landroid/media/AudioSystem;->getMasterMute()Z

    move-result v0

    if-nez v0, :cond_28

    .line 2245
    invoke-virtual {p0}, getMasterVolume()I

    move-result v8

    .line 2246
    .local v8, "oldVolume":I
    invoke-static {p1}, Landroid/media/AudioSystem;->setMasterVolume(F)I

    .line 2248
    invoke-virtual {p0}, getMasterVolume()I

    move-result v7

    .line 2249
    .local v7, "newVolume":I
    if-eq v7, v8, :cond_25

    .line 2251
    iget-object v0, p0, mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/4 v1, 0x2

    const/high16 v3, 0x447a0000    # 1000.0f

    mul-float/2addr v3, p1

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    const/4 v5, 0x0

    const/16 v6, 0x1f4

    move v4, v2

    invoke-static/range {v0 .. v6}, sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 2255
    :cond_25
    invoke-direct {p0, p2, v8, v7}, sendMasterVolumeUpdate(III)V

    .line 2257
    .end local v7    # "newVolume":I
    .end local v8    # "oldVolume":I
    :cond_28
    return-void
.end method

.method private dumpRingerMode(Ljava/io/PrintWriter;)V
    .registers 5
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 6723
    const-string v0, "\nRinger mode: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6724
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "- mode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, RINGER_MODE_NAMES:[Ljava/lang/String;

    iget v2, p0, mRingerMode:I

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6725
    const-string v0, "- ringer mode affected streams = 0x"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6726
    iget v0, p0, mRingerModeAffectedStreams:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6727
    const-string v0, "- ringer mode muted streams = 0x"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6728
    iget v0, p0, mRingerModeMutedStreams:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6729
    return-void
.end method

.method private dumpScoClients(Ljava/io/PrintWriter;)V
    .registers 8
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 6733
    const-string v3, "\nSco Client list entries: "

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6734
    iget-object v4, p0, mScoClients:Ljava/util/ArrayList;

    monitor-enter v4

    .line 6735
    :try_start_8
    iget-object v3, p0, mScoClients:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 6736
    .local v2, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_f
    if-ge v1, v2, :cond_36

    .line 6737
    iget-object v3, p0, mScoClients:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioService$ScoClient;

    .line 6738
    .local v0, "cl":Landroid/media/AudioService$ScoClient;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\n  pid: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/media/AudioService$ScoClient;->getPid()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6736
    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    .line 6740
    .end local v0    # "cl":Landroid/media/AudioService$ScoClient;
    :cond_36
    monitor-exit v4

    .line 6741
    return-void

    .line 6740
    .end local v1    # "i":I
    .end local v2    # "size":I
    :catchall_38
    move-exception v3

    monitor-exit v4
    :try_end_3a
    .catchall {:try_start_8 .. :try_end_3a} :catchall_38

    throw v3
.end method

.method private dumpStreamStates(Ljava/io/PrintWriter;)V
    .registers 8
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1042
    const-string v2, "\nStream volumes (device: index)"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1043
    invoke-static {}, Landroid/media/AudioSystem;->getNumStreamTypes()I

    move-result v1

    .line 1044
    .local v1, "numStreamTypes":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_c
    if-ge v0, v1, :cond_3d

    .line 1045
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "- "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, STREAM_NAMES:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1046
    iget-object v2, p0, mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    aget-object v2, v2, v0

    # invokes: Landroid/media/AudioService$VolumeStreamState;->dump(Ljava/io/PrintWriter;)V
    invoke-static {v2, p1}, Landroid/media/AudioService$VolumeStreamState;->access$500(Landroid/media/AudioService$VolumeStreamState;Ljava/io/PrintWriter;)V

    .line 1047
    const-string v2, ""

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1044
    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    .line 1049
    :cond_3d
    const-string v2, "\n- mute affected streams = 0x"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1050
    iget v2, p0, mMuteAffectedStreams:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1053
    const-string v2, "\nMute calling pid\'s"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1054
    const/4 v0, 0x0

    :goto_51
    if-ge v0, v1, :cond_7e

    .line 1055
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "- "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, STREAM_NAMES:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, mStreamMutedump:[I

    aget v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1054
    add-int/lit8 v0, v0, 0x1

    goto :goto_51

    .line 1057
    :cond_7e
    const-string v2, "\nVolume change calling pid\'s"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1058
    const/4 v0, 0x0

    :goto_84
    if-ge v0, v1, :cond_bf

    .line 1059
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "- "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, STREAM_NAMES:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " INDEX : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, pIdOfsetVolumeIndex:[I

    aget v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " by : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, pIdOfsetVolume:[I

    aget v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1058
    add-int/lit8 v0, v0, 0x1

    goto :goto_84

    .line 1061
    :cond_bf
    const-string v2, "\nBT SCO on/off calling pid\'s"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1062
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "- BT SCO on is called by PID: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, mBluetoothScoOndump:[I

    aget v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1063
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "- BT SCO off is called by PID: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, mBluetoothScoOndump:[I

    aget v3, v3, v5

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1065
    const-string v2, "\nSpeaker on/off calling pid\'s"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1066
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "- Speaker on is called by PID: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, mSpeakerOndump:[I

    aget v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1067
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "- Speaker off is called by PID: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, mSpeakerOndump:[I

    aget v3, v3, v5

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1069
    const-string v2, "\nPID which makes system volume to 0 at first boot"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1070
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "- Called by PID: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, pIdOfsetVolume:[I

    aget v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1071
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "- Volume index: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, pIdOfsetVolume:[I

    aget v3, v3, v5

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1074
    return-void
.end method

.method private enforceSafeMediaVolume()V
    .registers 12

    .prologue
    const/4 v1, 0x0

    .line 6519
    iget-object v0, p0, mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    const/4 v2, 0x3

    aget-object v5, v0, v2

    .line 6520
    .local v5, "streamState":Landroid/media/AudioService$VolumeStreamState;
    const/16 v7, 0xc

    .line 6521
    .local v7, "devices":I
    const/4 v8, 0x0

    .local v8, "i":I
    move v9, v8

    .line 6523
    .end local v8    # "i":I
    .local v9, "i":I
    :goto_a
    if-eqz v7, :cond_31

    .line 6524
    const/4 v0, 0x1

    add-int/lit8 v8, v9, 0x1

    .end local v9    # "i":I
    .restart local v8    # "i":I
    shl-int v3, v0, v9

    .line 6525
    .local v3, "device":I
    and-int v0, v3, v7

    if-nez v0, :cond_17

    move v9, v8

    .line 6526
    .end local v8    # "i":I
    .restart local v9    # "i":I
    goto :goto_a

    .line 6528
    .end local v9    # "i":I
    .restart local v8    # "i":I
    :cond_17
    invoke-virtual {v5, v3}, Landroid/media/AudioService$VolumeStreamState;->getIndex(I)I

    move-result v10

    .line 6529
    .local v10, "index":I
    iget v0, p0, mSafeMediaVolumeIndex:I

    if-le v10, v0, :cond_2c

    .line 6530
    iget v0, p0, mSafeMediaVolumeIndex:I

    invoke-virtual {v5, v0, v3}, Landroid/media/AudioService$VolumeStreamState;->setIndex(II)Z

    .line 6531
    iget-object v0, p0, mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/4 v2, 0x2

    move v4, v1

    move v6, v1

    invoke-static/range {v0 .. v6}, sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 6539
    :cond_2c
    xor-int/lit8 v0, v3, -0x1

    and-int/2addr v7, v0

    move v9, v8

    .line 6540
    .end local v8    # "i":I
    .restart local v9    # "i":I
    goto :goto_a

    .line 6541
    .end local v3    # "device":I
    .end local v10    # "index":I
    :cond_31
    return-void
.end method

.method private enforceSelfOrSystemUI(Ljava/lang/String;)V
    .registers 6
    .param p1, "action"    # Ljava/lang/String;

    .prologue
    .line 6789
    iget-object v0, p0, mContext:Landroid/content/Context;

    const-string v1, "android.permission.STATUS_BAR_SERVICE"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Only SystemUI can "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 6791
    return-void
.end method

.method private ensureValidDirection(I)V
    .registers 5
    .param p1, "direction"    # I

    .prologue
    .line 3928
    const/4 v0, -0x1

    if-lt p1, v0, :cond_6

    const/4 v0, 0x1

    if-le p1, v0, :cond_1f

    .line 3929
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad direction "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3931
    :cond_1f
    return-void
.end method

.method private ensureValidRingerMode(I)V
    .registers 5
    .param p1, "ringerMode"    # I

    .prologue
    .line 2325
    invoke-static {p1}, Landroid/media/AudioManager;->isValidRingerMode(I)Z

    move-result v0

    if-nez v0, :cond_1f

    .line 2326
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad ringer mode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2328
    :cond_1f
    return-void
.end method

.method private ensureValidSteps(I)V
    .registers 5
    .param p1, "steps"    # I

    .prologue
    .line 3934
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v0

    const/4 v1, 0x4

    if-le v0, v1, :cond_20

    .line 3935
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad volume adjust steps "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3937
    :cond_20
    return-void
.end method

.method private ensureValidStreamType(I)V
    .registers 5
    .param p1, "streamType"    # I

    .prologue
    .line 3940
    if-ltz p1, :cond_7

    iget-object v0, p0, mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    array-length v0, v0

    if-lt p1, v0, :cond_20

    .line 3941
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad stream type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3943
    :cond_20
    return-void
.end method

.method private findVolumeDelta(II)I
    .registers 9
    .param p1, "direction"    # I
    .param p2, "volume"    # I

    .prologue
    const/4 v3, 0x0

    const/4 v5, 0x1

    .line 1859
    const/4 v0, 0x0

    .line 1860
    .local v0, "delta":I
    if-ne p1, v5, :cond_26

    .line 1861
    const/16 v4, 0x64

    if-ne p2, v4, :cond_a

    .line 1890
    :cond_9
    :goto_9
    return v3

    .line 1865
    :cond_a
    iget-object v3, p0, mMasterVolumeRamp:[I

    aget v0, v3, v5

    .line 1868
    iget-object v3, p0, mMasterVolumeRamp:[I

    array-length v3, v3

    add-int/lit8 v1, v3, -0x1

    .local v1, "i":I
    :goto_13
    if-le v1, v5, :cond_21

    .line 1869
    iget-object v3, p0, mMasterVolumeRamp:[I

    add-int/lit8 v4, v1, -0x1

    aget v3, v3, v4

    if-lt p2, v3, :cond_23

    .line 1870
    iget-object v3, p0, mMasterVolumeRamp:[I

    aget v0, v3, v1

    .end local v1    # "i":I
    :cond_21
    :goto_21
    move v3, v0

    .line 1890
    goto :goto_9

    .line 1868
    .restart local v1    # "i":I
    :cond_23
    add-int/lit8 v1, v1, -0x2

    goto :goto_13

    .line 1874
    .end local v1    # "i":I
    :cond_26
    const/4 v4, -0x1

    if-ne p1, v4, :cond_21

    .line 1875
    if-eqz p2, :cond_9

    .line 1878
    iget-object v3, p0, mMasterVolumeRamp:[I

    array-length v2, v3

    .line 1880
    .local v2, "length":I
    iget-object v3, p0, mMasterVolumeRamp:[I

    add-int/lit8 v4, v2, -0x1

    aget v3, v3, v4

    neg-int v0, v3

    .line 1883
    const/4 v1, 0x2

    .restart local v1    # "i":I
    :goto_36
    if-ge v1, v2, :cond_21

    .line 1884
    iget-object v3, p0, mMasterVolumeRamp:[I

    aget v3, v3, v1

    if-gt p2, v3, :cond_46

    .line 1885
    iget-object v3, p0, mMasterVolumeRamp:[I

    add-int/lit8 v4, v1, -0x1

    aget v3, v3, v4

    neg-int v0, v3

    .line 1886
    goto :goto_21

    .line 1883
    :cond_46
    add-int/lit8 v1, v1, 0x2

    goto :goto_36
.end method

.method private getBluetoothHeadset()Z
    .registers 10

    .prologue
    const/4 v2, 0x0

    .line 3430
    const/4 v8, 0x0

    .line 3431
    .local v8, "result":Z
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v7

    .line 3432
    .local v7, "adapter":Landroid/bluetooth/BluetoothAdapter;
    if-eqz v7, :cond_11

    .line 3433
    iget-object v0, p0, mContext:Landroid/content/Context;

    iget-object v1, p0, mBluetoothProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    const/4 v3, 0x1

    invoke-virtual {v7, v0, v1, v3}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    move-result v8

    .line 3440
    :cond_11
    iget-object v0, p0, mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/16 v1, 0x9

    const/4 v5, 0x0

    if-eqz v8, :cond_20

    const/16 v6, 0xbb8

    :goto_1a
    move v3, v2

    move v4, v2

    invoke-static/range {v0 .. v6}, sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 3442
    return v8

    :cond_20
    move v6, v2

    .line 3440
    goto :goto_1a
.end method

.method private getDeviceForStream(I)I
    .registers 4
    .param p1, "stream"    # I

    .prologue
    .line 4122
    invoke-static {p1}, Landroid/media/AudioSystem;->getDevicesForStream(I)I

    move-result v0

    .line 4123
    .local v0, "device":I
    add-int/lit8 v1, v0, -0x1

    and-int/2addr v1, v0

    if-eqz v1, :cond_e

    .line 4130
    and-int/lit8 v1, v0, 0x2

    if-eqz v1, :cond_f

    .line 4131
    const/4 v0, 0x2

    .line 4142
    :cond_e
    :goto_e
    return v0

    .line 4132
    :cond_f
    const/high16 v1, 0x40000

    and-int/2addr v1, v0

    if-eqz v1, :cond_17

    .line 4133
    const/high16 v0, 0x40000

    goto :goto_e

    .line 4134
    :cond_17
    const/high16 v1, 0x80000

    and-int/2addr v1, v0

    if-eqz v1, :cond_1f

    .line 4135
    const/high16 v0, 0x80000

    goto :goto_e

    .line 4136
    :cond_1f
    const/high16 v1, 0x200000

    and-int/2addr v1, v0

    if-eqz v1, :cond_27

    .line 4137
    const/high16 v0, 0x200000

    goto :goto_e

    .line 4139
    :cond_27
    and-int/lit16 v0, v0, 0x380

    goto :goto_e
.end method

.method protected static getMaxStreamVolume(I)I
    .registers 2
    .param p0, "streamType"    # I

    .prologue
    .line 2193
    sget-object v0, MAX_STREAM_VOLUME:[I

    aget v0, v0, p0

    return v0
.end method

.method private getScoClient(Landroid/os/IBinder;Z)Landroid/media/AudioService$ScoClient;
    .registers 9
    .param p1, "cb"    # Landroid/os/IBinder;
    .param p2, "create"    # Z

    .prologue
    .line 3394
    iget-object v5, p0, mScoClients:Ljava/util/ArrayList;

    monitor-enter v5

    .line 3395
    const/4 v0, 0x0

    .line 3396
    .local v0, "client":Landroid/media/AudioService$ScoClient;
    :try_start_4
    iget-object v4, p0, mScoClients:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I
    :try_end_9
    .catchall {:try_start_4 .. :try_end_9} :catchall_32

    move-result v3

    .line 3397
    .local v3, "size":I
    const/4 v2, 0x0

    .local v2, "i":I
    move-object v1, v0

    .end local v0    # "client":Landroid/media/AudioService$ScoClient;
    .local v1, "client":Landroid/media/AudioService$ScoClient;
    :goto_c
    if-ge v2, v3, :cond_23

    .line 3398
    :try_start_e
    iget-object v4, p0, mScoClients:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioService$ScoClient;
    :try_end_16
    .catchall {:try_start_e .. :try_end_16} :catchall_35

    .line 3399
    .end local v1    # "client":Landroid/media/AudioService$ScoClient;
    .restart local v0    # "client":Landroid/media/AudioService$ScoClient;
    :try_start_16
    invoke-virtual {v0}, Landroid/media/AudioService$ScoClient;->getBinder()Landroid/os/IBinder;

    move-result-object v4

    if-ne v4, p1, :cond_1f

    .line 3400
    monitor-exit v5
    :try_end_1d
    .catchall {:try_start_16 .. :try_end_1d} :catchall_32

    move-object v1, v0

    .line 3406
    .end local v0    # "client":Landroid/media/AudioService$ScoClient;
    .restart local v1    # "client":Landroid/media/AudioService$ScoClient;
    :goto_1e
    return-object v1

    .line 3397
    .end local v1    # "client":Landroid/media/AudioService$ScoClient;
    .restart local v0    # "client":Landroid/media/AudioService$ScoClient;
    :cond_1f
    add-int/lit8 v2, v2, 0x1

    move-object v1, v0

    .end local v0    # "client":Landroid/media/AudioService$ScoClient;
    .restart local v1    # "client":Landroid/media/AudioService$ScoClient;
    goto :goto_c

    .line 3402
    :cond_23
    if-eqz p2, :cond_38

    .line 3403
    :try_start_25
    new-instance v0, Landroid/media/AudioService$ScoClient;

    invoke-direct {v0, p0, p1}, Landroid/media/AudioService$ScoClient;-><init>(Landroid/media/AudioService;Landroid/os/IBinder;)V
    :try_end_2a
    .catchall {:try_start_25 .. :try_end_2a} :catchall_35

    .line 3404
    .end local v1    # "client":Landroid/media/AudioService$ScoClient;
    .restart local v0    # "client":Landroid/media/AudioService$ScoClient;
    :try_start_2a
    iget-object v4, p0, mScoClients:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3406
    :goto_2f
    monitor-exit v5

    move-object v1, v0

    .end local v0    # "client":Landroid/media/AudioService$ScoClient;
    .restart local v1    # "client":Landroid/media/AudioService$ScoClient;
    goto :goto_1e

    .line 3407
    .end local v1    # "client":Landroid/media/AudioService$ScoClient;
    .end local v2    # "i":I
    .end local v3    # "size":I
    .restart local v0    # "client":Landroid/media/AudioService$ScoClient;
    :catchall_32
    move-exception v4

    :goto_33
    monitor-exit v5
    :try_end_34
    .catchall {:try_start_2a .. :try_end_34} :catchall_32

    throw v4

    .end local v0    # "client":Landroid/media/AudioService$ScoClient;
    .restart local v1    # "client":Landroid/media/AudioService$ScoClient;
    .restart local v2    # "i":I
    .restart local v3    # "size":I
    :catchall_35
    move-exception v4

    move-object v0, v1

    .end local v1    # "client":Landroid/media/AudioService$ScoClient;
    .restart local v0    # "client":Landroid/media/AudioService$ScoClient;
    goto :goto_33

    .end local v0    # "client":Landroid/media/AudioService$ScoClient;
    .restart local v1    # "client":Landroid/media/AudioService$ScoClient;
    :cond_38
    move-object v0, v1

    .end local v1    # "client":Landroid/media/AudioService$ScoClient;
    .restart local v0    # "client":Landroid/media/AudioService$ScoClient;
    goto :goto_2f
.end method

.method public static getValueForVibrateSetting(III)I
    .registers 5
    .param p0, "existingValue"    # I
    .param p1, "vibrateType"    # I
    .param p2, "vibrateSetting"    # I

    .prologue
    .line 2503
    const/4 v0, 0x3

    mul-int/lit8 v1, p1, 0x2

    shl-int/2addr v0, v1

    xor-int/lit8 v0, v0, -0x1

    and-int/2addr p0, v0

    .line 2506
    and-int/lit8 v0, p2, 0x3

    mul-int/lit8 v1, p1, 0x2

    shl-int/2addr v0, v1

    or-int/2addr p0, v0

    .line 2508
    return p0
.end method

.method private handleConfigurationChanged(Landroid/content/Context;)V
    .registers 16
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 6310
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v8

    .line 6312
    .local v8, "config":Landroid/content/res/Configuration;
    iget-boolean v0, p0, mMonitorOrientation:Z

    if-eqz v0, :cond_17

    .line 6313
    iget v10, v8, Landroid/content/res/Configuration;->orientation:I

    .line 6314
    .local v10, "newOrientation":I
    iget v0, p0, mDeviceOrientation:I

    if-eq v10, v0, :cond_17

    .line 6315
    iput v10, p0, mDeviceOrientation:I

    .line 6316
    invoke-direct {p0}, setOrientationForAudioSystem()V

    .line 6319
    .end local v10    # "newOrientation":I
    :cond_17
    iget-object v0, p0, mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/16 v1, 0x10

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 6327
    iget-object v0, p0, mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1120068

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v7

    .line 6333
    .local v7, "cameraSoundForced":Z
    const/4 v7, 0x0

    .line 6335
    const-string v0, "AudioService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cameraSoundForced : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mCameraSoundForced : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, mCameraSoundForced:Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6338
    iget-object v12, p0, mSettingsLock:Ljava/lang/Object;

    monitor-enter v12
    :try_end_58
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_58} :catch_c7

    .line 6339
    :try_start_58
    iget-object v13, p0, mCameraSoundForced:Ljava/lang/Boolean;

    monitor-enter v13
    :try_end_5b
    .catchall {:try_start_58 .. :try_end_5b} :catchall_c4

    .line 6340
    :try_start_5b
    iget-object v0, p0, mCameraSoundForced:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eq v7, v0, :cond_a6

    .line 6341
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, mCameraSoundForced:Ljava/lang/Boolean;

    .line 6343
    invoke-direct {p0}, isPlatformTelevision()Z

    move-result v0

    if-nez v0, :cond_87

    .line 6344
    iget-object v0, p0, mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    const/4 v1, 0x7

    aget-object v11, v0, v1

    .line 6345
    .local v11, "s":Landroid/media/AudioService$VolumeStreamState;
    if-eqz v7, :cond_b2

    .line 6346
    invoke-virtual {v11}, Landroid/media/AudioService$VolumeStreamState;->setAllIndexesToMax()V

    .line 6347
    iget v0, p0, mRingerModeAffectedStreams:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, mRingerModeAffectedStreams:I

    .line 6355
    :goto_7f
    invoke-virtual {p0}, getRingerMode()I

    move-result v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, setRingerModeInt(IZ)V

    .line 6358
    .end local v11    # "s":Landroid/media/AudioService$VolumeStreamState;
    :cond_87
    iget-object v0, p0, mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/16 v1, 0x8

    const/4 v2, 0x2

    const/4 v3, 0x4

    if-eqz v7, :cond_d0

    const/16 v4, 0xb

    :goto_91
    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 6367
    iget-object v0, p0, mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/16 v1, 0xa

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget-object v5, p0, mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    const/4 v6, 0x7

    aget-object v5, v5, v6

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 6374
    :cond_a6
    monitor-exit v13
    :try_end_a7
    .catchall {:try_start_5b .. :try_end_a7} :catchall_c1

    .line 6375
    :try_start_a7
    monitor-exit v12
    :try_end_a8
    .catchall {:try_start_a7 .. :try_end_a8} :catchall_c4

    .line 6376
    :try_start_a8
    iget-object v0, p0, mVolumeController:Landroid/media/AudioService$VolumeController;

    invoke-virtual {v8}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/media/AudioService$VolumeController;->setLayoutDirection(I)V
    :try_end_b1
    .catch Ljava/lang/Exception; {:try_start_a8 .. :try_end_b1} :catch_c7

    .line 6380
    .end local v7    # "cameraSoundForced":Z
    .end local v8    # "config":Landroid/content/res/Configuration;
    :goto_b1
    return-void

    .line 6350
    .restart local v7    # "cameraSoundForced":Z
    .restart local v8    # "config":Landroid/content/res/Configuration;
    .restart local v11    # "s":Landroid/media/AudioService$VolumeStreamState;
    :cond_b2
    :try_start_b2
    iget-object v0, p0, mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-virtual {v11, v0}, Landroid/media/AudioService$VolumeStreamState;->setAllIndexes(Landroid/media/AudioService$VolumeStreamState;)V

    .line 6351
    iget v0, p0, mRingerModeAffectedStreams:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, mRingerModeAffectedStreams:I

    goto :goto_7f

    .line 6374
    .end local v11    # "s":Landroid/media/AudioService$VolumeStreamState;
    :catchall_c1
    move-exception v0

    monitor-exit v13
    :try_end_c3
    .catchall {:try_start_b2 .. :try_end_c3} :catchall_c1

    :try_start_c3
    throw v0

    .line 6375
    :catchall_c4
    move-exception v0

    monitor-exit v12
    :try_end_c6
    .catchall {:try_start_c3 .. :try_end_c6} :catchall_c4

    :try_start_c6
    throw v0
    :try_end_c7
    .catch Ljava/lang/Exception; {:try_start_c6 .. :try_end_c7} :catch_c7

    .line 6377
    .end local v7    # "cameraSoundForced":Z
    .end local v8    # "config":Landroid/content/res/Configuration;
    :catch_c7
    move-exception v9

    .line 6378
    .local v9, "e":Ljava/lang/Exception;
    const-string v0, "AudioService"

    const-string v1, "Error handling configuration change: "

    invoke-static {v0, v1, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_b1

    .line 6358
    .end local v9    # "e":Ljava/lang/Exception;
    .restart local v7    # "cameraSoundForced":Z
    .restart local v8    # "config":Landroid/content/res/Configuration;
    :cond_d0
    const/4 v4, 0x0

    goto :goto_91
.end method

.method private handleDeviceConnection(ZILjava/lang/String;)Z
    .registers 14
    .param p1, "connected"    # Z
    .param p2, "device"    # I
    .param p3, "params"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 5589
    iget-object v6, p0, mConnectedDevices:Ljava/util/HashMap;

    monitor-enter v6

    .line 5595
    :try_start_5
    iget-object v3, p0, mConnectedDevices:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    .line 5596
    .local v0, "isConnected":Z
    const-string v3, "AudioService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "connected:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " device:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " isConnected:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5597
    if-nez p1, :cond_53

    iget-object v3, p0, mConnectedDevices:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_53

    .line 5598
    const-string v3, "AudioService"

    const-string v5, "handleDeviceConnection no more unavailable device, return false"

    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5599
    monitor-exit v6

    move v3, v4

    .line 5656
    :goto_52
    return v3

    .line 5601
    :cond_53
    if-eqz v0, :cond_75

    if-eqz p1, :cond_75

    const/16 v3, 0x1000

    if-ne p2, v3, :cond_75

    .line 5602
    const/4 v7, 0x0

    iget-object v3, p0, mConnectedDevices:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {p2, v7, v3}, Landroid/media/AudioSystem;->setDeviceConnectionState(IILjava/lang/String;)I

    .line 5605
    iget-object v3, p0, mConnectedDevices:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5606
    const/4 v0, 0x0

    .line 5609
    :cond_75
    if-eqz v0, :cond_85

    if-eqz p1, :cond_85

    invoke-direct {p0, p2}, isScoDevice(I)Z

    move-result v3

    if-eqz v3, :cond_85

    .line 5610
    invoke-direct {p0, p2, p3}, addScoDevice(ILjava/lang/String;)V

    .line 5611
    monitor-exit v6

    move v3, v5

    goto :goto_52

    .line 5615
    :cond_85
    if-eqz v0, :cond_ec

    if-nez p1, :cond_ec

    .line 5617
    invoke-direct {p0, p2}, isScoDevice(I)Z

    move-result v3

    if-eqz v3, :cond_cf

    .line 5618
    invoke-direct {p0, p2, p3}, removeScoDevice(ILjava/lang/String;)V

    .line 5619
    iget-object v3, p0, mConnectedDevices:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p3, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a5

    .line 5620
    monitor-exit v6

    move v3, v5

    goto :goto_52

    .line 5622
    :cond_a5
    iget-object v3, p0, mScoDevices:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_cf

    .line 5623
    iget-object v4, p0, mConnectedDevices:Ljava/util/HashMap;

    iget-object v3, p0, mScoDevices:Ljava/util/ArrayList;

    const/4 v7, 0x0

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/AudioService$ScoDevice;

    iget v3, v3, Landroid/media/AudioService$ScoDevice;->device:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    iget-object v3, p0, mScoDevices:Ljava/util/ArrayList;

    const/4 v8, 0x0

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/AudioService$ScoDevice;

    iget-object v3, v3, Landroid/media/AudioService$ScoDevice;->address:Ljava/lang/String;

    invoke-virtual {v4, v7, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5624
    monitor-exit v6

    move v3, v5

    goto :goto_52

    .line 5629
    :cond_cf
    const/4 v4, 0x0

    iget-object v3, p0, mConnectedDevices:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {p2, v4, v3}, Landroid/media/AudioSystem;->setDeviceConnectionState(IILjava/lang/String;)I

    .line 5632
    iget-object v3, p0, mConnectedDevices:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5633
    monitor-exit v6

    move v3, v5

    goto/16 :goto_52

    .line 5634
    :cond_ec
    if-nez v0, :cond_13b

    if-eqz p1, :cond_13b

    .line 5636
    const/4 v3, 0x4

    if-eq p2, v3, :cond_f7

    const/16 v3, 0x8

    if-ne p2, v3, :cond_120

    .line 5637
    :cond_f7
    const-string v3, "AudioService"

    const-string/jumbo v4, "onReceive set Screen power on for Contextual Awareness."

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5638
    iget-object v3, p0, mContext:Landroid/content/Context;

    const-string/jumbo v4, "power"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    .line 5639
    .local v1, "pm":Landroid/os/PowerManager;
    const v3, 0x1000001a

    const-string v4, "Earphone Inserted"

    invoke-virtual {v1, v3, v4}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    .line 5640
    .local v2, "wl":Landroid/os/PowerManager$WakeLock;
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    const/4 v3, 0x0

    invoke-virtual {v1, v8, v9, v3}, Landroid/os/PowerManager;->userActivity(JZ)V

    .line 5641
    const-wide/16 v8, 0x1388

    invoke-virtual {v2, v8, v9}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 5644
    .end local v1    # "pm":Landroid/os/PowerManager;
    .end local v2    # "wl":Landroid/os/PowerManager$WakeLock;
    :cond_120
    const/4 v3, 0x1

    invoke-static {p2, v3, p3}, Landroid/media/AudioSystem;->setDeviceConnectionState(IILjava/lang/String;)I

    .line 5647
    iget-object v3, p0, mConnectedDevices:Ljava/util/HashMap;

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v3, v4, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5649
    invoke-direct {p0, p2}, isScoDevice(I)Z

    move-result v3

    if-eqz v3, :cond_137

    .line 5650
    invoke-direct {p0, p2, p3}, addScoDevice(ILjava/lang/String;)V

    .line 5653
    :cond_137
    monitor-exit v6

    move v3, v5

    goto/16 :goto_52

    .line 5655
    :cond_13b
    monitor-exit v6

    move v3, v4

    .line 5656
    goto/16 :goto_52

    .line 5655
    .end local v0    # "isConnected":Z
    :catchall_13f
    move-exception v3

    monitor-exit v6
    :try_end_141
    .catchall {:try_start_5 .. :try_end_141} :catchall_13f

    throw v3
.end method

.method private hasRmtSbmxFullVolDeathHandlerFor(Landroid/os/IBinder;)Z
    .registers 4
    .param p1, "cb"    # Landroid/os/IBinder;

    .prologue
    .line 2117
    iget-object v1, p0, mRmtSbmxFullVolDeathHandlers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 2118
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/media/AudioService$RmtSbmxFullVolDeathHandler;>;"
    :cond_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 2119
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioService$RmtSbmxFullVolDeathHandler;

    invoke-virtual {v1, p1}, Landroid/media/AudioService$RmtSbmxFullVolDeathHandler;->isHandlerFor(Landroid/os/IBinder;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 2120
    const/4 v1, 0x1

    .line 2123
    :goto_19
    return v1

    :cond_1a
    const/4 v1, 0x0

    goto :goto_19
.end method

.method private hasScheduledA2dpDockTimeout()Z
    .registers 3

    .prologue
    .line 5436
    iget-object v0, p0, mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/media/AudioService$AudioHandler;->hasMessages(I)Z

    move-result v0

    return v0
.end method

.method private isAfMusicActiveRecently(I)Z
    .registers 4
    .param p1, "delay_ms"    # I

    .prologue
    const/4 v1, 0x3

    .line 3962
    invoke-static {v1, p1}, Landroid/media/AudioSystem;->isStreamActive(II)Z

    move-result v0

    if-nez v0, :cond_d

    invoke-static {v1, p1}, Landroid/media/AudioSystem;->isStreamActiveRemotely(II)Z

    move-result v0

    if-eqz v0, :cond_f

    :cond_d
    const/4 v0, 0x1

    :goto_e
    return v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method private isPlatformTelevision()Z
    .registers 3

    .prologue
    .line 209
    iget v0, p0, mPlatformType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method private isPlatformVoice()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 205
    iget v1, p0, mPlatformType:I

    if-ne v1, v0, :cond_6

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method private isScoDevice(I)Z
    .registers 3
    .param p1, "device"    # I

    .prologue
    .line 5554
    packed-switch p1, :pswitch_data_8

    .line 5558
    const/4 v0, 0x0

    :goto_4
    return v0

    .line 5556
    :pswitch_5
    const/4 v0, 0x1

    goto :goto_4

    .line 5554
    nop

    :pswitch_data_8
    .packed-switch 0x10
        :pswitch_5
    .end packed-switch
.end method

.method private isStreamMutedByRingerMode(I)Z
    .registers 5
    .param p1, "streamType"    # I

    .prologue
    const/4 v0, 0x1

    .line 3862
    iget v1, p0, mRingerModeMutedStreams:I

    shl-int v2, v0, p1

    and-int/2addr v1, v2

    if-eqz v1, :cond_9

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method private loadTouchSoundAssetDefaults()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 2766
    sget-object v1, SOUND_EFFECT_FILES:Ljava/util/List;

    const-string v2, "Effect_Tick.ogg"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2767
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_9
    const/16 v1, 0xe

    if-ge v0, v1, :cond_1e

    .line 2768
    iget-object v1, p0, SOUND_EFFECT_FILES_MAP:[[I

    aget-object v1, v1, v0

    aput v4, v1, v4

    .line 2769
    iget-object v1, p0, SOUND_EFFECT_FILES_MAP:[[I

    aget-object v1, v1, v0

    const/4 v2, 0x1

    const/4 v3, -0x1

    aput v3, v1, v2

    .line 2767
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 2771
    :cond_1e
    return-void
.end method

.method private loadTouchSoundAssets()V
    .registers 15

    .prologue
    .line 2774
    const/4 v9, 0x0

    .line 2777
    .local v9, "parser":Landroid/content/res/XmlResourceParser;
    sget-object v11, SOUND_EFFECT_FILES:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_a

    .line 2846
    :cond_9
    :goto_9
    return-void

    .line 2781
    :cond_a
    invoke-direct {p0}, loadTouchSoundAssetDefaults()V

    .line 2784
    :try_start_d
    iget-object v11, p0, mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x1110001

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v9

    .line 2786
    const-string v11, "audio_assets"

    invoke-static {v9, v11}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 2787
    const/4 v11, 0x0

    const-string/jumbo v12, "version"

    invoke-interface {v9, v11, v12}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 2788
    .local v10, "version":Ljava/lang/String;
    const/4 v7, 0x0

    .line 2790
    .local v7, "inTouchSoundsGroup":Z
    const-string v11, "1.0"

    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_44

    .line 2792
    :cond_30
    invoke-static {v9}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 2793
    invoke-interface {v9}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v1

    .line 2794
    .local v1, "element":Ljava/lang/String;
    if-nez v1, :cond_4a

    .line 2805
    :goto_39
    if-eqz v7, :cond_44

    .line 2806
    invoke-static {v9}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 2807
    invoke-interface {v9}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;
    :try_end_41
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_d .. :try_end_41} :catch_a2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_d .. :try_end_41} :catch_cc
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_41} :catch_db
    .catchall {:try_start_d .. :try_end_41} :catchall_ea

    move-result-object v1

    .line 2808
    if-nez v1, :cond_65

    .line 2842
    .end local v1    # "element":Ljava/lang/String;
    :cond_44
    if-eqz v9, :cond_9

    .line 2843
    invoke-interface {v9}, Landroid/content/res/XmlResourceParser;->close()V

    goto :goto_9

    .line 2797
    .restart local v1    # "element":Ljava/lang/String;
    :cond_4a
    :try_start_4a
    const-string v11, "group"

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_30

    .line 2798
    const/4 v11, 0x0

    const-string/jumbo v12, "name"

    invoke-interface {v9, v11, v12}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 2799
    .local v8, "name":Ljava/lang/String;
    const-string/jumbo v11, "touch_sounds"

    invoke-virtual {v11, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_30

    .line 2800
    const/4 v7, 0x1

    .line 2801
    goto :goto_39

    .line 2811
    .end local v8    # "name":Ljava/lang/String;
    :cond_65
    const-string v11, "asset"

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_44

    .line 2812
    const/4 v11, 0x0

    const-string v12, "id"

    invoke-interface {v9, v11, v12}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 2813
    .local v6, "id":Ljava/lang/String;
    const/4 v11, 0x0

    const-string v12, "file"

    invoke-interface {v9, v11, v12}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_7a
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_4a .. :try_end_7a} :catch_a2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4a .. :try_end_7a} :catch_cc
    .catch Ljava/io/IOException; {:try_start_4a .. :try_end_7a} :catch_db
    .catchall {:try_start_4a .. :try_end_7a} :catchall_ea

    move-result-object v3

    .line 2817
    .local v3, "file":Ljava/lang/String;
    :try_start_7b
    const-class v11, Landroid/media/AudioManager;

    invoke-virtual {v11, v6}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 2818
    .local v2, "field":Ljava/lang/reflect/Field;
    const/4 v11, 0x0

    invoke-virtual {v2, v11}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I
    :try_end_85
    .catch Ljava/lang/Exception; {:try_start_7b .. :try_end_85} :catch_b1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_7b .. :try_end_85} :catch_a2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_7b .. :try_end_85} :catch_cc
    .catch Ljava/io/IOException; {:try_start_7b .. :try_end_85} :catch_db
    .catchall {:try_start_7b .. :try_end_85} :catchall_ea

    move-result v4

    .line 2824
    .local v4, "fx":I
    :try_start_86
    sget-object v11, SOUND_EFFECT_FILES:Ljava/util/List;

    invoke-interface {v11, v3}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v5

    .line 2825
    .local v5, "i":I
    const/4 v11, -0x1

    if-ne v5, v11, :cond_9a

    .line 2826
    sget-object v11, SOUND_EFFECT_FILES:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v5

    .line 2827
    sget-object v11, SOUND_EFFECT_FILES:Ljava/util/List;

    invoke-interface {v11, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2829
    :cond_9a
    iget-object v11, p0, SOUND_EFFECT_FILES_MAP:[[I

    aget-object v11, v11, v4

    const/4 v12, 0x0

    aput v5, v11, v12
    :try_end_a1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_86 .. :try_end_a1} :catch_a2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_86 .. :try_end_a1} :catch_cc
    .catch Ljava/io/IOException; {:try_start_86 .. :try_end_a1} :catch_db
    .catchall {:try_start_86 .. :try_end_a1} :catchall_ea

    goto :goto_39

    .line 2835
    .end local v1    # "element":Ljava/lang/String;
    .end local v2    # "field":Ljava/lang/reflect/Field;
    .end local v3    # "file":Ljava/lang/String;
    .end local v4    # "fx":I
    .end local v5    # "i":I
    .end local v6    # "id":Ljava/lang/String;
    .end local v7    # "inTouchSoundsGroup":Z
    .end local v10    # "version":Ljava/lang/String;
    :catch_a2
    move-exception v0

    .line 2836
    .local v0, "e":Landroid/content/res/Resources$NotFoundException;
    :try_start_a3
    const-string v11, "AudioService"

    const-string v12, "audio assets file not found"

    invoke-static {v11, v12, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_aa
    .catchall {:try_start_a3 .. :try_end_aa} :catchall_ea

    .line 2842
    if-eqz v9, :cond_9

    .line 2843
    invoke-interface {v9}, Landroid/content/res/XmlResourceParser;->close()V

    goto/16 :goto_9

    .line 2819
    .end local v0    # "e":Landroid/content/res/Resources$NotFoundException;
    .restart local v1    # "element":Ljava/lang/String;
    .restart local v3    # "file":Ljava/lang/String;
    .restart local v6    # "id":Ljava/lang/String;
    .restart local v7    # "inTouchSoundsGroup":Z
    .restart local v10    # "version":Ljava/lang/String;
    :catch_b1
    move-exception v0

    .line 2820
    .local v0, "e":Ljava/lang/Exception;
    :try_start_b2
    const-string v11, "AudioService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Invalid touch sound ID: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_ca
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_b2 .. :try_end_ca} :catch_a2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_b2 .. :try_end_ca} :catch_cc
    .catch Ljava/io/IOException; {:try_start_b2 .. :try_end_ca} :catch_db
    .catchall {:try_start_b2 .. :try_end_ca} :catchall_ea

    goto/16 :goto_39

    .line 2837
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "element":Ljava/lang/String;
    .end local v3    # "file":Ljava/lang/String;
    .end local v6    # "id":Ljava/lang/String;
    .end local v7    # "inTouchSoundsGroup":Z
    .end local v10    # "version":Ljava/lang/String;
    :catch_cc
    move-exception v0

    .line 2838
    .local v0, "e":Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_cd
    const-string v11, "AudioService"

    const-string v12, "XML parser exception reading touch sound assets"

    invoke-static {v11, v12, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_d4
    .catchall {:try_start_cd .. :try_end_d4} :catchall_ea

    .line 2842
    if-eqz v9, :cond_9

    .line 2843
    invoke-interface {v9}, Landroid/content/res/XmlResourceParser;->close()V

    goto/16 :goto_9

    .line 2839
    .end local v0    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :catch_db
    move-exception v0

    .line 2840
    .local v0, "e":Ljava/io/IOException;
    :try_start_dc
    const-string v11, "AudioService"

    const-string v12, "I/O exception reading touch sound assets"

    invoke-static {v11, v12, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_e3
    .catchall {:try_start_dc .. :try_end_e3} :catchall_ea

    .line 2842
    if-eqz v9, :cond_9

    .line 2843
    invoke-interface {v9}, Landroid/content/res/XmlResourceParser;->close()V

    goto/16 :goto_9

    .line 2842
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_ea
    move-exception v11

    if-eqz v9, :cond_f0

    .line 2843
    invoke-interface {v9}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_f0
    throw v11
.end method

.method private makeA2dpDeviceAvailable(Ljava/lang/String;)V
    .registers 10
    .param p1, "address"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x1

    const/16 v3, 0x80

    const/4 v1, 0x0

    .line 5337
    iget-object v0, p0, mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    const/4 v2, 0x3

    aget-object v5, v0, v2

    .line 5338
    .local v5, "streamState":Landroid/media/AudioService$VolumeStreamState;
    iget-object v0, p0, mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/4 v2, 0x2

    move v4, v1

    move v6, v1

    invoke-static/range {v0 .. v6}, sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 5340
    invoke-virtual {p0, v7}, setBluetoothA2dpOnInt(Z)V

    .line 5341
    invoke-static {v3, v7, p1}, Landroid/media/AudioSystem;->setDeviceConnectionState(IILjava/lang/String;)I

    .line 5345
    const-string v0, "A2dpSuspended=false"

    invoke-static {v0}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    .line 5346
    iget-object v0, p0, mConnectedDevices:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5348
    return-void
.end method

.method private makeA2dpDeviceUnavailableLater(Ljava/lang/String;)V
    .registers 6
    .param p1, "address"    # Ljava/lang/String;

    .prologue
    .line 5403
    const-string v1, "A2dpSuspended=true"

    invoke-static {v1}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    .line 5405
    iget-object v1, p0, mConnectedDevices:Ljava/util/HashMap;

    const/16 v2, 0x80

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5407
    iget-object v1, p0, mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/4 v2, 0x6

    invoke-virtual {v1, v2, p1}, Landroid/media/AudioService$AudioHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 5408
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const-wide/16 v2, 0x1f40

    invoke-virtual {v1, v0, v2, v3}, Landroid/media/AudioService$AudioHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 5410
    return-void
.end method

.method private makeA2dpDeviceUnavailableNow(Ljava/lang/String;)V
    .registers 10
    .param p1, "address"    # Ljava/lang/String;

    .prologue
    const/16 v3, 0x80

    const/4 v2, 0x0

    .line 5382
    iget-object v1, p0, mA2dpAvrcpLock:Ljava/lang/Object;

    monitor-enter v1

    .line 5383
    const/4 v0, 0x0

    :try_start_7
    iput-boolean v0, p0, mAvrcpAbsVolSupported:Z

    .line 5384
    monitor-exit v1
    :try_end_a
    .catchall {:try_start_7 .. :try_end_a} :catchall_32

    .line 5385
    invoke-static {v3, v2, p1}, Landroid/media/AudioSystem;->setDeviceConnectionState(IILjava/lang/String;)I

    .line 5388
    iget-object v0, p0, mConnectedDevices:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5389
    iget-object v7, p0, mCurAudioRoutes:Landroid/media/AudioRoutesInfo;

    monitor-enter v7

    .line 5391
    :try_start_19
    iget-object v0, p0, mCurAudioRoutes:Landroid/media/AudioRoutesInfo;

    iget-object v0, v0, Landroid/media/AudioRoutesInfo;->mBluetoothName:Ljava/lang/CharSequence;

    if-eqz v0, :cond_30

    .line 5392
    iget-object v0, p0, mCurAudioRoutes:Landroid/media/AudioRoutesInfo;

    const/4 v1, 0x0

    iput-object v1, v0, Landroid/media/AudioRoutesInfo;->mBluetoothName:Ljava/lang/CharSequence;

    .line 5393
    iget-object v0, p0, mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/16 v1, 0xc

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 5396
    :cond_30
    monitor-exit v7
    :try_end_31
    .catchall {:try_start_19 .. :try_end_31} :catchall_35

    .line 5397
    return-void

    .line 5384
    :catchall_32
    move-exception v0

    :try_start_33
    monitor-exit v1
    :try_end_34
    .catchall {:try_start_33 .. :try_end_34} :catchall_32

    throw v0

    .line 5396
    :catchall_35
    move-exception v0

    :try_start_36
    monitor-exit v7
    :try_end_37
    .catchall {:try_start_36 .. :try_end_37} :catchall_35

    throw v0
.end method

.method private makeA2dpSrcAvailable(Ljava/lang/String;)V
    .registers 5
    .param p1, "address"    # Ljava/lang/String;

    .prologue
    const/high16 v2, -0x7ffe0000

    .line 5414
    const/4 v0, 0x1

    invoke-static {v2, v0, p1}, Landroid/media/AudioSystem;->setDeviceConnectionState(IILjava/lang/String;)I

    .line 5417
    iget-object v0, p0, mConnectedDevices:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5419
    return-void
.end method

.method private makeA2dpSrcUnavailable(Ljava/lang/String;)V
    .registers 4
    .param p1, "address"    # Ljava/lang/String;

    .prologue
    const/high16 v1, -0x7ffe0000

    .line 5423
    const/4 v0, 0x0

    invoke-static {v1, v0, p1}, Landroid/media/AudioSystem;->setDeviceConnectionState(IILjava/lang/String;)I

    .line 5426
    iget-object v0, p0, mConnectedDevices:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5427
    return-void
.end method

.method private onBroadcastScoConnectionState(I)V
    .registers 5
    .param p1, "state"    # I

    .prologue
    .line 3482
    iget v1, p0, mScoConnectionState:I

    if-eq p1, v1, :cond_1c

    .line 3483
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.media.ACTION_SCO_AUDIO_STATE_UPDATED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3484
    .local v0, "newIntent":Landroid/content/Intent;
    const-string v1, "android.media.extra.SCO_AUDIO_STATE"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3485
    const-string v1, "android.media.extra.SCO_AUDIO_PREVIOUS_STATE"

    iget v2, p0, mScoConnectionState:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3487
    invoke-direct {p0, v0}, sendStickyBroadcastToAll(Landroid/content/Intent;)V

    .line 3488
    iput p1, p0, mScoConnectionState:I

    .line 3490
    .end local v0    # "newIntent":Landroid/content/Intent;
    :cond_1c
    return-void
.end method

.method private onCheckMusicActive()V
    .registers 12

    .prologue
    const v10, 0xea60

    .line 3649
    iget-object v9, p0, mSafeMediaVolumeState:Ljava/lang/Integer;

    monitor-enter v9

    .line 3650
    :try_start_6
    iget-object v0, p0, mSafeMediaVolumeState:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_4e

    .line 3651
    const/4 v0, 0x3

    invoke-direct {p0, v0}, getDeviceForStream(I)I

    move-result v7

    .line 3653
    .local v7, "device":I
    and-int/lit8 v0, v7, 0xc

    if-eqz v0, :cond_4e

    .line 3654
    iget-object v0, p0, mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/16 v1, 0xe

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const v6, 0xea60

    invoke-static/range {v0 .. v6}, sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 3661
    iget-object v0, p0, mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    const/4 v1, 0x3

    aget-object v0, v0, v1

    invoke-virtual {v0, v7}, Landroid/media/AudioService$VolumeStreamState;->getIndex(I)I

    move-result v8

    .line 3662
    .local v8, "index":I
    const/4 v0, 0x3

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/media/AudioSystem;->isStreamActive(II)Z

    move-result v0

    if-eqz v0, :cond_4e

    iget v0, p0, mSafeMediaVolumeIndex:I

    if-le v8, v0, :cond_4e

    .line 3665
    iget v0, p0, mMusicActiveMs:I

    add-int/2addr v0, v10

    iput v0, p0, mMusicActiveMs:I

    .line 3666
    iget v0, p0, mMusicActiveMs:I

    const v1, 0x44aa200

    if-le v0, v1, :cond_4e

    .line 3667
    const/4 v0, 0x1

    invoke-direct {p0, v0}, setSafeMediaVolumeEnabled(Z)V

    .line 3668
    const/4 v0, 0x0

    iput v0, p0, mMusicActiveMs:I

    .line 3676
    .end local v7    # "device":I
    .end local v8    # "index":I
    :cond_4e
    monitor-exit v9

    .line 3677
    return-void

    .line 3676
    :catchall_50
    move-exception v0

    monitor-exit v9
    :try_end_52
    .catchall {:try_start_6 .. :try_end_52} :catchall_50

    throw v0
.end method

.method private onConfigureSafeVolume(Z)V
    .registers 12
    .param p1, "force"    # Z

    .prologue
    const/4 v1, 0x2

    .line 3684
    iget-object v9, p0, mSafeMediaVolumeState:Ljava/lang/Integer;

    monitor-enter v9

    .line 3685
    :try_start_4
    iget-object v0, p0, mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v7, v0, Landroid/content/res/Configuration;->mcc:I

    .line 3686
    .local v7, "mcc":I
    iget v0, p0, mMcc:I

    if-ne v0, v7, :cond_1a

    iget v0, p0, mMcc:I

    if-nez v0, :cond_41

    if-eqz p1, :cond_41

    .line 3696
    :cond_1a
    const/16 v0, 0x64

    iput v0, p0, mSafeMediaVolumeIndex:I

    .line 3697
    const/4 v8, 0x1

    .line 3702
    .local v8, "safeMediaVolumeEnabled":Z
    if-eqz v8, :cond_43

    .line 3703
    const/4 v3, 0x3

    .line 3707
    .local v3, "persistedState":I
    iget-object v0, p0, mSafeMediaVolumeState:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eq v0, v1, :cond_34

    .line 3718
    const/4 v0, 0x3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, mSafeMediaVolumeState:Ljava/lang/Integer;

    .line 3719
    invoke-direct {p0}, enforceSafeMediaVolume()V

    .line 3726
    :cond_34
    :goto_34
    iput v7, p0, mMcc:I

    .line 3727
    iget-object v0, p0, mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/16 v1, 0x12

    const/4 v2, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 3735
    .end local v3    # "persistedState":I
    .end local v8    # "safeMediaVolumeEnabled":Z
    :cond_41
    monitor-exit v9

    .line 3736
    return-void

    .line 3723
    .restart local v8    # "safeMediaVolumeEnabled":Z
    :cond_43
    const/4 v3, 0x1

    .line 3724
    .restart local v3    # "persistedState":I
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, mSafeMediaVolumeState:Ljava/lang/Integer;

    goto :goto_34

    .line 3735
    .end local v3    # "persistedState":I
    .end local v7    # "mcc":I
    .end local v8    # "safeMediaVolumeEnabled":Z
    :catchall_4c
    move-exception v0

    monitor-exit v9
    :try_end_4e
    .catchall {:try_start_4 .. :try_end_4e} :catchall_4c

    throw v0
.end method

.method private onSendBecomingNoisyIntent(I)V
    .registers 6
    .param p1, "device"    # I

    .prologue
    .line 5358
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.media.AUDIO_BECOMING_NOISY_SEC"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 5359
    .local v1, "noisySecIntent":Landroid/content/Intent;
    invoke-virtual {p0, v1}, sendBroadcastToAll(Landroid/content/Intent;)V

    .line 5361
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.media.AUDIO_BECOMING_NOISY"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 5362
    .local v0, "noisyIntent":Landroid/content/Intent;
    and-int/lit16 v2, p1, 0x380

    if-eqz v2, :cond_1b

    .line 5363
    const-string v2, "android.bluetooth.a2dp.extra.DISCONNECT_A2DP"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 5364
    :cond_1b
    invoke-virtual {p0, v0}, sendBroadcastToAll(Landroid/content/Intent;)V

    .line 5365
    return-void
.end method

.method private onSendBecomingNoisyIntent(II)V
    .registers 7
    .param p1, "device"    # I
    .param p2, "personaId"    # I

    .prologue
    .line 5370
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.media.AUDIO_BECOMING_NOISY_SEC"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 5371
    .local v1, "noisySecIntent":Landroid/content/Intent;
    iget-object v2, p0, mContext:Landroid/content/Context;

    new-instance v3, Landroid/os/UserHandle;

    invoke-direct {v3, p2}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v2, v1, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 5373
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.media.AUDIO_BECOMING_NOISY"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 5374
    .local v0, "noisyIntent":Landroid/content/Intent;
    and-int/lit16 v2, p1, 0x380

    if-eqz v2, :cond_22

    .line 5375
    const-string v2, "android.bluetooth.a2dp.extra.DISCONNECT_A2DP"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 5376
    :cond_22
    iget-object v2, p0, mContext:Landroid/content/Context;

    new-instance v3, Landroid/os/UserHandle;

    invoke-direct {v3, p2}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v2, v0, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 5377
    return-void
.end method

.method private onSetA2dpSinkConnectionState(Landroid/bluetooth/BluetoothDevice;I)V
    .registers 16
    .param p1, "btDevice"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "state"    # I

    .prologue
    const/4 v4, 0x2

    const/4 v8, 0x1

    const/4 v1, 0x0

    .line 5441
    sget-boolean v0, DEBUG_VOL:Z

    if-eqz v0, :cond_2b

    .line 5442
    const-string v0, "AudioService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onSetA2dpSinkConnectionState btDevice="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "state="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5444
    :cond_2b
    if-nez p1, :cond_2e

    .line 5511
    :goto_2d
    return-void

    .line 5447
    :cond_2e
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v7

    .line 5448
    .local v7, "address":Ljava/lang/String;
    invoke-static {v7}, Landroid/bluetooth/BluetoothAdapter;->checkBluetoothAddress(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3a

    .line 5449
    const-string v7, ""

    .line 5452
    :cond_3a
    iget-object v11, p0, mConnectedDevices:Ljava/util/HashMap;

    monitor-enter v11

    .line 5454
    :try_start_3d
    iget-object v0, p0, mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    const/4 v2, 0x3

    aget-object v0, v0, v2

    const/4 v2, 0x3

    invoke-direct {p0, v2}, getDeviceForStream(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/media/AudioService$VolumeStreamState;->getIndex(I)I

    move-result v10

    .line 5456
    .local v10, "preVolIndex":I
    iget-object v0, p0, mConnectedDevices:Ljava/util/HashMap;

    const/16 v2, 0x80

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b6

    iget-object v0, p0, mConnectedDevices:Ljava/util/HashMap;

    const/16 v2, 0x80

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b6

    .line 5460
    .local v8, "isConnected":Z
    :goto_6d
    if-eqz v8, :cond_bf

    if-eq p2, v4, :cond_bf

    .line 5461
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->isBluetoothDock()Z

    move-result v0

    if-eqz v0, :cond_b8

    .line 5462
    if-nez p2, :cond_7c

    .line 5466
    invoke-direct {p0, v7}, makeA2dpDeviceUnavailableLater(Ljava/lang/String;)V

    .line 5472
    :cond_7c
    :goto_7c
    iget-object v12, p0, mCurAudioRoutes:Landroid/media/AudioRoutesInfo;

    monitor-enter v12
    :try_end_7f
    .catchall {:try_start_3d .. :try_end_7f} :catchall_b3

    .line 5473
    :try_start_7f
    iget-object v0, p0, mCurAudioRoutes:Landroid/media/AudioRoutesInfo;

    iget-object v0, v0, Landroid/media/AudioRoutesInfo;->mBluetoothName:Ljava/lang/CharSequence;

    if-eqz v0, :cond_96

    .line 5474
    iget-object v0, p0, mCurAudioRoutes:Landroid/media/AudioRoutesInfo;

    const/4 v1, 0x0

    iput-object v1, v0, Landroid/media/AudioRoutesInfo;->mBluetoothName:Ljava/lang/CharSequence;

    .line 5475
    iget-object v0, p0, mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/16 v1, 0xc

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 5478
    :cond_96
    monitor-exit v12
    :try_end_97
    .catchall {:try_start_7f .. :try_end_97} :catchall_bc

    .line 5503
    :cond_97
    :goto_97
    :try_start_97
    iget-object v0, p0, mSamsungAudioService:Landroid/media/SamsungAudioService;

    invoke-virtual {v0}, Landroid/media/SamsungAudioService;->checkAndSendEarCareInfo()V

    .line 5506
    const/4 v0, 0x3

    iget-object v1, p0, mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    const/4 v2, 0x3

    aget-object v1, v1, v2

    const/4 v2, 0x3

    invoke-direct {p0, v2}, getDeviceForStream(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/media/AudioService$VolumeStreamState;->getIndex(I)I

    move-result v1

    const/16 v2, 0x800

    invoke-direct {p0, v0, v10, v1, v2}, sendVolumeUpdate(IIII)V

    .line 5510
    monitor-exit v11

    goto/16 :goto_2d

    .end local v8    # "isConnected":Z
    .end local v10    # "preVolIndex":I
    :catchall_b3
    move-exception v0

    monitor-exit v11
    :try_end_b5
    .catchall {:try_start_97 .. :try_end_b5} :catchall_b3

    throw v0

    .restart local v10    # "preVolIndex":I
    :cond_b6
    move v8, v1

    .line 5456
    goto :goto_6d

    .line 5470
    .restart local v8    # "isConnected":Z
    :cond_b8
    :try_start_b8
    invoke-direct {p0, v7}, makeA2dpDeviceUnavailableNow(Ljava/lang/String;)V
    :try_end_bb
    .catchall {:try_start_b8 .. :try_end_bb} :catchall_b3

    goto :goto_7c

    .line 5478
    :catchall_bc
    move-exception v0

    :try_start_bd
    monitor-exit v12
    :try_end_be
    .catchall {:try_start_bd .. :try_end_be} :catchall_bc

    :try_start_be
    throw v0

    .line 5479
    :cond_bf
    if-nez v8, :cond_97

    if-ne p2, v4, :cond_97

    .line 5480
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->isBluetoothDock()Z

    move-result v0

    if-eqz v0, :cond_f7

    .line 5482
    invoke-direct {p0}, cancelA2dpDeviceTimeout()V

    .line 5483
    iput-object v7, p0, mDockAddress:Ljava/lang/String;

    .line 5492
    :cond_ce
    :goto_ce
    invoke-direct {p0, v7}, makeA2dpDeviceAvailable(Ljava/lang/String;)V

    .line 5493
    iget-object v12, p0, mCurAudioRoutes:Landroid/media/AudioRoutesInfo;

    monitor-enter v12
    :try_end_d4
    .catchall {:try_start_be .. :try_end_d4} :catchall_b3

    .line 5494
    :try_start_d4
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAliasName()Ljava/lang/String;

    move-result-object v9

    .line 5495
    .local v9, "name":Ljava/lang/String;
    iget-object v0, p0, mCurAudioRoutes:Landroid/media/AudioRoutesInfo;

    iget-object v0, v0, Landroid/media/AudioRoutesInfo;->mBluetoothName:Ljava/lang/CharSequence;

    invoke-static {v0, v9}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_f2

    .line 5496
    iget-object v0, p0, mCurAudioRoutes:Landroid/media/AudioRoutesInfo;

    iput-object v9, v0, Landroid/media/AudioRoutesInfo;->mBluetoothName:Ljava/lang/CharSequence;

    .line 5497
    iget-object v0, p0, mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/16 v1, 0xc

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 5500
    :cond_f2
    monitor-exit v12

    goto :goto_97

    .end local v9    # "name":Ljava/lang/String;
    :catchall_f4
    move-exception v0

    monitor-exit v12
    :try_end_f6
    .catchall {:try_start_d4 .. :try_end_f6} :catchall_f4

    :try_start_f6
    throw v0

    .line 5487
    :cond_f7
    invoke-direct {p0}, hasScheduledA2dpDockTimeout()Z

    move-result v0

    if-eqz v0, :cond_ce

    .line 5488
    invoke-direct {p0}, cancelA2dpDeviceTimeout()V

    .line 5489
    iget-object v0, p0, mDockAddress:Ljava/lang/String;

    invoke-direct {p0, v0}, makeA2dpDeviceUnavailableNow(Ljava/lang/String;)V
    :try_end_105
    .catchall {:try_start_f6 .. :try_end_105} :catchall_b3

    goto :goto_ce
.end method

.method private onSetA2dpSourceConnectionState(Landroid/bluetooth/BluetoothDevice;I)V
    .registers 9
    .param p1, "btDevice"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "state"    # I

    .prologue
    const/4 v5, 0x2

    .line 5515
    sget-boolean v2, DEBUG_VOL:Z

    if-eqz v2, :cond_28

    .line 5516
    const-string v2, "AudioService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onSetA2dpSourceConnectionState btDevice="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " state="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5518
    :cond_28
    if-nez p1, :cond_2b

    .line 5537
    :goto_2a
    return-void

    .line 5521
    :cond_2b
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    .line 5522
    .local v0, "address":Ljava/lang/String;
    invoke-static {v0}, Landroid/bluetooth/BluetoothAdapter;->checkBluetoothAddress(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_37

    .line 5523
    const-string v0, ""

    .line 5526
    :cond_37
    iget-object v3, p0, mConnectedDevices:Ljava/util/HashMap;

    monitor-enter v3

    .line 5527
    :try_start_3a
    iget-object v2, p0, mConnectedDevices:Ljava/util/HashMap;

    const/high16 v4, -0x7ffe0000

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_69

    iget-object v2, p0, mConnectedDevices:Ljava/util/HashMap;

    const/high16 v4, -0x7ffe0000

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_69

    const/4 v1, 0x1

    .line 5531
    .local v1, "isConnected":Z
    :goto_5d
    if-eqz v1, :cond_6b

    if-eq p2, v5, :cond_6b

    .line 5532
    invoke-direct {p0, v0}, makeA2dpSrcUnavailable(Ljava/lang/String;)V

    .line 5536
    :cond_64
    :goto_64
    monitor-exit v3

    goto :goto_2a

    .end local v1    # "isConnected":Z
    :catchall_66
    move-exception v2

    monitor-exit v3
    :try_end_68
    .catchall {:try_start_3a .. :try_end_68} :catchall_66

    throw v2

    .line 5527
    :cond_69
    const/4 v1, 0x0

    goto :goto_5d

    .line 5533
    .restart local v1    # "isConnected":Z
    :cond_6b
    if-nez v1, :cond_64

    if-ne p2, v5, :cond_64

    .line 5534
    :try_start_6f
    invoke-direct {p0, v0}, makeA2dpSrcAvailable(Ljava/lang/String;)V
    :try_end_72
    .catchall {:try_start_6f .. :try_end_72} :catchall_66

    goto :goto_64
.end method

.method private onSetStreamVolume(IIII)V
    .registers 11
    .param p1, "streamType"    # I
    .param p2, "index"    # I
    .param p3, "flags"    # I
    .param p4, "device"    # I

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x1

    const/4 v5, 0x0

    .line 1656
    iget-object v3, p0, mStreamVolumeAlias:[I

    aget v3, v3, p1

    invoke-direct {p0, v3, p2, p4, v5}, setStreamVolumeInt(IIIZ)V

    .line 1657
    and-int/lit16 v3, p3, 0x2000

    if-nez v3, :cond_33

    .line 1659
    and-int/lit8 v3, p3, 0x2

    if-nez v3, :cond_1c

    iget-object v3, p0, mStreamVolumeAlias:[I

    aget v3, v3, p1

    invoke-virtual {p0}, getMasterStreamType()I

    move-result v4

    if-ne v3, v4, :cond_33

    .line 1662
    :cond_1c
    if-nez p2, :cond_36

    .line 1663
    iget-boolean v3, p0, mHasVibrator:Z

    if-eqz v3, :cond_34

    move v0, v1

    .line 1667
    .local v0, "newRingerMode":I
    :goto_23
    if-ne v0, v1, :cond_30

    iget-object v1, p0, STREAM_VOLUME_ALIAS_VOICE:[I

    aget v1, v1, p1

    if-ne v1, v2, :cond_30

    const/16 v1, 0x1000

    if-ne p3, v1, :cond_30

    .line 1670
    const/4 v0, 0x0

    .line 1676
    :cond_30
    :goto_30
    invoke-virtual {p0, v0, v5}, setRingerMode(IZ)V

    .line 1679
    .end local v0    # "newRingerMode":I
    :cond_33
    return-void

    :cond_34
    move v0, v2

    .line 1663
    goto :goto_23

    .line 1674
    :cond_36
    const/4 v0, 0x2

    .restart local v0    # "newRingerMode":I
    goto :goto_30
.end method

.method private onSetWiredDeviceConnectionState(IILjava/lang/String;)V
    .registers 16
    .param p1, "device"    # I
    .param p2, "state"    # I
    .param p3, "name"    # Ljava/lang/String;

    .prologue
    .line 5806
    iget-object v11, p0, mConnectedDevices:Ljava/util/HashMap;

    monitor-enter v11

    .line 5808
    :try_start_3
    iget-object v0, p0, mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    const/4 v1, 0x3

    aget-object v0, v0, v1

    const/4 v1, 0x3

    invoke-direct {p0, v1}, getDeviceForStream(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/media/AudioService$VolumeStreamState;->getIndex(I)I

    move-result v10

    .line 5809
    .local v10, "preVolIndex":I
    const-string v9, ""

    .line 5811
    .local v9, "params":Ljava/lang/String;
    if-nez p2, :cond_24

    const/4 v0, 0x4

    if-eq p1, v0, :cond_20

    const/16 v0, 0x8

    if-eq p1, v0, :cond_20

    const/high16 v0, 0x20000

    if-ne p1, v0, :cond_24

    .line 5814
    :cond_20
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, setBluetoothA2dpOnInt(Z)V

    .line 5818
    :cond_24
    const/16 v0, 0x1000

    if-eq p1, v0, :cond_2d

    const v0, -0x7ffffc00

    if-ne p1, v0, :cond_2e

    .line 5820
    :cond_2d
    move-object v9, p3

    .line 5825
    :cond_2e
    if-eqz p2, :cond_63

    const/4 v0, 0x4

    if-eq p1, v0, :cond_37

    const/16 v0, 0x8

    if-ne p1, v0, :cond_63

    .line 5827
    :cond_37
    iget-object v0, p0, mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    const/4 v1, 0x3

    aget-object v0, v0, v1

    invoke-virtual {v0, p1}, Landroid/media/AudioService$VolumeStreamState;->getIndex(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x5

    div-int/lit8 v0, v0, 0xa

    const/16 v1, 0xa

    if-le v0, v1, :cond_63

    .line 5828
    const/4 v0, 0x3

    const/16 v1, 0xa

    invoke-static {v0, v1, p1}, Landroid/media/AudioSystem;->setStreamVolumeIndex(III)I

    .line 5829
    iget-object v0, p0, mStreamVolumeAlias:[I

    const/4 v1, 0x3

    aget v0, v0, v1

    const/16 v1, 0x64

    const/4 v2, 0x3

    iget-object v3, p0, mStreamVolumeAlias:[I

    const/4 v4, 0x3

    aget v3, v3, v4

    invoke-direct {p0, v1, v2, v3}, rescaleIndex(III)I

    move-result v1

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, p1, v2}, setStreamVolumeInt(IIIZ)V

    .line 5836
    :cond_63
    and-int/lit16 v0, p1, -0x6001

    if-eqz v0, :cond_72

    const/high16 v0, -0x80000000

    and-int/2addr v0, p1

    if-eqz v0, :cond_f5

    const v0, 0x7fffe7ff

    and-int/2addr v0, p1

    if-nez v0, :cond_f5

    :cond_72
    const/4 v8, 0x1

    .line 5840
    .local v8, "isUsb":Z
    :goto_73
    and-int/lit16 v0, p1, 0x400

    if-eqz v0, :cond_f8

    const/4 v7, 0x1

    .line 5846
    .local v7, "isHdmi":Z
    :goto_78
    const/4 v0, 0x1

    if-ne p2, v0, :cond_fb

    const/4 v0, 0x1

    :goto_7c
    if-nez v8, :cond_80

    if-eqz v7, :cond_81

    :cond_80
    move-object v9, p3

    .end local v9    # "params":Ljava/lang/String;
    :cond_81
    invoke-direct {p0, v0, p1, v9}, handleDeviceConnection(ZILjava/lang/String;)Z

    .line 5848
    if-eqz p2, :cond_103

    .line 5849
    const/4 v0, 0x4

    if-eq p1, v0, :cond_91

    const/16 v0, 0x8

    if-eq p1, v0, :cond_91

    const/high16 v0, 0x20000

    if-ne p1, v0, :cond_9a

    .line 5853
    :cond_91
    iget-object v0, p0, mSamsungAudioService:Landroid/media/SamsungAudioService;

    invoke-virtual {v0}, Landroid/media/SamsungAudioService;->increaseEARCount()V

    .line 5855
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, setBluetoothA2dpOnInt(Z)V

    .line 5857
    :cond_9a
    and-int/lit8 v0, p1, 0xc

    if-eqz v0, :cond_ac

    .line 5858
    iget-object v0, p0, mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/16 v1, 0xe

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const v6, 0xea60

    invoke-static/range {v0 .. v6}, sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 5867
    :cond_ac
    invoke-direct {p0}, isPlatformTelevision()Z

    move-result v0

    if-eqz v0, :cond_d5

    and-int/lit16 v0, p1, 0x400

    if-eqz v0, :cond_d5

    .line 5868
    iget v0, p0, mFixedVolumeDevices:I

    or-int/lit16 v0, v0, 0x400

    iput v0, p0, mFixedVolumeDevices:I

    .line 5869
    invoke-direct {p0}, checkAllFixedVolumeDevices()V

    .line 5870
    iget-object v0, p0, mHdmiManager:Landroid/hardware/hdmi/HdmiControlManager;

    if-eqz v0, :cond_d5

    .line 5871
    iget-object v1, p0, mHdmiManager:Landroid/hardware/hdmi/HdmiControlManager;

    monitor-enter v1
    :try_end_c6
    .catchall {:try_start_3 .. :try_end_c6} :catchall_100

    .line 5872
    :try_start_c6
    iget-object v0, p0, mHdmiPlaybackClient:Landroid/hardware/hdmi/HdmiPlaybackClient;

    if-eqz v0, :cond_d4

    .line 5873
    const/4 v0, 0x0

    iput-boolean v0, p0, mHdmiCecSink:Z

    .line 5874
    iget-object v0, p0, mHdmiPlaybackClient:Landroid/hardware/hdmi/HdmiPlaybackClient;

    iget-object v2, p0, mHdmiDisplayStatusCallback:Landroid/media/AudioService$MyDisplayStatusCallback;

    invoke-virtual {v0, v2}, Landroid/hardware/hdmi/HdmiPlaybackClient;->queryDisplayStatus(Landroid/hardware/hdmi/HdmiPlaybackClient$DisplayStatusCallback;)V

    .line 5876
    :cond_d4
    monitor-exit v1
    :try_end_d5
    .catchall {:try_start_c6 .. :try_end_d5} :catchall_fd

    .line 5889
    :cond_d5
    :goto_d5
    const/4 v0, 0x3

    :try_start_d6
    iget-object v1, p0, mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    const/4 v2, 0x3

    aget-object v1, v1, v2

    const/4 v2, 0x3

    invoke-direct {p0, v2}, getDeviceForStream(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/media/AudioService$VolumeStreamState;->getIndex(I)I

    move-result v1

    const/16 v2, 0x800

    invoke-direct {p0, v0, v10, v1, v2}, sendVolumeUpdate(IIII)V

    .line 5893
    if-nez v8, :cond_f3

    const v0, -0x7ffffff0

    if-eq p1, v0, :cond_f3

    .line 5894
    invoke-direct {p0, p1, p2, p3}, sendDeviceConnectionIntent(IILjava/lang/String;)V

    .line 5896
    :cond_f3
    monitor-exit v11
    :try_end_f4
    .catchall {:try_start_d6 .. :try_end_f4} :catchall_100

    .line 5897
    return-void

    .line 5836
    .end local v7    # "isHdmi":Z
    .end local v8    # "isUsb":Z
    .restart local v9    # "params":Ljava/lang/String;
    :cond_f5
    const/4 v8, 0x0

    goto/16 :goto_73

    .line 5840
    .restart local v8    # "isUsb":Z
    :cond_f8
    const/4 v7, 0x0

    goto/16 :goto_78

    .line 5846
    .restart local v7    # "isHdmi":Z
    :cond_fb
    const/4 v0, 0x0

    goto :goto_7c

    .line 5876
    .end local v9    # "params":Ljava/lang/String;
    :catchall_fd
    move-exception v0

    :try_start_fe
    monitor-exit v1
    :try_end_ff
    .catchall {:try_start_fe .. :try_end_ff} :catchall_fd

    :try_start_ff
    throw v0

    .line 5896
    .end local v7    # "isHdmi":Z
    .end local v8    # "isUsb":Z
    .end local v10    # "preVolIndex":I
    :catchall_100
    move-exception v0

    monitor-exit v11
    :try_end_102
    .catchall {:try_start_ff .. :try_end_102} :catchall_100

    throw v0

    .line 5880
    .restart local v7    # "isHdmi":Z
    .restart local v8    # "isUsb":Z
    .restart local v10    # "preVolIndex":I
    :cond_103
    :try_start_103
    invoke-direct {p0}, isPlatformTelevision()Z

    move-result v0

    if-eqz v0, :cond_d5

    and-int/lit16 v0, p1, 0x400

    if-eqz v0, :cond_d5

    .line 5881
    iget-object v0, p0, mHdmiManager:Landroid/hardware/hdmi/HdmiControlManager;

    if-eqz v0, :cond_d5

    .line 5882
    iget-object v1, p0, mHdmiManager:Landroid/hardware/hdmi/HdmiControlManager;

    monitor-enter v1
    :try_end_114
    .catchall {:try_start_103 .. :try_end_114} :catchall_100

    .line 5883
    const/4 v0, 0x0

    :try_start_115
    iput-boolean v0, p0, mHdmiCecSink:Z

    .line 5884
    monitor-exit v1

    goto :goto_d5

    :catchall_119
    move-exception v0

    monitor-exit v1
    :try_end_11b
    .catchall {:try_start_115 .. :try_end_11b} :catchall_119

    :try_start_11b
    throw v0
    :try_end_11c
    .catchall {:try_start_11b .. :try_end_11c} :catchall_100
.end method

.method private queueMsgUnderWakeLock(Landroid/os/Handler;IIILjava/lang/Object;I)V
    .registers 17
    .param p1, "handler"    # Landroid/os/Handler;
    .param p2, "msg"    # I
    .param p3, "arg1"    # I
    .param p4, "arg2"    # I
    .param p5, "obj"    # Ljava/lang/Object;
    .param p6, "delay"    # I

    .prologue
    .line 4089
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v8

    .line 4092
    .local v8, "ident":J
    iget-object v0, p0, mAudioEventWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 4093
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4094
    const/4 v2, 0x2

    move-object v0, p1

    move v1, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move/from16 v6, p6

    invoke-static/range {v0 .. v6}, sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 4095
    return-void
.end method

.method private static readAndSetLowRamDevice()V
    .registers 4

    .prologue
    .line 6782
    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    move-result v1

    invoke-static {v1}, Landroid/media/AudioSystem;->setLowRamDevice(Z)I

    move-result v0

    .line 6783
    .local v0, "status":I
    if-eqz v0, :cond_22

    .line 6784
    const-string v1, "AudioService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AudioFlinger informed of device\'s low RAM attribute; status "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6786
    :cond_22
    return-void
.end method

.method private readAudioSettings(Z)V
    .registers 11
    .param p1, "userSwitch"    # Z

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x0

    .line 2956
    invoke-direct {p0}, readPersistedSettings()V

    .line 2958
    iget-object v5, p0, mSamsungAudioService:Landroid/media/SamsungAudioService;

    invoke-virtual {v5}, Landroid/media/SamsungAudioService;->setAllSoundMute()V

    .line 2961
    invoke-static {}, Landroid/media/AudioSystem;->getNumStreamTypes()I

    move-result v1

    .line 2962
    .local v1, "numStreamTypes":I
    const/4 v4, 0x0

    .local v4, "streamType":I
    :goto_f
    if-ge v4, v1, :cond_69

    .line 2963
    iget-object v5, p0, mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    aget-object v3, v5, v4

    .line 2965
    .local v3, "streamState":Landroid/media/AudioService$VolumeStreamState;
    if-eqz p1, :cond_20

    iget-object v5, p0, mStreamVolumeAlias:[I

    aget v5, v5, v4

    if-ne v5, v8, :cond_20

    .line 2962
    :goto_1d
    add-int/lit8 v4, v4, 0x1

    goto :goto_f

    .line 2969
    :cond_20
    monitor-enter v3

    .line 2970
    :try_start_21
    invoke-virtual {v3}, Landroid/media/AudioService$VolumeStreamState;->readSettings()V

    .line 2973
    # invokes: Landroid/media/AudioService$VolumeStreamState;->isMuted()Z
    invoke-static {v3}, Landroid/media/AudioService$VolumeStreamState;->access$300(Landroid/media/AudioService$VolumeStreamState;)Z

    move-result v5

    if-eqz v5, :cond_64

    invoke-virtual {p0, v4}, isStreamAffectedByMute(I)Z

    move-result v5

    if-nez v5, :cond_36

    invoke-direct {p0, v4}, isStreamMutedByRingerMode(I)Z

    move-result v5

    if-eqz v5, :cond_3a

    :cond_36
    iget-boolean v5, p0, mUseFixedVolume:Z

    if-eqz v5, :cond_64

    .line 2975
    :cond_3a
    # getter for: Landroid/media/AudioService$VolumeStreamState;->mDeathHandlers:Ljava/util/ArrayList;
    invoke-static {v3}, Landroid/media/AudioService$VolumeStreamState;->access$2400(Landroid/media/AudioService$VolumeStreamState;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 2976
    .local v2, "size":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_43
    if-ge v0, v2, :cond_64

    .line 2977
    # getter for: Landroid/media/AudioService$VolumeStreamState;->mDeathHandlers:Ljava/util/ArrayList;
    invoke-static {v3}, Landroid/media/AudioService$VolumeStreamState;->access$2400(Landroid/media/AudioService$VolumeStreamState;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;

    const/4 v6, 0x1

    # setter for: Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;->mMuteCount:I
    invoke-static {v5, v6}, Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;->access$2502(Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;I)I

    .line 2978
    # getter for: Landroid/media/AudioService$VolumeStreamState;->mDeathHandlers:Ljava/util/ArrayList;
    invoke-static {v3}, Landroid/media/AudioService$VolumeStreamState;->access$2400(Landroid/media/AudioService$VolumeStreamState;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;->mute(Z)V

    .line 2976
    add-int/lit8 v0, v0, 0x1

    goto :goto_43

    .line 2981
    .end local v0    # "i":I
    .end local v2    # "size":I
    :cond_64
    monitor-exit v3

    goto :goto_1d

    :catchall_66
    move-exception v5

    monitor-exit v3
    :try_end_68
    .catchall {:try_start_21 .. :try_end_68} :catchall_66

    throw v5

    .line 2986
    .end local v3    # "streamState":Landroid/media/AudioService$VolumeStreamState;
    :cond_69
    invoke-virtual {p0}, getRingerMode()I

    move-result v5

    invoke-direct {p0, v5, v7}, setRingerModeInt(IZ)V

    .line 2988
    invoke-direct {p0}, checkAllFixedVolumeDevices()V

    .line 2989
    invoke-direct {p0}, checkAllAliasStreamVolumes()V

    .line 2991
    iget-object v6, p0, mSafeMediaVolumeState:Ljava/lang/Integer;

    monitor-enter v6

    .line 2997
    :try_start_79
    iget-object v5, p0, mSafeMediaVolumeState:Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-ne v5, v8, :cond_84

    .line 2998
    invoke-direct {p0}, enforceSafeMediaVolume()V

    .line 3000
    :cond_84
    monitor-exit v6

    .line 3001
    return-void

    .line 3000
    :catchall_86
    move-exception v5

    monitor-exit v6
    :try_end_88
    .catchall {:try_start_79 .. :try_end_88} :catchall_86

    throw v5
.end method

.method private readDockAudioSettings(Landroid/content/ContentResolver;)V
    .registers 9
    .param p1, "cr"    # Landroid/content/ContentResolver;

    .prologue
    const/16 v1, 0x8

    const/4 v0, 0x1

    const/4 v6, 0x0

    .line 1136
    const-string v2, "dock_audio_media_enabled"

    invoke-static {p1, v2, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_26

    :goto_c
    iput-boolean v0, p0, mDockAudioMediaEnabled:Z

    .line 1139
    iget-boolean v0, p0, mDockAudioMediaEnabled:Z

    if-eqz v0, :cond_28

    .line 1140
    iget v0, p0, mBecomingNoisyIntentDevices:I

    or-int/lit16 v0, v0, 0x800

    iput v0, p0, mBecomingNoisyIntentDevices:I

    .line 1145
    :goto_18
    iget-object v0, p0, mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/4 v2, 0x2

    const/4 v3, 0x3

    iget-boolean v4, p0, mDockAudioMediaEnabled:Z

    if-eqz v4, :cond_2f

    move v4, v1

    :goto_21
    const/4 v5, 0x0

    invoke-static/range {v0 .. v6}, sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 1153
    return-void

    :cond_26
    move v0, v6

    .line 1136
    goto :goto_c

    .line 1142
    :cond_28
    iget v0, p0, mBecomingNoisyIntentDevices:I

    and-int/lit16 v0, v0, -0x801

    iput v0, p0, mBecomingNoisyIntentDevices:I

    goto :goto_18

    :cond_2f
    move v4, v6

    .line 1145
    goto :goto_21
.end method

.method private readPersistedSettings()V
    .registers 14

    .prologue
    const/4 v12, -0x2

    const/4 v8, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 1156
    iget-object v0, p0, mContentResolver:Landroid/content/ContentResolver;

    .line 1158
    .local v0, "cr":Landroid/content/ContentResolver;
    const-string/jumbo v7, "mode_ringer"

    invoke-static {v0, v7, v8}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    .line 1161
    .local v4, "ringerModeFromSettings":I
    move v3, v4

    .line 1164
    .local v3, "ringerMode":I
    invoke-static {v3}, Landroid/media/AudioManager;->isValidRingerMode(I)Z

    move-result v7

    if-nez v7, :cond_15

    .line 1165
    const/4 v3, 0x2

    .line 1167
    :cond_15
    if-ne v3, v5, :cond_1c

    iget-boolean v7, p0, mHasVibrator:Z

    if-nez v7, :cond_1c

    .line 1168
    const/4 v3, 0x0

    .line 1170
    :cond_1c
    if-eq v3, v4, :cond_24

    .line 1171
    const-string/jumbo v7, "mode_ringer"

    invoke-static {v0, v7, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1173
    :cond_24
    iget-boolean v7, p0, mUseFixedVolume:Z

    if-nez v7, :cond_2e

    invoke-direct {p0}, isPlatformTelevision()Z

    move-result v7

    if-eqz v7, :cond_2f

    .line 1174
    :cond_2e
    const/4 v3, 0x2

    .line 1176
    :cond_2f
    iget-object v9, p0, mSettingsLock:Ljava/lang/Object;

    monitor-enter v9

    .line 1177
    :try_start_32
    iput v3, p0, mRingerMode:I

    .line 1182
    const/4 v10, 0x0

    const/4 v11, 0x1

    iget-boolean v7, p0, mHasVibrator:Z

    if-eqz v7, :cond_a7

    move v7, v8

    :goto_3b
    invoke-static {v10, v11, v7}, getValueForVibrateSetting(III)I

    move-result v7

    iput v7, p0, mVibrateSetting:I

    .line 1186
    iget v10, p0, mVibrateSetting:I

    const/4 v11, 0x0

    iget-boolean v7, p0, mHasVibrator:Z

    if-eqz v7, :cond_a9

    move v7, v8

    :goto_49
    invoke-static {v10, v11, v7}, getValueForVibrateSetting(III)I

    move-result v7

    iput v7, p0, mVibrateSetting:I

    .line 1191
    iget-object v7, p0, mSamsungAudioService:Landroid/media/SamsungAudioService;

    invoke-virtual {v7}, Landroid/media/SamsungAudioService;->readPersistedSettings()V

    .line 1193
    invoke-virtual {p0}, updateRingerModeAffectedStreams()Z

    .line 1194
    invoke-direct {p0, v0}, readDockAudioSettings(Landroid/content/ContentResolver;)V

    .line 1195
    monitor-exit v9
    :try_end_5b
    .catchall {:try_start_32 .. :try_end_5b} :catchall_ab

    .line 1197
    const-string/jumbo v7, "mute_streams_affected"

    const/16 v9, 0xe

    invoke-static {v0, v7, v9, v12}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v7

    iput v7, p0, mMuteAffectedStreams:I

    .line 1206
    invoke-direct {p0}, isPlatformVoice()Z

    move-result v7

    if-nez v7, :cond_71

    .line 1207
    iget-object v7, p0, STREAM_VOLUME_ALIAS_DEFAULT:[I

    const/4 v9, 0x5

    aput v9, v7, v8

    .line 1215
    :cond_71
    const-string/jumbo v7, "volume_master_mute"

    invoke-static {v0, v7, v6, v12}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v7

    if-ne v7, v5, :cond_ae

    move v1, v5

    .line 1217
    .local v1, "masterMute":Z
    :goto_7b
    iget-boolean v7, p0, mUseFixedVolume:Z

    if-eqz v7, :cond_85

    .line 1218
    const/4 v1, 0x0

    .line 1219
    const/high16 v7, 0x3f800000    # 1.0f

    invoke-static {v7}, Landroid/media/AudioSystem;->setMasterVolume(F)I

    .line 1221
    :cond_85
    invoke-static {v1}, Landroid/media/AudioSystem;->setMasterMute(Z)I

    .line 1222
    invoke-direct {p0, v1}, broadcastMasterMuteStatus(Z)V

    .line 1224
    const-string/jumbo v7, "microphone_mute"

    invoke-static {v0, v7, v6, v12}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v7

    if-ne v7, v5, :cond_b0

    move v2, v5

    .line 1226
    .local v2, "microphoneMute":Z
    :goto_95
    invoke-static {v2}, Landroid/media/AudioSystem;->muteMicrophone(Z)I

    .line 1231
    invoke-direct {p0, v3}, broadcastRingerMode(I)V

    .line 1234
    invoke-direct {p0, v6}, broadcastVibrateSetting(I)V

    .line 1235
    invoke-direct {p0, v5}, broadcastVibrateSetting(I)V

    .line 1238
    iget-object v5, p0, mVolumeController:Landroid/media/AudioService$VolumeController;

    invoke-virtual {v5, v0}, Landroid/media/AudioService$VolumeController;->loadSettings(Landroid/content/ContentResolver;)V

    .line 1239
    return-void

    .end local v1    # "masterMute":Z
    .end local v2    # "microphoneMute":Z
    :cond_a7
    move v7, v6

    .line 1182
    goto :goto_3b

    :cond_a9
    move v7, v6

    .line 1186
    goto :goto_49

    .line 1195
    :catchall_ab
    move-exception v5

    :try_start_ac
    monitor-exit v9
    :try_end_ad
    .catchall {:try_start_ac .. :try_end_ad} :catchall_ab

    throw v5

    :cond_ae
    move v1, v6

    .line 1215
    goto :goto_7b

    .restart local v1    # "masterMute":Z
    :cond_b0
    move v2, v6

    .line 1224
    goto :goto_95
.end method

.method private removeScoDevice(ILjava/lang/String;)V
    .registers 6
    .param p1, "device"    # I
    .param p2, "address"    # Ljava/lang/String;

    .prologue
    .line 5568
    iget-object v2, p0, mScoDevices:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 5569
    .local v0, "iter":Ljava/util/Iterator;
    :cond_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_21

    .line 5570
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioService$ScoDevice;

    .line 5571
    .local v1, "sco":Landroid/media/AudioService$ScoDevice;
    iget v2, v1, Landroid/media/AudioService$ScoDevice;->device:I

    if-ne v2, p1, :cond_6

    iget-object v2, v1, Landroid/media/AudioService$ScoDevice;->address:Ljava/lang/String;

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 5573
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 5577
    .end local v1    # "sco":Landroid/media/AudioService$ScoDevice;
    :cond_21
    return-void
.end method

.method private rescaleIndex(III)I
    .registers 6
    .param p1, "index"    # I
    .param p2, "srcStream"    # I
    .param p3, "dstStream"    # I

    .prologue
    .line 1242
    iget-object v0, p0, mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    aget-object v0, v0, p3

    invoke-virtual {v0}, Landroid/media/AudioService$VolumeStreamState;->getMaxIndex()I

    move-result v0

    mul-int/2addr v0, p1

    iget-object v1, p0, mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    aget-object v1, v1, p2

    invoke-virtual {v1}, Landroid/media/AudioService$VolumeStreamState;->getMaxIndex()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iget-object v1, p0, mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    aget-object v1, v1, p2

    invoke-virtual {v1}, Landroid/media/AudioService$VolumeStreamState;->getMaxIndex()I

    move-result v1

    div-int/2addr v0, v1

    return v0
.end method

.method private resetBluetoothSco()V
    .registers 4

    .prologue
    .line 3469
    iget-object v1, p0, mScoClients:Ljava/util/ArrayList;

    monitor-enter v1

    .line 3470
    const/4 v0, 0x0

    const/4 v2, 0x0

    :try_start_5
    invoke-virtual {p0, v0, v2}, clearAllScoClients(IZ)V

    .line 3471
    const/4 v0, 0x0

    iput v0, p0, mScoAudioState:I

    .line 3472
    const/4 v0, 0x0

    invoke-direct {p0, v0}, broadcastScoConnectionState(I)V

    .line 3473
    monitor-exit v1

    .line 3474
    return-void

    .line 3473
    :catchall_11
    move-exception v0

    monitor-exit v1
    :try_end_13
    .catchall {:try_start_5 .. :try_end_13} :catchall_11

    throw v0
.end method

.method private restoreMasterVolume()V
    .registers 6

    .prologue
    .line 2443
    iget-boolean v1, p0, mUseFixedVolume:Z

    if-eqz v1, :cond_a

    .line 2444
    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v1}, Landroid/media/AudioSystem;->setMasterVolume(F)I

    .line 2454
    :cond_9
    :goto_9
    return-void

    .line 2447
    :cond_a
    iget-boolean v1, p0, mUseMasterVolume:Z

    if-eqz v1, :cond_9

    .line 2448
    iget-object v1, p0, mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v2, "volume_master"

    const/high16 v3, -0x40800000    # -1.0f

    const/4 v4, -0x2

    invoke-static {v1, v2, v3, v4}, Landroid/provider/Settings$System;->getFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;FI)F

    move-result v0

    .line 2450
    .local v0, "volume":F
    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-ltz v1, :cond_9

    .line 2451
    invoke-static {v0}, Landroid/media/AudioSystem;->setMasterVolume(F)I

    goto :goto_9
.end method

.method private static safeMediaVolumeStateToString(Ljava/lang/Integer;)Ljava/lang/String;
    .registers 2
    .param p0, "state"    # Ljava/lang/Integer;

    .prologue
    .line 6770
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    packed-switch v0, :pswitch_data_16

    .line 6776
    const/4 v0, 0x0

    :goto_8
    return-object v0

    .line 6771
    :pswitch_9
    const-string v0, "SAFE_MEDIA_VOLUME_NOT_CONFIGURED"

    goto :goto_8

    .line 6772
    :pswitch_c
    const-string v0, "SAFE_MEDIA_VOLUME_DISABLED"

    goto :goto_8

    .line 6773
    :pswitch_f
    const-string v0, "SAFE_MEDIA_VOLUME_INACTIVE"

    goto :goto_8

    .line 6774
    :pswitch_12
    const-string v0, "SAFE_MEDIA_VOLUME_ACTIVE"

    goto :goto_8

    .line 6770
    nop

    :pswitch_data_16
    .packed-switch 0x0
        :pswitch_9
        :pswitch_c
        :pswitch_f
        :pswitch_12
    .end packed-switch
.end method

.method private saveMusicActiveMs()V
    .registers 5

    .prologue
    .line 3680
    iget-object v0, p0, mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/16 v1, 0x16

    iget v2, p0, mMusicActiveMs:I

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioService$AudioHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 3681
    return-void
.end method

.method private sendDeviceConnectionIntent(IILjava/lang/String;)V
    .registers 20
    .param p1, "device"    # I
    .param p2, "state"    # I
    .param p3, "name"    # Ljava/lang/String;

    .prologue
    .line 5737
    move-object/from16 v0, p0

    iget-boolean v2, v0, mSystemReady:Z

    if-nez v2, :cond_7

    .line 5802
    :cond_6
    :goto_6
    return-void

    .line 5739
    :cond_7
    new-instance v12, Landroid/content/Intent;

    invoke-direct {v12}, Landroid/content/Intent;-><init>()V

    .line 5741
    .local v12, "intent":Landroid/content/Intent;
    const-string/jumbo v2, "state"

    move/from16 v0, p2

    invoke-virtual {v12, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 5742
    const-string/jumbo v2, "name"

    move-object/from16 v0, p3

    invoke-virtual {v12, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 5743
    const/high16 v2, 0x40000000    # 2.0f

    invoke-virtual {v12, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 5745
    const/4 v9, 0x0

    .line 5747
    .local v9, "connType":I
    const/4 v2, 0x4

    move/from16 v0, p1

    if-ne v0, v2, :cond_96

    .line 5748
    const/4 v9, 0x1

    .line 5749
    const-string v2, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v12, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 5750
    const-string/jumbo v2, "microphone"

    const/4 v3, 0x1

    invoke-virtual {v12, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 5768
    :cond_34
    :goto_34
    move-object/from16 v0, p0

    iget-object v15, v0, mCurAudioRoutes:Landroid/media/AudioRoutesInfo;

    monitor-enter v15

    .line 5769
    if-eqz v9, :cond_60

    .line 5770
    :try_start_3b
    move-object/from16 v0, p0

    iget-object v2, v0, mCurAudioRoutes:Landroid/media/AudioRoutesInfo;

    iget v14, v2, Landroid/media/AudioRoutesInfo;->mMainType:I

    .line 5771
    .local v14, "newConn":I
    if-eqz p2, :cond_dd

    .line 5772
    or-int/2addr v14, v9

    .line 5776
    :goto_44
    move-object/from16 v0, p0

    iget-object v2, v0, mCurAudioRoutes:Landroid/media/AudioRoutesInfo;

    iget v2, v2, Landroid/media/AudioRoutesInfo;->mMainType:I

    if-eq v14, v2, :cond_60

    .line 5777
    move-object/from16 v0, p0

    iget-object v2, v0, mCurAudioRoutes:Landroid/media/AudioRoutesInfo;

    iput v14, v2, Landroid/media/AudioRoutesInfo;->mMainType:I

    .line 5778
    move-object/from16 v0, p0

    iget-object v2, v0, mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/16 v3, 0xc

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v2 .. v8}, sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 5782
    .end local v14    # "newConn":I
    :cond_60
    monitor-exit v15
    :try_end_61
    .catchall {:try_start_3b .. :try_end_61} :catchall_e2

    .line 5784
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v10

    .line 5786
    .local v10, "ident":J
    const/4 v2, 0x0

    const/4 v3, -0x1

    :try_start_67
    invoke-static {v12, v2, v3}, Landroid/app/ActivityManagerNative;->broadcastStickyIntent(Landroid/content/Intent;Ljava/lang/String;I)V
    :try_end_6a
    .catchall {:try_start_67 .. :try_end_6a} :catchall_e5

    .line 5788
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5791
    const/4 v2, 0x4

    move/from16 v0, p1

    if-eq v0, v2, :cond_78

    const/16 v2, 0x8

    move/from16 v0, p1

    if-ne v0, v2, :cond_6

    .line 5792
    :cond_78
    new-instance v13, Landroid/content/Intent;

    const-string v2, "com.sec.android.contextaware.HEADSET_PLUG"

    invoke-direct {v13, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 5793
    .local v13, "intentForCA":Landroid/content/Intent;
    invoke-virtual {v13, v12}, Landroid/content/Intent;->putExtras(Landroid/content/Intent;)Landroid/content/Intent;

    .line 5794
    const/16 v2, 0x20

    invoke-virtual {v13, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 5795
    const-string v2, "AudioService"

    const-string/jumbo v3, "send broadcast HEADSET_PLUG to CA "

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5796
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, sendStickyBroadcastToAll(Landroid/content/Intent;)V

    goto/16 :goto_6

    .line 5751
    .end local v10    # "ident":J
    .end local v13    # "intentForCA":Landroid/content/Intent;
    :cond_96
    const/16 v2, 0x8

    move/from16 v0, p1

    if-eq v0, v2, :cond_a2

    const/high16 v2, 0x20000

    move/from16 v0, p1

    if-ne v0, v2, :cond_b0

    .line 5754
    :cond_a2
    const/4 v9, 0x2

    .line 5755
    const-string v2, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v12, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 5756
    const-string/jumbo v2, "microphone"

    const/4 v3, 0x0

    invoke-virtual {v12, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_34

    .line 5757
    :cond_b0
    const/16 v2, 0x800

    move/from16 v0, p1

    if-ne v0, v2, :cond_be

    .line 5758
    const/4 v9, 0x4

    .line 5759
    const-string v2, "android.media.action.ANALOG_AUDIO_DOCK_PLUG"

    invoke-virtual {v12, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_34

    .line 5760
    :cond_be
    const/16 v2, 0x1000

    move/from16 v0, p1

    if-ne v0, v2, :cond_cc

    .line 5761
    const/4 v9, 0x4

    .line 5762
    const-string v2, "android.media.action.DIGITAL_AUDIO_DOCK_PLUG"

    invoke-virtual {v12, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_34

    .line 5763
    :cond_cc
    const/16 v2, 0x400

    move/from16 v0, p1

    if-ne v0, v2, :cond_34

    .line 5764
    const/16 v9, 0x8

    .line 5765
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v12, v1}, configureHdmiPlugIntent(Landroid/content/Intent;I)V

    goto/16 :goto_34

    .line 5774
    .restart local v14    # "newConn":I
    :cond_dd
    xor-int/lit8 v2, v9, -0x1

    and-int/2addr v14, v2

    goto/16 :goto_44

    .line 5782
    .end local v14    # "newConn":I
    :catchall_e2
    move-exception v2

    :try_start_e3
    monitor-exit v15
    :try_end_e4
    .catchall {:try_start_e3 .. :try_end_e4} :catchall_e2

    throw v2

    .line 5788
    .restart local v10    # "ident":J
    :catchall_e5
    move-exception v2

    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method private sendMasterMuteUpdate(ZI)V
    .registers 4
    .param p1, "muted"    # Z
    .param p2, "flags"    # I

    .prologue
    .line 1985
    iget-object v0, p0, mVolumeController:Landroid/media/AudioService$VolumeController;

    invoke-virtual {v0, p2}, Landroid/media/AudioService$VolumeController;->postMasterMuteChanged(I)V

    .line 1986
    invoke-direct {p0, p1}, broadcastMasterMuteStatus(Z)V

    .line 1987
    return-void
.end method

.method private sendMasterVolumeUpdate(III)V
    .registers 6
    .param p1, "flags"    # I
    .param p2, "oldVolume"    # I
    .param p3, "newVolume"    # I

    .prologue
    .line 1975
    iget-object v1, p0, mVolumeController:Landroid/media/AudioService$VolumeController;

    invoke-virtual {v1, p1}, Landroid/media/AudioService$VolumeController;->postMasterVolumeChanged(I)V

    .line 1977
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.media.MASTER_VOLUME_CHANGED_ACTION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1978
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "android.media.EXTRA_PREV_MASTER_VOLUME_VALUE"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1979
    const-string v1, "android.media.EXTRA_MASTER_VOLUME_VALUE"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1980
    invoke-virtual {p0, v0}, sendBroadcastToAll(Landroid/content/Intent;)V

    .line 1981
    return-void
.end method

.method private static sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V
    .registers 11
    .param p0, "handler"    # Landroid/os/Handler;
    .param p1, "msg"    # I
    .param p2, "existingMsgPolicy"    # I
    .param p3, "arg1"    # I
    .param p4, "arg2"    # I
    .param p5, "obj"    # Ljava/lang/Object;
    .param p6, "delay"    # I

    .prologue
    .line 4100
    if-nez p2, :cond_e

    .line 4101
    invoke-virtual {p0, p1}, Landroid/os/Handler;->removeMessages(I)V

    .line 4106
    :cond_5
    invoke-virtual {p0, p1, p3, p4, p5}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    int-to-long v2, p6

    invoke-virtual {p0, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 4107
    :goto_d
    return-void

    .line 4102
    :cond_e
    const/4 v0, 0x1

    if-ne p2, v0, :cond_5

    invoke-virtual {p0, p1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_d
.end method

.method private sendStickyBroadcastToAll(Landroid/content/Intent;)V
    .registers 6
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1917
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1919
    .local v0, "ident":J
    :try_start_4
    iget-object v2, p0, mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v2, p1, v3}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_b
    .catchall {:try_start_4 .. :try_end_b} :catchall_f

    .line 1921
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1923
    return-void

    .line 1921
    :catchall_f
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method private sendVolumeUpdate(IIII)V
    .registers 12
    .param p1, "streamType"    # I
    .param p2, "oldIndex"    # I
    .param p3, "index"    # I
    .param p4, "flags"    # I

    .prologue
    const v6, 0x8000

    const/4 v5, 0x2

    .line 1927
    invoke-direct {p0}, isPlatformVoice()Z

    move-result v2

    if-nez v2, :cond_d

    if-ne p1, v5, :cond_d

    .line 1928
    const/4 p1, 0x5

    .line 1931
    :cond_d
    const/16 v2, 0xd

    if-ne p1, v2, :cond_12

    .line 1932
    const/4 p1, 0x3

    .line 1934
    :cond_12
    if-ne v5, p1, :cond_3a

    if-nez p4, :cond_3a

    if-lez p3, :cond_3a

    iget-object v2, p0, mSamsungAudioService:Landroid/media/SamsungAudioService;

    invoke-static {}, Landroid/media/SamsungAudioService;->getFactoryMode()Z

    move-result v2

    if-eqz v2, :cond_3a

    .line 1936
    const-string v2, "AudioService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "enforce to FLAG_PLAY_SOUND volume index = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1937
    or-int/lit8 p4, p4, 0x4

    .line 1940
    :cond_3a
    const-string/jumbo v2, "persist.sys.setupwizard"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1941
    .local v1, "setupwizard":Ljava/lang/String;
    invoke-direct {p0}, isPlatformVoice()Z

    move-result v2

    if-eqz v2, :cond_72

    if-eqz p1, :cond_72

    if-eq v5, p1, :cond_72

    const/4 v2, 0x6

    if-eq v2, p1, :cond_72

    iget-object v2, p0, mKeyguardManager:Landroid/app/KeyguardManager;

    if-eqz v2, :cond_72

    iget-object v2, p0, mKeyguardManager:Landroid/app/KeyguardManager;

    invoke-virtual {v2}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v2

    if-eqz v2, :cond_72

    if-eqz v1, :cond_72

    const-string v2, "FINISH"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_72

    iget-object v2, p0, mSamsungAudioService:Landroid/media/SamsungAudioService;

    invoke-virtual {v2}, Landroid/media/SamsungAudioService;->isCoverOpen()Z

    move-result v2

    if-eqz v2, :cond_72

    and-int v2, p4, v6

    if-nez v2, :cond_72

    .line 1944
    and-int/lit8 p4, p4, -0x2

    .line 1946
    :cond_72
    iget-boolean v2, p0, mStatusbarHasVolumeSlider:Z

    if-eqz v2, :cond_88

    iget-object v2, p0, mSamsungAudioService:Landroid/media/SamsungAudioService;

    invoke-virtual {v2}, Landroid/media/SamsungAudioService;->isStatusbarExpanded()Z

    move-result v2

    if-eqz v2, :cond_88

    and-int v2, p4, v6

    if-nez v2, :cond_88

    iget-boolean v2, p0, mIsVolumeControllerVisible:Z

    if-nez v2, :cond_88

    .line 1947
    and-int/lit8 p4, p4, -0x2

    .line 1952
    :cond_88
    iget-object v2, p0, mHdmiTvClient:Landroid/hardware/hdmi/HdmiTvClient;

    if-eqz v2, :cond_9d

    const/4 v2, 0x3

    if-ne p1, v2, :cond_9d

    .line 1953
    iget-object v3, p0, mHdmiTvClient:Landroid/hardware/hdmi/HdmiTvClient;

    monitor-enter v3

    .line 1954
    :try_start_92
    iget-boolean v2, p0, mHdmiSystemAudioSupported:Z

    if-eqz v2, :cond_9c

    and-int/lit16 v2, p4, 0x100

    if-nez v2, :cond_9c

    .line 1956
    and-int/lit8 p4, p4, -0x2

    .line 1958
    :cond_9c
    monitor-exit v3
    :try_end_9d
    .catchall {:try_start_92 .. :try_end_9d} :catchall_c8

    .line 1960
    :cond_9d
    iget-object v2, p0, mVolumeController:Landroid/media/AudioService$VolumeController;

    invoke-virtual {v2, p1, p4}, Landroid/media/AudioService$VolumeController;->postVolumeChanged(II)V

    .line 1962
    and-int/lit8 v2, p4, 0x20

    if-nez v2, :cond_c7

    .line 1963
    add-int/lit8 v2, p2, 0x5

    div-int/lit8 p2, v2, 0xa

    .line 1964
    add-int/lit8 v2, p3, 0x5

    div-int/lit8 p3, v2, 0xa

    .line 1965
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.media.VOLUME_CHANGED_ACTION"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1966
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "android.media.EXTRA_VOLUME_STREAM_TYPE"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1967
    const-string v2, "android.media.EXTRA_VOLUME_STREAM_VALUE"

    invoke-virtual {v0, v2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1968
    const-string v2, "android.media.EXTRA_PREV_VOLUME_STREAM_VALUE"

    invoke-virtual {v0, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1969
    invoke-virtual {p0, v0}, sendBroadcastToAll(Landroid/content/Intent;)V

    .line 1971
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_c7
    return-void

    .line 1958
    :catchall_c8
    move-exception v2

    :try_start_c9
    monitor-exit v3
    :try_end_ca
    .catchall {:try_start_c9 .. :try_end_ca} :catchall_c8

    throw v2
.end method

.method private setModeInt(ILandroid/os/IBinder;I)I
    .registers 19
    .param p1, "mode"    # I
    .param p2, "cb"    # Landroid/os/IBinder;
    .param p3, "pid"    # I

    .prologue
    .line 2626
    sget-boolean v12, DEBUG_MODE:Z

    if-eqz v12, :cond_31

    const-string v12, "AudioService"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "setModeInt(mode="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ", pid="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move/from16 v0, p3

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ")"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2627
    :cond_31
    const/4 v8, 0x0

    .line 2628
    .local v8, "newModeOwnerPid":I
    if-nez p2, :cond_3e

    .line 2629
    const-string v12, "AudioService"

    const-string/jumbo v13, "setModeInt() called with null binder"

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v9, v8

    .line 2736
    .end local v8    # "newModeOwnerPid":I
    .local v9, "newModeOwnerPid":I
    :goto_3d
    return v9

    .line 2633
    .end local v9    # "newModeOwnerPid":I
    .restart local v8    # "newModeOwnerPid":I
    :cond_3e
    const/4 v5, 0x0

    .line 2634
    .local v5, "hdlr":Landroid/media/AudioService$SetModeDeathHandler;
    iget-object v12, p0, mSetModeDeathHandlers:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .line 2635
    .local v7, "iter":Ljava/util/Iterator;
    :cond_45
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_65

    .line 2636
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/media/AudioService$SetModeDeathHandler;

    .line 2637
    .local v4, "h":Landroid/media/AudioService$SetModeDeathHandler;
    invoke-virtual {v4}, Landroid/media/AudioService$SetModeDeathHandler;->getPid()I

    move-result v12

    move/from16 v0, p3

    if-ne v12, v0, :cond_45

    .line 2638
    move-object v5, v4

    .line 2640
    invoke-interface {v7}, Ljava/util/Iterator;->remove()V

    .line 2642
    :try_start_5d
    invoke-virtual {v5}, Landroid/media/AudioService$SetModeDeathHandler;->getBinder()Landroid/os/IBinder;

    move-result-object v12

    const/4 v13, 0x0

    invoke-interface {v12, v5, v13}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_65
    .catch Ljava/util/NoSuchElementException; {:try_start_5d .. :try_end_65} :catch_132

    .line 2652
    .end local v4    # "h":Landroid/media/AudioService$SetModeDeathHandler;
    :cond_65
    :goto_65
    const/4 v10, 0x0

    .line 2654
    .local v10, "status":I
    :cond_66
    if-nez p1, :cond_13c

    .line 2656
    iget-object v12, p0, mSetModeDeathHandlers:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_ad

    .line 2657
    iget-object v12, p0, mSetModeDeathHandlers:Ljava/util/ArrayList;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    .end local v5    # "hdlr":Landroid/media/AudioService$SetModeDeathHandler;
    check-cast v5, Landroid/media/AudioService$SetModeDeathHandler;

    .line 2658
    .restart local v5    # "hdlr":Landroid/media/AudioService$SetModeDeathHandler;
    invoke-virtual {v5}, Landroid/media/AudioService$SetModeDeathHandler;->getBinder()Landroid/os/IBinder;

    move-result-object p2

    .line 2659
    invoke-virtual {v5}, Landroid/media/AudioService$SetModeDeathHandler;->getMode()I

    move-result p1

    .line 2660
    sget-boolean v12, DEBUG_MODE:Z

    if-eqz v12, :cond_ad

    .line 2661
    const-string v12, "AudioService"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, " using mode="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " instead due to death hdlr at pid="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    # getter for: Landroid/media/AudioService$SetModeDeathHandler;->mPid:I
    invoke-static {v5}, Landroid/media/AudioService$SetModeDeathHandler;->access$1800(Landroid/media/AudioService$SetModeDeathHandler;)I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2683
    :cond_ad
    :goto_ad
    iget v12, p0, mMode:I

    move/from16 v0, p1

    if-eq v0, v12, :cond_1ba

    .line 2684
    invoke-static/range {p1 .. p1}, Landroid/media/AudioSystem;->setPhoneState(I)I

    move-result v10

    .line 2685
    if-nez v10, :cond_195

    .line 2686
    sget-boolean v12, DEBUG_MODE:Z

    if-eqz v12, :cond_d7

    const-string v12, "AudioService"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, " mode successfully set to "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2688
    :cond_d7
    const/4 v12, 0x3

    move/from16 v0, p1

    if-ne v0, v12, :cond_17d

    .line 2689
    iget-object v12, p0, mSamsungAudioService:Landroid/media/SamsungAudioService;

    invoke-virtual {v12}, Landroid/media/SamsungAudioService;->startCPUBoost()V

    .line 2693
    :cond_e1
    :goto_e1
    const/4 v12, 0x4

    move/from16 v0, p1

    if-ne v0, v12, :cond_189

    .line 2694
    iget-object v12, p0, mSamsungAudioService:Landroid/media/SamsungAudioService;

    invoke-virtual {v12}, Landroid/media/SamsungAudioService;->startCPUBoost()V

    .line 2699
    :cond_eb
    :goto_eb
    move/from16 v0, p1

    iput v0, p0, mMode:I

    .line 2719
    :goto_ef
    if-eqz v10, :cond_f9

    iget-object v12, p0, mSetModeDeathHandlers:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v12

    if-eqz v12, :cond_66

    .line 2721
    :cond_f9
    if-nez v10, :cond_12f

    .line 2722
    if-eqz p1, :cond_10d

    .line 2723
    iget-object v12, p0, mSetModeDeathHandlers:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v12

    if-eqz v12, :cond_1bd

    .line 2724
    const-string v12, "AudioService"

    const-string/jumbo v13, "setMode() different from MODE_NORMAL with empty mode client stack"

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2729
    :cond_10d
    :goto_10d
    const/high16 v12, -0x80000000

    invoke-virtual {p0, v12}, getActiveStreamType(I)I

    move-result v11

    .line 2730
    .local v11, "streamType":I
    invoke-direct {p0, v11}, getDeviceForStream(I)I

    move-result v2

    .line 2731
    .local v2, "device":I
    iget-object v12, p0, mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    iget-object v13, p0, mStreamVolumeAlias:[I

    aget v13, v13, v11

    aget-object v12, v12, v13

    invoke-virtual {v12, v2}, Landroid/media/AudioService$VolumeStreamState;->getIndex(I)I

    move-result v6

    .line 2732
    .local v6, "index":I
    iget-object v12, p0, mStreamVolumeAlias:[I

    aget v12, v12, v11

    const/4 v13, 0x1

    invoke-direct {p0, v12, v6, v2, v13}, setStreamVolumeInt(IIIZ)V

    .line 2734
    const/4 v12, 0x1

    invoke-direct {p0, v12}, updateStreamVolumeAlias(Z)V

    .end local v2    # "device":I
    .end local v6    # "index":I
    .end local v11    # "streamType":I
    :cond_12f
    move v9, v8

    .line 2736
    .end local v8    # "newModeOwnerPid":I
    .restart local v9    # "newModeOwnerPid":I
    goto/16 :goto_3d

    .line 2645
    .end local v9    # "newModeOwnerPid":I
    .end local v10    # "status":I
    .restart local v4    # "h":Landroid/media/AudioService$SetModeDeathHandler;
    .restart local v8    # "newModeOwnerPid":I
    :catch_132
    move-exception v3

    .line 2646
    .local v3, "e":Ljava/util/NoSuchElementException;
    const-string v12, "AudioService"

    const-string v13, "SetModeDeathHandler not registered to binder"

    invoke-static {v12, v13}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_65

    .line 2666
    .end local v3    # "e":Ljava/util/NoSuchElementException;
    .end local v4    # "h":Landroid/media/AudioService$SetModeDeathHandler;
    .restart local v10    # "status":I
    :cond_13c
    if-nez v5, :cond_147

    .line 2667
    new-instance v5, Landroid/media/AudioService$SetModeDeathHandler;

    .end local v5    # "hdlr":Landroid/media/AudioService$SetModeDeathHandler;
    move-object/from16 v0, p2

    move/from16 v1, p3

    invoke-direct {v5, p0, v0, v1}, Landroid/media/AudioService$SetModeDeathHandler;-><init>(Landroid/media/AudioService;Landroid/os/IBinder;I)V

    .line 2671
    .restart local v5    # "hdlr":Landroid/media/AudioService$SetModeDeathHandler;
    :cond_147
    const/4 v12, 0x0

    :try_start_148
    move-object/from16 v0, p2

    invoke-interface {v0, v5, v12}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_14d
    .catch Landroid/os/RemoteException; {:try_start_148 .. :try_end_14d} :catch_15a

    .line 2679
    :goto_14d
    iget-object v12, p0, mSetModeDeathHandlers:Ljava/util/ArrayList;

    const/4 v13, 0x0

    invoke-virtual {v12, v13, v5}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 2680
    move/from16 v0, p1

    invoke-virtual {v5, v0}, Landroid/media/AudioService$SetModeDeathHandler;->setMode(I)V

    goto/16 :goto_ad

    .line 2672
    :catch_15a
    move-exception v3

    .line 2674
    .local v3, "e":Landroid/os/RemoteException;
    const-string v12, "AudioService"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "setMode() could not link to "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p2

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " binder death"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_14d

    .line 2690
    .end local v3    # "e":Landroid/os/RemoteException;
    :cond_17d
    iget v12, p0, mMode:I

    const/4 v13, 0x3

    if-ne v12, v13, :cond_e1

    .line 2691
    iget-object v12, p0, mSamsungAudioService:Landroid/media/SamsungAudioService;

    invoke-virtual {v12}, Landroid/media/SamsungAudioService;->stopCPUBoost()V

    goto/16 :goto_e1

    .line 2695
    :cond_189
    iget v12, p0, mMode:I

    const/4 v13, 0x4

    if-ne v12, v13, :cond_eb

    .line 2696
    iget-object v12, p0, mSamsungAudioService:Landroid/media/SamsungAudioService;

    invoke-virtual {v12}, Landroid/media/SamsungAudioService;->stopCPUBoost()V

    goto/16 :goto_eb

    .line 2701
    :cond_195
    if-eqz v5, :cond_1a2

    .line 2702
    iget-object v12, p0, mSetModeDeathHandlers:Ljava/util/ArrayList;

    invoke-virtual {v12, v5}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2704
    const/4 v12, 0x0

    :try_start_19d
    move-object/from16 v0, p2

    invoke-interface {v0, v5, v12}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_1a2
    .catch Ljava/util/NoSuchElementException; {:try_start_19d .. :try_end_1a2} :catch_1b1

    .line 2713
    :cond_1a2
    :goto_1a2
    sget-boolean v12, DEBUG_MODE:Z

    if-eqz v12, :cond_1ad

    const-string v12, "AudioService"

    const-string v13, " mode set to MODE_NORMAL after phoneState pb"

    invoke-static {v12, v13}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2714
    :cond_1ad
    const/16 p1, 0x0

    goto/16 :goto_ef

    .line 2707
    :catch_1b1
    move-exception v3

    .line 2708
    .local v3, "e":Ljava/util/NoSuchElementException;
    const-string v12, "AudioService"

    const-string v13, "SetModeDeathHandler not registered to binder"

    invoke-static {v12, v13}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1a2

    .line 2717
    .end local v3    # "e":Ljava/util/NoSuchElementException;
    :cond_1ba
    const/4 v10, 0x0

    goto/16 :goto_ef

    .line 2726
    :cond_1bd
    iget-object v12, p0, mSetModeDeathHandlers:Ljava/util/ArrayList;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/media/AudioService$SetModeDeathHandler;

    invoke-virtual {v12}, Landroid/media/AudioService$SetModeDeathHandler;->getPid()I

    move-result v8

    goto/16 :goto_10d
.end method

.method private setOrientationForAudioSystem()V
    .registers 3

    .prologue
    .line 6383
    iget v0, p0, mDeviceOrientation:I

    packed-switch v0, :pswitch_data_2a

    .line 6401
    const-string v0, "AudioService"

    const-string v1, "Unknown orientation"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6403
    :goto_c
    return-void

    .line 6386
    :pswitch_d
    const-string/jumbo v0, "orientation=landscape"

    invoke-static {v0}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    goto :goto_c

    .line 6390
    :pswitch_14
    const-string/jumbo v0, "orientation=portrait"

    invoke-static {v0}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    goto :goto_c

    .line 6394
    :pswitch_1b
    const-string/jumbo v0, "orientation=square"

    invoke-static {v0}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    goto :goto_c

    .line 6398
    :pswitch_22
    const-string/jumbo v0, "orientation=undefined"

    invoke-static {v0}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    goto :goto_c

    .line 6383
    nop

    :pswitch_data_2a
    .packed-switch 0x0
        :pswitch_22
        :pswitch_14
        :pswitch_d
        :pswitch_1b
    .end packed-switch
.end method

.method private setRingerModeInt(IZ)V
    .registers 15
    .param p1, "ringerMode"    # I
    .param p2, "persist"    # Z

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 2374
    iget-object v1, p0, mSettingsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2375
    :try_start_7
    iput p1, p0, mRingerMode:I

    .line 2376
    monitor-exit v1
    :try_end_a
    .catchall {:try_start_7 .. :try_end_a} :catchall_70

    .line 2379
    const-string/jumbo v0, "persist.audio.ringermode"

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2385
    invoke-static {}, Landroid/media/AudioSystem;->getNumStreamTypes()I

    move-result v9

    .line 2386
    .local v9, "numStreamTypes":I
    add-int/lit8 v11, v9, -0x1

    .local v11, "streamType":I
    :goto_1a
    if-ltz v11, :cond_9e

    .line 2387
    invoke-direct {p0, v11}, isStreamMutedByRingerMode(I)Z

    move-result v0

    if-eqz v0, :cond_87

    .line 2388
    invoke-virtual {p0, v11}, isStreamAffectedByRingerMode(I)Z

    move-result v0

    if-eqz v0, :cond_2a

    if-ne p1, v4, :cond_84

    .line 2409
    :cond_2a
    invoke-direct {p0}, isPlatformVoice()Z

    move-result v0

    if-eqz v0, :cond_74

    iget-object v0, p0, mStreamVolumeAlias:[I

    aget v0, v0, v11

    if-ne v0, v4, :cond_74

    .line 2411
    iget-object v0, p0, mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    aget-object v1, v0, v11

    monitor-enter v1

    .line 2412
    :try_start_3b
    iget-object v0, p0, mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    aget-object v0, v0, v11

    # getter for: Landroid/media/AudioService$VolumeStreamState;->mIndex:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static {v0}, Landroid/media/AudioService$VolumeStreamState;->access$700(Landroid/media/AudioService$VolumeStreamState;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v10

    .line 2413
    .local v10, "set":Ljava/util/Set;
    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .line 2414
    .local v8, "i":Ljava/util/Iterator;
    :cond_4b
    :goto_4b
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_73

    .line 2415
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    .line 2416
    .local v7, "entry":Ljava/util/Map$Entry;
    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_4b

    .line 2417
    const/16 v0, 0xa

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v7, v0}, Ljava/util/Map$Entry;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4b

    .line 2420
    .end local v7    # "entry":Ljava/util/Map$Entry;
    .end local v8    # "i":Ljava/util/Iterator;
    .end local v10    # "set":Ljava/util/Set;
    :catchall_6d
    move-exception v0

    monitor-exit v1
    :try_end_6f
    .catchall {:try_start_3b .. :try_end_6f} :catchall_6d

    throw v0

    .line 2376
    .end local v9    # "numStreamTypes":I
    .end local v11    # "streamType":I
    :catchall_70
    move-exception v0

    :try_start_71
    monitor-exit v1
    :try_end_72
    .catchall {:try_start_71 .. :try_end_72} :catchall_70

    throw v0

    .line 2420
    .restart local v8    # "i":Ljava/util/Iterator;
    .restart local v9    # "numStreamTypes":I
    .restart local v10    # "set":Ljava/util/Set;
    .restart local v11    # "streamType":I
    :cond_73
    :try_start_73
    monitor-exit v1
    :try_end_74
    .catchall {:try_start_73 .. :try_end_74} :catchall_6d

    .line 2423
    .end local v8    # "i":Ljava/util/Iterator;
    .end local v10    # "set":Ljava/util/Set;
    :cond_74
    iget-object v0, p0, mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    aget-object v0, v0, v11

    invoke-virtual {v0, v5, v2}, Landroid/media/AudioService$VolumeStreamState;->mute(Landroid/os/IBinder;Z)V

    .line 2424
    iget v0, p0, mRingerModeMutedStreams:I

    shl-int v1, v3, v11

    xor-int/lit8 v1, v1, -0x1

    and-int/2addr v0, v1

    iput v0, p0, mRingerModeMutedStreams:I

    .line 2386
    :cond_84
    :goto_84
    add-int/lit8 v11, v11, -0x1

    goto :goto_1a

    .line 2427
    :cond_87
    invoke-virtual {p0, v11}, isStreamAffectedByRingerMode(I)Z

    move-result v0

    if-eqz v0, :cond_84

    if-eq p1, v4, :cond_84

    .line 2429
    iget-object v0, p0, mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    aget-object v0, v0, v11

    invoke-virtual {v0, v5, v3}, Landroid/media/AudioService$VolumeStreamState;->mute(Landroid/os/IBinder;Z)V

    .line 2430
    iget v0, p0, mRingerModeMutedStreams:I

    shl-int v1, v3, v11

    or-int/2addr v0, v1

    iput v0, p0, mRingerModeMutedStreams:I

    goto :goto_84

    .line 2436
    :cond_9e
    if-eqz p2, :cond_aa

    .line 2437
    iget-object v0, p0, mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/4 v1, 0x3

    const/16 v6, 0x1f4

    move v3, v2

    move v4, v2

    invoke-static/range {v0 .. v6}, sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 2440
    :cond_aa
    return-void
.end method

.method private setRotationForAudioSystem()V
    .registers 3

    .prologue
    .line 6406
    iget v0, p0, mDeviceRotation:I

    packed-switch v0, :pswitch_data_2a

    .line 6420
    const-string v0, "AudioService"

    const-string v1, "Unknown device rotation"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6422
    :goto_c
    return-void

    .line 6408
    :pswitch_d
    const-string/jumbo v0, "rotation=0"

    invoke-static {v0}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    goto :goto_c

    .line 6411
    :pswitch_14
    const-string/jumbo v0, "rotation=90"

    invoke-static {v0}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    goto :goto_c

    .line 6414
    :pswitch_1b
    const-string/jumbo v0, "rotation=180"

    invoke-static {v0}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    goto :goto_c

    .line 6417
    :pswitch_22
    const-string/jumbo v0, "rotation=270"

    invoke-static {v0}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    goto :goto_c

    .line 6406
    nop

    :pswitch_data_2a
    .packed-switch 0x0
        :pswitch_d
        :pswitch_14
        :pswitch_1b
        :pswitch_22
    .end packed-switch
.end method

.method private setSafeMediaVolumeEnabled(Z)V
    .registers 10
    .param p1, "on"    # Z

    .prologue
    const/4 v3, 0x3

    const/4 v2, 0x2

    .line 6493
    iget-object v7, p0, mSafeMediaVolumeState:Ljava/lang/Integer;

    monitor-enter v7

    .line 6494
    :try_start_5
    iget-object v0, p0, mSafeMediaVolumeState:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eqz v0, :cond_2a

    iget-object v0, p0, mSafeMediaVolumeState:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2a

    .line 6496
    if-eqz p1, :cond_2c

    iget-object v0, p0, mSafeMediaVolumeState:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v2, :cond_2c

    .line 6497
    const/4 v0, 0x3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, mSafeMediaVolumeState:Ljava/lang/Integer;

    .line 6498
    invoke-direct {p0}, enforceSafeMediaVolume()V

    .line 6515
    :cond_2a
    :goto_2a
    monitor-exit v7

    .line 6516
    return-void

    .line 6499
    :cond_2c
    if-nez p1, :cond_2a

    iget-object v0, p0, mSafeMediaVolumeState:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v3, :cond_2a

    .line 6500
    const/4 v0, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, mSafeMediaVolumeState:Ljava/lang/Integer;

    .line 6505
    const/4 v0, 0x0

    iput v0, p0, mMusicActiveMs:I

    .line 6506
    iget-object v0, p0, mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/16 v1, 0xe

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const v6, 0xea60

    invoke-static/range {v0 .. v6}, sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    goto :goto_2a

    .line 6515
    :catchall_4f
    move-exception v0

    monitor-exit v7
    :try_end_51
    .catchall {:try_start_5 .. :try_end_51} :catchall_4f

    throw v0
.end method

.method private setStreamVolume(IIILjava/lang/String;I)V
    .registers 17
    .param p1, "streamType"    # I
    .param p2, "index"    # I
    .param p3, "flags"    # I
    .param p4, "callingPackage"    # Ljava/lang/String;
    .param p5, "uid"    # I

    .prologue
    .line 1688
    iget-boolean v0, p0, mUseFixedVolume:Z

    if-eqz v0, :cond_5

    .line 1805
    :cond_4
    :goto_4
    return-void

    .line 1692
    :cond_5
    invoke-direct {p0, p1}, ensureValidStreamType(I)V

    .line 1693
    iget-object v0, p0, mStreamVolumeAlias:[I

    aget v9, v0, p1

    .line 1694
    .local v9, "streamTypeAlias":I
    iget-object v0, p0, mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    aget-object v8, v0, v9

    .line 1710
    .local v8, "streamState":Landroid/media/AudioService$VolumeStreamState;
    invoke-direct {p0, p1}, getDeviceForStream(I)I

    move-result v5

    .line 1713
    .local v5, "device":I
    iget-object v0, p0, pIdOfsetVolume:[I

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    aput v1, v0, p1

    .line 1714
    iget-object v0, p0, pIdOfsetVolumeIndex:[I

    aput p2, v0, p1

    .line 1718
    const/16 v0, 0xa

    if-ne p1, v0, :cond_2b

    invoke-virtual {p0}, isRadioSpeakerOn()Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 1719
    const/4 v5, 0x2

    .line 1727
    :cond_2b
    and-int/lit16 v0, v5, 0x380

    if-nez v0, :cond_33

    and-int/lit8 v0, p3, 0x40

    if-nez v0, :cond_4

    .line 1737
    :cond_33
    iget-object v10, p0, mSafeMediaVolumeState:Ljava/lang/Integer;

    monitor-enter v10

    .line 1739
    const/4 v0, 0x0

    :try_start_37
    iput-object v0, p0, mPendingVolumeCommand:Landroid/media/AudioService$StreamVolumeCommand;

    .line 1741
    invoke-virtual {v8, v5}, Landroid/media/AudioService$VolumeStreamState;->getIndex(I)I

    move-result v7

    .line 1743
    .local v7, "oldIndex":I
    mul-int/lit8 v0, p2, 0xa

    invoke-direct {p0, v0, p1, v9}, rescaleIndex(III)I

    move-result p2

    .line 1745
    const/4 v0, 0x3

    if-ne v9, v0, :cond_61

    and-int/lit16 v0, v5, 0x380

    if-eqz v0, :cond_61

    and-int/lit8 v0, p3, 0x40

    if-nez v0, :cond_61

    .line 1748
    iget-object v1, p0, mA2dpAvrcpLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_51
    .catchall {:try_start_37 .. :try_end_51} :catchall_c5

    .line 1749
    :try_start_51
    iget-object v0, p0, mA2dp:Landroid/bluetooth/BluetoothA2dp;

    if-eqz v0, :cond_60

    iget-boolean v0, p0, mAvrcpAbsVolSupported:Z

    if-eqz v0, :cond_60

    .line 1750
    iget-object v0, p0, mA2dp:Landroid/bluetooth/BluetoothA2dp;

    div-int/lit8 v2, p2, 0xa

    invoke-virtual {v0, v2}, Landroid/bluetooth/BluetoothA2dp;->setAvrcpAbsoluteVolume(I)V

    .line 1752
    :cond_60
    monitor-exit v1
    :try_end_61
    .catchall {:try_start_51 .. :try_end_61} :catchall_c2

    .line 1755
    :cond_61
    :try_start_61
    iget-object v0, p0, mHdmiManager:Landroid/hardware/hdmi/HdmiControlManager;

    if-eqz v0, :cond_8f

    .line 1756
    iget-object v1, p0, mHdmiManager:Landroid/hardware/hdmi/HdmiControlManager;

    monitor-enter v1
    :try_end_68
    .catchall {:try_start_61 .. :try_end_68} :catchall_c5

    .line 1757
    :try_start_68
    iget-object v0, p0, mHdmiTvClient:Landroid/hardware/hdmi/HdmiTvClient;

    if-eqz v0, :cond_8e

    const/4 v0, 0x3

    if-ne v9, v0, :cond_8e

    and-int/lit16 v0, p3, 0x100

    if-nez v0, :cond_8e

    if-eq v7, p2, :cond_8e

    .line 1761
    invoke-virtual {p0, p1}, getStreamMaxVolume(I)I

    move-result v6

    .line 1762
    .local v6, "maxIndex":I
    iget-object v2, p0, mHdmiTvClient:Landroid/hardware/hdmi/HdmiTvClient;

    monitor-enter v2
    :try_end_7c
    .catchall {:try_start_68 .. :try_end_7c} :catchall_cb

    .line 1763
    :try_start_7c
    iget-boolean v0, p0, mHdmiSystemAudioSupported:Z

    if-eqz v0, :cond_8d

    .line 1764
    iget-object v0, p0, mHdmiTvClient:Landroid/hardware/hdmi/HdmiTvClient;

    add-int/lit8 v3, v7, 0x5

    div-int/lit8 v3, v3, 0xa

    add-int/lit8 v4, p2, 0x5

    div-int/lit8 v4, v4, 0xa

    invoke-virtual {v0, v3, v4, v6}, Landroid/hardware/hdmi/HdmiTvClient;->setSystemAudioVolume(III)V

    .line 1767
    :cond_8d
    monitor-exit v2
    :try_end_8e
    .catchall {:try_start_7c .. :try_end_8e} :catchall_c8

    .line 1769
    .end local v6    # "maxIndex":I
    :cond_8e
    :try_start_8e
    monitor-exit v1
    :try_end_8f
    .catchall {:try_start_8e .. :try_end_8f} :catchall_cb

    .line 1772
    :cond_8f
    and-int/lit8 p3, p3, -0x21

    .line 1773
    const/4 v0, 0x3

    if-ne v9, v0, :cond_ac

    :try_start_94
    iget v0, p0, mFixedVolumeDevices:I

    and-int/2addr v0, v5

    if-eqz v0, :cond_ac

    .line 1775
    or-int/lit8 p3, p3, 0x20

    .line 1778
    if-eqz p2, :cond_ac

    .line 1779
    iget-object v0, p0, mSafeMediaVolumeState:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_ce

    and-int/lit8 v0, v5, 0xc

    if-eqz v0, :cond_ce

    .line 1781
    iget p2, p0, mSafeMediaVolumeIndex:I

    .line 1788
    :cond_ac
    :goto_ac
    invoke-direct {p0, v9, p2, v5}, checkSafeMediaVolume(III)Z

    move-result v0

    if-nez v0, :cond_df

    .line 1789
    iget-object v0, p0, mVolumeController:Landroid/media/AudioService$VolumeController;

    invoke-virtual {v0, p3}, Landroid/media/AudioService$VolumeController;->postDisplaySafeVolumeWarning(I)V

    .line 1791
    const/high16 v0, 0x10000

    and-int/2addr v0, p3

    if-eqz v0, :cond_d3

    .line 1803
    :goto_bc
    monitor-exit v10
    :try_end_bd
    .catchall {:try_start_94 .. :try_end_bd} :catchall_c5

    .line 1804
    invoke-direct {p0, p1, v7, p2, p3}, sendVolumeUpdate(IIII)V

    goto/16 :goto_4

    .line 1752
    :catchall_c2
    move-exception v0

    :try_start_c3
    monitor-exit v1
    :try_end_c4
    .catchall {:try_start_c3 .. :try_end_c4} :catchall_c2

    :try_start_c4
    throw v0

    .line 1803
    .end local v7    # "oldIndex":I
    :catchall_c5
    move-exception v0

    monitor-exit v10
    :try_end_c7
    .catchall {:try_start_c4 .. :try_end_c7} :catchall_c5

    throw v0

    .line 1767
    .restart local v6    # "maxIndex":I
    .restart local v7    # "oldIndex":I
    :catchall_c8
    move-exception v0

    :try_start_c9
    monitor-exit v2
    :try_end_ca
    .catchall {:try_start_c9 .. :try_end_ca} :catchall_c8

    :try_start_ca
    throw v0

    .line 1769
    .end local v6    # "maxIndex":I
    :catchall_cb
    move-exception v0

    monitor-exit v1
    :try_end_cd
    .catchall {:try_start_ca .. :try_end_cd} :catchall_cb

    :try_start_cd
    throw v0

    .line 1783
    :cond_ce
    invoke-virtual {v8}, Landroid/media/AudioService$VolumeStreamState;->getMaxIndex()I

    move-result p2

    goto :goto_ac

    .line 1796
    :cond_d3
    new-instance v0, Landroid/media/AudioService$StreamVolumeCommand;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    invoke-direct/range {v0 .. v5}, Landroid/media/AudioService$StreamVolumeCommand;-><init>(Landroid/media/AudioService;IIII)V

    iput-object v0, p0, mPendingVolumeCommand:Landroid/media/AudioService$StreamVolumeCommand;

    goto :goto_bc

    .line 1800
    :cond_df
    invoke-direct {p0, p1, p2, p3, v5}, onSetStreamVolume(IIII)V

    .line 1801
    iget-object v0, p0, mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    aget-object v0, v0, p1

    invoke-virtual {v0, v5}, Landroid/media/AudioService$VolumeStreamState;->getIndex(I)I
    :try_end_e9
    .catchall {:try_start_cd .. :try_end_e9} :catchall_c5

    move-result p2

    goto :goto_bc
.end method

.method private setStreamVolumeInt(IIIZ)V
    .registers 12
    .param p1, "streamType"    # I
    .param p2, "index"    # I
    .param p3, "device"    # I
    .param p4, "force"    # Z

    .prologue
    const/4 v1, 0x0

    .line 2011
    iget-object v0, p0, mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    aget-object v5, v0, p1

    .line 2013
    .local v5, "streamState":Landroid/media/AudioService$VolumeStreamState;
    invoke-virtual {v5, p2, p3}, Landroid/media/AudioService$VolumeStreamState;->setIndex(II)Z

    move-result v0

    if-nez v0, :cond_d

    if-eqz p4, :cond_16

    .line 2016
    :cond_d
    iget-object v0, p0, mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/4 v2, 0x2

    move v3, p3

    move v4, v1

    move v6, v1

    invoke-static/range {v0 .. v6}, sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 2024
    :cond_16
    return-void
.end method

.method private setWiredDeviceConnectionStateBeforeBoot()V
    .registers 9

    .prologue
    const/4 v7, 0x1

    .line 7071
    const/4 v1, -0x1

    .line 7072
    .local v1, "device_id":I
    const/4 v2, 0x0

    .line 7075
    .local v2, "file_reader":Ljava/io/FileReader;
    :try_start_3
    new-instance v3, Ljava/io/FileReader;

    const-string v5, "/sys/class/switch/h2w/state"

    invoke-direct {v3, v5}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_a} :catch_3a
    .catchall {:try_start_3 .. :try_end_a} :catchall_42

    .line 7077
    .end local v2    # "file_reader":Ljava/io/FileReader;
    .local v3, "file_reader":Ljava/io/FileReader;
    :try_start_a
    invoke-virtual {v3}, Ljava/io/FileReader;->ready()Z

    move-result v5

    if-eqz v5, :cond_2d

    .line 7078
    const/16 v5, 0x400

    new-array v0, v5, [C

    .line 7079
    .local v0, "buffer":[C
    const/4 v5, 0x0

    const/16 v6, 0x400

    invoke-virtual {v3, v0, v5, v6}, Ljava/io/FileReader;->read([CII)I

    move-result v4

    .line 7080
    .local v4, "len":I
    new-instance v5, Ljava/lang/String;

    const/4 v6, 0x0

    invoke-direct {v5, v0, v6, v4}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I
    :try_end_2c
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_2c} :catch_60
    .catchall {:try_start_a .. :try_end_2c} :catchall_5d

    move-result v1

    .line 7085
    .end local v0    # "buffer":[C
    .end local v4    # "len":I
    :cond_2d
    if-eqz v3, :cond_63

    .line 7086
    :try_start_2f
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V
    :try_end_32
    .catch Ljava/io/IOException; {:try_start_2f .. :try_end_32} :catch_37

    .line 7087
    const/4 v2, 0x0

    .line 7093
    .end local v3    # "file_reader":Ljava/io/FileReader;
    .restart local v2    # "file_reader":Ljava/io/FileReader;
    :cond_33
    :goto_33
    packed-switch v1, :pswitch_data_66

    .line 7107
    :goto_36
    return-void

    .line 7089
    .end local v2    # "file_reader":Ljava/io/FileReader;
    .restart local v3    # "file_reader":Ljava/io/FileReader;
    :catch_37
    move-exception v5

    move-object v2, v3

    .line 7091
    .end local v3    # "file_reader":Ljava/io/FileReader;
    .restart local v2    # "file_reader":Ljava/io/FileReader;
    goto :goto_33

    .line 7082
    :catch_3a
    move-exception v5

    .line 7085
    :goto_3b
    if-eqz v2, :cond_33

    .line 7086
    :try_start_3d
    invoke-virtual {v2}, Ljava/io/FileReader;->close()V
    :try_end_40
    .catch Ljava/io/IOException; {:try_start_3d .. :try_end_40} :catch_59

    .line 7087
    const/4 v2, 0x0

    goto :goto_33

    .line 7084
    :catchall_42
    move-exception v5

    .line 7085
    :goto_43
    if-eqz v2, :cond_49

    .line 7086
    :try_start_45
    invoke-virtual {v2}, Ljava/io/FileReader;->close()V
    :try_end_48
    .catch Ljava/io/IOException; {:try_start_45 .. :try_end_48} :catch_5b

    .line 7087
    const/4 v2, 0x0

    .line 7090
    :cond_49
    :goto_49
    throw v5

    .line 7095
    :pswitch_4a
    const/4 v5, 0x4

    const-string v6, "h2w-before-boot-completed"

    invoke-virtual {p0, v5, v7, v6}, setWiredDeviceConnectionState(IILjava/lang/String;)V

    goto :goto_36

    .line 7100
    :pswitch_51
    const/16 v5, 0x8

    const-string v6, "h2w-before-boot-completed"

    invoke-virtual {p0, v5, v7, v6}, setWiredDeviceConnectionState(IILjava/lang/String;)V

    goto :goto_36

    .line 7089
    :catch_59
    move-exception v5

    goto :goto_33

    :catch_5b
    move-exception v6

    goto :goto_49

    .line 7084
    .end local v2    # "file_reader":Ljava/io/FileReader;
    .restart local v3    # "file_reader":Ljava/io/FileReader;
    :catchall_5d
    move-exception v5

    move-object v2, v3

    .end local v3    # "file_reader":Ljava/io/FileReader;
    .restart local v2    # "file_reader":Ljava/io/FileReader;
    goto :goto_43

    .line 7082
    .end local v2    # "file_reader":Ljava/io/FileReader;
    .restart local v3    # "file_reader":Ljava/io/FileReader;
    :catch_60
    move-exception v5

    move-object v2, v3

    .end local v3    # "file_reader":Ljava/io/FileReader;
    .restart local v2    # "file_reader":Ljava/io/FileReader;
    goto :goto_3b

    .end local v2    # "file_reader":Ljava/io/FileReader;
    .restart local v3    # "file_reader":Ljava/io/FileReader;
    :cond_63
    move-object v2, v3

    .end local v3    # "file_reader":Ljava/io/FileReader;
    .restart local v2    # "file_reader":Ljava/io/FileReader;
    goto :goto_33

    .line 7093
    nop

    :pswitch_data_66
    .packed-switch 0x1
        :pswitch_4a
        :pswitch_51
    .end packed-switch
.end method

.method public static streamToString(I)Ljava/lang/String;
    .registers 3
    .param p0, "stream"    # I

    .prologue
    .line 1078
    if-ltz p0, :cond_c

    sget-object v0, STREAM_NAMES:[Ljava/lang/String;

    array-length v0, v0

    if-ge p0, v0, :cond_c

    sget-object v0, STREAM_NAMES:[Ljava/lang/String;

    aget-object v0, v0, p0

    .line 1080
    :goto_b
    return-object v0

    .line 1079
    :cond_c
    const/high16 v0, -0x80000000

    if-ne p0, v0, :cond_13

    const-string v0, "USE_DEFAULT_STREAM_TYPE"

    goto :goto_b

    .line 1080
    :cond_13
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UNKNOWN_STREAM_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_b
.end method

.method private updateStreamVolumeAlias(Z)V
    .registers 10
    .param p1, "updateVolumes"    # Z

    .prologue
    const/16 v5, 0x8

    const/4 v3, 0x0

    .line 1086
    iget v0, p0, mPlatformType:I

    packed-switch v0, :pswitch_data_5e

    .line 1096
    iget-object v0, p0, STREAM_VOLUME_ALIAS_DEFAULT:[I

    iput-object v0, p0, mStreamVolumeAlias:[I

    .line 1104
    const/4 v7, 0x3

    .line 1109
    .local v7, "dtmfStreamAlias":I
    :goto_d
    invoke-direct {p0}, isPlatformTelevision()Z

    move-result v0

    if-eqz v0, :cond_48

    .line 1110
    iput v3, p0, mRingerModeAffectedStreams:I

    .line 1120
    :goto_15
    iget-object v0, p0, mStreamVolumeAlias:[I

    aput v7, v0, v5

    .line 1121
    if-eqz p1, :cond_3b

    .line 1122
    iget-object v0, p0, mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    aget-object v0, v0, v5

    iget-object v1, p0, mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    aget-object v1, v1, v7

    invoke-virtual {v0, v1}, Landroid/media/AudioService$VolumeStreamState;->setAllIndexes(Landroid/media/AudioService$VolumeStreamState;)V

    .line 1124
    invoke-virtual {p0}, getRingerMode()I

    move-result v0

    invoke-direct {p0, v0, v3}, setRingerModeInt(IZ)V

    .line 1125
    iget-object v0, p0, mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/16 v1, 0xa

    const/4 v2, 0x2

    iget-object v4, p0, mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    aget-object v5, v4, v5

    move v4, v3

    move v6, v3

    invoke-static/range {v0 .. v6}, sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 1132
    :cond_3b
    return-void

    .line 1088
    .end local v7    # "dtmfStreamAlias":I
    :pswitch_3c
    iget-object v0, p0, STREAM_VOLUME_ALIAS_VOICE:[I

    iput-object v0, p0, mStreamVolumeAlias:[I

    .line 1089
    const/4 v7, 0x2

    .line 1090
    .restart local v7    # "dtmfStreamAlias":I
    goto :goto_d

    .line 1092
    .end local v7    # "dtmfStreamAlias":I
    :pswitch_42
    iget-object v0, p0, STREAM_VOLUME_ALIAS_TELEVISION:[I

    iput-object v0, p0, mStreamVolumeAlias:[I

    .line 1093
    const/4 v7, 0x3

    .line 1094
    .restart local v7    # "dtmfStreamAlias":I
    goto :goto_d

    .line 1112
    :cond_48
    invoke-virtual {p0}, isInCommunication()Z

    move-result v0

    if-eqz v0, :cond_56

    .line 1113
    const/4 v7, 0x0

    .line 1114
    iget v0, p0, mRingerModeAffectedStreams:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, mRingerModeAffectedStreams:I

    goto :goto_15

    .line 1116
    :cond_56
    iget v0, p0, mRingerModeAffectedStreams:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, mRingerModeAffectedStreams:I

    goto :goto_15

    .line 1086
    nop

    :pswitch_data_5e
    .packed-switch 0x1
        :pswitch_3c
        :pswitch_42
    .end packed-switch
.end method

.method private waitForAudioHandlerCreation()V
    .registers 4

    .prologue
    .line 933
    monitor-enter p0

    .line 934
    :goto_1
    :try_start_1
    iget-object v1, p0, mAudioHandler:Landroid/media/AudioService$AudioHandler;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_12

    if-nez v1, :cond_15

    .line 937
    :try_start_5
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_8
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_8} :catch_9
    .catchall {:try_start_5 .. :try_end_8} :catchall_12

    goto :goto_1

    .line 938
    :catch_9
    move-exception v0

    .line 939
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_a
    const-string v1, "AudioService"

    const-string v2, "Interrupted while waiting on volume handler."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 942
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catchall_12
    move-exception v1

    monitor-exit p0
    :try_end_14
    .catchall {:try_start_a .. :try_end_14} :catchall_12

    throw v1

    :cond_15
    :try_start_15
    monitor-exit p0
    :try_end_16
    .catchall {:try_start_15 .. :try_end_16} :catchall_12

    .line 943
    return-void
.end method


# virtual methods
.method public abandonAudioFocus(Landroid/media/IAudioFocusDispatcher;Ljava/lang/String;)I
    .registers 4
    .param p1, "fd"    # Landroid/media/IAudioFocusDispatcher;
    .param p2, "clientId"    # Ljava/lang/String;

    .prologue
    .line 6282
    iget-object v0, p0, mMediaFocusControl:Landroid/media/MediaFocusControl;

    invoke-virtual {v0, p1, p2}, Landroid/media/MediaFocusControl;->abandonAudioFocus(Landroid/media/IAudioFocusDispatcher;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method protected addConnectedDevice(ILjava/lang/String;)V
    .registers 6
    .param p1, "nDevice"    # I
    .param p2, "str"    # Ljava/lang/String;

    .prologue
    .line 1254
    iget-object v1, p0, mConnectedDevices:Ljava/util/HashMap;

    monitor-enter v1

    .line 1255
    :try_start_3
    iget-object v0, p0, mConnectedDevices:Ljava/util/HashMap;

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v2, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1256
    monitor-exit v1

    .line 1257
    return-void

    .line 1256
    :catchall_f
    move-exception v0

    monitor-exit v1
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_f

    throw v0
.end method

.method public addMediaPlayerAndUpdateRemoteController(Ljava/lang/String;)V
    .registers 10
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x1

    .line 949
    const/4 v2, 0x1

    .line 950
    .local v2, "playerToAdd":Z
    sget-object v4, mMediaPlayers:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_59

    .line 951
    sget-object v4, mMediaPlayers:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 952
    .local v3, "rccIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/media/AudioService$MediaPlayerInfo;>;"
    :goto_10
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_59

    .line 953
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioService$MediaPlayerInfo;

    .line 954
    .local v1, "player":Landroid/media/AudioService$MediaPlayerInfo;
    invoke-virtual {v1}, Landroid/media/AudioService$MediaPlayerInfo;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_32

    .line 955
    const-string v4, "AudioService"

    const-string v5, "Player entry present, no need to add"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 956
    const/4 v2, 0x0

    .line 957
    invoke-virtual {v1, v7}, Landroid/media/AudioService$MediaPlayerInfo;->setFocus(Z)V

    goto :goto_10

    .line 959
    :cond_32
    const-string v4, "AudioService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Player: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Landroid/media/AudioService$MediaPlayerInfo;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "Lost Focus"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 960
    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Landroid/media/AudioService$MediaPlayerInfo;->setFocus(Z)V

    goto :goto_10

    .line 964
    .end local v1    # "player":Landroid/media/AudioService$MediaPlayerInfo;
    .end local v3    # "rccIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/media/AudioService$MediaPlayerInfo;>;"
    :cond_59
    if-eqz v2, :cond_83

    .line 965
    const-string v4, "AudioService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Adding Player: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " to available player list"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 966
    sget-object v4, mMediaPlayers:Ljava/util/ArrayList;

    new-instance v5, Landroid/media/AudioService$MediaPlayerInfo;

    invoke-direct {v5, p0, p1, v7}, Landroid/media/AudioService$MediaPlayerInfo;-><init>(Landroid/media/AudioService;Ljava/lang/String;Z)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 968
    :cond_83
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v4, "org.codeaurora.bluetooth.RCC_CHANGED_ACTION"

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 969
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v4, "org.codeaurora.bluetooth.EXTRA_CALLING_PACKAGE_NAME"

    invoke-virtual {v0, v4, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 970
    const-string/jumbo v4, "org.codeaurora.bluetooth.EXTRA_FOCUS_CHANGED_VALUE"

    invoke-virtual {v0, v4, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 971
    const-string/jumbo v4, "org.codeaurora.bluetooth.EXTRA_AVAILABLITY_CHANGED_VALUE"

    invoke-virtual {v0, v4, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 972
    invoke-virtual {p0, v0}, sendBroadcastToAll(Landroid/content/Intent;)V

    .line 973
    const-string v4, "AudioService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "updating focussed RCC change to RCD: CallingPackageName:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 975
    return-void
.end method

.method public adjustMasterVolume(IILjava/lang/String;)V
    .registers 11
    .param p1, "steps"    # I
    .param p2, "flags"    # I
    .param p3, "callingPackage"    # Ljava/lang/String;

    .prologue
    .line 1615
    iget-boolean v5, p0, mUseFixedVolume:Z

    if-eqz v5, :cond_5

    .line 1630
    :goto_4
    return-void

    .line 1618
    :cond_5
    invoke-direct {p0, p1}, ensureValidSteps(I)V

    .line 1619
    invoke-static {}, Landroid/media/AudioSystem;->getMasterVolume()F

    move-result v5

    const/high16 v6, 0x42c80000    # 100.0f

    mul-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v4

    .line 1620
    .local v4, "volume":I
    const/4 v0, 0x0

    .line 1621
    .local v0, "delta":I
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v3

    .line 1622
    .local v3, "numSteps":I
    if-lez p1, :cond_26

    const/4 v1, 0x1

    .line 1623
    .local v1, "direction":I
    :goto_1b
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1c
    if-ge v2, v3, :cond_28

    .line 1624
    invoke-direct {p0, v1, v4}, findVolumeDelta(II)I

    move-result v0

    .line 1625
    add-int/2addr v4, v0

    .line 1623
    add-int/lit8 v2, v2, 0x1

    goto :goto_1c

    .line 1622
    .end local v1    # "direction":I
    .end local v2    # "i":I
    :cond_26
    const/4 v1, -0x1

    goto :goto_1b

    .line 1629
    .restart local v1    # "direction":I
    .restart local v2    # "i":I
    :cond_28
    invoke-virtual {p0, v4, p2, p3}, setMasterVolume(IILjava/lang/String;)V

    goto :goto_4
.end method

.method public adjustStreamVolume(IIILjava/lang/String;)V
    .registers 11
    .param p1, "streamType"    # I
    .param p2, "direction"    # I
    .param p3, "flags"    # I
    .param p4, "callingPackage"    # Ljava/lang/String;

    .prologue
    .line 1417
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, adjustStreamVolume(IIILjava/lang/String;I)V

    .line 1418
    return-void
.end method

.method public adjustSuggestedStreamVolume(IIILjava/lang/String;)V
    .registers 11
    .param p1, "direction"    # I
    .param p2, "suggestedStreamType"    # I
    .param p3, "flags"    # I
    .param p4, "callingPackage"    # Ljava/lang/String;

    .prologue
    .line 1344
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, adjustSuggestedStreamVolume(IIILjava/lang/String;I)V

    .line 1346
    return-void
.end method

.method public avrcpSupportsAbsoluteVolume(Ljava/lang/String;Z)V
    .registers 11
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "support"    # Z

    .prologue
    .line 5541
    iget-object v7, p0, mA2dpAvrcpLock:Ljava/lang/Object;

    monitor-enter v7

    .line 5542
    :try_start_3
    iput-boolean p2, p0, mAvrcpAbsVolSupported:Z

    .line 5543
    iget-object v0, p0, mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/16 v3, 0x80

    const/4 v4, 0x0

    iget-object v5, p0, mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    const/4 v6, 0x3

    aget-object v5, v5, v6

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 5546
    iget-object v0, p0, mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/16 v3, 0x80

    const/4 v4, 0x0

    iget-object v5, p0, mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    const/4 v6, 0x2

    aget-object v5, v5, v6

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 5549
    monitor-exit v7

    .line 5550
    return-void

    .line 5549
    :catchall_27
    move-exception v0

    monitor-exit v7
    :try_end_29
    .catchall {:try_start_3 .. :try_end_29} :catchall_27

    throw v0
.end method

.method checkAudioSettingsPermission(Ljava/lang/String;)Z
    .registers 5
    .param p1, "method"    # Ljava/lang/String;

    .prologue
    .line 4110
    iget-object v1, p0, mContext:Landroid/content/Context;

    const-string v2, "android.permission.MODIFY_AUDIO_SETTINGS"

    invoke-virtual {v1, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_c

    .line 4112
    const/4 v1, 0x1

    .line 4118
    :goto_b
    return v1

    .line 4114
    :cond_c
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Audio Settings Permission Denial: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " from pid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", uid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4117
    .local v0, "msg":Ljava/lang/String;
    const-string v1, "AudioService"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4118
    const/4 v1, 0x0

    goto :goto_b
.end method

.method protected checkSendBecomingNoisyIntent(II)I
    .registers 14
    .param p1, "device"    # I
    .param p2, "state"    # I

    .prologue
    const/16 v10, 0x8

    const/4 v9, 0x4

    const/4 v2, 0x0

    .line 5674
    const/4 v7, 0x0

    .line 5675
    .local v7, "delay":I
    if-nez p2, :cond_5b

    iget v0, p0, mBecomingNoisyIntentDevices:I

    and-int/2addr v0, p1

    if-eqz v0, :cond_5b

    .line 5696
    iget-object v0, p0, mSamsungAudioService:Landroid/media/SamsungAudioService;

    invoke-virtual {v0}, Landroid/media/SamsungAudioService;->getCurOutDevice()I

    move-result v8

    .line 5697
    .local v8, "outDevice":I
    const/4 v0, -0x1

    if-eq v8, v0, :cond_5b

    .line 5699
    const/4 v0, 0x7

    invoke-static {v0, v2}, Landroid/media/AudioSystem;->isStreamActive(II)Z

    move-result v0

    if-eqz v0, :cond_28

    if-eq p1, v9, :cond_20

    if-ne p1, v10, :cond_28

    :cond_20
    const/4 v0, 0x1

    invoke-static {v0}, Landroid/media/AudioSystem;->getForceUse(I)I

    move-result v0

    if-eq v0, v9, :cond_28

    .line 5700
    move v8, p1

    .line 5703
    :cond_28
    and-int v0, v8, p1

    if-eqz v0, :cond_5b

    .line 5704
    iget-object v0, p0, mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/16 v1, 0xf

    const/4 v5, 0x0

    move v3, p1

    move v4, v2

    move v6, v2

    invoke-static/range {v0 .. v6}, sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 5712
    const/16 v0, 0x400

    if-ne p1, v0, :cond_7c

    iget-object v0, p0, mSamsungAudioService:Landroid/media/SamsungAudioService;

    invoke-static {}, Landroid/media/SamsungAudioService;->getFactoryMode()Z

    move-result v0

    if-eqz v0, :cond_7c

    .line 5713
    const-string v0, "AudioService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "hdmi delay in Factorymode  ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5726
    .end local v8    # "outDevice":I
    :cond_5b
    :goto_5b
    iget-object v0, p0, mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/16 v1, 0x65

    invoke-virtual {v0, v1}, Landroid/media/AudioService$AudioHandler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_79

    iget-object v0, p0, mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/16 v1, 0x66

    invoke-virtual {v0, v1}, Landroid/media/AudioService$AudioHandler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_79

    iget-object v0, p0, mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/media/AudioService$AudioHandler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_7b

    .line 5729
    :cond_79
    const/16 v7, 0x3e8

    .line 5731
    :cond_7b
    return v7

    .line 5714
    .restart local v8    # "outDevice":I
    :cond_7c
    if-eq p1, v9, :cond_80

    if-ne p1, v10, :cond_a3

    :cond_80
    iget v0, p0, mMode:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_89

    iget v0, p0, mMode:I

    if-ne v0, v9, :cond_a3

    .line 5716
    :cond_89
    const/4 v7, 0x0

    .line 5717
    const-string v0, "AudioService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "in call wired headset/headphone delay ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5b

    .line 5719
    :cond_a3
    const/16 v7, 0x1f4

    goto :goto_5b
.end method

.method public clearAllScoClients(IZ)V
    .registers 9
    .param p1, "exceptPid"    # I
    .param p2, "stopSco"    # Z

    .prologue
    .line 3411
    iget-object v5, p0, mScoClients:Ljava/util/ArrayList;

    monitor-enter v5

    .line 3412
    const/4 v2, 0x0

    .line 3413
    .local v2, "savedClient":Landroid/media/AudioService$ScoClient;
    :try_start_4
    iget-object v4, p0, mScoClients:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 3414
    .local v3, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_b
    if-ge v1, v3, :cond_23

    .line 3415
    iget-object v4, p0, mScoClients:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioService$ScoClient;

    .line 3416
    .local v0, "cl":Landroid/media/AudioService$ScoClient;
    invoke-virtual {v0}, Landroid/media/AudioService$ScoClient;->getPid()I

    move-result v4

    if-eq v4, p1, :cond_21

    .line 3417
    invoke-virtual {v0, p2}, Landroid/media/AudioService$ScoClient;->clearCount(Z)V

    .line 3414
    :goto_1e
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 3419
    :cond_21
    move-object v2, v0

    goto :goto_1e

    .line 3422
    .end local v0    # "cl":Landroid/media/AudioService$ScoClient;
    :cond_23
    iget-object v4, p0, mScoClients:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 3423
    if-eqz v2, :cond_2f

    .line 3424
    iget-object v4, p0, mScoClients:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3426
    :cond_2f
    monitor-exit v5

    .line 3427
    return-void

    .line 3426
    .end local v1    # "i":I
    .end local v3    # "size":I
    :catchall_31
    move-exception v4

    monitor-exit v5
    :try_end_33
    .catchall {:try_start_4 .. :try_end_33} :catchall_31

    throw v4
.end method

.method public disableSafeMediaVolume()V
    .registers 7

    .prologue
    .line 6575
    const-string v1, "disable the safe media volume"

    invoke-direct {p0, v1}, enforceSelfOrSystemUI(Ljava/lang/String;)V

    .line 6576
    iget-object v2, p0, mSafeMediaVolumeState:Ljava/lang/Integer;

    monitor-enter v2

    .line 6577
    const/4 v1, 0x0

    :try_start_9
    invoke-direct {p0, v1}, setSafeMediaVolumeEnabled(Z)V

    .line 6578
    iget-object v1, p0, mPendingVolumeCommand:Landroid/media/AudioService$StreamVolumeCommand;

    if-eqz v1, :cond_42

    .line 6579
    iget-object v1, p0, mPendingVolumeCommand:Landroid/media/AudioService$StreamVolumeCommand;

    iget v1, v1, Landroid/media/AudioService$StreamVolumeCommand;->mStreamType:I

    iget-object v3, p0, mPendingVolumeCommand:Landroid/media/AudioService$StreamVolumeCommand;

    iget v3, v3, Landroid/media/AudioService$StreamVolumeCommand;->mIndex:I

    iget-object v4, p0, mPendingVolumeCommand:Landroid/media/AudioService$StreamVolumeCommand;

    iget v4, v4, Landroid/media/AudioService$StreamVolumeCommand;->mFlags:I

    iget-object v5, p0, mPendingVolumeCommand:Landroid/media/AudioService$StreamVolumeCommand;

    iget v5, v5, Landroid/media/AudioService$StreamVolumeCommand;->mDevice:I

    invoke-direct {p0, v1, v3, v4, v5}, onSetStreamVolume(IIII)V

    .line 6584
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.media.VOLUME_CHANGED_ACTION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 6585
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "android.media.EXTRA_VOLUME_STREAM_TYPE"

    iget-object v3, p0, mPendingVolumeCommand:Landroid/media/AudioService$StreamVolumeCommand;

    iget v3, v3, Landroid/media/AudioService$StreamVolumeCommand;->mStreamType:I

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 6586
    const-string v1, "android.media.EXTRA_VOLUME_STREAM_VALUE"

    iget-object v3, p0, mPendingVolumeCommand:Landroid/media/AudioService$StreamVolumeCommand;

    iget v3, v3, Landroid/media/AudioService$StreamVolumeCommand;->mIndex:I

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 6587
    invoke-virtual {p0, v0}, sendBroadcastToAll(Landroid/content/Intent;)V

    .line 6589
    const/4 v1, 0x0

    iput-object v1, p0, mPendingVolumeCommand:Landroid/media/AudioService$StreamVolumeCommand;

    .line 6591
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_42
    monitor-exit v2

    .line 6592
    return-void

    .line 6591
    :catchall_44
    move-exception v1

    monitor-exit v2
    :try_end_46
    .catchall {:try_start_9 .. :try_end_46} :catchall_44

    throw v1
.end method

.method public dismissVolumePanel()V
    .registers 2

    .prologue
    .line 7062
    iget-object v0, p0, mVolumeController:Landroid/media/AudioService$VolumeController;

    invoke-virtual {v0}, Landroid/media/AudioService$VolumeController;->postDismiss()V

    .line 7063
    return-void
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 7
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 6746
    iget-object v0, p0, mContext:Landroid/content/Context;

    const-string v1, "android.permission.DUMP"

    const-string v2, "AudioService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 6748
    iget-object v0, p0, mMediaFocusControl:Landroid/media/MediaFocusControl;

    invoke-virtual {v0, p2}, Landroid/media/MediaFocusControl;->dump(Ljava/io/PrintWriter;)V

    .line 6750
    iget-object v0, p0, mSamsungAudioService:Landroid/media/SamsungAudioService;

    invoke-virtual {v0, p2}, Landroid/media/SamsungAudioService;->dump(Ljava/io/PrintWriter;)V

    .line 6752
    invoke-direct {p0, p2}, dumpStreamStates(Ljava/io/PrintWriter;)V

    .line 6753
    invoke-direct {p0, p2}, dumpRingerMode(Ljava/io/PrintWriter;)V

    .line 6754
    invoke-direct {p0, p2}, dumpScoClients(Ljava/io/PrintWriter;)V

    .line 6755
    const-string v0, "\nAudio routes:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6756
    const-string v0, "  mMainType=0x"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, mCurAudioRoutes:Landroid/media/AudioRoutesInfo;

    iget v0, v0, Landroid/media/AudioRoutesInfo;->mMainType:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6757
    const-string v0, "  mBluetoothName="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, mCurAudioRoutes:Landroid/media/AudioRoutesInfo;

    iget-object v0, v0, Landroid/media/AudioRoutesInfo;->mBluetoothName:Ljava/lang/CharSequence;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 6759
    const-string v0, "\nOther state:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6760
    const-string v0, "  mVolumeController="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, mVolumeController:Landroid/media/AudioService$VolumeController;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 6761
    const-string v0, "  mSafeMediaVolumeState="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6762
    iget-object v0, p0, mSafeMediaVolumeState:Ljava/lang/Integer;

    invoke-static {v0}, safeMediaVolumeStateToString(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6763
    const-string v0, "  mSafeMediaVolumeIndex="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, mSafeMediaVolumeIndex:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 6764
    const-string v0, "  mPendingVolumeCommand="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, mPendingVolumeCommand:Landroid/media/AudioService$StreamVolumeCommand;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 6765
    const-string v0, "  mMusicActiveMs="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, mMusicActiveMs:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 6766
    const-string v0, "  mMcc="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, mMcc:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 6767
    return-void
.end method

.method public forceRemoteSubmixFullVolume(ZLandroid/os/IBinder;)V
    .registers 8
    .param p1, "startForcing"    # Z
    .param p2, "cb"    # Landroid/os/IBinder;

    .prologue
    const v4, 0x8000

    const v3, -0x8001

    .line 2131
    if-nez p2, :cond_9

    .line 2167
    :goto_8
    return-void

    .line 2134
    :cond_9
    iget-object v1, p0, mContext:Landroid/content/Context;

    const-string v2, "android.permission.CAPTURE_AUDIO_OUTPUT"

    invoke-virtual {v1, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_1b

    .line 2136
    const-string v1, "AudioService"

    const-string v2, "Trying to call forceRemoteSubmixFullVolume() without CAPTURE_AUDIO_OUTPUT"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    .line 2139
    :cond_1b
    iget-object v2, p0, mRmtSbmxFullVolDeathHandlers:Ljava/util/ArrayList;

    monitor-enter v2

    .line 2140
    const/4 v0, 0x0

    .line 2141
    .local v0, "applyRequired":Z
    if-eqz p1, :cond_59

    .line 2142
    :try_start_21
    invoke-direct {p0, p2}, hasRmtSbmxFullVolDeathHandlerFor(Landroid/os/IBinder;)Z

    move-result v1

    if-nez v1, :cond_46

    .line 2143
    iget-object v1, p0, mRmtSbmxFullVolDeathHandlers:Ljava/util/ArrayList;

    new-instance v3, Landroid/media/AudioService$RmtSbmxFullVolDeathHandler;

    invoke-direct {v3, p0, p2}, Landroid/media/AudioService$RmtSbmxFullVolDeathHandler;-><init>(Landroid/media/AudioService;Landroid/os/IBinder;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2144
    iget v1, p0, mRmtSbmxFullVolRefCount:I

    if-nez v1, :cond_40

    .line 2145
    iget v1, p0, mFullVolumeDevices:I

    or-int/2addr v1, v4

    iput v1, p0, mFullVolumeDevices:I

    .line 2146
    iget v1, p0, mFixedVolumeDevices:I

    or-int/2addr v1, v4

    iput v1, p0, mFixedVolumeDevices:I

    .line 2147
    const/4 v0, 0x1

    .line 2149
    :cond_40
    iget v1, p0, mRmtSbmxFullVolRefCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, mRmtSbmxFullVolRefCount:I

    .line 2161
    :cond_46
    :goto_46
    if-eqz v0, :cond_54

    .line 2163
    const/4 v1, 0x3

    invoke-direct {p0, v1}, checkAllFixedVolumeDevices(I)V

    .line 2164
    iget-object v1, p0, mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    const/4 v3, 0x3

    aget-object v1, v1, v3

    invoke-virtual {v1}, Landroid/media/AudioService$VolumeStreamState;->applyAllVolumes()V

    .line 2166
    :cond_54
    monitor-exit v2

    goto :goto_8

    :catchall_56
    move-exception v1

    monitor-exit v2
    :try_end_58
    .catchall {:try_start_21 .. :try_end_58} :catchall_56

    throw v1

    .line 2152
    :cond_59
    :try_start_59
    invoke-direct {p0, p2}, discardRmtSbmxFullVolDeathHandlerFor(Landroid/os/IBinder;)Z

    move-result v1

    if-eqz v1, :cond_46

    iget v1, p0, mRmtSbmxFullVolRefCount:I

    if-lez v1, :cond_46

    .line 2153
    iget v1, p0, mRmtSbmxFullVolRefCount:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, mRmtSbmxFullVolRefCount:I

    .line 2154
    iget v1, p0, mRmtSbmxFullVolRefCount:I

    if-nez v1, :cond_46

    .line 2155
    iget v1, p0, mFullVolumeDevices:I

    and-int/2addr v1, v3

    iput v1, p0, mFullVolumeDevices:I

    .line 2156
    iget v1, p0, mFixedVolumeDevices:I

    and-int/2addr v1, v3

    iput v1, p0, mFixedVolumeDevices:I
    :try_end_77
    .catchall {:try_start_59 .. :try_end_77} :catchall_56

    .line 2157
    const/4 v0, 0x1

    goto :goto_46
.end method

.method public forceVolumeControlStream(ILandroid/os/IBinder;)V
    .registers 6
    .param p1, "streamType"    # I
    .param p2, "cb"    # Landroid/os/IBinder;

    .prologue
    .line 1809
    iget-object v1, p0, mForceControlStreamLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1810
    :try_start_3
    iput p1, p0, mVolumeControlStream:I

    .line 1811
    iget v0, p0, mVolumeControlStream:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_18

    .line 1812
    iget-object v0, p0, mForceControlStreamClient:Landroid/media/AudioService$ForceControlStreamClient;

    if-eqz v0, :cond_16

    .line 1813
    iget-object v0, p0, mForceControlStreamClient:Landroid/media/AudioService$ForceControlStreamClient;

    invoke-virtual {v0}, Landroid/media/AudioService$ForceControlStreamClient;->release()V

    .line 1814
    const/4 v0, 0x0

    iput-object v0, p0, mForceControlStreamClient:Landroid/media/AudioService$ForceControlStreamClient;

    .line 1819
    :cond_16
    :goto_16
    monitor-exit v1

    .line 1820
    return-void

    .line 1817
    :cond_18
    new-instance v0, Landroid/media/AudioService$ForceControlStreamClient;

    invoke-direct {v0, p0, p2}, Landroid/media/AudioService$ForceControlStreamClient;-><init>(Landroid/media/AudioService;Landroid/os/IBinder;)V

    iput-object v0, p0, mForceControlStreamClient:Landroid/media/AudioService$ForceControlStreamClient;

    goto :goto_16

    .line 1819
    :catchall_20
    move-exception v0

    monitor-exit v1
    :try_end_22
    .catchall {:try_start_3 .. :try_end_22} :catchall_20

    throw v0
.end method

.method public getActiveStreamType(I)I
    .registers 8
    .param p1, "suggestedStreamType"    # I

    .prologue
    const/high16 v5, -0x80000000

    const/16 v3, 0xd

    const/16 v2, 0xa

    const/4 v1, 0x3

    const/4 v0, 0x0

    .line 3967
    iget v4, p0, mPlatformType:I

    packed-switch v4, :pswitch_data_136

    .line 4015
    invoke-virtual {p0}, isInCommunication()Z

    move-result v4

    if-eqz v4, :cond_a8

    .line 4016
    invoke-static {v0}, Landroid/media/AudioSystem;->getForceUse(I)I

    move-result v2

    if-ne v2, v1, :cond_9a

    .line 4018
    sget-boolean v0, DEBUG_VOL:Z

    if-eqz v0, :cond_24

    const-string v0, "AudioService"

    const-string v1, "getActiveStreamType: Forcing STREAM_BLUETOOTH_SCO"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4019
    :cond_24
    const/4 p1, 0x6

    .line 4060
    .end local p1    # "suggestedStreamType":I
    :cond_25
    :goto_25
    return p1

    .line 3969
    .restart local p1    # "suggestedStreamType":I
    :pswitch_26
    invoke-virtual {p0}, isInCommunication()Z

    move-result v4

    if-eqz v4, :cond_36

    .line 3970
    invoke-static {v0}, Landroid/media/AudioSystem;->getForceUse(I)I

    move-result v2

    if-ne v2, v1, :cond_34

    .line 3973
    const/4 p1, 0x6

    goto :goto_25

    :cond_34
    move p1, v0

    .line 3976
    goto :goto_25

    .line 3978
    :cond_36
    if-ne p1, v5, :cond_83

    .line 3979
    sget v4, Landroid/media/AudioService$StreamOverride;->sDelayMs:I

    invoke-direct {p0, v4}, isAfMusicActiveRecently(I)Z

    move-result v4

    if-eqz v4, :cond_4d

    .line 3980
    sget-boolean v0, DEBUG_VOL:Z

    if-eqz v0, :cond_4b

    .line 3981
    const-string v0, "AudioService"

    const-string v2, "getActiveStreamType: Forcing STREAM_MUSIC stream active"

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4b
    move p1, v1

    .line 3982
    goto :goto_25

    .line 3984
    :cond_4d
    invoke-static {v2, v0}, Landroid/media/AudioSystem;->isStreamActive(II)Z

    move-result v4

    if-eqz v4, :cond_55

    move p1, v2

    .line 3986
    goto :goto_25

    .line 3987
    :cond_55
    invoke-static {v3, v0}, Landroid/media/AudioSystem;->isStreamActive(II)Z

    move-result v2

    if-eqz v2, :cond_5d

    move p1, v3

    .line 3988
    goto :goto_25

    .line 3989
    :cond_5d
    const/16 v2, 0x9

    invoke-static {v2, v0}, Landroid/media/AudioSystem;->isStreamActive(II)Z

    move-result v2

    if-eqz v2, :cond_6e

    .line 3990
    const-string v0, "AudioService"

    const-string v2, "getActiveStreamType STREAM_TTS: Forcing STREAM_MUSIC.."

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move p1, v1

    .line 3991
    goto :goto_25

    .line 3994
    :cond_6e
    sget-boolean v1, DEBUG_VOL:Z

    if-eqz v1, :cond_79

    .line 3995
    const-string v1, "AudioService"

    const-string v2, "getActiveStreamType: Forcing STREAM_RING b/c default"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3997
    :cond_79
    invoke-static {v0, v0}, Landroid/media/AudioSystem;->isStreamActive(II)Z

    move-result v1

    if-eqz v1, :cond_81

    move p1, v0

    .line 3998
    goto :goto_25

    .line 4000
    :cond_81
    const/4 p1, 0x2

    goto :goto_25

    .line 4002
    :cond_83
    invoke-direct {p0, v0}, isAfMusicActiveRecently(I)Z

    move-result v0

    if-eqz v0, :cond_117

    .line 4003
    sget-boolean v0, DEBUG_VOL:Z

    if-eqz v0, :cond_94

    .line 4004
    const-string v0, "AudioService"

    const-string v2, "getActiveStreamType: Forcing STREAM_MUSIC stream active"

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_94
    move p1, v1

    .line 4005
    goto :goto_25

    .line 4009
    :pswitch_96
    if-ne p1, v5, :cond_117

    move p1, v1

    .line 4011
    goto :goto_25

    .line 4021
    :cond_9a
    sget-boolean v1, DEBUG_VOL:Z

    if-eqz v1, :cond_a5

    const-string v1, "AudioService"

    const-string v2, "getActiveStreamType: Forcing STREAM_VOICE_CALL"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a5
    move p1, v0

    .line 4022
    goto/16 :goto_25

    .line 4025
    :cond_a8
    invoke-static {v2, v0}, Landroid/media/AudioSystem;->isStreamActive(II)Z

    move-result v4

    if-eqz v4, :cond_b1

    move p1, v2

    .line 4026
    goto/16 :goto_25

    .line 4027
    :cond_b1
    invoke-static {v3, v0}, Landroid/media/AudioSystem;->isStreamActive(II)Z

    move-result v2

    if-eqz v2, :cond_ba

    move p1, v3

    .line 4028
    goto/16 :goto_25

    .line 4029
    :cond_ba
    invoke-static {v0, v0}, Landroid/media/AudioSystem;->isStreamActive(II)Z

    move-result v2

    if-eqz v2, :cond_c3

    move p1, v0

    .line 4030
    goto/16 :goto_25

    .line 4032
    :cond_c3
    const/4 v2, 0x5

    sget v3, Landroid/media/AudioService$StreamOverride;->sDelayMs:I

    invoke-static {v2, v3}, Landroid/media/AudioSystem;->isStreamActive(II)Z

    move-result v2

    if-nez v2, :cond_d5

    const/4 v2, 0x2

    sget v3, Landroid/media/AudioService$StreamOverride;->sDelayMs:I

    invoke-static {v2, v3}, Landroid/media/AudioSystem;->isStreamActive(II)Z

    move-result v2

    if-eqz v2, :cond_eb

    :cond_d5
    iget-object v2, p0, mSamsungAudioService:Landroid/media/SamsungAudioService;

    invoke-virtual {v2}, Landroid/media/SamsungAudioService;->isPlaySilentModeOff()Z

    move-result v2

    if-nez v2, :cond_eb

    .line 4037
    sget-boolean v0, DEBUG_VOL:Z

    if-eqz v0, :cond_e8

    const-string v0, "AudioService"

    const-string v1, "getActiveStreamType: Forcing STREAM_NOTIFICATION"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4038
    :cond_e8
    const/4 p1, 0x5

    goto/16 :goto_25

    .line 4039
    :cond_eb
    if-eq p1, v5, :cond_f3

    invoke-static {v1, v0}, Landroid/media/AudioSystem;->isStreamActive(II)Z

    move-result v0

    if-eqz v0, :cond_117

    .line 4043
    :cond_f3
    sget v0, Landroid/media/AudioService$StreamOverride;->sDelayMs:I

    invoke-direct {p0, v0}, isAfMusicActiveRecently(I)Z

    move-result v0

    if-eqz v0, :cond_109

    .line 4044
    sget-boolean v0, DEBUG_VOL:Z

    if-eqz v0, :cond_106

    const-string v0, "AudioService"

    const-string v2, "getActiveStreamType: forcing STREAM_MUSIC"

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_106
    move p1, v1

    .line 4045
    goto/16 :goto_25

    .line 4051
    :cond_109
    sget-boolean v0, DEBUG_VOL:Z

    if-eqz v0, :cond_114

    const-string v0, "AudioService"

    const-string v2, "getActiveStreamType: using STREAM_MUSIC as default"

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_114
    move p1, v1

    .line 4052
    goto/16 :goto_25

    .line 4058
    :cond_117
    sget-boolean v0, DEBUG_VOL:Z

    if-eqz v0, :cond_25

    const-string v0, "AudioService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getActiveStreamType: Returning suggested type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_25

    .line 3967
    nop

    :pswitch_data_136
    .packed-switch 0x1
        :pswitch_26
        :pswitch_96
    .end packed-switch
.end method

.method public getAudioServiceConfig(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p1, "keys"    # Ljava/lang/String;

    .prologue
    .line 7137
    const/4 v0, 0x0

    .line 7144
    .local v0, "returnStr":Ljava/lang/String;
    return-object v0
.end method

.method public getCurrentAudioFocus()I
    .registers 2

    .prologue
    .line 6290
    iget-object v0, p0, mMediaFocusControl:Landroid/media/MediaFocusControl;

    invoke-virtual {v0}, Landroid/media/MediaFocusControl;->getCurrentAudioFocus()I

    move-result v0

    return v0
.end method

.method public getCurrentAudioFocusPackageName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 6294
    iget-object v0, p0, mMediaFocusControl:Landroid/media/MediaFocusControl;

    invoke-virtual {v0}, Landroid/media/MediaFocusControl;->getCurrentAudioFocusPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLastAudibleMasterVolume()I
    .registers 3

    .prologue
    .line 2278
    invoke-static {}, Landroid/media/AudioSystem;->getMasterVolume()F

    move-result v0

    const/high16 v1, 0x42c80000    # 100.0f

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    return v0
.end method

.method public getLastAudibleStreamVolume(I)I
    .registers 4
    .param p1, "streamType"    # I

    .prologue
    .line 2271
    invoke-direct {p0, p1}, ensureValidStreamType(I)V

    .line 2272
    invoke-direct {p0, p1}, getDeviceForStream(I)I

    move-result v0

    .line 2273
    .local v0, "device":I
    iget-object v1, p0, mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    aget-object v1, v1, p1

    invoke-virtual {v1, v0}, Landroid/media/AudioService$VolumeStreamState;->getIndex(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x5

    div-int/lit8 v1, v1, 0xa

    return v1
.end method

.method public getMasterMaxVolume()I
    .registers 2

    .prologue
    .line 2266
    const/16 v0, 0x64

    return v0
.end method

.method public getMasterStreamType()I
    .registers 3

    .prologue
    const/4 v0, 0x3

    .line 2283
    iget v1, p0, mPlatformType:I

    packed-switch v1, :pswitch_data_a

    .line 2295
    :goto_6
    :pswitch_6
    return v0

    .line 2285
    :pswitch_7
    const/4 v0, 0x2

    goto :goto_6

    .line 2283
    nop

    :pswitch_data_a
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
    .end packed-switch
.end method

.method public getMasterVolume()I
    .registers 2

    .prologue
    .line 2220
    invoke-virtual {p0}, isMasterMute()Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x0

    .line 2221
    :goto_7
    return v0

    :cond_8
    invoke-virtual {p0}, getLastAudibleMasterVolume()I

    move-result v0

    goto :goto_7
.end method

.method public getMode()I
    .registers 2

    .prologue
    .line 2741
    iget v0, p0, mMode:I

    return v0
.end method

.method public getRemoteControlClientNowPlayingEntries()V
    .registers 2

    .prologue
    .line 6259
    iget-object v0, p0, mMediaFocusControl:Landroid/media/MediaFocusControl;

    invoke-virtual {v0}, Landroid/media/MediaFocusControl;->getRemoteControlClientNowPlayingEntries()V

    .line 6260
    return-void
.end method

.method public getRingerMode()I
    .registers 3

    .prologue
    .line 2319
    iget-object v1, p0, mSettingsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2320
    :try_start_3
    iget v0, p0, mRingerMode:I

    monitor-exit v1

    return v0

    .line 2321
    :catchall_7
    move-exception v0

    monitor-exit v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v0
.end method

.method public getRingtonePlayer()Landroid/media/IRingtonePlayer;
    .registers 2

    .prologue
    .line 6443
    iget-object v0, p0, mRingtonePlayer:Landroid/media/IRingtonePlayer;

    return-object v0
.end method

.method public getStreamMaxVolume(I)I
    .registers 3
    .param p1, "streamType"    # I

    .prologue
    .line 2261
    invoke-direct {p0, p1}, ensureValidStreamType(I)V

    .line 2262
    iget-object v0, p0, mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Landroid/media/AudioService$VolumeStreamState;->getMaxIndex()I

    move-result v0

    add-int/lit8 v0, v0, 0x5

    div-int/lit8 v0, v0, 0xa

    return v0
.end method

.method public getStreamVolume(I)I
    .registers 7
    .param p1, "streamType"    # I

    .prologue
    .line 2198
    invoke-direct {p0, p1}, ensureValidStreamType(I)V

    .line 2199
    invoke-direct {p0, p1}, getDeviceForStream(I)I

    move-result v0

    .line 2200
    .local v0, "device":I
    iget-object v2, p0, mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    aget-object v2, v2, p1

    invoke-virtual {v2, v0}, Landroid/media/AudioService$VolumeStreamState;->getIndex(I)I

    move-result v1

    .line 2201
    .local v1, "index":I
    const-string v2, "AudioService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getStreamVolume "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " index "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2204
    iget-object v2, p0, mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    aget-object v2, v2, p1

    # invokes: Landroid/media/AudioService$VolumeStreamState;->isMuted()Z
    invoke-static {v2}, Landroid/media/AudioService$VolumeStreamState;->access$300(Landroid/media/AudioService$VolumeStreamState;)Z

    move-result v2

    if-eqz v2, :cond_3c

    .line 2205
    const/4 v1, 0x0

    .line 2208
    :cond_3c
    const/16 v2, 0xa

    if-ne p1, v2, :cond_47

    invoke-virtual {p0}, isRadioSpeakerOn()Z

    move-result v2

    if-eqz v2, :cond_47

    .line 2209
    const/4 v0, 0x2

    .line 2212
    :cond_47
    if-eqz v1, :cond_5d

    iget-object v2, p0, mStreamVolumeAlias:[I

    aget v2, v2, p1

    const/4 v3, 0x3

    if-ne v2, v3, :cond_5d

    iget v2, p0, mFixedVolumeDevices:I

    and-int/2addr v2, v0

    if-eqz v2, :cond_5d

    .line 2214
    iget-object v2, p0, mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    aget-object v2, v2, p1

    invoke-virtual {v2}, Landroid/media/AudioService$VolumeStreamState;->getMaxIndex()I

    move-result v1

    .line 2216
    :cond_5d
    add-int/lit8 v2, v1, 0x5

    div-int/lit8 v2, v2, 0xa

    return v2
.end method

.method public getTogether()Z
    .registers 2

    .prologue
    .line 5584
    iget-boolean v0, p0, mIsTogether:Z

    return v0
.end method

.method public getVibrateSetting(I)I
    .registers 4
    .param p1, "vibrateType"    # I

    .prologue
    .line 2479
    iget-boolean v0, p0, mHasVibrator:Z

    if-nez v0, :cond_6

    const/4 v0, 0x0

    .line 2480
    :goto_5
    return v0

    :cond_6
    iget v0, p0, mVibrateSetting:I

    mul-int/lit8 v1, p1, 0x2

    shr-int/2addr v0, v1

    and-int/lit8 v0, v0, 0x3

    goto :goto_5
.end method

.method protected hasVibrator()Z
    .registers 2

    .prologue
    .line 7109
    iget-boolean v0, p0, mHasVibrator:Z

    return v0
.end method

.method public isBluetoothA2dpOn()Z
    .registers 3

    .prologue
    .line 3142
    iget-object v1, p0, mBluetoothA2dpEnabledLock:Ljava/lang/Object;

    monitor-enter v1

    .line 3143
    :try_start_3
    iget-boolean v0, p0, mBluetoothA2dpEnabled:Z

    monitor-exit v1

    return v0

    .line 3144
    :catchall_7
    move-exception v0

    monitor-exit v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v0
.end method

.method public isBluetoothScoOn()Z
    .registers 3

    .prologue
    .line 3123
    iget v0, p0, mForcedUseForComm:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public isCameraSoundForced()Z
    .registers 3

    .prologue
    .line 6711
    iget-object v1, p0, mCameraSoundForced:Ljava/lang/Boolean;

    monitor-enter v1

    .line 6712
    :try_start_3
    iget-object v0, p0, mCameraSoundForced:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    monitor-exit v1

    return v0

    .line 6713
    :catchall_b
    move-exception v0

    monitor-exit v1
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v0
.end method

.method protected isDeviceConnected(I)Z
    .registers 6
    .param p1, "nDevice"    # I

    .prologue
    .line 1247
    const/4 v0, 0x0

    .line 1248
    .local v0, "isDeviceConnected":Z
    iget-object v2, p0, mConnectedDevices:Ljava/util/HashMap;

    monitor-enter v2

    .line 1249
    :try_start_4
    iget-object v1, p0, mConnectedDevices:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    .line 1250
    monitor-exit v2

    .line 1251
    return v0

    .line 1250
    :catchall_10
    move-exception v1

    monitor-exit v2
    :try_end_12
    .catchall {:try_start_4 .. :try_end_12} :catchall_10

    throw v1
.end method

.method public isFMPlayerActive()Z
    .registers 6

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 3066
    :try_start_2
    const-string/jumbo v4, "persist.audio.isfmactive"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3067
    .local v1, "fmPlayer":Ljava/lang/String;
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_c} :catch_12

    move-result v4

    if-ne v4, v2, :cond_10

    .line 3073
    .end local v1    # "fmPlayer":Ljava/lang/String;
    :goto_f
    return v2

    .restart local v1    # "fmPlayer":Ljava/lang/String;
    :cond_10
    move v2, v3

    .line 3070
    goto :goto_f

    .line 3072
    .end local v1    # "fmPlayer":Ljava/lang/String;
    :catch_12
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    move v2, v3

    .line 3073
    goto :goto_f
.end method

.method public isHdmiSystemAudioSupported()Z
    .registers 2

    .prologue
    .line 6655
    iget-boolean v0, p0, mHdmiSystemAudioSupported:Z

    return v0
.end method

.method protected isInCommunication()Z
    .registers 5

    .prologue
    .line 3946
    const/4 v0, 0x0

    .line 3948
    .local v0, "IsInCall":Z
    iget-object v2, p0, mContext:Landroid/content/Context;

    const-string/jumbo v3, "telecom"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/TelecomManager;

    .line 3950
    .local v1, "telecomManager":Landroid/telecom/TelecomManager;
    invoke-virtual {v1}, Landroid/telecom/TelecomManager;->isInCall()Z

    move-result v0

    .line 3952
    if-nez v0, :cond_19

    invoke-virtual {p0}, getMode()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_1b

    :cond_19
    const/4 v2, 0x1

    :goto_1a
    return v2

    :cond_1b
    const/4 v2, 0x0

    goto :goto_1a
.end method

.method public isMasterMute()Z
    .registers 2

    .prologue
    .line 2189
    invoke-static {}, Landroid/media/AudioSystem;->getMasterMute()Z

    move-result v0

    return v0
.end method

.method public isMediaSilentMode()Z
    .registers 4

    .prologue
    .line 2533
    const-string v0, "AudioService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "isMediaSilentMode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, mMediaSilentMode:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2534
    iget-boolean v0, p0, mMediaSilentMode:Z

    return v0
.end method

.method public isRadioSpeakerOn()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 3055
    iget v1, p0, mForcedUseForFMRadio:I

    if-ne v1, v0, :cond_6

    .line 3058
    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public isSpeakerphoneOn()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 3034
    iget v1, p0, mForcedUseForComm:I

    if-ne v1, v0, :cond_6

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public isStreamAffectedByMute(I)Z
    .registers 5
    .param p1, "streamType"    # I

    .prologue
    const/4 v0, 0x1

    .line 3924
    iget v1, p0, mMuteAffectedStreams:I

    shl-int v2, v0, p1

    and-int/2addr v1, v2

    if-eqz v1, :cond_9

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public isStreamAffectedByRingerMode(I)Z
    .registers 5
    .param p1, "streamType"    # I

    .prologue
    const/4 v0, 0x1

    .line 3858
    iget v1, p0, mRingerModeAffectedStreams:I

    shl-int v2, v0, p1

    and-int/2addr v1, v2

    if-eqz v1, :cond_9

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public isStreamMute(I)Z
    .registers 3
    .param p1, "streamType"    # I

    .prologue
    .line 2066
    iget-object v0, p0, mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    aget-object v0, v0, p1

    # invokes: Landroid/media/AudioService$VolumeStreamState;->isMuted()Z
    invoke-static {v0}, Landroid/media/AudioService$VolumeStreamState;->access$300(Landroid/media/AudioService$VolumeStreamState;)Z

    move-result v0

    return v0
.end method

.method public loadSoundEffects()Z
    .registers 13

    .prologue
    const/4 v10, 0x1

    const/4 v11, 0x0

    .line 2869
    const/4 v7, 0x3

    .line 2870
    .local v7, "attempts":I
    new-instance v5, Landroid/media/AudioService$LoadSoundEffectReply;

    invoke-direct {v5, p0}, Landroid/media/AudioService$LoadSoundEffectReply;-><init>(Landroid/media/AudioService;)V

    .line 2872
    .local v5, "reply":Landroid/media/AudioService$LoadSoundEffectReply;
    monitor-enter v5

    .line 2873
    :try_start_9
    iget-object v0, p0, mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/4 v1, 0x7

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V
    :try_end_13
    .catchall {:try_start_9 .. :try_end_13} :catchall_36

    move v8, v7

    .line 2874
    .end local v7    # "attempts":I
    .local v8, "attempts":I
    :goto_14
    :try_start_14
    iget v0, v5, Landroid/media/AudioService$LoadSoundEffectReply;->mStatus:I
    :try_end_16
    .catchall {:try_start_14 .. :try_end_16} :catchall_3b

    if-ne v0, v10, :cond_2e

    add-int/lit8 v7, v8, -0x1

    .end local v8    # "attempts":I
    .restart local v7    # "attempts":I
    if-lez v8, :cond_2f

    .line 2876
    const-wide/16 v0, 0x1388

    :try_start_1e
    invoke-virtual {v5, v0, v1}, Ljava/lang/Object;->wait(J)V
    :try_end_21
    .catch Ljava/lang/InterruptedException; {:try_start_1e .. :try_end_21} :catch_23
    .catchall {:try_start_1e .. :try_end_21} :catchall_36

    move v8, v7

    .line 2879
    .end local v7    # "attempts":I
    .restart local v8    # "attempts":I
    goto :goto_14

    .line 2877
    .end local v8    # "attempts":I
    .restart local v7    # "attempts":I
    :catch_23
    move-exception v9

    .line 2878
    .local v9, "e":Ljava/lang/InterruptedException;
    :try_start_24
    const-string v0, "AudioService"

    const-string/jumbo v1, "loadSoundEffects Interrupted while waiting sound pool loaded."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v8, v7

    .line 2879
    .end local v7    # "attempts":I
    .restart local v8    # "attempts":I
    goto :goto_14

    .end local v9    # "e":Ljava/lang/InterruptedException;
    :cond_2e
    move v7, v8

    .line 2881
    .end local v8    # "attempts":I
    .restart local v7    # "attempts":I
    :cond_2f
    monitor-exit v5
    :try_end_30
    .catchall {:try_start_24 .. :try_end_30} :catchall_36

    .line 2882
    iget v0, v5, Landroid/media/AudioService$LoadSoundEffectReply;->mStatus:I

    if-nez v0, :cond_39

    move v0, v10

    :goto_35
    return v0

    .line 2881
    :catchall_36
    move-exception v0

    :goto_37
    :try_start_37
    monitor-exit v5
    :try_end_38
    .catchall {:try_start_37 .. :try_end_38} :catchall_36

    throw v0

    :cond_39
    move v0, v11

    .line 2882
    goto :goto_35

    .line 2881
    .end local v7    # "attempts":I
    .restart local v8    # "attempts":I
    :catchall_3b
    move-exception v0

    move v7, v8

    .end local v8    # "attempts":I
    .restart local v7    # "attempts":I
    goto :goto_37
.end method

.method public notifyVolumeControllerVisible(Landroid/media/IVolumeController;Z)V
    .registers 6
    .param p1, "controller"    # Landroid/media/IVolumeController;
    .param p2, "visible"    # Z

    .prologue
    .line 6826
    const-string/jumbo v0, "notify about volume controller visibility"

    invoke-direct {p0, v0}, enforceSelfOrSystemUI(Ljava/lang/String;)V

    .line 6829
    iget-object v0, p0, mVolumeController:Landroid/media/AudioService$VolumeController;

    invoke-virtual {v0, p1}, Landroid/media/AudioService$VolumeController;->isSameBinder(Landroid/media/IVolumeController;)Z

    move-result v0

    if-nez v0, :cond_f

    .line 6836
    :cond_e
    :goto_e
    return-void

    .line 6833
    :cond_f
    iget-object v0, p0, mVolumeController:Landroid/media/AudioService$VolumeController;

    invoke-virtual {v0, p2}, Landroid/media/AudioService$VolumeController;->setVisible(Z)V

    .line 6834
    iput-boolean p2, p0, mIsVolumeControllerVisible:Z

    .line 6835
    sget-boolean v0, DEBUG_VOL:Z

    if-eqz v0, :cond_e

    const-string v0, "AudioService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Volume controller visible: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e
.end method

.method public onSystemReady()V
    .registers 10

    .prologue
    const/4 v5, 0x0

    const/4 v2, 0x2

    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 876
    iput-boolean v1, p0, mSystemReady:Z

    .line 878
    iget-object v0, p0, mSamsungAudioService:Landroid/media/SamsungAudioService;

    invoke-virtual {v0, v1}, Landroid/media/SamsungAudioService;->setSystemReady(Z)V

    .line 880
    iget-object v0, p0, mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/4 v1, 0x7

    move v4, v3

    move v6, v3

    invoke-static/range {v0 .. v6}, sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 883
    iget-object v0, p0, mContext:Landroid/content/Context;

    const-string/jumbo v1, "keyguard"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    iput-object v0, p0, mKeyguardManager:Landroid/app/KeyguardManager;

    .line 885
    const/4 v0, -0x1

    iput v0, p0, mScoConnectionState:I

    .line 886
    invoke-direct {p0}, resetBluetoothSco()V

    .line 887
    invoke-direct {p0}, getBluetoothHeadset()Z

    .line 890
    new-instance v8, Landroid/content/Intent;

    const-string v0, "android.media.SCO_AUDIO_STATE_CHANGED"

    invoke-direct {v8, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 891
    .local v8, "newIntent":Landroid/content/Intent;
    const-string v0, "android.media.extra.SCO_AUDIO_STATE"

    invoke-virtual {v8, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 893
    invoke-direct {p0, v8}, sendStickyBroadcastToAll(Landroid/content/Intent;)V

    .line 895
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v7

    .line 896
    .local v7, "adapter":Landroid/bluetooth/BluetoothAdapter;
    if-eqz v7, :cond_45

    .line 897
    iget-object v0, p0, mContext:Landroid/content/Context;

    iget-object v1, p0, mBluetoothProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    invoke-virtual {v7, v0, v1, v2}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    .line 901
    :cond_45
    iget-object v0, p0, mContext:Landroid/content/Context;

    const-string v1, "hdmi_control"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/hdmi/HdmiControlManager;

    iput-object v0, p0, mHdmiManager:Landroid/hardware/hdmi/HdmiControlManager;

    .line 903
    iget-object v0, p0, mHdmiManager:Landroid/hardware/hdmi/HdmiControlManager;

    if-eqz v0, :cond_78

    .line 904
    iget-object v1, p0, mHdmiManager:Landroid/hardware/hdmi/HdmiControlManager;

    monitor-enter v1

    .line 905
    :try_start_58
    iget-object v0, p0, mHdmiManager:Landroid/hardware/hdmi/HdmiControlManager;

    invoke-virtual {v0}, Landroid/hardware/hdmi/HdmiControlManager;->getTvClient()Landroid/hardware/hdmi/HdmiTvClient;

    move-result-object v0

    iput-object v0, p0, mHdmiTvClient:Landroid/hardware/hdmi/HdmiTvClient;

    .line 906
    iget-object v0, p0, mHdmiTvClient:Landroid/hardware/hdmi/HdmiTvClient;

    if-eqz v0, :cond_6c

    .line 907
    iget v0, p0, mFixedVolumeDevices:I

    const v2, -0x2c0003

    and-int/2addr v0, v2

    iput v0, p0, mFixedVolumeDevices:I

    .line 909
    :cond_6c
    iget-object v0, p0, mHdmiManager:Landroid/hardware/hdmi/HdmiControlManager;

    invoke-virtual {v0}, Landroid/hardware/hdmi/HdmiControlManager;->getPlaybackClient()Landroid/hardware/hdmi/HdmiPlaybackClient;

    move-result-object v0

    iput-object v0, p0, mHdmiPlaybackClient:Landroid/hardware/hdmi/HdmiPlaybackClient;

    .line 910
    const/4 v0, 0x0

    iput-boolean v0, p0, mHdmiCecSink:Z

    .line 911
    monitor-exit v1
    :try_end_78
    .catchall {:try_start_58 .. :try_end_78} :catchall_89

    .line 914
    :cond_78
    iget-object v0, p0, mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/16 v1, 0x11

    const/16 v6, 0x7530

    move v2, v3

    move v4, v3

    invoke-static/range {v0 .. v6}, sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 922
    iget-object v0, p0, mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/media/AudioService$StreamOverride;->init(Landroid/content/Context;)V

    .line 923
    return-void

    .line 911
    :catchall_89
    move-exception v0

    :try_start_8a
    monitor-exit v1
    :try_end_8b
    .catchall {:try_start_8a .. :try_end_8b} :catchall_89

    throw v0
.end method

.method protected performSoftReset()V
    .registers 18

    .prologue
    .line 1266
    const-string v14, "AudioService"

    const-string v15, "Perform soft reset start"

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1268
    move-object/from16 v0, p0

    iget-object v14, v0, mSamsungAudioService:Landroid/media/SamsungAudioService;

    invoke-virtual {v14}, Landroid/media/SamsungAudioService;->performSoftReset()V

    .line 1271
    const/4 v14, 0x2

    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v15}, setRingerMode(IZ)V

    .line 1273
    const/4 v1, 0x0

    .line 1274
    .local v1, "deletedRows":I
    invoke-static {}, Landroid/media/AudioSystem;->getNumStreamTypes()I

    move-result v7

    .line 1276
    .local v7, "numStreamTypes":I
    const/4 v12, 0x0

    .local v12, "streamType":I
    :goto_1b
    if-ge v12, v7, :cond_df

    .line 1277
    move-object/from16 v0, p0

    iget-object v14, v0, mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    aget-object v11, v14, v12

    .line 1279
    .local v11, "streamState":Landroid/media/AudioService$VolumeStreamState;
    const-string/jumbo v9, "name LIKE ?"

    .line 1280
    .local v9, "selectionClause":Ljava/lang/String;
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    # getter for: Landroid/media/AudioService$VolumeStreamState;->mVolumeIndexSettingName:Ljava/lang/String;
    invoke-static {v11}, Landroid/media/AudioService$VolumeStreamState;->access$600(Landroid/media/AudioService$VolumeStreamState;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "%"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1281
    .local v6, "makeString":Ljava/lang/String;
    const/4 v14, 0x1

    new-array v8, v14, [Ljava/lang/String;

    const/4 v14, 0x0

    aput-object v6, v8, v14

    .line 1283
    .local v8, "selectionArgs":[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v14, v0, mContentResolver:Landroid/content/ContentResolver;

    sget-object v15, Landroid/provider/Settings$System;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v14, v15, v9, v8}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 1286
    const-string v14, "AudioService"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "performSoftReset volume index settings name "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " deleted Rows "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1289
    move-object/from16 v0, p0

    iget-object v14, v0, mStreamVolumeAlias:[I

    aget v14, v14, v12

    const/4 v15, 0x3

    if-ne v14, v15, :cond_7f

    const/4 v14, 0x3

    if-eq v12, v14, :cond_7f

    .line 1276
    :goto_7c
    add-int/lit8 v12, v12, 0x1

    goto :goto_1b

    .line 1293
    :cond_7f
    monitor-enter v11

    .line 1294
    :try_start_80
    # getter for: Landroid/media/AudioService$VolumeStreamState;->mIndex:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static {v11}, Landroid/media/AudioService$VolumeStreamState;->access$700(Landroid/media/AudioService$VolumeStreamState;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v14

    invoke-virtual {v14}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v10

    .line 1295
    .local v10, "set":Ljava/util/Set;
    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 1296
    .local v4, "i":Ljava/util/Iterator;
    :cond_8c
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_da

    .line 1297
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 1298
    .local v3, "entry":Ljava/util/Map$Entry;
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 1299
    .local v2, "device":I
    sget-object v14, Landroid/media/AudioManager;->DEFAULT_STREAM_VOLUME:[I

    aget v5, v14, v12

    .line 1300
    .local v5, "index":I
    mul-int/lit8 v14, v5, 0xa

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-interface {v3, v14}, Ljava/util/Map$Entry;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1303
    invoke-virtual {v11, v2}, Landroid/media/AudioService$VolumeStreamState;->applyDeviceVolume(I)V

    .line 1305
    add-int/lit8 v13, v7, -0x1

    .local v13, "streamType2":I
    :goto_b4
    if-ltz v13, :cond_8c

    .line 1306
    # getter for: Landroid/media/AudioService$VolumeStreamState;->mStreamType:I
    invoke-static {v11}, Landroid/media/AudioService$VolumeStreamState;->access$800(Landroid/media/AudioService$VolumeStreamState;)I

    move-result v14

    if-eq v13, v14, :cond_d7

    move-object/from16 v0, p0

    iget-object v14, v0, mStreamVolumeAlias:[I

    aget v14, v14, v13

    # getter for: Landroid/media/AudioService$VolumeStreamState;->mStreamType:I
    invoke-static {v11}, Landroid/media/AudioService$VolumeStreamState;->access$800(Landroid/media/AudioService$VolumeStreamState;)I

    move-result v15

    if-ne v14, v15, :cond_d7

    .line 1308
    move-object/from16 v0, p0

    iget-object v14, v0, mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    aget-object v14, v14, v13

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, getDeviceForStream(I)I

    move-result v15

    invoke-virtual {v14, v15}, Landroid/media/AudioService$VolumeStreamState;->applyDeviceVolume(I)V

    .line 1305
    :cond_d7
    add-int/lit8 v13, v13, -0x1

    goto :goto_b4

    .line 1312
    .end local v2    # "device":I
    .end local v3    # "entry":Ljava/util/Map$Entry;
    .end local v5    # "index":I
    .end local v13    # "streamType2":I
    :cond_da
    monitor-exit v11

    goto :goto_7c

    .end local v4    # "i":Ljava/util/Iterator;
    .end local v10    # "set":Ljava/util/Set;
    :catchall_dc
    move-exception v14

    monitor-exit v11
    :try_end_de
    .catchall {:try_start_80 .. :try_end_de} :catchall_dc

    throw v14

    .line 1314
    .end local v6    # "makeString":Ljava/lang/String;
    .end local v8    # "selectionArgs":[Ljava/lang/String;
    .end local v9    # "selectionClause":Ljava/lang/String;
    .end local v11    # "streamState":Landroid/media/AudioService$VolumeStreamState;
    :cond_df
    const-string v14, "AudioService"

    const-string v15, "Perform soft reset end"

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1315
    return-void
.end method

.method public playBackgroundMusic(II)Z
    .registers 4
    .param p1, "music_id"    # I
    .param p2, "delay"    # I

    .prologue
    .line 7113
    iget-object v0, p0, mSamsungAudioService:Landroid/media/SamsungAudioService;

    if-eqz v0, :cond_b

    .line 7114
    iget-object v0, p0, mSamsungAudioService:Landroid/media/SamsungAudioService;

    invoke-virtual {v0, p1, p2}, Landroid/media/SamsungAudioService;->playBackgroundMusic(II)Z

    move-result v0

    .line 7116
    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public playSoundEffect(I)V
    .registers 3
    .param p1, "effectType"    # I

    .prologue
    .line 2850
    const/high16 v0, -0x40800000    # -1.0f

    invoke-virtual {p0, p1, v0}, playSoundEffectVolume(IF)V

    .line 2851
    return-void
.end method

.method public playSoundEffectVolume(IF)V
    .registers 10
    .param p1, "effectType"    # I
    .param p2, "volume"    # F

    .prologue
    .line 2855
    const/16 v0, 0xe

    if-ge p1, v0, :cond_6

    if-gez p1, :cond_25

    .line 2856
    :cond_6
    const-string v0, "AudioService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AudioService effectType value "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " out of range"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2862
    :goto_24
    return-void

    .line 2860
    :cond_25
    iget-object v0, p0, mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/4 v1, 0x5

    const/4 v2, 0x2

    const/high16 v3, 0x447a0000    # 1000.0f

    mul-float/2addr v3, p2

    float-to-int v4, v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    move v3, p1

    invoke-static/range {v0 .. v6}, sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    goto :goto_24
.end method

.method public registerAudioPolicy(Landroid/media/audiopolicy/AudioPolicyConfig;Landroid/os/IBinder;)Z
    .registers 11
    .param p1, "policyConfig"    # Landroid/media/audiopolicy/AudioPolicyConfig;
    .param p2, "cb"    # Landroid/os/IBinder;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 7005
    iget-object v5, p0, mContext:Landroid/content/Context;

    const-string v6, "android.permission.MODIFY_AUDIO_ROUTING"

    invoke-virtual {v5, v6}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_40

    move v2, v4

    .line 7008
    .local v2, "hasPermissionForPolicy":Z
    :goto_d
    if-nez v2, :cond_42

    .line 7009
    const-string v4, "AudioService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Can\'t register audio policy for pid "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " / uid "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", need MODIFY_AUDIO_ROUTING"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 7026
    :goto_3f
    return v3

    .end local v2    # "hasPermissionForPolicy":Z
    :cond_40
    move v2, v3

    .line 7005
    goto :goto_d

    .line 7013
    .restart local v2    # "hasPermissionForPolicy":Z
    :cond_42
    iget-object v5, p0, mAudioPolicies:Ljava/util/HashMap;

    monitor-enter v5

    .line 7014
    :try_start_45
    new-instance v0, Landroid/media/AudioService$AudioPolicyProxy;

    invoke-direct {v0, p0, p1, p2}, Landroid/media/AudioService$AudioPolicyProxy;-><init>(Landroid/media/AudioService;Landroid/media/audiopolicy/AudioPolicyConfig;Landroid/os/IBinder;)V
    :try_end_4a
    .catchall {:try_start_45 .. :try_end_4a} :catchall_77

    .line 7016
    .local v0, "app":Landroid/media/AudioService$AudioPolicyProxy;
    const/4 v6, 0x0

    :try_start_4b
    invoke-interface {p2, v0, v6}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 7017
    iget-object v6, p0, mAudioPolicies:Ljava/util/HashMap;

    invoke-virtual {v6, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_53
    .catch Landroid/os/RemoteException; {:try_start_4b .. :try_end_53} :catch_56
    .catchall {:try_start_4b .. :try_end_53} :catchall_77

    .line 7024
    :try_start_53
    monitor-exit v5

    move v3, v4

    .line 7026
    goto :goto_3f

    .line 7018
    :catch_56
    move-exception v1

    .line 7020
    .local v1, "e":Landroid/os/RemoteException;
    const-string v4, "AudioService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Audio policy registration failed, could not link to "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " binder death"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 7022
    monitor-exit v5

    goto :goto_3f

    .line 7024
    .end local v0    # "app":Landroid/media/AudioService$AudioPolicyProxy;
    .end local v1    # "e":Landroid/os/RemoteException;
    :catchall_77
    move-exception v3

    monitor-exit v5
    :try_end_79
    .catchall {:try_start_53 .. :try_end_79} :catchall_77

    throw v3
.end method

.method public registerRemoteControlDisplay(Landroid/media/IRemoteControlDisplay;II)Z
    .registers 5
    .param p1, "rcd"    # Landroid/media/IRemoteControlDisplay;
    .param p2, "w"    # I
    .param p3, "h"    # I

    .prologue
    .line 6238
    iget-object v0, p0, mMediaFocusControl:Landroid/media/MediaFocusControl;

    invoke-virtual {v0, p1, p2, p3}, Landroid/media/MediaFocusControl;->registerRemoteControlDisplay(Landroid/media/IRemoteControlDisplay;II)Z

    move-result v0

    return v0
.end method

.method public registerRemoteController(Landroid/media/IRemoteControlDisplay;IILandroid/content/ComponentName;)Z
    .registers 6
    .param p1, "rcd"    # Landroid/media/IRemoteControlDisplay;
    .param p2, "w"    # I
    .param p3, "h"    # I
    .param p4, "listenerComp"    # Landroid/content/ComponentName;

    .prologue
    .line 6234
    iget-object v0, p0, mMediaFocusControl:Landroid/media/MediaFocusControl;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/media/MediaFocusControl;->registerRemoteController(Landroid/media/IRemoteControlDisplay;IILandroid/content/ComponentName;)Z

    move-result v0

    return v0
.end method

.method public reloadAudioSettings()V
    .registers 2

    .prologue
    .line 2951
    const/4 v0, 0x0

    invoke-direct {p0, v0}, readAudioSettings(Z)V

    .line 2952
    return-void
.end method

.method public remoteControlDisplayUsesBitmapSize(Landroid/media/IRemoteControlDisplay;II)V
    .registers 5
    .param p1, "rcd"    # Landroid/media/IRemoteControlDisplay;
    .param p2, "w"    # I
    .param p3, "h"    # I

    .prologue
    .line 6246
    iget-object v0, p0, mMediaFocusControl:Landroid/media/MediaFocusControl;

    invoke-virtual {v0, p1, p2, p3}, Landroid/media/MediaFocusControl;->remoteControlDisplayUsesBitmapSize(Landroid/media/IRemoteControlDisplay;II)V

    .line 6247
    return-void
.end method

.method public remoteControlDisplayWantsPlaybackPositionSync(Landroid/media/IRemoteControlDisplay;Z)V
    .registers 4
    .param p1, "rcd"    # Landroid/media/IRemoteControlDisplay;
    .param p2, "wantsSync"    # Z

    .prologue
    .line 6251
    iget-object v0, p0, mMediaFocusControl:Landroid/media/MediaFocusControl;

    invoke-virtual {v0, p1, p2}, Landroid/media/MediaFocusControl;->remoteControlDisplayWantsPlaybackPositionSync(Landroid/media/IRemoteControlDisplay;Z)V

    .line 6252
    return-void
.end method

.method protected removeConnectedDevice(I)V
    .registers 5
    .param p1, "nDevice"    # I

    .prologue
    .line 1259
    iget-object v1, p0, mConnectedDevices:Ljava/util/HashMap;

    monitor-enter v1

    .line 1260
    :try_start_3
    iget-object v0, p0, mConnectedDevices:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1261
    monitor-exit v1

    .line 1262
    return-void

    .line 1261
    :catchall_e
    move-exception v0

    monitor-exit v1
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw v0
.end method

.method public requestAudioFocus(IILandroid/os/IBinder;Landroid/media/IAudioFocusDispatcher;Ljava/lang/String;Ljava/lang/String;)I
    .registers 14
    .param p1, "mainStreamType"    # I
    .param p2, "durationHint"    # I
    .param p3, "cb"    # Landroid/os/IBinder;
    .param p4, "fd"    # Landroid/media/IAudioFocusDispatcher;
    .param p5, "clientId"    # Ljava/lang/String;
    .param p6, "callingPackageName"    # Ljava/lang/String;

    .prologue
    .line 6277
    iget-object v0, p0, mMediaFocusControl:Landroid/media/MediaFocusControl;

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Landroid/media/MediaFocusControl;->requestAudioFocus(IILandroid/os/IBinder;Landroid/media/IAudioFocusDispatcher;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method protected sendBroadcastToAll(Landroid/content/Intent;)V
    .registers 6
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1895
    iget-boolean v2, p0, mSystemReady:Z

    if-nez v2, :cond_5

    .line 1903
    :goto_4
    return-void

    .line 1897
    :cond_5
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1899
    .local v0, "ident":J
    :try_start_9
    iget-object v2, p0, mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v2, p1, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_10
    .catchall {:try_start_9 .. :try_end_10} :catchall_14

    .line 1901
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_4

    :catchall_14
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method protected sendBroadcastToUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    .registers 6
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "handle"    # Landroid/os/UserHandle;

    .prologue
    .line 1906
    iget-boolean v2, p0, mSystemReady:Z

    if-nez v2, :cond_5

    .line 1913
    :goto_4
    return-void

    .line 1907
    :cond_5
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1909
    .local v0, "ident":J
    :try_start_9
    iget-object v2, p0, mContext:Landroid/content/Context;

    invoke-virtual {v2, p1, p2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_e
    .catchall {:try_start_9 .. :try_end_e} :catchall_12

    .line 1911
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_4

    :catchall_12
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public setAudioServiceConfig(Ljava/lang/String;)V
    .registers 2
    .param p1, "keyValuePairs"    # Ljava/lang/String;

    .prologue
    .line 7134
    return-void
.end method

.method public setBluetoothA2dpDeviceConnectionState(Landroid/bluetooth/BluetoothDevice;II)I
    .registers 12
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "state"    # I
    .param p3, "profile"    # I

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x2

    .line 4172
    if-eq p3, v2, :cond_21

    const/16 v1, 0xa

    if-eq p3, v1, :cond_21

    .line 4173
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid profile "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4175
    :cond_21
    iget-object v7, p0, mConnectedDevices:Ljava/util/HashMap;

    monitor-enter v7

    .line 4176
    if-ne p3, v2, :cond_3e

    .line 4177
    const/16 v1, 0x80

    if-ne p2, v2, :cond_2b

    const/4 v0, 0x1

    :cond_2b
    :try_start_2b
    invoke-virtual {p0, v1, v0}, checkSendBecomingNoisyIntent(II)I

    move-result v6

    .line 4182
    .local v6, "delay":I
    :goto_2f
    iget-object v1, p0, mAudioHandler:Landroid/media/AudioService$AudioHandler;

    if-ne p3, v2, :cond_40

    const/16 v2, 0x66

    :goto_35
    const/4 v4, 0x0

    move-object v0, p0

    move v3, p2

    move-object v5, p1

    invoke-direct/range {v0 .. v6}, queueMsgUnderWakeLock(Landroid/os/Handler;IIILjava/lang/Object;I)V

    .line 4189
    monitor-exit v7

    .line 4190
    return v6

    .line 4180
    .end local v6    # "delay":I
    :cond_3e
    const/4 v6, 0x0

    .restart local v6    # "delay":I
    goto :goto_2f

    .line 4182
    :cond_40
    const/16 v2, 0x65

    goto :goto_35

    .line 4189
    .end local v6    # "delay":I
    :catchall_43
    move-exception v0

    monitor-exit v7
    :try_end_45
    .catchall {:try_start_2b .. :try_end_45} :catchall_43

    throw v0
.end method

.method public setBluetoothA2dpOn(Z)V
    .registers 10
    .param p1, "on"    # Z

    .prologue
    const/4 v4, 0x0

    .line 3128
    iget-object v7, p0, mBluetoothA2dpEnabledLock:Ljava/lang/Object;

    monitor-enter v7

    .line 3129
    :try_start_4
    iput-boolean p1, p0, mBluetoothA2dpEnabled:Z

    .line 3130
    iget-object v0, p0, mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/16 v1, 0xd

    const/4 v2, 0x2

    const/4 v3, 0x1

    iget-boolean v5, p0, mBluetoothA2dpEnabled:Z

    if-eqz v5, :cond_1c

    :goto_10
    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 3134
    monitor-exit v7
    :try_end_16
    .catchall {:try_start_4 .. :try_end_16} :catchall_1f

    .line 3136
    iget-object v0, p0, mSamsungAudioService:Landroid/media/SamsungAudioService;

    invoke-virtual {v0}, Landroid/media/SamsungAudioService;->checkAndSendEarCareInfo()V

    .line 3138
    return-void

    .line 3130
    :cond_1c
    const/16 v4, 0xa

    goto :goto_10

    .line 3134
    :catchall_1f
    move-exception v0

    :try_start_20
    monitor-exit v7
    :try_end_21
    .catchall {:try_start_20 .. :try_end_21} :catchall_1f

    throw v0
.end method

.method public setBluetoothA2dpOnInt(Z)V
    .registers 5
    .param p1, "on"    # Z

    .prologue
    .line 6427
    iget-object v1, p0, mBluetoothA2dpEnabledLock:Ljava/lang/Object;

    monitor-enter v1

    .line 6428
    :try_start_3
    iput-boolean p1, p0, mBluetoothA2dpEnabled:Z

    .line 6429
    iget-object v0, p0, mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/16 v2, 0xd

    invoke-virtual {v0, v2}, Landroid/media/AudioService$AudioHandler;->removeMessages(I)V

    .line 6430
    const/4 v2, 0x1

    iget-boolean v0, p0, mBluetoothA2dpEnabled:Z

    if-eqz v0, :cond_17

    const/4 v0, 0x0

    :goto_12
    invoke-static {v2, v0}, Landroid/media/AudioSystem;->setForceUse(II)I

    .line 6432
    monitor-exit v1

    .line 6433
    return-void

    .line 6430
    :cond_17
    const/16 v0, 0xa

    goto :goto_12

    .line 6432
    :catchall_1a
    move-exception v0

    monitor-exit v1
    :try_end_1c
    .catchall {:try_start_3 .. :try_end_1c} :catchall_1a

    throw v0
.end method

.method public setBluetoothScoOn(Z)V
    .registers 15
    .param p1, "on"    # Z

    .prologue
    const/16 v1, 0x8

    const/4 v6, 0x1

    const/4 v5, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x0

    .line 3080
    const-string/jumbo v0, "setBluetoothScoOn()"

    invoke-virtual {p0, v0}, checkAudioSettingsPermission(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_10

    .line 3119
    :goto_f
    return-void

    .line 3085
    :cond_10
    if-eqz p1, :cond_5d

    iget-object v0, p0, mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    if-eqz v0, :cond_5d

    .line 3086
    iget-object v0, p0, mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    new-array v4, v5, [I

    fill-array-data v4, :array_96

    invoke-virtual {v0, v4}, Landroid/bluetooth/BluetoothHeadset;->getDevicesMatchingConnectionStates([I)Ljava/util/List;

    move-result-object v11

    .line 3090
    .local v11, "deviceList":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    invoke-interface {v11}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5d

    .line 3091
    iget-object v0, p0, mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    iget-object v4, p0, mBluetoothHeadsetDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, v4}, Landroid/bluetooth/BluetoothHeadset;->getAudioState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v12

    .line 3092
    .local v12, "scoState":I
    const/16 v0, 0xb

    if-eq v12, v0, :cond_5d

    const/16 v0, 0xc

    if-eq v12, v0, :cond_5d

    .line 3094
    const-string v0, "AudioService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setBluetoothScoOn() wrong sco state:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mScoAudioState:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, mScoAudioState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_f

    .line 3101
    .end local v11    # "deviceList":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    .end local v12    # "scoState":I
    :cond_5d
    if-eqz p1, :cond_85

    .line 3102
    iget-object v0, p0, mBluetoothScoOndump:[I

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    aput v4, v0, v3

    .line 3103
    iget-object v0, p0, mBluetoothScoOndump:[I

    aput v3, v0, v6

    .line 3109
    :goto_6b
    if-eqz p1, :cond_8e

    .line 3110
    iput v5, p0, mForcedUseForComm:I

    .line 3115
    :cond_6f
    :goto_6f
    iget-object v0, p0, mAudioHandler:Landroid/media/AudioService$AudioHandler;

    iget v4, p0, mForcedUseForComm:I

    const/4 v5, 0x0

    move v6, v3

    invoke-static/range {v0 .. v6}, sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 3117
    iget-object v4, p0, mAudioHandler:Landroid/media/AudioService$AudioHandler;

    iget v8, p0, mForcedUseForComm:I

    const/4 v9, 0x0

    move v5, v1

    move v6, v2

    move v7, v2

    move v10, v3

    invoke-static/range {v4 .. v10}, sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    goto :goto_f

    .line 3105
    :cond_85
    iget-object v0, p0, mBluetoothScoOndump:[I

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    aput v4, v0, v6

    goto :goto_6b

    .line 3111
    :cond_8e
    iget v0, p0, mForcedUseForComm:I

    if-ne v0, v5, :cond_6f

    .line 3112
    iput v3, p0, mForcedUseForComm:I

    goto :goto_6f

    .line 3086
    nop

    :array_96
    .array-data 4
        0x2
        0x1
        0x3
    .end array-data
.end method

.method public setHdmiSystemAudioSupported(Z)I
    .registers 8
    .param p1, "on"    # Z

    .prologue
    .line 6631
    const/4 v0, 0x0

    .line 6632
    .local v0, "device":I
    iget-object v2, p0, mHdmiManager:Landroid/hardware/hdmi/HdmiControlManager;

    if-eqz v2, :cond_2e

    .line 6633
    iget-object v3, p0, mHdmiManager:Landroid/hardware/hdmi/HdmiControlManager;

    monitor-enter v3

    .line 6634
    :try_start_8
    iget-object v2, p0, mHdmiTvClient:Landroid/hardware/hdmi/HdmiTvClient;

    if-nez v2, :cond_16

    .line 6635
    const-string v2, "AudioService"

    const-string v4, "Only Hdmi-Cec enabled TV device supports system audio mode."

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6636
    monitor-exit v3

    move v1, v0

    .line 6650
    .end local v0    # "device":I
    .local v1, "device":I
    :goto_15
    return v1

    .line 6639
    .end local v1    # "device":I
    .restart local v0    # "device":I
    :cond_16
    iget-object v4, p0, mHdmiTvClient:Landroid/hardware/hdmi/HdmiTvClient;

    monitor-enter v4
    :try_end_19
    .catchall {:try_start_8 .. :try_end_19} :catchall_35

    .line 6640
    :try_start_19
    iget-boolean v2, p0, mHdmiSystemAudioSupported:Z

    if-eq v2, p1, :cond_27

    .line 6641
    iput-boolean p1, p0, mHdmiSystemAudioSupported:Z

    .line 6642
    const/4 v5, 0x5

    if-eqz p1, :cond_30

    const/16 v2, 0xc

    :goto_24
    invoke-static {v5, v2}, Landroid/media/AudioSystem;->setForceUse(II)I

    .line 6646
    :cond_27
    const/4 v2, 0x3

    invoke-static {v2}, Landroid/media/AudioSystem;->getDevicesForStream(I)I

    move-result v0

    .line 6647
    monitor-exit v4
    :try_end_2d
    .catchall {:try_start_19 .. :try_end_2d} :catchall_32

    .line 6648
    :try_start_2d
    monitor-exit v3
    :try_end_2e
    .catchall {:try_start_2d .. :try_end_2e} :catchall_35

    :cond_2e
    move v1, v0

    .line 6650
    .end local v0    # "device":I
    .restart local v1    # "device":I
    goto :goto_15

    .line 6642
    .end local v1    # "device":I
    .restart local v0    # "device":I
    :cond_30
    const/4 v2, 0x0

    goto :goto_24

    .line 6647
    :catchall_32
    move-exception v2

    :try_start_33
    monitor-exit v4
    :try_end_34
    .catchall {:try_start_33 .. :try_end_34} :catchall_32

    :try_start_34
    throw v2

    .line 6648
    :catchall_35
    move-exception v2

    monitor-exit v3
    :try_end_37
    .catchall {:try_start_34 .. :try_end_37} :catchall_35

    throw v2
.end method

.method public setMasterMute(ZILjava/lang/String;Landroid/os/IBinder;)V
    .registers 12
    .param p1, "state"    # Z
    .param p2, "flags"    # I
    .param p3, "callingPackage"    # Ljava/lang/String;
    .param p4, "cb"    # Landroid/os/IBinder;

    .prologue
    const/4 v2, 0x0

    .line 2171
    iget-boolean v0, p0, mUseFixedVolume:Z

    if-eqz v0, :cond_6

    .line 2185
    :cond_5
    :goto_5
    return-void

    .line 2174
    :cond_6
    iget-object v0, p0, mAppOps:Landroid/app/AppOpsManager;

    const/16 v1, 0x21

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-virtual {v0, v1, v3, p3}, Landroid/app/AppOpsManager;->noteOp(IILjava/lang/String;)I

    move-result v0

    if-nez v0, :cond_5

    .line 2178
    invoke-static {}, Landroid/media/AudioSystem;->getMasterMute()Z

    move-result v0

    if-eq p1, v0, :cond_5

    .line 2179
    invoke-static {p1}, Landroid/media/AudioSystem;->setMasterMute(Z)I

    .line 2181
    iget-object v0, p0, mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/16 v1, 0xb

    if-eqz p1, :cond_32

    const/4 v3, 0x1

    :goto_24
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v4

    const/4 v5, 0x0

    const/16 v6, 0x1f4

    invoke-static/range {v0 .. v6}, sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 2183
    invoke-direct {p0, p1, p2}, sendMasterMuteUpdate(ZI)V

    goto :goto_5

    :cond_32
    move v3, v2

    .line 2181
    goto :goto_24
.end method

.method public setMasterVolume(IILjava/lang/String;)V
    .registers 7
    .param p1, "volume"    # I
    .param p2, "flags"    # I
    .param p3, "callingPackage"    # Ljava/lang/String;

    .prologue
    .line 2225
    iget-boolean v0, p0, mUseFixedVolume:Z

    if-eqz v0, :cond_5

    .line 2240
    :cond_4
    :goto_4
    return-void

    .line 2229
    :cond_5
    iget-object v0, p0, mAppOps:Landroid/app/AppOpsManager;

    const/16 v1, 0x21

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v0, v1, v2, p3}, Landroid/app/AppOpsManager;->noteOp(IILjava/lang/String;)I

    move-result v0

    if-nez v0, :cond_4

    .line 2234
    if-gez p1, :cond_1e

    .line 2235
    const/4 p1, 0x0

    .line 2239
    :cond_16
    :goto_16
    int-to-float v0, p1

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr v0, v1

    invoke-direct {p0, v0, p2}, doSetMasterVolume(FI)V

    goto :goto_4

    .line 2236
    :cond_1e
    const/16 v0, 0x64

    if-le p1, v0, :cond_16

    .line 2237
    const/16 p1, 0x64

    goto :goto_16
.end method

.method public setMediaSilentMode(Z)V
    .registers 9
    .param p1, "state"    # Z

    .prologue
    const/16 v6, 0x800

    const/4 v5, 0x0

    const/4 v4, 0x3

    .line 2514
    iget-boolean v1, p0, mMediaSilentMode:Z

    if-eq p1, v1, :cond_36

    .line 2515
    invoke-virtual {p0, v4}, getStreamVolume(I)I

    move-result v0

    .line 2516
    .local v0, "musicLev":I
    const-string v1, "AudioService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setMediaSilentMode musicLev"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2518
    if-eqz p1, :cond_37

    .line 2519
    if-eqz v0, :cond_34

    .line 2520
    iput v0, p0, mMediaLastAudibleIndex:I

    .line 2521
    iget-object v1, p0, mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v4, v5, v6, v1}, setStreamVolume(IIILjava/lang/String;)V

    .line 2527
    :cond_34
    :goto_34
    iput-boolean p1, p0, mMediaSilentMode:Z

    .line 2529
    .end local v0    # "musicLev":I
    :cond_36
    return-void

    .line 2524
    .restart local v0    # "musicLev":I
    :cond_37
    iget v1, p0, mMediaLastAudibleIndex:I

    iget-object v2, p0, mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v4, v1, v6, v2}, setStreamVolume(IIILjava/lang/String;)V

    .line 2525
    iput v5, p0, mMediaLastAudibleIndex:I

    goto :goto_34
.end method

.method public setMicrophoneMute(ZLjava/lang/String;)V
    .registers 10
    .param p1, "on"    # Z
    .param p2, "callingPackage"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 2303
    iget-object v0, p0, mAppOps:Landroid/app/AppOpsManager;

    const/16 v1, 0x2c

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-virtual {v0, v1, v3, p2}, Landroid/app/AppOpsManager;->noteOp(IILjava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_10

    .line 2315
    :cond_f
    :goto_f
    return-void

    .line 2307
    :cond_10
    const-string/jumbo v0, "setMicrophoneMute()"

    invoke-virtual {p0, v0}, checkAudioSettingsPermission(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 2311
    invoke-static {p1}, Landroid/media/AudioSystem;->muteMicrophone(Z)I

    .line 2313
    iget-object v0, p0, mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/16 v1, 0x17

    if-eqz p1, :cond_2e

    const/4 v3, 0x1

    :goto_23
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v4

    const/4 v5, 0x0

    const/16 v6, 0x1f4

    invoke-static/range {v0 .. v6}, sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    goto :goto_f

    :cond_2e
    move v3, v2

    goto :goto_23
.end method

.method public setMode(ILandroid/os/IBinder;)V
    .registers 9
    .param p1, "mode"    # I
    .param p2, "cb"    # Landroid/os/IBinder;

    .prologue
    const/4 v5, 0x2

    const/4 v4, -0x1

    .line 2586
    sget-boolean v1, DEBUG_MODE:Z

    if-eqz v1, :cond_25

    const-string v1, "AudioService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setMode(mode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2587
    :cond_25
    const-string/jumbo v1, "setMode()"

    invoke-virtual {p0, v1}, checkAudioSettingsPermission(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2f

    .line 2620
    :cond_2e
    :goto_2e
    return-void

    .line 2591
    :cond_2f
    if-ne p1, v5, :cond_66

    iget-object v1, p0, mContext:Landroid/content/Context;

    const-string v2, "android.permission.MODIFY_PHONE_STATE"

    invoke-virtual {v1, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_66

    .line 2595
    const-string v1, "AudioService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MODIFY_PHONE_STATE Permission Denial: setMode(MODE_IN_CALL) from pid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", uid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2e

    .line 2600
    :cond_66
    if-lt p1, v4, :cond_2e

    const/4 v1, 0x5

    if-ge p1, v1, :cond_2e

    .line 2604
    const/4 v0, 0x0

    .line 2605
    .local v0, "newModeOwnerPid":I
    iget-object v2, p0, mSetModeDeathHandlers:Ljava/util/ArrayList;

    monitor-enter v2

    .line 2606
    if-ne p1, v4, :cond_73

    .line 2607
    :try_start_71
    iget p1, p0, mMode:I

    .line 2610
    :cond_73
    if-ne p1, v5, :cond_80

    invoke-virtual {p0}, isInCommunication()Z

    move-result v1

    if-eqz v1, :cond_80

    .line 2611
    const-string v1, "in_call=true"

    invoke-static {v1}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    .line 2613
    :cond_80
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-direct {p0, p1, p2, v1}, setModeInt(ILandroid/os/IBinder;I)I

    move-result v0

    .line 2614
    monitor-exit v2
    :try_end_89
    .catchall {:try_start_71 .. :try_end_89} :catchall_8f

    .line 2617
    if-eqz v0, :cond_2e

    .line 2618
    invoke-direct {p0, v0}, disconnectBluetoothSco(I)V

    goto :goto_2e

    .line 2614
    :catchall_8f
    move-exception v1

    :try_start_90
    monitor-exit v2
    :try_end_91
    .catchall {:try_start_90 .. :try_end_91} :catchall_8f

    throw v1
.end method

.method public setRadioSpeakerOn(Z)V
    .registers 6
    .param p1, "on"    # Z

    .prologue
    const/4 v3, 0x6

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 3041
    const-string/jumbo v0, "setRadioSpeakerOn()"

    invoke-virtual {p0, v0}, checkAudioSettingsPermission(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 3051
    :goto_c
    return-void

    .line 3044
    :cond_d
    if-eqz p1, :cond_15

    .line 3045
    invoke-static {v3, v2}, Landroid/media/AudioSystem;->setForceUse(II)I

    .line 3046
    iput v2, p0, mForcedUseForFMRadio:I

    goto :goto_c

    .line 3048
    :cond_15
    invoke-static {v3, v1}, Landroid/media/AudioSystem;->setForceUse(II)I

    .line 3049
    iput v1, p0, mForcedUseForFMRadio:I

    goto :goto_c
.end method

.method public setRemoteControlClientBrowsedPlayer()V
    .registers 2

    .prologue
    .line 6263
    iget-object v0, p0, mMediaFocusControl:Landroid/media/MediaFocusControl;

    invoke-virtual {v0}, Landroid/media/MediaFocusControl;->setRemoteControlClientBrowsedPlayer()V

    .line 6264
    return-void
.end method

.method public setRemoteControlClientPlayItem(JI)V
    .registers 5
    .param p1, "uid"    # J
    .param p3, "scope"    # I

    .prologue
    .line 6255
    iget-object v0, p0, mMediaFocusControl:Landroid/media/MediaFocusControl;

    invoke-virtual {v0, p1, p2, p3}, Landroid/media/MediaFocusControl;->setRemoteControlClientPlayItem(JI)V

    .line 6256
    return-void
.end method

.method public setRemoteStreamVolume(I)V
    .registers 3
    .param p1, "index"    # I

    .prologue
    .line 6268
    const-string/jumbo v0, "set the remote stream volume"

    invoke-direct {p0, v0}, enforceSelfOrSystemUI(Ljava/lang/String;)V

    .line 6269
    iget-object v0, p0, mMediaFocusControl:Landroid/media/MediaFocusControl;

    invoke-virtual {v0, p1}, Landroid/media/MediaFocusControl;->setRemoteStreamVolume(I)V

    .line 6270
    return-void
.end method

.method public setRingerMode(IZ)V
    .registers 7
    .param p1, "ringerMode"    # I
    .param p2, "checkZen"    # Z

    .prologue
    const/4 v3, 0x1

    .line 2332
    iget-boolean v1, p0, mUseFixedVolume:Z

    if-nez v1, :cond_b

    invoke-direct {p0}, isPlatformTelevision()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 2358
    :cond_b
    :goto_b
    return-void

    .line 2336
    :cond_c
    if-ne p1, v3, :cond_13

    iget-boolean v1, p0, mHasVibrator:Z

    if-nez v1, :cond_13

    .line 2337
    const/4 p1, 0x0

    .line 2339
    :cond_13
    if-eqz p2, :cond_18

    .line 2340
    invoke-direct {p0, p1}, checkZen(I)V

    .line 2343
    :cond_18
    if-eqz p1, :cond_1c

    if-ne p1, v3, :cond_61

    .line 2344
    :cond_1c
    const-string/jumbo v1, "persist.sys.silent"

    const-string v2, "1"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2348
    :goto_24
    invoke-virtual {p0}, getRingerMode()I

    move-result v1

    if-eq p1, v1, :cond_b

    .line 2350
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setRingerMode is called by pid: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", uid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2351
    .local v0, "msg":Ljava/lang/String;
    const-string v1, "AudioService"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2353
    invoke-direct {p0, p1, v3}, setRingerModeInt(IZ)V

    .line 2354
    iget-object v1, p0, mSamsungAudioService:Landroid/media/SamsungAudioService;

    invoke-virtual {v1, p1}, Landroid/media/SamsungAudioService;->setRingerMode(I)V

    .line 2356
    invoke-direct {p0, p1}, broadcastRingerMode(I)V

    goto :goto_b

    .line 2346
    .end local v0    # "msg":Ljava/lang/String;
    :cond_61
    const-string/jumbo v1, "persist.sys.silent"

    const-string v2, "0"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_24
.end method

.method public setRingtonePlayer(Landroid/media/IRingtonePlayer;)V
    .registers 5
    .param p1, "player"    # Landroid/media/IRingtonePlayer;

    .prologue
    .line 6437
    iget-object v0, p0, mContext:Landroid/content/Context;

    const-string v1, "android.permission.REMOTE_AUDIO_PLAYBACK"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 6438
    iput-object p1, p0, mRingtonePlayer:Landroid/media/IRingtonePlayer;

    .line 6439
    return-void
.end method

.method public setSpeakerphoneOn(Z)V
    .registers 15
    .param p1, "on"    # Z

    .prologue
    const/4 v5, 0x0

    const/16 v1, 0x8

    const/4 v2, 0x2

    const/4 v7, 0x1

    const/4 v4, 0x0

    .line 3005
    const-string/jumbo v0, "setSpeakerphoneOn()"

    invoke-virtual {p0, v0}, checkAudioSettingsPermission(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_10

    .line 3030
    :goto_f
    return-void

    .line 3010
    :cond_10
    if-eqz p1, :cond_3b

    .line 3011
    iget-object v0, p0, mSpeakerOndump:[I

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    aput v3, v0, v4

    .line 3012
    iget-object v0, p0, mSpeakerOndump:[I

    aput v4, v0, v7

    .line 3018
    :goto_1e
    if-eqz p1, :cond_44

    .line 3019
    iget v0, p0, mForcedUseForComm:I

    const/4 v3, 0x3

    if-ne v0, v3, :cond_2c

    .line 3020
    iget-object v0, p0, mAudioHandler:Landroid/media/AudioService$AudioHandler;

    move v3, v2

    move v6, v4

    invoke-static/range {v0 .. v6}, sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 3023
    :cond_2c
    iput v7, p0, mForcedUseForComm:I

    .line 3028
    :cond_2e
    :goto_2e
    iget-object v6, p0, mAudioHandler:Landroid/media/AudioService$AudioHandler;

    iget v10, p0, mForcedUseForComm:I

    move v7, v1

    move v8, v2

    move v9, v4

    move-object v11, v5

    move v12, v4

    invoke-static/range {v6 .. v12}, sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    goto :goto_f

    .line 3014
    :cond_3b
    iget-object v0, p0, mSpeakerOndump:[I

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    aput v3, v0, v7

    goto :goto_1e

    .line 3024
    :cond_44
    iget v0, p0, mForcedUseForComm:I

    if-ne v0, v7, :cond_2e

    .line 3025
    iput v4, p0, mForcedUseForComm:I

    goto :goto_2e
.end method

.method public setStatusbarHasVolumeSlider(Z)V
    .registers 2
    .param p1, "hasVolumeSlider"    # Z

    .prologue
    .line 7067
    iput-boolean p1, p0, mStatusbarHasVolumeSlider:Z

    .line 7068
    return-void
.end method

.method public setStreamMute(IZLandroid/os/IBinder;)V
    .registers 7
    .param p1, "streamType"    # I
    .param p2, "state"    # Z
    .param p3, "cb"    # Landroid/os/IBinder;

    .prologue
    .line 2040
    iget-boolean v0, p0, mUseFixedVolume:Z

    if-eqz v0, :cond_5

    .line 2062
    :cond_4
    :goto_4
    return-void

    .line 2044
    :cond_5
    const/4 v0, 0x1

    if-ne p2, v0, :cond_10

    .line 2045
    iget-object v0, p0, mStreamMutedump:[I

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    aput v1, v0, p1

    .line 2048
    :cond_10
    invoke-virtual {p0, p1}, isStreamAffectedByMute(I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2049
    iget-object v0, p0, mHdmiManager:Landroid/hardware/hdmi/HdmiControlManager;

    if-eqz v0, :cond_32

    .line 2050
    iget-object v1, p0, mHdmiManager:Landroid/hardware/hdmi/HdmiControlManager;

    monitor-enter v1

    .line 2051
    const/4 v0, 0x3

    if-ne p1, v0, :cond_31

    :try_start_20
    iget-object v0, p0, mHdmiTvClient:Landroid/hardware/hdmi/HdmiTvClient;

    if-eqz v0, :cond_31

    .line 2052
    iget-object v2, p0, mHdmiTvClient:Landroid/hardware/hdmi/HdmiTvClient;

    monitor-enter v2
    :try_end_27
    .catchall {:try_start_20 .. :try_end_27} :catchall_3d

    .line 2053
    :try_start_27
    iget-boolean v0, p0, mHdmiSystemAudioSupported:Z

    if-eqz v0, :cond_30

    .line 2054
    iget-object v0, p0, mHdmiTvClient:Landroid/hardware/hdmi/HdmiTvClient;

    invoke-virtual {v0, p2}, Landroid/hardware/hdmi/HdmiTvClient;->setSystemAudioMute(Z)V

    .line 2056
    :cond_30
    monitor-exit v2
    :try_end_31
    .catchall {:try_start_27 .. :try_end_31} :catchall_3a

    .line 2058
    :cond_31
    :try_start_31
    monitor-exit v1
    :try_end_32
    .catchall {:try_start_31 .. :try_end_32} :catchall_3d

    .line 2060
    :cond_32
    iget-object v0, p0, mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    aget-object v0, v0, p1

    invoke-virtual {v0, p3, p2}, Landroid/media/AudioService$VolumeStreamState;->mute(Landroid/os/IBinder;Z)V

    goto :goto_4

    .line 2056
    :catchall_3a
    move-exception v0

    :try_start_3b
    monitor-exit v2
    :try_end_3c
    .catchall {:try_start_3b .. :try_end_3c} :catchall_3a

    :try_start_3c
    throw v0

    .line 2058
    :catchall_3d
    move-exception v0

    monitor-exit v1
    :try_end_3f
    .catchall {:try_start_3c .. :try_end_3f} :catchall_3d

    throw v0
.end method

.method public setStreamSolo(IZLandroid/os/IBinder;)V
    .registers 6
    .param p1, "streamType"    # I
    .param p2, "state"    # Z
    .param p3, "cb"    # Landroid/os/IBinder;

    .prologue
    .line 2028
    iget-boolean v1, p0, mUseFixedVolume:Z

    if-eqz v1, :cond_5

    .line 2036
    :cond_4
    return-void

    .line 2032
    :cond_5
    const/4 v0, 0x0

    .local v0, "stream":I
    :goto_6
    iget-object v1, p0, mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    array-length v1, v1

    if-ge v0, v1, :cond_4

    .line 2033
    invoke-virtual {p0, v0}, isStreamAffectedByMute(I)Z

    move-result v1

    if-eqz v1, :cond_13

    if-ne v0, p1, :cond_16

    .line 2032
    :cond_13
    :goto_13
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 2034
    :cond_16
    iget-object v1, p0, mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    aget-object v1, v1, v0

    invoke-virtual {v1, p3, p2}, Landroid/media/AudioService$VolumeStreamState;->mute(Landroid/os/IBinder;Z)V

    goto :goto_13
.end method

.method public setStreamVolume(IIILjava/lang/String;)V
    .registers 11
    .param p1, "streamType"    # I
    .param p2, "index"    # I
    .param p3, "flags"    # I
    .param p4, "callingPackage"    # Ljava/lang/String;

    .prologue
    .line 1683
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, setStreamVolume(IIILjava/lang/String;I)V

    .line 1684
    return-void
.end method

.method public setTogether(Z)V
    .registers 2
    .param p1, "value"    # Z

    .prologue
    .line 5580
    iput-boolean p1, p0, mIsTogether:Z

    .line 5581
    return-void
.end method

.method public setVibrateSetting(II)V
    .registers 4
    .param p1, "vibrateType"    # I
    .param p2, "vibrateSetting"    # I

    .prologue
    .line 2486
    iget-boolean v0, p0, mHasVibrator:Z

    if-nez v0, :cond_5

    .line 2493
    :goto_4
    return-void

    .line 2488
    :cond_5
    iget v0, p0, mVibrateSetting:I

    invoke-static {v0, p1, p2}, getValueForVibrateSetting(III)I

    move-result v0

    iput v0, p0, mVibrateSetting:I

    .line 2491
    invoke-direct {p0, p1}, broadcastVibrateSetting(I)V

    goto :goto_4
.end method

.method public setVolumeController(Landroid/media/IVolumeController;)V
    .registers 5
    .param p1, "controller"    # Landroid/media/IVolumeController;

    .prologue
    .line 6795
    const-string/jumbo v0, "set the volume controller"

    invoke-direct {p0, v0}, enforceSelfOrSystemUI(Ljava/lang/String;)V

    .line 6798
    iget-object v0, p0, mVolumeController:Landroid/media/AudioService$VolumeController;

    invoke-virtual {v0, p1}, Landroid/media/AudioService$VolumeController;->isSameBinder(Landroid/media/IVolumeController;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 6822
    :cond_e
    :goto_e
    return-void

    .line 6803
    :cond_f
    iget-object v0, p0, mVolumeController:Landroid/media/AudioService$VolumeController;

    invoke-virtual {v0}, Landroid/media/AudioService$VolumeController;->postDismiss()V

    .line 6804
    if-eqz p1, :cond_23

    .line 6807
    :try_start_16
    invoke-interface {p1}, Landroid/media/IVolumeController;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    new-instance v1, Landroid/media/AudioService$3;

    invoke-direct {v1, p0, p1}, Landroid/media/AudioService$3;-><init>(Landroid/media/AudioService;Landroid/media/IVolumeController;)V

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_23
    .catch Landroid/os/RemoteException; {:try_start_16 .. :try_end_23} :catch_47

    .line 6820
    :cond_23
    :goto_23
    iget-object v0, p0, mVolumeController:Landroid/media/AudioService$VolumeController;

    invoke-virtual {v0, p1}, Landroid/media/AudioService$VolumeController;->setController(Landroid/media/IVolumeController;)V

    .line 6821
    sget-boolean v0, DEBUG_VOL:Z

    if-eqz v0, :cond_e

    const-string v0, "AudioService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Volume controller: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, mVolumeController:Landroid/media/AudioService$VolumeController;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e

    .line 6816
    :catch_47
    move-exception v0

    goto :goto_23
.end method

.method public setWiredDeviceConnectionState(IILjava/lang/String;)V
    .registers 12
    .param p1, "device"    # I
    .param p2, "state"    # I
    .param p3, "name"    # Ljava/lang/String;

    .prologue
    .line 4146
    iget-object v7, p0, mConnectedDevices:Ljava/util/HashMap;

    monitor-enter v7

    .line 4147
    :try_start_3
    invoke-virtual {p0, p1, p2}, checkSendBecomingNoisyIntent(II)I

    move-result v6

    .line 4148
    .local v6, "delay":I
    iget-object v1, p0, mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/16 v2, 0x64

    move-object v0, p0

    move v3, p1

    move v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v6}, queueMsgUnderWakeLock(Landroid/os/Handler;IIILjava/lang/Object;I)V

    .line 4154
    monitor-exit v7

    .line 4155
    return-void

    .line 4154
    .end local v6    # "delay":I
    :catchall_14
    move-exception v0

    monitor-exit v7
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_14

    throw v0
.end method

.method protected setWiredDeviceConnectionStateWithoutIntent(IILjava/lang/String;)V
    .registers 12
    .param p1, "device"    # I
    .param p2, "state"    # I
    .param p3, "name"    # Ljava/lang/String;

    .prologue
    .line 4158
    iget-object v7, p0, mConnectedDevices:Ljava/util/HashMap;

    monitor-enter v7

    .line 4159
    const/4 v6, 0x0

    .line 4160
    .local v6, "delay":I
    :try_start_4
    iget-object v1, p0, mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/16 v2, 0x64

    move-object v0, p0

    move v3, p1

    move v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v6}, queueMsgUnderWakeLock(Landroid/os/Handler;IIILjava/lang/Object;I)V

    .line 4166
    monitor-exit v7

    .line 4167
    return-void

    .line 4166
    :catchall_11
    move-exception v0

    monitor-exit v7
    :try_end_13
    .catchall {:try_start_4 .. :try_end_13} :catchall_11

    throw v0
.end method

.method public shouldVibrate(I)Z
    .registers 5
    .param p1, "vibrateType"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 2458
    iget-boolean v2, p0, mHasVibrator:Z

    if-nez v2, :cond_7

    .line 2473
    :goto_6
    :pswitch_6
    return v1

    .line 2460
    :cond_7
    invoke-virtual {p0, p1}, getVibrateSetting(I)I

    move-result v2

    packed-switch v2, :pswitch_data_24

    goto :goto_6

    .line 2463
    :pswitch_f
    invoke-virtual {p0}, getRingerMode()I

    move-result v2

    if-eqz v2, :cond_17

    :goto_15
    move v1, v0

    goto :goto_6

    :cond_17
    move v0, v1

    goto :goto_15

    .line 2466
    :pswitch_19
    invoke-virtual {p0}, getRingerMode()I

    move-result v2

    if-ne v2, v0, :cond_21

    :goto_1f
    move v1, v0

    goto :goto_6

    :cond_21
    move v0, v1

    goto :goto_1f

    .line 2460
    nop

    :pswitch_data_24
    .packed-switch 0x0
        :pswitch_6
        :pswitch_f
        :pswitch_19
    .end packed-switch
.end method

.method public startBluetoothSco(Landroid/os/IBinder;I)V
    .registers 5
    .param p1, "cb"    # Landroid/os/IBinder;
    .param p2, "targetSdkVersion"    # I

    .prologue
    .line 3149
    const/16 v1, 0x12

    if-ge p2, v1, :cond_9

    const/4 v0, 0x0

    .line 3152
    .local v0, "scoAudioMode":I
    :goto_5
    invoke-virtual {p0, p1, v0}, startBluetoothScoInt(Landroid/os/IBinder;I)V

    .line 3153
    return-void

    .line 3149
    .end local v0    # "scoAudioMode":I
    :cond_9
    const/4 v0, -0x1

    goto :goto_5
.end method

.method startBluetoothScoInt(Landroid/os/IBinder;I)V
    .registers 7
    .param p1, "cb"    # Landroid/os/IBinder;
    .param p2, "scoAudioMode"    # I

    .prologue
    .line 3161
    const-string/jumbo v1, "startBluetoothSco()"

    invoke-virtual {p0, v1}, checkAudioSettingsPermission(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d

    iget-boolean v1, p0, mSystemReady:Z

    if-nez v1, :cond_e

    .line 3174
    :cond_d
    :goto_d
    return-void

    .line 3165
    :cond_e
    const/4 v1, 0x1

    invoke-direct {p0, p1, v1}, getScoClient(Landroid/os/IBinder;Z)Landroid/media/AudioService$ScoClient;

    move-result-object v0

    .line 3171
    .local v0, "client":Landroid/media/AudioService$ScoClient;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 3172
    .local v2, "ident":J
    invoke-virtual {v0, p2}, Landroid/media/AudioService$ScoClient;->incCount(I)V

    .line 3173
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_d
.end method

.method public startBluetoothScoVirtualCall(Landroid/os/IBinder;)V
    .registers 3
    .param p1, "cb"    # Landroid/os/IBinder;

    .prologue
    .line 3157
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, startBluetoothScoInt(Landroid/os/IBinder;I)V

    .line 3158
    return-void
.end method

.method public startWatchingRoutes(Landroid/media/IAudioRoutesObserver;)Landroid/media/AudioRoutesInfo;
    .registers 5
    .param p1, "observer"    # Landroid/media/IAudioRoutesObserver;

    .prologue
    .line 6448
    iget-object v2, p0, mCurAudioRoutes:Landroid/media/AudioRoutesInfo;

    monitor-enter v2

    .line 6449
    :try_start_3
    new-instance v0, Landroid/media/AudioRoutesInfo;

    iget-object v1, p0, mCurAudioRoutes:Landroid/media/AudioRoutesInfo;

    invoke-direct {v0, v1}, Landroid/media/AudioRoutesInfo;-><init>(Landroid/media/AudioRoutesInfo;)V

    .line 6450
    .local v0, "routes":Landroid/media/AudioRoutesInfo;
    iget-object v1, p0, mRoutesObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 6451
    monitor-exit v2

    return-object v0

    .line 6452
    .end local v0    # "routes":Landroid/media/AudioRoutesInfo;
    :catchall_11
    move-exception v1

    monitor-exit v2
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_11

    throw v1
.end method

.method public stopBackgroundMusic()Z
    .registers 2

    .prologue
    .line 7120
    iget-object v0, p0, mSamsungAudioService:Landroid/media/SamsungAudioService;

    if-eqz v0, :cond_b

    .line 7121
    iget-object v0, p0, mSamsungAudioService:Landroid/media/SamsungAudioService;

    invoke-virtual {v0}, Landroid/media/SamsungAudioService;->stopBackgroundMusic()Z

    move-result v0

    .line 7123
    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public stopBluetoothSco(Landroid/os/IBinder;)V
    .registers 6
    .param p1, "cb"    # Landroid/os/IBinder;

    .prologue
    .line 3178
    const-string/jumbo v1, "stopBluetoothSco()"

    invoke-virtual {p0, v1}, checkAudioSettingsPermission(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d

    iget-boolean v1, p0, mSystemReady:Z

    if-nez v1, :cond_e

    .line 3191
    :cond_d
    :goto_d
    return-void

    .line 3182
    :cond_e
    const/4 v1, 0x0

    invoke-direct {p0, p1, v1}, getScoClient(Landroid/os/IBinder;Z)Landroid/media/AudioService$ScoClient;

    move-result-object v0

    .line 3186
    .local v0, "client":Landroid/media/AudioService$ScoClient;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 3187
    .local v2, "ident":J
    if-eqz v0, :cond_1c

    .line 3188
    invoke-virtual {v0}, Landroid/media/AudioService$ScoClient;->decCount()V

    .line 3190
    :cond_1c
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_d
.end method

.method public systemReady()V
    .registers 8

    .prologue
    const/4 v3, 0x0

    .line 872
    iget-object v0, p0, mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/16 v1, 0x15

    const/4 v2, 0x2

    const/4 v5, 0x0

    move v4, v3

    move v6, v3

    invoke-static/range {v0 .. v6}, sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 874
    return-void
.end method

.method public unloadSoundEffects()V
    .registers 8

    .prologue
    const/4 v3, 0x0

    .line 2891
    iget-object v0, p0, mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/16 v1, 0x14

    const/4 v2, 0x2

    const/4 v5, 0x0

    move v4, v3

    move v6, v3

    invoke-static/range {v0 .. v6}, sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 2892
    return-void
.end method

.method public unregisterAudioFocusClient(Ljava/lang/String;)V
    .registers 3
    .param p1, "clientId"    # Ljava/lang/String;

    .prologue
    .line 6286
    iget-object v0, p0, mMediaFocusControl:Landroid/media/MediaFocusControl;

    invoke-virtual {v0, p1}, Landroid/media/MediaFocusControl;->unregisterAudioFocusClient(Ljava/lang/String;)V

    .line 6287
    return-void
.end method

.method public unregisterAudioPolicyAsync(Landroid/os/IBinder;)V
    .registers 7
    .param p1, "cb"    # Landroid/os/IBinder;

    .prologue
    .line 7029
    iget-object v2, p0, mAudioPolicies:Ljava/util/HashMap;

    monitor-enter v2

    .line 7030
    :try_start_3
    iget-object v1, p0, mAudioPolicies:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioService$AudioPolicyProxy;

    .line 7031
    .local v0, "app":Landroid/media/AudioService$AudioPolicyProxy;
    if-nez v0, :cond_39

    .line 7032
    const-string v1, "AudioService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Trying to unregister unknown audio policy for pid "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " / uid "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 7037
    :goto_37
    monitor-exit v2

    .line 7039
    return-void

    .line 7035
    :cond_39
    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    goto :goto_37

    .line 7037
    .end local v0    # "app":Landroid/media/AudioService$AudioPolicyProxy;
    :catchall_3e
    move-exception v1

    monitor-exit v2
    :try_end_40
    .catchall {:try_start_3 .. :try_end_40} :catchall_3e

    throw v1
.end method

.method public unregisterRemoteControlDisplay(Landroid/media/IRemoteControlDisplay;)V
    .registers 3
    .param p1, "rcd"    # Landroid/media/IRemoteControlDisplay;

    .prologue
    .line 6242
    iget-object v0, p0, mMediaFocusControl:Landroid/media/MediaFocusControl;

    invoke-virtual {v0, p1}, Landroid/media/MediaFocusControl;->unregisterRemoteControlDisplay(Landroid/media/IRemoteControlDisplay;)V

    .line 6243
    return-void
.end method

.method public updateRemoteControllerOnExistingMediaPlayers()V
    .registers 7

    .prologue
    .line 981
    const-string v3, "AudioService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "updateRemoteControllerOnExistingMediaPlayers: size of Player list: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, mMediaPlayers:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 983
    sget-object v3, mMediaPlayers:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_84

    .line 984
    const-string v3, "AudioService"

    const-string v4, "Inform RemoteController regarding existing RCC entry"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 985
    sget-object v3, mMediaPlayers:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 986
    .local v2, "rccIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/media/AudioService$MediaPlayerInfo;>;"
    :goto_34
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8b

    .line 987
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioService$MediaPlayerInfo;

    .line 988
    .local v1, "player":Landroid/media/AudioService$MediaPlayerInfo;
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v3, "org.codeaurora.bluetooth.RCC_CHANGED_ACTION"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 989
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v3, "org.codeaurora.bluetooth.EXTRA_CALLING_PACKAGE_NAME"

    invoke-virtual {v1}, Landroid/media/AudioService$MediaPlayerInfo;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 991
    const-string/jumbo v3, "org.codeaurora.bluetooth.EXTRA_FOCUS_CHANGED_VALUE"

    invoke-virtual {v1}, Landroid/media/AudioService$MediaPlayerInfo;->isFocussed()Z

    move-result v4

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 993
    const-string/jumbo v3, "org.codeaurora.bluetooth.EXTRA_AVAILABLITY_CHANGED_VALUE"

    const/4 v4, 0x1

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 994
    invoke-virtual {p0, v0}, sendBroadcastToAll(Landroid/content/Intent;)V

    .line 995
    const-string v3, "AudioService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "updating RCC change: CallingPackageName:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Landroid/media/AudioService$MediaPlayerInfo;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_34

    .line 999
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "player":Landroid/media/AudioService$MediaPlayerInfo;
    .end local v2    # "rccIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/media/AudioService$MediaPlayerInfo;>;"
    :cond_84
    const-string v3, "AudioService"

    const-string v4, "No RCC entry present to update"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1001
    :cond_8b
    return-void
.end method

.method updateRingerModeAffectedStreams()Z
    .registers 6

    .prologue
    const/4 v4, -0x2

    .line 3869
    iget-object v1, p0, mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v2, "mode_ringer_streams_affected"

    const/16 v3, 0xa6

    invoke-static {v1, v2, v3, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 3876
    .local v0, "ringerModeAffectedStreams":I
    or-int/lit16 v0, v0, 0x126

    .line 3881
    iget v1, p0, mPlatformType:I

    packed-switch v1, :pswitch_data_4c

    .line 3893
    and-int/lit8 v0, v0, -0x9

    .line 3899
    :goto_15
    iget-object v2, p0, mCameraSoundForced:Ljava/lang/Boolean;

    monitor-enter v2

    .line 3900
    :try_start_18
    iget-object v1, p0, mCameraSoundForced:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_40

    .line 3901
    and-int/lit16 v0, v0, -0x81

    .line 3905
    :goto_22
    monitor-exit v2
    :try_end_23
    .catchall {:try_start_18 .. :try_end_23} :catchall_43

    .line 3906
    iget-object v1, p0, mStreamVolumeAlias:[I

    const/16 v2, 0x8

    aget v1, v1, v2

    const/4 v2, 0x2

    if-ne v1, v2, :cond_46

    .line 3907
    or-int/lit16 v0, v0, 0x100

    .line 3912
    :goto_2e
    iget v1, p0, mRingerModeAffectedStreams:I

    if-eq v0, v1, :cond_49

    .line 3913
    iget-object v1, p0, mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v2, "mode_ringer_streams_affected"

    invoke-static {v1, v2, v0, v4}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 3917
    iput v0, p0, mRingerModeAffectedStreams:I

    .line 3918
    const/4 v1, 0x1

    .line 3920
    :goto_3d
    return v1

    .line 3883
    :pswitch_3e
    const/4 v0, 0x0

    .line 3884
    goto :goto_15

    .line 3903
    :cond_40
    or-int/lit16 v0, v0, 0x80

    goto :goto_22

    .line 3905
    :catchall_43
    move-exception v1

    :try_start_44
    monitor-exit v2
    :try_end_45
    .catchall {:try_start_44 .. :try_end_45} :catchall_43

    throw v1

    .line 3909
    :cond_46
    and-int/lit16 v0, v0, -0x101

    goto :goto_2e

    .line 3920
    :cond_49
    const/4 v1, 0x0

    goto :goto_3d

    .line 3881
    nop

    :pswitch_data_4c
    .packed-switch 0x2
        :pswitch_3e
    .end packed-switch
.end method
