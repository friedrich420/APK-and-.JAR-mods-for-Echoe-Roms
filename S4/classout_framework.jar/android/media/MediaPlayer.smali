.class public Landroid/media/MediaPlayer;
.super Ljava/lang/Object;
.source "MediaPlayer.java"

# interfaces
.implements Landroid/media/SubtitleController$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/MediaPlayer$TimeProvider;,
        Landroid/media/MediaPlayer$OnInfoListener;,
        Landroid/media/MediaPlayer$OnPlayReadyErrorListener;,
        Landroid/media/MediaPlayer$OnErrorListener;,
        Landroid/media/MediaPlayer$OnSubtitleDataListener;,
        Landroid/media/MediaPlayer$OnTimedTextListener;,
        Landroid/media/MediaPlayer$OnVideoSizeChangedListener;,
        Landroid/media/MediaPlayer$OnSeekCompleteListener;,
        Landroid/media/MediaPlayer$OnBufferingUpdateListener;,
        Landroid/media/MediaPlayer$OnCompletionListener;,
        Landroid/media/MediaPlayer$OnPreparedListener;,
        Landroid/media/MediaPlayer$EventHandler;,
        Landroid/media/MediaPlayer$TrackInfo;
    }
.end annotation


# static fields
.field public static final APPLY_METADATA_FILTER:Z = true

.field public static final BYPASS_METADATA_FILTER:Z = false

.field public static final ERROR_MEDIA_RESOURCE_OVERSPEC:I = -0x3fd

.field private static final IMEDIA_CONTEXT_AWARE:Ljava/lang/String; = "com.samsung.CONTEXT_AWARE_MUSIC_INFO"

.field private static final IMEDIA_PLAYER:Ljava/lang/String; = "android.media.IMediaPlayer"

.field private static final IMEDIA_PLAYER_VIDEO_EXIST:Ljava/lang/String; = "android.media.IMediaPlayer.videoexist"

.field private static final IMEDIA_SMART_PAUSE:Ljava/lang/String; = "android.intent.action.SMART_PAUSE"

.field private static final INVOKE_ID_ADD_EXTERNAL_SOURCE:I = 0x2

.field private static final INVOKE_ID_ADD_EXTERNAL_SOURCE_FD:I = 0x3

.field private static final INVOKE_ID_DESELECT_TRACK:I = 0x5

.field private static final INVOKE_ID_GET_FULL_SUBTITLE:I = 0xb

.field private static final INVOKE_ID_GET_INBAND_TRACK_INFO:I = 0x9

.field private static final INVOKE_ID_GET_OUTBAND_TIMEDTEXT_TRACK_INFO:I = 0xa

.field private static final INVOKE_ID_GET_SELECTED_TRACK:I = 0x7

.field private static final INVOKE_ID_GET_TRACK_INFO:I = 0x1

.field private static final INVOKE_ID_REMOVE_EXTERNAL_SOURCE:I = 0x8

.field private static final INVOKE_ID_SELECT_TRACK:I = 0x4

.field private static final INVOKE_ID_SET_VIDEO_SCALE_MODE:I = 0x6

.field public static final KEY_PARAMETER_360VIDEO_XMP:I = 0x79f

.field private static final KEY_PARAMETER_AUDIO_ATTRIBUTES:I = 0x578

.field public static final KEY_PARAMETER_HOVERING_TYPE:I = 0x79e

.field public static final KEY_PARAMETER_META_AUTHORIZATION:I = 0x640

.field public static final KEY_PARAMETER_META_VIDEOSNAPSHOT:I = 0x642

.field public static final KEY_PARAMETER_META_WEATHER:I = 0x641

.field public static final KEY_PARAMETER_MULTIVISION_TYPE:I = 0x645

.field public static final KEY_PARAMETER_TIMED_TEXT_TRACK_MULTI:I = 0x5de

.field public static final KEY_PARAMETER_TIMED_TEXT_TRACK_TIME_SYNC:I = 0x5dd

.field public static final KEY_PARAMETER_USE_SW_DECODER:I = 0xbb8

.field public static final KEY_PARAMETER_VIDEO_FPS:I = 0x5e1

.field public static final KEY_PARAMETER_VIDEO_TRUEBLUE:I = 0x5e2

.field private static final MEDIA_BUFFERING_UPDATE:I = 0x3

.field private static final MEDIA_CONTEXT_AWARE:I = 0x12c

.field private static final MEDIA_ERROR:I = 0x64

.field public static final MEDIA_ERROR_ACCESS_TOKEN_EXPIRED:I = -0x3fc

.field public static final MEDIA_ERROR_CONNECTION_LOST:I = -0x3ed

.field public static final MEDIA_ERROR_IO:I = -0x3ec

.field public static final MEDIA_ERROR_MALFORMED:I = -0x3ef

.field public static final MEDIA_ERROR_NOT_VALID_FOR_PROGRESSIVE_PLAYBACK:I = 0xc8

.field public static final MEDIA_ERROR_SERVER_DIED:I = 0x64

.field public static final MEDIA_ERROR_TIMED_OUT:I = -0x6e

.field public static final MEDIA_ERROR_TRANSCODING_CODEC_ALLOCATION_ERROR:I = -0x177b

.field public static final MEDIA_ERROR_TRANSCODING_DRM_CONTENTS_IS_ALREADY_PLAYING:I = -0x177c

.field public static final MEDIA_ERROR_TRANSCODING_LACK_OF_RESOURCE:I = -0x177d

.field public static final MEDIA_ERROR_TRANSCODING_UNSPECIFIED_ERROR:I = -0x17d4

.field public static final MEDIA_ERROR_UNKNOWN:I = 0x1

.field public static final MEDIA_ERROR_UNSUPPORTED:I = -0x3f2

.field public static final MEDIA_ErrDrmDevCertRevoked:I = -0x3b

.field public static final MEDIA_ErrDrmLicenseExpired:I = 0x12d

.field public static final MEDIA_ErrDrmLicenseNotFound:I = 0x12c

.field public static final MEDIA_ErrDrmLicenseNotValidYet:I = 0x12e

.field public static final MEDIA_ErrDrmRightsAcquisitionFailed:I = -0x31

.field public static final MEDIA_ErrDrmServerDeviceLimitReached:I = -0x40

.field public static final MEDIA_ErrDrmServerDomainRequired:I = -0x3c

.field public static final MEDIA_ErrDrmServerInternalError:I = -0x3a

.field public static final MEDIA_ErrDrmServerNotAMember:I = -0x3d

.field public static final MEDIA_ErrDrmServerProtocolVersionMismatch:I = -0x3f

.field public static final MEDIA_ErrDrmServerUnknownAccountId:I = -0x3e

.field private static final MEDIA_INFO:I = 0xc8

.field public static final MEDIA_INFO_BAD_INTERLEAVING:I = 0x320

.field public static final MEDIA_INFO_BUFFERING_END:I = 0x2be

.field public static final MEDIA_INFO_BUFFERING_START:I = 0x2bd

.field public static final MEDIA_INFO_BUFFERING_TOAST:I = 0x309

.field public static final MEDIA_INFO_CODEC_TYPE_HEVC:I = 0x3ca

.field public static final MEDIA_INFO_EXTERNAL_METADATA_UPDATE:I = 0x323

.field public static final MEDIA_INFO_METADATA_UPDATE:I = 0x322

.field public static final MEDIA_INFO_NOT_SEEKABLE:I = 0x321

.field public static final MEDIA_INFO_NO_AUDIO:I = 0x3cc

.field public static final MEDIA_INFO_NO_VIDEO:I = 0x3cd

.field public static final MEDIA_INFO_STARTED_AS_NEXT:I = 0x2

.field public static final MEDIA_INFO_SUBTITLE_TIMED_OUT:I = 0x386

.field public static final MEDIA_INFO_TIMED_TEXT_ERROR:I = 0x384

.field public static final MEDIA_INFO_UNKNOWN:I = 0x1

.field public static final MEDIA_INFO_UNSUPPORTED_AUDIO:I = 0x3b6

.field public static final MEDIA_INFO_UNSUPPORTED_SUBTITLE:I = 0x385

.field public static final MEDIA_INFO_UNSUPPORTED_TICKPLAY:I = 0x3b9

.field public static final MEDIA_INFO_UNSUPPORTED_VIDEO:I = 0x3b7

.field public static final MEDIA_INFO_VIDEO_RENDERING_START:I = 0x3

.field public static final MEDIA_INFO_VIDEO_TRACK_LAGGING:I = 0x2bc

.field public static final MEDIA_MIMETYPE_TEXT_CEA_608:Ljava/lang/String; = "text/cea-608"

.field public static final MEDIA_MIMETYPE_TEXT_SUBRIP:Ljava/lang/String; = "application/x-subrip"

.field public static final MEDIA_MIMETYPE_TEXT_VTT:Ljava/lang/String; = "text/vtt"

.field private static final MEDIA_NOP:I = 0x0

.field private static final MEDIA_PAUSED:I = 0x7

.field private static final MEDIA_PLAYBACK_COMPLETE:I = 0x2

.field private static final MEDIA_PREPARED:I = 0x1

.field private static final MEDIA_SEEK_COMPLETE:I = 0x4

.field private static final MEDIA_SET_VIDEO_SIZE:I = 0x5

.field private static final MEDIA_SKIPPED:I = 0x9

.field private static final MEDIA_STARTED:I = 0x6

.field private static final MEDIA_STOPPED:I = 0x8

.field private static final MEDIA_SUBTITLE_DATA:I = 0xc9

.field private static final MEDIA_TIMED_TEXT:I = 0x63

.field public static final METADATA_ALL:Z = false

.field public static final METADATA_UPDATE_ONLY:Z = true

.field private static MMFWContextAware:Z = false

.field private static final MMFWSmartPause:Z = true

.field private static final PENDING_PAUSE:I = 0x1

.field private static final PENDING_STOP:I = 0x2

.field private static final TAG:Ljava/lang/String; = "MediaPlayer"

.field public static final VIDEO_SCALING_MODE_SCALE_TO_FIT:I = 0x1

.field public static final VIDEO_SCALING_MODE_SCALE_TO_FIT_WITH_CROPPING:I = 0x2

.field private static mPmExceptionForContextAware:Z


# instance fields
.field private mAIAContext:Z

.field private final mAppOps:Lcom/android/internal/app/IAppOpsService;

.field private mContextAwareId:I

.field private mContextAwareSend:Z

.field private mContextAwareUri:Ljava/lang/String;

.field private mEventHandler:Landroid/media/MediaPlayer$EventHandler;

.field private final mInbandSubtitleLock:Ljava/lang/Object;

.field private mInbandSubtitleTracks:[Landroid/media/SubtitleTrack;

.field private mIsStart:Z

.field private mIsVideo:Z

.field private mItsOnInstance:Ljava/lang/Object;

.field private mItsOnMethod:Ljava/lang/reflect/Method;

.field private mListenerContext:I

.field private mNativeContext:J

.field private mNativeSurfaceTexture:J

.field private mOnBufferingUpdateListener:Landroid/media/MediaPlayer$OnBufferingUpdateListener;

.field private mOnCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

.field private mOnErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

.field private mOnInfoListener:Landroid/media/MediaPlayer$OnInfoListener;

.field private mOnPlayReadyErrorListener:Landroid/media/MediaPlayer$OnPlayReadyErrorListener;

.field private mOnPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

.field private mOnSeekCompleteListener:Landroid/media/MediaPlayer$OnSeekCompleteListener;

.field private mOnSubtitleDataListener:Landroid/media/MediaPlayer$OnSubtitleDataListener;

.field private mOnTimedTextListener:Landroid/media/MediaPlayer$OnTimedTextListener;

.field private mOnVideoSizeChangedListener:Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

.field private mOpenSubtitleSources:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation
.end field

.field private mOutOfBandSubtitleTracks:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Landroid/media/SubtitleTrack;",
            ">;"
        }
    .end annotation
.end field

.field private mPendingCommand:I

.field private mPid:I

.field private mScreenOnWhilePlaying:Z

.field private mSelectedSubtitleTrackIndex:I

.field private mStayAwake:Z

.field private mStreamType:I

.field private mSubtitleController:Landroid/media/SubtitleController;

.field private mSubtitleDataListener:Landroid/media/MediaPlayer$OnSubtitleDataListener;

.field private mSurfaceHolder:Landroid/view/SurfaceHolder;

.field private mTimeProvider:Landroid/media/MediaPlayer$TimeProvider;

.field private mUsage:I

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 609
    const-string/jumbo v0, "media_jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 610
    invoke-static {}, native_init()V

    .line 638
    const/4 v0, 0x0

    sput-boolean v0, MMFWContextAware:Z

    .line 639
    const/4 v0, 0x1

    sput-boolean v0, mPmExceptionForContextAware:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 7

    .prologue
    const/4 v5, 0x0

    const/4 v4, -0x1

    const/4 v3, 0x0

    .line 660
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 624
    iput-object v5, p0, mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 628
    const/high16 v2, -0x80000000

    iput v2, p0, mStreamType:I

    .line 629
    iput v4, p0, mUsage:I

    .line 631
    iput-boolean v3, p0, mAIAContext:Z

    .line 632
    iput-boolean v3, p0, mIsVideo:Z

    .line 633
    iput-boolean v3, p0, mIsStart:Z

    .line 641
    const-string v2, ""

    iput-object v2, p0, mContextAwareUri:Ljava/lang/String;

    .line 642
    iput v3, p0, mContextAwareId:I

    .line 643
    iput-boolean v3, p0, mContextAwareSend:Z

    .line 646
    iput v3, p0, mPendingCommand:I

    .line 647
    iput v3, p0, mPid:I

    .line 2466
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, mInbandSubtitleLock:Ljava/lang/Object;

    .line 2468
    iput v4, p0, mSelectedSubtitleTrackIndex:I

    .line 2472
    new-instance v2, Landroid/media/MediaPlayer$1;

    invoke-direct {v2, p0}, Landroid/media/MediaPlayer$1;-><init>(Landroid/media/MediaPlayer;)V

    iput-object v2, p0, mSubtitleDataListener:Landroid/media/MediaPlayer$OnSubtitleDataListener;

    .line 663
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    .local v1, "looper":Landroid/os/Looper;
    if-eqz v1, :cond_7b

    .line 664
    new-instance v2, Landroid/media/MediaPlayer$EventHandler;

    invoke-direct {v2, p0, p0, v1}, Landroid/media/MediaPlayer$EventHandler;-><init>(Landroid/media/MediaPlayer;Landroid/media/MediaPlayer;Landroid/os/Looper;)V

    iput-object v2, p0, mEventHandler:Landroid/media/MediaPlayer$EventHandler;

    .line 671
    :goto_3d
    new-instance v2, Landroid/media/MediaPlayer$TimeProvider;

    invoke-direct {v2, p0}, Landroid/media/MediaPlayer$TimeProvider;-><init>(Landroid/media/MediaPlayer;)V

    iput-object v2, p0, mTimeProvider:Landroid/media/MediaPlayer$TimeProvider;

    .line 672
    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    iput-object v2, p0, mOutOfBandSubtitleTracks:Ljava/util/Vector;

    .line 673
    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    iput-object v2, p0, mOpenSubtitleSources:Ljava/util/Vector;

    .line 674
    new-array v2, v3, [Landroid/media/SubtitleTrack;

    iput-object v2, p0, mInbandSubtitleTracks:[Landroid/media/SubtitleTrack;

    .line 675
    const-string v2, "appops"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 676
    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Lcom/android/internal/app/IAppOpsService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IAppOpsService;

    move-result-object v2

    iput-object v2, p0, mAppOps:Lcom/android/internal/app/IAppOpsService;

    .line 679
    sget-boolean v2, mPmExceptionForContextAware:Z

    if-eqz v2, :cond_6c

    .line 680
    invoke-direct {p0}, isNeedContextAwareInfoBroadCast()Z

    move-result v2

    sput-boolean v2, MMFWContextAware:Z

    .line 682
    :cond_6c
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    iput v2, p0, mPid:I

    .line 689
    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-direct {p0, v2}, native_setup(Ljava/lang/Object;)V

    .line 690
    return-void

    .line 665
    .end local v0    # "b":Landroid/os/IBinder;
    :cond_7b
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-eqz v1, :cond_89

    .line 666
    new-instance v2, Landroid/media/MediaPlayer$EventHandler;

    invoke-direct {v2, p0, p0, v1}, Landroid/media/MediaPlayer$EventHandler;-><init>(Landroid/media/MediaPlayer;Landroid/media/MediaPlayer;Landroid/os/Looper;)V

    iput-object v2, p0, mEventHandler:Landroid/media/MediaPlayer$EventHandler;

    goto :goto_3d

    .line 668
    :cond_89
    iput-object v5, p0, mEventHandler:Landroid/media/MediaPlayer$EventHandler;

    goto :goto_3d
.end method

.method private native _getAudioStreamType()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method private native _pause()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method private native _prepare()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method private native _release()V
.end method

.method private native _reset()V
.end method

.method private native _resume()Z
.end method

.method private native _setAudioStreamType(I)V
.end method

.method private native _setAuxEffectSendLevel(F)V
.end method

.method private native _setDataSource(Ljava/io/FileDescriptor;JJ)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method private native _setVideoSurface(Landroid/view/Surface;)V
.end method

.method private native _setVolume(FF)V
.end method

.method private native _start()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method private native _stop()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method private native _suspend()Z
.end method

.method static synthetic access$000(Landroid/media/MediaPlayer;)[Landroid/media/SubtitleTrack;
    .registers 2
    .param p0, "x0"    # Landroid/media/MediaPlayer;

    .prologue
    .line 573
    iget-object v0, p0, mInbandSubtitleTracks:[Landroid/media/SubtitleTrack;

    return-object v0
.end method

.method static synthetic access$100(Landroid/media/MediaPlayer;)Landroid/media/SubtitleController;
    .registers 2
    .param p0, "x0"    # Landroid/media/MediaPlayer;

    .prologue
    .line 573
    iget-object v0, p0, mSubtitleController:Landroid/media/SubtitleController;

    return-object v0
.end method

.method static synthetic access$1000()Z
    .registers 1

    .prologue
    .line 573
    sget-boolean v0, MMFWContextAware:Z

    return v0
.end method

.method static synthetic access$1100(Landroid/media/MediaPlayer;)Z
    .registers 2
    .param p0, "x0"    # Landroid/media/MediaPlayer;

    .prologue
    .line 573
    iget-boolean v0, p0, mContextAwareSend:Z

    return v0
.end method

.method static synthetic access$1102(Landroid/media/MediaPlayer;Z)Z
    .registers 2
    .param p0, "x0"    # Landroid/media/MediaPlayer;
    .param p1, "x1"    # Z

    .prologue
    .line 573
    iput-boolean p1, p0, mContextAwareSend:Z

    return p1
.end method

.method static synthetic access$1200(Landroid/media/MediaPlayer;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Landroid/media/MediaPlayer;

    .prologue
    .line 573
    iget-object v0, p0, mContextAwareUri:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1202(Landroid/media/MediaPlayer;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Landroid/media/MediaPlayer;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 573
    iput-object p1, p0, mContextAwareUri:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1300(Landroid/media/MediaPlayer;)I
    .registers 2
    .param p0, "x0"    # Landroid/media/MediaPlayer;

    .prologue
    .line 573
    iget v0, p0, mContextAwareId:I

    return v0
.end method

.method static synthetic access$1302(Landroid/media/MediaPlayer;I)I
    .registers 2
    .param p0, "x0"    # Landroid/media/MediaPlayer;
    .param p1, "x1"    # I

    .prologue
    .line 573
    iput p1, p0, mContextAwareId:I

    return p1
.end method

.method static synthetic access$1400(Landroid/media/MediaPlayer;)I
    .registers 2
    .param p0, "x0"    # Landroid/media/MediaPlayer;

    .prologue
    .line 573
    iget v0, p0, mPid:I

    return v0
.end method

.method static synthetic access$1500(Landroid/media/MediaPlayer;Ljava/lang/String;[Ljava/lang/Object;)Z
    .registers 4
    .param p0, "x0"    # Landroid/media/MediaPlayer;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # [Ljava/lang/Object;

    .prologue
    .line 573
    invoke-direct {p0, p1, p2}, sendBroadcastingIntent(Ljava/lang/String;[Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1600(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$TimeProvider;
    .registers 2
    .param p0, "x0"    # Landroid/media/MediaPlayer;

    .prologue
    .line 573
    iget-object v0, p0, mTimeProvider:Landroid/media/MediaPlayer$TimeProvider;

    return-object v0
.end method

.method static synthetic access$1700(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnBufferingUpdateListener;
    .registers 2
    .param p0, "x0"    # Landroid/media/MediaPlayer;

    .prologue
    .line 573
    iget-object v0, p0, mOnBufferingUpdateListener:Landroid/media/MediaPlayer$OnBufferingUpdateListener;

    return-object v0
.end method

.method static synthetic access$1800(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnSeekCompleteListener;
    .registers 2
    .param p0, "x0"    # Landroid/media/MediaPlayer;

    .prologue
    .line 573
    iget-object v0, p0, mOnSeekCompleteListener:Landroid/media/MediaPlayer$OnSeekCompleteListener;

    return-object v0
.end method

.method static synthetic access$1900(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnVideoSizeChangedListener;
    .registers 2
    .param p0, "x0"    # Landroid/media/MediaPlayer;

    .prologue
    .line 573
    iget-object v0, p0, mOnVideoSizeChangedListener:Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

    return-object v0
.end method

.method static synthetic access$200(Landroid/media/MediaPlayer;)Ljava/util/Vector;
    .registers 2
    .param p0, "x0"    # Landroid/media/MediaPlayer;

    .prologue
    .line 573
    iget-object v0, p0, mOpenSubtitleSources:Ljava/util/Vector;

    return-object v0
.end method

.method static synthetic access$2002(Landroid/media/MediaPlayer;Z)Z
    .registers 2
    .param p0, "x0"    # Landroid/media/MediaPlayer;
    .param p1, "x1"    # Z

    .prologue
    .line 573
    iput-boolean p1, p0, mIsVideo:Z

    return p1
.end method

.method static synthetic access$2100(Landroid/media/MediaPlayer;)Z
    .registers 2
    .param p0, "x0"    # Landroid/media/MediaPlayer;

    .prologue
    .line 573
    iget-boolean v0, p0, mIsStart:Z

    return v0
.end method

.method static synthetic access$2200(Landroid/media/MediaPlayer;)Z
    .registers 2
    .param p0, "x0"    # Landroid/media/MediaPlayer;

    .prologue
    .line 573
    iget-boolean v0, p0, mAIAContext:Z

    return v0
.end method

.method static synthetic access$2300(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnErrorListener;
    .registers 2
    .param p0, "x0"    # Landroid/media/MediaPlayer;

    .prologue
    .line 573
    iget-object v0, p0, mOnErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    return-object v0
.end method

.method static synthetic access$2400(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnPlayReadyErrorListener;
    .registers 2
    .param p0, "x0"    # Landroid/media/MediaPlayer;

    .prologue
    .line 573
    iget-object v0, p0, mOnPlayReadyErrorListener:Landroid/media/MediaPlayer$OnPlayReadyErrorListener;

    return-object v0
.end method

.method static synthetic access$2500(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnInfoListener;
    .registers 2
    .param p0, "x0"    # Landroid/media/MediaPlayer;

    .prologue
    .line 573
    iget-object v0, p0, mOnInfoListener:Landroid/media/MediaPlayer$OnInfoListener;

    return-object v0
.end method

.method static synthetic access$2600(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnTimedTextListener;
    .registers 2
    .param p0, "x0"    # Landroid/media/MediaPlayer;

    .prologue
    .line 573
    iget-object v0, p0, mOnTimedTextListener:Landroid/media/MediaPlayer$OnTimedTextListener;

    return-object v0
.end method

.method static synthetic access$2700(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnSubtitleDataListener;
    .registers 2
    .param p0, "x0"    # Landroid/media/MediaPlayer;

    .prologue
    .line 573
    iget-object v0, p0, mOnSubtitleDataListener:Landroid/media/MediaPlayer$OnSubtitleDataListener;

    return-object v0
.end method

.method static synthetic access$2800(Landroid/media/MediaPlayer;)I
    .registers 2
    .param p0, "x0"    # Landroid/media/MediaPlayer;

    .prologue
    .line 573
    iget v0, p0, mPendingCommand:I

    return v0
.end method

.method static synthetic access$2802(Landroid/media/MediaPlayer;I)I
    .registers 2
    .param p0, "x0"    # Landroid/media/MediaPlayer;
    .param p1, "x1"    # I

    .prologue
    .line 573
    iput p1, p0, mPendingCommand:I

    return p1
.end method

.method static synthetic access$300(Landroid/media/MediaPlayer;)Ljava/util/Vector;
    .registers 2
    .param p0, "x0"    # Landroid/media/MediaPlayer;

    .prologue
    .line 573
    iget-object v0, p0, mOutOfBandSubtitleTracks:Ljava/util/Vector;

    return-object v0
.end method

.method static synthetic access$400(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$EventHandler;
    .registers 2
    .param p0, "x0"    # Landroid/media/MediaPlayer;

    .prologue
    .line 573
    iget-object v0, p0, mEventHandler:Landroid/media/MediaPlayer$EventHandler;

    return-object v0
.end method

.method static synthetic access$500(Landroid/media/MediaPlayer;)J
    .registers 3
    .param p0, "x0"    # Landroid/media/MediaPlayer;

    .prologue
    .line 573
    iget-wide v0, p0, mNativeContext:J

    return-wide v0
.end method

.method static synthetic access$600(Landroid/media/MediaPlayer;)V
    .registers 1
    .param p0, "x0"    # Landroid/media/MediaPlayer;

    .prologue
    .line 573
    invoke-direct {p0}, scanInternalSubtitleTracks()V

    return-void
.end method

.method static synthetic access$700(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnPreparedListener;
    .registers 2
    .param p0, "x0"    # Landroid/media/MediaPlayer;

    .prologue
    .line 573
    iget-object v0, p0, mOnPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    return-object v0
.end method

.method static synthetic access$800(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnCompletionListener;
    .registers 2
    .param p0, "x0"    # Landroid/media/MediaPlayer;

    .prologue
    .line 573
    iget-object v0, p0, mOnCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    return-object v0
.end method

.method static synthetic access$900(Landroid/media/MediaPlayer;Z)V
    .registers 2
    .param p0, "x0"    # Landroid/media/MediaPlayer;
    .param p1, "x1"    # Z

    .prologue
    .line 573
    invoke-direct {p0, p1}, stayAwake(Z)V

    return-void
.end method

.method private static availableMimeTypeForExternalSource(Ljava/lang/String;)Z
    .registers 2
    .param p0, "mimeType"    # Ljava/lang/String;

    .prologue
    .line 2439
    const-string v0, "application/x-subrip"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 2440
    const/4 v0, 0x1

    .line 2442
    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public static create(Landroid/content/Context;I)Landroid/media/MediaPlayer;
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "resid"    # I

    .prologue
    .line 968
    invoke-static {}, Landroid/media/AudioSystem;->newAudioSessionId()I

    move-result v0

    .line 969
    .local v0, "s":I
    const/4 v1, 0x0

    if-lez v0, :cond_c

    .end local v0    # "s":I
    :goto_7
    invoke-static {p0, p1, v1, v0}, create(Landroid/content/Context;ILandroid/media/AudioAttributes;I)Landroid/media/MediaPlayer;

    move-result-object v1

    return-object v1

    .restart local v0    # "s":I
    :cond_c
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public static create(Landroid/content/Context;ILandroid/media/AudioAttributes;I)Landroid/media/MediaPlayer;
    .registers 14
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "resid"    # I
    .param p2, "audioAttributes"    # Landroid/media/AudioAttributes;
    .param p3, "audioSessionId"    # I

    .prologue
    const/4 v9, 0x0

    .line 986
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->openRawResourceFd(I)Landroid/content/res/AssetFileDescriptor;

    move-result-object v7

    .line 987
    .local v7, "afd":Landroid/content/res/AssetFileDescriptor;
    if-nez v7, :cond_d

    move-object v0, v9

    .line 1010
    .end local v7    # "afd":Landroid/content/res/AssetFileDescriptor;
    :goto_c
    return-object v0

    .line 989
    .restart local v7    # "afd":Landroid/content/res/AssetFileDescriptor;
    :cond_d
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, <init>()V

    .line 991
    .local v0, "mp":Landroid/media/MediaPlayer;
    if-eqz p2, :cond_3b

    move-object v6, p2

    .line 993
    .local v6, "aa":Landroid/media/AudioAttributes;
    :goto_15
    invoke-virtual {v0, v6}, setAudioAttributes(Landroid/media/AudioAttributes;)V

    .line 994
    invoke-virtual {v0, p3}, setAudioSessionId(I)V

    .line 996
    invoke-virtual {v7}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-virtual {v7}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v2

    invoke-virtual {v7}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v4

    invoke-virtual/range {v0 .. v5}, setDataSource(Ljava/io/FileDescriptor;JJ)V

    .line 997
    invoke-virtual {v7}, Landroid/content/res/AssetFileDescriptor;->close()V

    .line 998
    invoke-virtual {v0}, prepare()V
    :try_end_30
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_30} :catch_31
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_30} :catch_45
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_30} :catch_4e

    goto :goto_c

    .line 1000
    .end local v0    # "mp":Landroid/media/MediaPlayer;
    .end local v6    # "aa":Landroid/media/AudioAttributes;
    .end local v7    # "afd":Landroid/content/res/AssetFileDescriptor;
    :catch_31
    move-exception v8

    .line 1001
    .local v8, "ex":Ljava/io/IOException;
    const-string v1, "MediaPlayer"

    const-string v2, "create failed:"

    invoke-static {v1, v2, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v8    # "ex":Ljava/io/IOException;
    :goto_39
    move-object v0, v9

    .line 1010
    goto :goto_c

    .line 991
    .restart local v0    # "mp":Landroid/media/MediaPlayer;
    .restart local v7    # "afd":Landroid/content/res/AssetFileDescriptor;
    :cond_3b
    :try_start_3b
    new-instance v1, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v1}, Landroid/media/AudioAttributes$Builder;-><init>()V

    invoke-virtual {v1}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;
    :try_end_43
    .catch Ljava/io/IOException; {:try_start_3b .. :try_end_43} :catch_31
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3b .. :try_end_43} :catch_45
    .catch Ljava/lang/SecurityException; {:try_start_3b .. :try_end_43} :catch_4e

    move-result-object v6

    goto :goto_15

    .line 1003
    .end local v0    # "mp":Landroid/media/MediaPlayer;
    .end local v7    # "afd":Landroid/content/res/AssetFileDescriptor;
    :catch_45
    move-exception v8

    .line 1004
    .local v8, "ex":Ljava/lang/IllegalArgumentException;
    const-string v1, "MediaPlayer"

    const-string v2, "create failed:"

    invoke-static {v1, v2, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_39

    .line 1006
    .end local v8    # "ex":Ljava/lang/IllegalArgumentException;
    :catch_4e
    move-exception v8

    .line 1007
    .local v8, "ex":Ljava/lang/SecurityException;
    const-string v1, "MediaPlayer"

    const-string v2, "create failed:"

    invoke-static {v1, v2, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_39
.end method

.method public static create(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/MediaPlayer;
    .registers 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 885
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, create(Landroid/content/Context;Landroid/net/Uri;Landroid/view/SurfaceHolder;)Landroid/media/MediaPlayer;

    move-result-object v0

    return-object v0
.end method

.method public static create(Landroid/content/Context;Landroid/net/Uri;Landroid/view/SurfaceHolder;)Landroid/media/MediaPlayer;
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "holder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 905
    invoke-static {}, Landroid/media/AudioSystem;->newAudioSessionId()I

    move-result v0

    .line 906
    .local v0, "s":I
    const/4 v1, 0x0

    if-lez v0, :cond_c

    .end local v0    # "s":I
    :goto_7
    invoke-static {p0, p1, p2, v1, v0}, create(Landroid/content/Context;Landroid/net/Uri;Landroid/view/SurfaceHolder;Landroid/media/AudioAttributes;I)Landroid/media/MediaPlayer;

    move-result-object v1

    return-object v1

    .restart local v0    # "s":I
    :cond_c
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public static create(Landroid/content/Context;Landroid/net/Uri;Landroid/view/SurfaceHolder;Landroid/media/AudioAttributes;I)Landroid/media/MediaPlayer;
    .registers 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "holder"    # Landroid/view/SurfaceHolder;
    .param p3, "audioAttributes"    # Landroid/media/AudioAttributes;
    .param p4, "audioSessionId"    # I

    .prologue
    .line 924
    :try_start_0
    new-instance v2, Landroid/media/MediaPlayer;

    invoke-direct {v2}, <init>()V

    .line 925
    .local v2, "mp":Landroid/media/MediaPlayer;
    if-eqz p3, :cond_1a

    move-object v0, p3

    .line 927
    .local v0, "aa":Landroid/media/AudioAttributes;
    :goto_8
    invoke-virtual {v2, v0}, setAudioAttributes(Landroid/media/AudioAttributes;)V

    .line 928
    invoke-virtual {v2, p4}, setAudioSessionId(I)V

    .line 929
    invoke-virtual {v2, p0, p1}, setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    .line 930
    if-eqz p2, :cond_16

    .line 931
    invoke-virtual {v2, p2}, setDisplay(Landroid/view/SurfaceHolder;)V

    .line 933
    :cond_16
    invoke-virtual {v2}, prepare()V

    .line 946
    .end local v0    # "aa":Landroid/media/AudioAttributes;
    .end local v2    # "mp":Landroid/media/MediaPlayer;
    :goto_19
    return-object v2

    .line 925
    .restart local v2    # "mp":Landroid/media/MediaPlayer;
    :cond_1a
    new-instance v3, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v3}, Landroid/media/AudioAttributes$Builder;-><init>()V

    invoke-virtual {v3}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;
    :try_end_22
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_22} :catch_24
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_22} :catch_2e
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_22} :catch_37

    move-result-object v0

    goto :goto_8

    .line 935
    .end local v2    # "mp":Landroid/media/MediaPlayer;
    :catch_24
    move-exception v1

    .line 936
    .local v1, "ex":Ljava/io/IOException;
    const-string v3, "MediaPlayer"

    const-string v4, "create failed:"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 946
    .end local v1    # "ex":Ljava/io/IOException;
    :goto_2c
    const/4 v2, 0x0

    goto :goto_19

    .line 938
    :catch_2e
    move-exception v1

    .line 939
    .local v1, "ex":Ljava/lang/IllegalArgumentException;
    const-string v3, "MediaPlayer"

    const-string v4, "create failed:"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2c

    .line 941
    .end local v1    # "ex":Ljava/lang/IllegalArgumentException;
    :catch_37
    move-exception v1

    .line 942
    .local v1, "ex":Ljava/lang/SecurityException;
    const-string v3, "MediaPlayer"

    const-string v4, "create failed:"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2c
.end method

.method private getAudioStreamType()I
    .registers 3

    .prologue
    .line 1406
    iget v0, p0, mStreamType:I

    const/high16 v1, -0x80000000

    if-ne v0, v1, :cond_c

    .line 1407
    invoke-direct {p0}, _getAudioStreamType()I

    move-result v0

    iput v0, p0, mStreamType:I

    .line 1409
    :cond_c
    iget v0, p0, mStreamType:I

    return v0
.end method

.method public static native getClientMediaInfo(ILandroid/os/Parcel;)I
.end method

.method private getInbandTrackInfo()[Landroid/media/MediaPlayer$TrackInfo;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 2401
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2402
    .local v1, "request":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2404
    .local v0, "reply":Landroid/os/Parcel;
    :try_start_8
    const-string v3, "android.media.IMediaPlayer"

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2405
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 2406
    invoke-virtual {p0, v1, v0}, invoke(Landroid/os/Parcel;Landroid/os/Parcel;)V

    .line 2407
    sget-object v3, Landroid/media/MediaPlayer$TrackInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/media/MediaPlayer$TrackInfo;
    :try_end_1c
    .catchall {:try_start_8 .. :try_end_1c} :catchall_23

    .line 2410
    .local v2, "trackInfo":[Landroid/media/MediaPlayer$TrackInfo;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2411
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object v2

    .line 2410
    .end local v2    # "trackInfo":[Landroid/media/MediaPlayer$TrackInfo;
    :catchall_23
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2411
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method private native getParameter(ILandroid/os/Parcel;)V
.end method

.method private isNeedContextAwareInfoBroadCast()Z
    .registers 9

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1029
    const-string/jumbo v5, "package"

    invoke-static {v5}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/content/pm/IPackageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageManager;

    move-result-object v2

    .line 1030
    .local v2, "pm":Landroid/content/pm/IPackageManager;
    const/4 v1, 0x0

    .line 1033
    .local v1, "pi":Landroid/content/pm/PackageInfo;
    :try_start_e
    const-string v5, "com.samsung.android.providers.context"

    const/4 v6, 0x0

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v7

    invoke-virtual {v7}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v7

    invoke-interface {v2, v5, v6, v7}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;
    :try_end_1c
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_1c} :catch_2e

    move-result-object v1

    .line 1041
    sput-boolean v4, mPmExceptionForContextAware:Z

    .line 1043
    if-eqz v1, :cond_3b

    iget v5, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    const/4 v6, 0x3

    if-lt v5, v6, :cond_3b

    .line 1044
    const-string v4, "MediaPlayer"

    const-string v5, "Need to enable context aware info"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1048
    :goto_2d
    return v3

    .line 1034
    :catch_2e
    move-exception v0

    .line 1035
    .local v0, "e":Landroid/os/RemoteException;
    const-string v5, "MediaPlayer"

    const-string/jumbo v6, "isNeedContextAwareInfoBroadCast RemoteException"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1037
    sput-boolean v3, mPmExceptionForContextAware:Z

    move v3, v4

    .line 1038
    goto :goto_2d

    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_3b
    move v3, v4

    .line 1048
    goto :goto_2d
.end method

.method private isRestricted()Z
    .registers 9

    .prologue
    const/4 v3, 0x0

    .line 1391
    :try_start_1
    invoke-direct {p0}, getAudioStreamType()I

    move-result v4

    const/4 v5, 0x4

    if-ne v4, v5, :cond_10

    .line 1392
    const-string v4, "MediaPlayer"

    const-string v5, "Alarm stream should not be restricted."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1401
    :cond_f
    :goto_f
    return v3

    .line 1395
    :cond_10
    iget v4, p0, mUsage:I

    const/4 v5, -0x1

    if-eq v4, v5, :cond_2b

    iget v2, p0, mUsage:I

    .line 1397
    .local v2, "usage":I
    :goto_17
    iget-object v4, p0, mAppOps:Lcom/android/internal/app/IAppOpsService;

    const/16 v5, 0x1c

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v6

    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v4, v5, v2, v6, v7}, Lcom/android/internal/app/IAppOpsService;->checkAudioOperation(IIILjava/lang/String;)I

    move-result v1

    .line 1399
    .local v1, "mode":I
    if-eqz v1, :cond_f

    const/4 v3, 0x1

    goto :goto_f

    .line 1395
    .end local v1    # "mode":I
    .end local v2    # "usage":I
    :cond_2b
    invoke-direct {p0}, getAudioStreamType()I

    move-result v4

    invoke-static {v4}, Landroid/media/AudioAttributes;->usageForLegacyStreamType(I)I
    :try_end_32
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_32} :catch_34

    move-result v2

    goto :goto_17

    .line 1400
    :catch_34
    move-exception v0

    .line 1401
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_f
.end method

.method private isVideoScalingModeSupported(I)Z
    .registers 4
    .param p1, "mode"    # I

    .prologue
    const/4 v0, 0x1

    .line 4234
    if-eq p1, v0, :cond_6

    const/4 v1, 0x2

    if-ne p1, v1, :cond_7

    :cond_6
    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method private native nativeSetDataSource(Landroid/os/IBinder;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/SecurityException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method private final native native_finalize()V
.end method

.method private final native native_getMetadata(ZZLandroid/os/Parcel;)Z
.end method

.method private static final native native_init()V
.end method

.method private final native native_invoke(Landroid/os/Parcel;Landroid/os/Parcel;)I
.end method

.method public static native native_pullBatteryData(Landroid/os/Parcel;)I
.end method

.method private final native native_setMetadataFilter(Landroid/os/Parcel;)I
.end method

.method private final native native_setRetransmitEndpoint(Ljava/lang/String;I)I
.end method

.method private final native native_setup(Ljava/lang/Object;)V
.end method

.method private static postEventFromNative(Ljava/lang/Object;IIILjava/lang/Object;)V
    .registers 10
    .param p0, "mediaplayer_ref"    # Ljava/lang/Object;
    .param p1, "what"    # I
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I
    .param p4, "obj"    # Ljava/lang/Object;

    .prologue
    .line 3602
    const/16 v2, -0x31

    if-eq p3, v2, :cond_10

    const/16 v2, -0x3c

    if-eq p3, v2, :cond_10

    const/16 v2, -0x3d

    if-eq p3, v2, :cond_10

    const/16 v2, -0x40

    if-ne p3, v2, :cond_2e

    .line 3606
    :cond_10
    if-eqz p4, :cond_2e

    .line 3607
    const-string v3, "MediaPlayer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "postEventFromNative Error String is"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v2, p4

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3610
    :cond_2e
    check-cast p0, Ljava/lang/ref/WeakReference;

    .end local p0    # "mediaplayer_ref":Ljava/lang/Object;
    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/MediaPlayer;

    .line 3611
    .local v1, "mp":Landroid/media/MediaPlayer;
    if-nez v1, :cond_39

    .line 3623
    :cond_38
    :goto_38
    return-void

    .line 3615
    :cond_39
    const/16 v2, 0xc8

    if-ne p1, v2, :cond_43

    const/4 v2, 0x2

    if-ne p2, v2, :cond_43

    .line 3617
    invoke-virtual {v1}, start()V

    .line 3619
    :cond_43
    iget-object v2, v1, mEventHandler:Landroid/media/MediaPlayer$EventHandler;

    if-eqz v2, :cond_38

    .line 3620
    iget-object v2, v1, mEventHandler:Landroid/media/MediaPlayer$EventHandler;

    invoke-virtual {v2, p1, p2, p3, p4}, Landroid/media/MediaPlayer$EventHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 3621
    .local v0, "m":Landroid/os/Message;
    iget-object v2, v1, mEventHandler:Landroid/media/MediaPlayer$EventHandler;

    invoke-virtual {v2, v0}, Landroid/media/MediaPlayer$EventHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_38
.end method

.method private registerMediaMapping(Ljava/lang/String;)V
    .registers 8
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 1233
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v3, "CscFeature_Common_EnableItsOn"

    invoke-virtual {v2, v3}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4b

    .line 1234
    iget-object v2, p0, mItsOnInstance:Ljava/lang/Object;

    if-eqz v2, :cond_14

    iget-object v2, p0, mItsOnMethod:Ljava/lang/reflect/Method;

    if-nez v2, :cond_3e

    .line 1236
    :cond_14
    :try_start_14
    const-string v2, "com.itsoninc.android.ItsOnOemApi"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 1237
    .local v1, "itsOnOemApiClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v2, "getInstance"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    iput-object v2, p0, mItsOnInstance:Ljava/lang/Object;

    .line 1238
    const-string/jumbo v2, "registerMediaMapping"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    iput-object v2, p0, mItsOnMethod:Ljava/lang/reflect/Method;
    :try_end_3e
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_3e} :catch_4c

    .line 1244
    .end local v1    # "itsOnOemApiClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_3e
    :goto_3e
    :try_start_3e
    iget-object v2, p0, mItsOnMethod:Ljava/lang/reflect/Method;

    iget-object v3, p0, mItsOnInstance:Ljava/lang/Object;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4b
    .catch Ljava/lang/Exception; {:try_start_3e .. :try_end_4b} :catch_55

    .line 1249
    :cond_4b
    :goto_4b
    return-void

    .line 1239
    :catch_4c
    move-exception v0

    .line 1240
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "MediaPlayer"

    const-string v3, "Cannot initiate Itson Instance and/or Method"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3e

    .line 1245
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_55
    move-exception v0

    .line 1246
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string v2, "MediaPlayer"

    const-string v3, "Cannot invoke registerMediaMapping"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4b
.end method

.method private scanInternalSubtitleTracks()V
    .registers 9

    .prologue
    .line 2580
    iget-object v5, p0, mSubtitleController:Landroid/media/SubtitleController;

    if-nez v5, :cond_c

    .line 2581
    const-string v5, "MediaPlayer"

    const-string v6, "Should have subtitle controller already set"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2608
    :goto_b
    return-void

    .line 2587
    :cond_c
    :try_start_c
    invoke-direct {p0}, getInbandTrackInfo()[Landroid/media/MediaPlayer$TrackInfo;
    :try_end_f
    .catch Ljava/lang/RuntimeException; {:try_start_c .. :try_end_f} :catch_31

    move-result-object v4

    .line 2592
    .local v4, "tracks":[Landroid/media/MediaPlayer$TrackInfo;
    iget-object v6, p0, mInbandSubtitleLock:Ljava/lang/Object;

    monitor-enter v6

    .line 2593
    :try_start_13
    array-length v5, v4

    new-array v2, v5, [Landroid/media/SubtitleTrack;

    .line 2594
    .local v2, "inbandTracks":[Landroid/media/SubtitleTrack;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_17
    array-length v5, v4

    if-ge v1, v5, :cond_4c

    .line 2595
    aget-object v5, v4, v1

    invoke-virtual {v5}, Landroid/media/MediaPlayer$TrackInfo;->getTrackType()I

    move-result v5

    const/4 v7, 0x4

    if-ne v5, v7, :cond_2e

    .line 2596
    iget-object v5, p0, mInbandSubtitleTracks:[Landroid/media/SubtitleTrack;

    array-length v5, v5

    if-ge v1, v5, :cond_3a

    .line 2597
    iget-object v5, p0, mInbandSubtitleTracks:[Landroid/media/SubtitleTrack;

    aget-object v5, v5, v1

    aput-object v5, v2, v1
    :try_end_2e
    .catchall {:try_start_13 .. :try_end_2e} :catchall_49

    .line 2594
    :cond_2e
    :goto_2e
    add-int/lit8 v1, v1, 0x1

    goto :goto_17

    .line 2588
    .end local v1    # "i":I
    .end local v2    # "inbandTracks":[Landroid/media/SubtitleTrack;
    .end local v4    # "tracks":[Landroid/media/MediaPlayer$TrackInfo;
    :catch_31
    move-exception v0

    .line 2589
    .local v0, "e":Ljava/lang/RuntimeException;
    const-string v5, "MediaPlayer"

    const-string v6, "getInbandTrackInfo failed "

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b

    .line 2599
    .end local v0    # "e":Ljava/lang/RuntimeException;
    .restart local v1    # "i":I
    .restart local v2    # "inbandTracks":[Landroid/media/SubtitleTrack;
    .restart local v4    # "tracks":[Landroid/media/MediaPlayer$TrackInfo;
    :cond_3a
    :try_start_3a
    iget-object v5, p0, mSubtitleController:Landroid/media/SubtitleController;

    aget-object v7, v4, v1

    invoke-virtual {v7}, Landroid/media/MediaPlayer$TrackInfo;->getFormat()Landroid/media/MediaFormat;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/media/SubtitleController;->addTrack(Landroid/media/MediaFormat;)Landroid/media/SubtitleTrack;

    move-result-object v3

    .line 2601
    .local v3, "track":Landroid/media/SubtitleTrack;
    aput-object v3, v2, v1

    goto :goto_2e

    .line 2606
    .end local v1    # "i":I
    .end local v2    # "inbandTracks":[Landroid/media/SubtitleTrack;
    .end local v3    # "track":Landroid/media/SubtitleTrack;
    :catchall_49
    move-exception v5

    monitor-exit v6
    :try_end_4b
    .catchall {:try_start_3a .. :try_end_4b} :catchall_49

    throw v5

    .line 2605
    .restart local v1    # "i":I
    .restart local v2    # "inbandTracks":[Landroid/media/SubtitleTrack;
    :cond_4c
    :try_start_4c
    iput-object v2, p0, mInbandSubtitleTracks:[Landroid/media/SubtitleTrack;

    .line 2606
    monitor-exit v6
    :try_end_4f
    .catchall {:try_start_4c .. :try_end_4f} :catchall_49

    .line 2607
    iget-object v5, p0, mSubtitleController:Landroid/media/SubtitleController;

    invoke-virtual {v5}, Landroid/media/SubtitleController;->selectDefaultTrack()V

    goto :goto_b
.end method

.method private selectOrDeselectInbandTrack(IZ)V
    .registers 6
    .param p1, "index"    # I
    .param p2, "select"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 3219
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3220
    .local v1, "request":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3222
    .local v0, "reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.media.IMediaPlayer"

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3223
    if-eqz p2, :cond_20

    const/4 v2, 0x4

    :goto_10
    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3224
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3225
    invoke-virtual {p0, v1, v0}, invoke(Landroid/os/Parcel;Landroid/os/Parcel;)V
    :try_end_19
    .catchall {:try_start_8 .. :try_end_19} :catchall_22

    .line 3227
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3228
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3230
    return-void

    .line 3223
    :cond_20
    const/4 v2, 0x5

    goto :goto_10

    .line 3227
    :catchall_22
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3228
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method private selectOrDeselectTrack(IZ)V
    .registers 11
    .param p1, "index"    # I
    .param p2, "select"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 3177
    const/4 v1, 0x0

    .line 3178
    .local v1, "track":Landroid/media/SubtitleTrack;
    iget-object v5, p0, mInbandSubtitleLock:Ljava/lang/Object;

    monitor-enter v5

    .line 3179
    :try_start_4
    iget-object v4, p0, mInbandSubtitleTracks:[Landroid/media/SubtitleTrack;

    array-length v4, v4

    if-nez v4, :cond_32

    .line 3180
    invoke-direct {p0}, getInbandTrackInfo()[Landroid/media/MediaPlayer$TrackInfo;

    move-result-object v2

    .line 3181
    .local v2, "tracks":[Landroid/media/MediaPlayer$TrackInfo;
    array-length v4, v2

    new-array v4, v4, [Landroid/media/SubtitleTrack;

    iput-object v4, p0, mInbandSubtitleTracks:[Landroid/media/SubtitleTrack;

    .line 3182
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_13
    array-length v4, v2

    if-ge v0, v4, :cond_32

    .line 3183
    aget-object v4, v2, v0

    invoke-virtual {v4}, Landroid/media/MediaPlayer$TrackInfo;->getTrackType()I

    move-result v4

    const/4 v6, 0x4

    if-ne v4, v6, :cond_2f

    .line 3184
    iget-object v4, p0, mInbandSubtitleTracks:[Landroid/media/SubtitleTrack;

    iget-object v6, p0, mSubtitleController:Landroid/media/SubtitleController;

    aget-object v7, v2, v0

    invoke-virtual {v7}, Landroid/media/MediaPlayer$TrackInfo;->getFormat()Landroid/media/MediaFormat;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/media/SubtitleController;->addTrack(Landroid/media/MediaFormat;)Landroid/media/SubtitleTrack;

    move-result-object v6

    aput-object v6, v4, v0

    .line 3182
    :cond_2f
    add-int/lit8 v0, v0, 0x1

    goto :goto_13

    .line 3188
    .end local v0    # "i":I
    .end local v2    # "tracks":[Landroid/media/MediaPlayer$TrackInfo;
    :cond_32
    monitor-exit v5
    :try_end_33
    .catchall {:try_start_4 .. :try_end_33} :catchall_60

    .line 3190
    iget-object v4, p0, mInbandSubtitleTracks:[Landroid/media/SubtitleTrack;

    array-length v4, v4

    if-ge p1, v4, :cond_63

    .line 3191
    iget-object v4, p0, mInbandSubtitleTracks:[Landroid/media/SubtitleTrack;

    aget-object v1, v4, p1

    .line 3196
    :cond_3c
    :goto_3c
    iget-object v4, p0, mSubtitleController:Landroid/media/SubtitleController;

    if-eqz v4, :cond_95

    if-eqz v1, :cond_95

    .line 3197
    if-eqz p2, :cond_7d

    .line 3198
    invoke-virtual {v1}, Landroid/media/SubtitleTrack;->isTimedText()Z

    move-result v4

    if-eqz v4, :cond_5a

    .line 3199
    const/4 v4, 0x3

    invoke-virtual {p0, v4}, getSelectedTrack(I)I

    move-result v3

    .line 3200
    .local v3, "ttIndex":I
    if-ltz v3, :cond_5a

    iget-object v4, p0, mInbandSubtitleTracks:[Landroid/media/SubtitleTrack;

    array-length v4, v4

    if-ge v3, v4, :cond_5a

    .line 3202
    const/4 v4, 0x0

    invoke-direct {p0, v3, v4}, selectOrDeselectInbandTrack(IZ)V

    .line 3205
    .end local v3    # "ttIndex":I
    :cond_5a
    iget-object v4, p0, mSubtitleController:Landroid/media/SubtitleController;

    invoke-virtual {v4, v1}, Landroid/media/SubtitleController;->selectTrack(Landroid/media/SubtitleTrack;)Z

    .line 3215
    :goto_5f
    return-void

    .line 3188
    :catchall_60
    move-exception v4

    :try_start_61
    monitor-exit v5
    :try_end_62
    .catchall {:try_start_61 .. :try_end_62} :catchall_60

    throw v4

    .line 3192
    :cond_63
    iget-object v4, p0, mInbandSubtitleTracks:[Landroid/media/SubtitleTrack;

    array-length v4, v4

    iget-object v5, p0, mOutOfBandSubtitleTracks:Ljava/util/Vector;

    invoke-virtual {v5}, Ljava/util/Vector;->size()I

    move-result v5

    add-int/2addr v4, v5

    if-ge p1, v4, :cond_3c

    .line 3193
    iget-object v4, p0, mOutOfBandSubtitleTracks:Ljava/util/Vector;

    iget-object v5, p0, mInbandSubtitleTracks:[Landroid/media/SubtitleTrack;

    array-length v5, v5

    sub-int v5, p1, v5

    invoke-virtual {v4, v5}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "track":Landroid/media/SubtitleTrack;
    check-cast v1, Landroid/media/SubtitleTrack;

    .restart local v1    # "track":Landroid/media/SubtitleTrack;
    goto :goto_3c

    .line 3206
    :cond_7d
    iget-object v4, p0, mSubtitleController:Landroid/media/SubtitleController;

    invoke-virtual {v4}, Landroid/media/SubtitleController;->getSelectedTrack()Landroid/media/SubtitleTrack;

    move-result-object v4

    if-ne v4, v1, :cond_8c

    .line 3207
    iget-object v4, p0, mSubtitleController:Landroid/media/SubtitleController;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/media/SubtitleController;->selectTrack(Landroid/media/SubtitleTrack;)Z

    goto :goto_5f

    .line 3209
    :cond_8c
    const-string v4, "MediaPlayer"

    const-string/jumbo v5, "trying to deselect track that was not selected"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5f

    .line 3214
    :cond_95
    invoke-direct {p0, p1, p2}, selectOrDeselectInbandTrack(IZ)V

    goto :goto_5f
.end method

.method private varargs sendBroadcastingIntent(Ljava/lang/String;[Ljava/lang/Object;)Z
    .registers 20
    .param p1, "intentName"    # Ljava/lang/String;
    .param p2, "extraData"    # [Ljava/lang/Object;

    .prologue
    .line 3627
    move-object/from16 v0, p2

    array-length v1, v0

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_24

    .line 3628
    const-string v1, "MediaPlayer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "sendBroadcastingIntent invailed param - "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3629
    const/4 v1, 0x0

    .line 3664
    :goto_23
    return v1

    .line 3632
    :cond_24
    new-instance v3, Landroid/content/Intent;

    move-object/from16 v0, p1

    invoke-direct {v3, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3634
    .local v3, "intent":Landroid/content/Intent;
    const-string v1, "android.media.IMediaPlayer.videoexist"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_41

    .line 3635
    const-string v1, "MediaPlayer"

    const-string/jumbo v2, "this is IMEDIA_PLAYER_VIDEO_EXIST"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3636
    const/4 v1, 0x0

    invoke-virtual {v3, v1}, Landroid/content/Intent;->setAllowFds(Z)V

    .line 3640
    :cond_41
    const/16 v16, 0x0

    .local v16, "i":I
    :goto_43
    :try_start_43
    move-object/from16 v0, p2

    array-length v1, v0

    move/from16 v0, v16

    if-ge v0, v1, :cond_ae

    .line 3641
    add-int/lit8 v1, v16, 0x1

    aget-object v1, p2, v1

    instance-of v1, v1, Ljava/lang/String;

    if-eqz v1, :cond_66

    .line 3642
    aget-object v1, p2, v16

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v2, v16, 0x1

    aget-object v2, p2, v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3640
    :goto_63
    add-int/lit8 v16, v16, 0x2

    goto :goto_43

    .line 3643
    :cond_66
    add-int/lit8 v1, v16, 0x1

    aget-object v1, p2, v1

    instance-of v1, v1, Ljava/lang/Integer;

    if-eqz v1, :cond_89

    .line 3644
    aget-object v1, p2, v16

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v1, v16, 0x1

    aget-object v1, p2, v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v3, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;
    :try_end_7d
    .catch Ljava/lang/ClassCastException; {:try_start_43 .. :try_end_7d} :catch_7e

    goto :goto_63

    .line 3649
    :catch_7e
    move-exception v15

    .line 3650
    .local v15, "ex":Ljava/lang/ClassCastException;
    const-string v1, "MediaPlayer"

    const-string/jumbo v2, "sendBroadcast(ClassCastException) fail"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3651
    const/4 v1, 0x0

    goto :goto_23

    .line 3646
    .end local v15    # "ex":Ljava/lang/ClassCastException;
    :cond_89
    :try_start_89
    const-string v1, "MediaPlayer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invailed Type. Add "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    add-int/lit8 v4, v16, 0x1

    aget-object v4, p2, v4

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_ad
    .catch Ljava/lang/ClassCastException; {:try_start_89 .. :try_end_ad} :catch_7e

    goto :goto_63

    .line 3655
    :cond_ae
    :try_start_ae
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, -0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, -0x1

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-static {}, Landroid/os/Binder;->getCallingUserHandle()Landroid/os/UserHandle;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v13

    invoke-interface/range {v1 .. v13}, Landroid/app/IActivityManager;->broadcastIntent(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;Ljava/lang/String;IZZI)I
    :try_end_c6
    .catch Landroid/os/RemoteException; {:try_start_ae .. :try_end_c6} :catch_c9

    .line 3664
    const/4 v1, 0x1

    goto/16 :goto_23

    .line 3660
    :catch_c9
    move-exception v14

    .line 3661
    .local v14, "e":Landroid/os/RemoteException;
    const-string v1, "MediaPlayer"

    const-string/jumbo v2, "sendBroadcast fail"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3662
    const/4 v1, 0x0

    goto/16 :goto_23
.end method

.method private setDataSource(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .registers 12
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "keys"    # [Ljava/lang/String;
    .param p3, "values"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/SecurityException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 1167
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 1168
    .local v5, "uri":Landroid/net/Uri;
    invoke-virtual {v5}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v4

    .line 1169
    .local v4, "scheme":Ljava/lang/String;
    const-string v6, "file"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_47

    .line 1170
    invoke-virtual {v5}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p1

    .line 1187
    :cond_14
    const-string v6, "file://"

    invoke-virtual {p1, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_24

    .line 1188
    const-string v6, "file://"

    const-string v7, ""

    invoke-virtual {p1, v6, v7}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1194
    :cond_24
    const-string v6, ".sdp"

    invoke-virtual {p1, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_34

    const-string v6, ".SDP"

    invoke-virtual {p1, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_54

    .line 1195
    :cond_34
    const-string v6, "/storage/emulated/"

    const-string v7, "/mnt/shell/emulated/"

    invoke-virtual {p1, v6, v7}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1198
    .local v3, "newPath":Ljava/lang/String;
    invoke-direct {p0, v3}, registerMediaMapping(Ljava/lang/String;)V

    .line 1201
    invoke-static {p1}, Landroid/media/MediaHTTPService;->createHttpServiceBinderIfNecessary(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v6

    invoke-direct {p0, v6, v3, p2, p3}, nativeSetDataSource(Landroid/os/IBinder;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    .line 1229
    .end local v3    # "newPath":Ljava/lang/String;
    :cond_46
    :goto_46
    return-void

    .line 1171
    :cond_47
    if-eqz v4, :cond_14

    .line 1174
    invoke-direct {p0, p1}, registerMediaMapping(Ljava/lang/String;)V

    .line 1178
    invoke-static {p1}, Landroid/media/MediaHTTPService;->createHttpServiceBinderIfNecessary(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v6

    invoke-direct {p0, v6, p1, p2, p3}, nativeSetDataSource(Landroid/os/IBinder;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_46

    .line 1208
    :cond_54
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1209
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_78

    .line 1210
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 1214
    .local v2, "is":Ljava/io/FileInputStream;
    :try_start_64
    invoke-virtual {v2}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v0

    .line 1215
    .local v0, "fd":Ljava/io/FileDescriptor;
    invoke-virtual {p0, v0}, setDataSource(Ljava/io/FileDescriptor;)V
    :try_end_6b
    .catchall {:try_start_64 .. :try_end_6b} :catchall_71

    .line 1217
    if-eqz v2, :cond_46

    .line 1218
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    goto :goto_46

    .line 1217
    .end local v0    # "fd":Ljava/io/FileDescriptor;
    :catchall_71
    move-exception v6

    if-eqz v2, :cond_77

    .line 1218
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    :cond_77
    throw v6

    .line 1227
    .end local v2    # "is":Ljava/io/FileInputStream;
    :cond_78
    new-instance v6, Ljava/io/IOException;

    const-string/jumbo v7, "setDataSource failed."

    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6
.end method

.method private stayAwake(Z)V
    .registers 3
    .param p1, "awake"    # Z

    .prologue
    .line 1536
    iget-object v0, p0, mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_13

    .line 1537
    if-eqz p1, :cond_19

    iget-object v0, p0, mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-nez v0, :cond_19

    .line 1538
    iget-object v0, p0, mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 1543
    :cond_13
    :goto_13
    iput-boolean p1, p0, mStayAwake:Z

    .line 1544
    invoke-direct {p0}, updateSurfaceScreenOn()V

    .line 1545
    return-void

    .line 1539
    :cond_19
    if-nez p1, :cond_13

    iget-object v0, p0, mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 1540
    iget-object v0, p0, mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_13
.end method

.method private updateSurfaceScreenOn()V
    .registers 3

    .prologue
    .line 1548
    iget-object v0, p0, mSurfaceHolder:Landroid/view/SurfaceHolder;

    if-eqz v0, :cond_12

    .line 1549
    iget-object v1, p0, mSurfaceHolder:Landroid/view/SurfaceHolder;

    iget-boolean v0, p0, mScreenOnWhilePlaying:Z

    if-eqz v0, :cond_13

    iget-boolean v0, p0, mStayAwake:Z

    if-eqz v0, :cond_13

    const/4 v0, 0x1

    :goto_f
    invoke-interface {v1, v0}, Landroid/view/SurfaceHolder;->setKeepScreenOn(Z)V

    .line 1551
    :cond_12
    return-void

    .line 1549
    :cond_13
    const/4 v0, 0x0

    goto :goto_f
.end method


# virtual methods
.method public addSubtitleSource(Ljava/io/InputStream;Landroid/media/MediaFormat;)V
    .registers 9
    .param p1, "is"    # Ljava/io/InputStream;
    .param p2, "format"    # Landroid/media/MediaFormat;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 2531
    move-object v1, p1

    .line 2532
    .local v1, "fIs":Ljava/io/InputStream;
    move-object v0, p2

    .line 2536
    .local v0, "fFormat":Landroid/media/MediaFormat;
    iget-object v5, p0, mOpenSubtitleSources:Ljava/util/Vector;

    monitor-enter v5

    .line 2537
    :try_start_5
    iget-object v4, p0, mOpenSubtitleSources:Ljava/util/Vector;

    invoke-virtual {v4, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 2538
    monitor-exit v5
    :try_end_b
    .catchall {:try_start_5 .. :try_end_b} :catchall_29

    .line 2541
    new-instance v3, Landroid/os/HandlerThread;

    const-string v4, "SubtitleReadThread"

    const/16 v5, 0x9

    invoke-direct {v3, v4, v5}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 2543
    .local v3, "thread":Landroid/os/HandlerThread;
    invoke-virtual {v3}, Landroid/os/HandlerThread;->start()V

    .line 2544
    new-instance v2, Landroid/os/Handler;

    invoke-virtual {v3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v2, v4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 2545
    .local v2, "handler":Landroid/os/Handler;
    new-instance v4, Landroid/media/MediaPlayer$2;

    invoke-direct {v4, p0, v1, v0, v3}, Landroid/media/MediaPlayer$2;-><init>(Landroid/media/MediaPlayer;Ljava/io/InputStream;Landroid/media/MediaFormat;Landroid/os/HandlerThread;)V

    invoke-virtual {v2, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2577
    return-void

    .line 2538
    .end local v2    # "handler":Landroid/os/Handler;
    .end local v3    # "thread":Landroid/os/HandlerThread;
    :catchall_29
    move-exception v4

    :try_start_2a
    monitor-exit v5
    :try_end_2b
    .catchall {:try_start_2a .. :try_end_2b} :catchall_29

    throw v4
.end method

.method public addTimedTextSource(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)V
    .registers 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "mimeType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 2674
    invoke-virtual {p2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    .line 2675
    .local v3, "scheme":Ljava/lang/String;
    if-eqz v3, :cond_e

    const-string v4, "file"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_16

    .line 2676
    :cond_e
    invoke-virtual {p2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4, p3}, addTimedTextSource(Ljava/lang/String;Ljava/lang/String;)V

    .line 2702
    :cond_15
    :goto_15
    return-void

    .line 2680
    :cond_16
    const/4 v1, 0x0

    .line 2682
    .local v1, "fd":Landroid/content/res/AssetFileDescriptor;
    :try_start_17
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 2683
    .local v2, "resolver":Landroid/content/ContentResolver;
    const-string/jumbo v4, "r"

    invoke-virtual {v2, p2, v4}, Landroid/content/ContentResolver;->openAssetFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;
    :try_end_21
    .catch Ljava/lang/SecurityException; {:try_start_17 .. :try_end_21} :catch_37
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_21} :catch_45
    .catchall {:try_start_17 .. :try_end_21} :catchall_53

    move-result-object v1

    .line 2684
    if-nez v1, :cond_2a

    .line 2698
    if-eqz v1, :cond_15

    .line 2699
    invoke-virtual {v1}, Landroid/content/res/AssetFileDescriptor;->close()V

    goto :goto_15

    .line 2687
    :cond_2a
    :try_start_2a
    invoke-virtual {v1}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v4

    invoke-virtual {p0, v4, p3}, addTimedTextSource(Ljava/io/FileDescriptor;Ljava/lang/String;)V
    :try_end_31
    .catch Ljava/lang/SecurityException; {:try_start_2a .. :try_end_31} :catch_37
    .catch Ljava/io/IOException; {:try_start_2a .. :try_end_31} :catch_45
    .catchall {:try_start_2a .. :try_end_31} :catchall_53

    .line 2698
    if-eqz v1, :cond_15

    .line 2699
    invoke-virtual {v1}, Landroid/content/res/AssetFileDescriptor;->close()V

    goto :goto_15

    .line 2689
    .end local v2    # "resolver":Landroid/content/ContentResolver;
    :catch_37
    move-exception v0

    .line 2691
    .local v0, "ex":Ljava/lang/SecurityException;
    :try_start_38
    const-string v4, "MediaPlayer"

    const-string v5, "addTimedTextSource SecurityException happend : "

    invoke-static {v4, v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3f
    .catchall {:try_start_38 .. :try_end_3f} :catchall_53

    .line 2698
    if-eqz v1, :cond_15

    .line 2699
    invoke-virtual {v1}, Landroid/content/res/AssetFileDescriptor;->close()V

    goto :goto_15

    .line 2693
    .end local v0    # "ex":Ljava/lang/SecurityException;
    :catch_45
    move-exception v0

    .line 2695
    .local v0, "ex":Ljava/io/IOException;
    :try_start_46
    const-string v4, "MediaPlayer"

    const-string v5, "addTimedTextSource IOException happend : "

    invoke-static {v4, v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4d
    .catchall {:try_start_46 .. :try_end_4d} :catchall_53

    .line 2698
    if-eqz v1, :cond_15

    .line 2699
    invoke-virtual {v1}, Landroid/content/res/AssetFileDescriptor;->close()V

    goto :goto_15

    .line 2698
    .end local v0    # "ex":Ljava/io/IOException;
    :catchall_53
    move-exception v4

    if-eqz v1, :cond_59

    .line 2699
    invoke-virtual {v1}, Landroid/content/res/AssetFileDescriptor;->close()V

    :cond_59
    throw v4
.end method

.method public addTimedTextSource(Ljava/io/FileDescriptor;JJLjava/lang/String;)V
    .registers 25
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "offset"    # J
    .param p4, "length"    # J
    .param p6, "mime"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 2746
    invoke-static/range {p6 .. p6}, availableMimeTypeForExternalSource(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_23

    .line 2747
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Illegal mimeType for timed text source: "

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p6

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 2752
    :cond_23
    :try_start_23
    sget-object v3, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    move-object/from16 v0, p1

    invoke-interface {v3, v0}, Llibcore/io/Os;->dup(Ljava/io/FileDescriptor;)Ljava/io/FileDescriptor;
    :try_end_2a
    .catch Landroid/system/ErrnoException; {:try_start_23 .. :try_end_2a} :catch_b7

    move-result-object v14

    .line 2758
    .local v14, "fd2":Ljava/io/FileDescriptor;
    new-instance v13, Landroid/media/MediaFormat;

    invoke-direct {v13}, Landroid/media/MediaFormat;-><init>()V

    .line 2759
    .local v13, "fFormat":Landroid/media/MediaFormat;
    const-string/jumbo v3, "mime"

    move-object/from16 v0, p6

    invoke-virtual {v13, v3, v0}, Landroid/media/MediaFormat;->setString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2760
    const-string v3, "is-timed-text"

    const/4 v4, 0x1

    invoke-virtual {v13, v3, v4}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 2762
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v2

    .line 2764
    .local v2, "context":Landroid/content/Context;
    move-object/from16 v0, p0

    iget-object v3, v0, mSubtitleController:Landroid/media/SubtitleController;

    if-nez v3, :cond_65

    .line 2765
    new-instance v3, Landroid/media/SubtitleController;

    move-object/from16 v0, p0

    iget-object v4, v0, mTimeProvider:Landroid/media/MediaPlayer$TimeProvider;

    move-object/from16 v0, p0

    invoke-direct {v3, v2, v4, v0}, Landroid/media/SubtitleController;-><init>(Landroid/content/Context;Landroid/media/MediaTimeProvider;Landroid/media/SubtitleController$Listener;)V

    move-object/from16 v0, p0

    iput-object v3, v0, mSubtitleController:Landroid/media/SubtitleController;

    .line 2766
    move-object/from16 v0, p0

    iget-object v3, v0, mSubtitleController:Landroid/media/SubtitleController;

    new-instance v4, Landroid/media/MediaPlayer$3;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Landroid/media/MediaPlayer$3;-><init>(Landroid/media/MediaPlayer;)V

    invoke-virtual {v3, v4}, Landroid/media/SubtitleController;->setAnchor(Landroid/media/SubtitleController$Anchor;)V

    .line 2778
    :cond_65
    move-object/from16 v0, p0

    iget-object v3, v0, mSubtitleController:Landroid/media/SubtitleController;

    invoke-virtual {v3, v13}, Landroid/media/SubtitleController;->hasRendererFor(Landroid/media/MediaFormat;)Z

    move-result v3

    if-nez v3, :cond_83

    .line 2780
    move-object/from16 v0, p0

    iget-object v3, v0, mSubtitleController:Landroid/media/SubtitleController;

    new-instance v4, Landroid/media/SRTRenderer;

    move-object/from16 v0, p0

    iget-object v0, v0, mEventHandler:Landroid/media/MediaPlayer$EventHandler;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-direct {v4, v2, v0}, Landroid/media/SRTRenderer;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    invoke-virtual {v3, v4}, Landroid/media/SubtitleController;->registerRenderer(Landroid/media/SubtitleController$Renderer;)V

    .line 2782
    :cond_83
    move-object/from16 v0, p0

    iget-object v3, v0, mSubtitleController:Landroid/media/SubtitleController;

    invoke-virtual {v3, v13}, Landroid/media/SubtitleController;->addTrack(Landroid/media/MediaFormat;)Landroid/media/SubtitleTrack;

    move-result-object v10

    .line 2783
    .local v10, "track":Landroid/media/SubtitleTrack;
    move-object/from16 v0, p0

    iget-object v3, v0, mOutOfBandSubtitleTracks:Ljava/util/Vector;

    invoke-virtual {v3, v10}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 2785
    move-object v5, v14

    .line 2786
    .local v5, "fd3":Ljava/io/FileDescriptor;
    move-wide/from16 v6, p2

    .line 2787
    .local v6, "offset2":J
    move-wide/from16 v8, p4

    .line 2788
    .local v8, "length2":J
    new-instance v11, Landroid/os/HandlerThread;

    const-string v3, "TimedTextReadThread"

    const/16 v4, 0x9

    invoke-direct {v11, v3, v4}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 2791
    .local v11, "thread":Landroid/os/HandlerThread;
    invoke-virtual {v11}, Landroid/os/HandlerThread;->start()V

    .line 2792
    new-instance v15, Landroid/os/Handler;

    invoke-virtual {v11}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v15, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 2793
    .local v15, "handler":Landroid/os/Handler;
    new-instance v3, Landroid/media/MediaPlayer$4;

    move-object/from16 v4, p0

    invoke-direct/range {v3 .. v11}, Landroid/media/MediaPlayer$4;-><init>(Landroid/media/MediaPlayer;Ljava/io/FileDescriptor;JJLandroid/media/SubtitleTrack;Landroid/os/HandlerThread;)V

    invoke-virtual {v15, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2835
    return-void

    .line 2753
    .end local v2    # "context":Landroid/content/Context;
    .end local v5    # "fd3":Ljava/io/FileDescriptor;
    .end local v6    # "offset2":J
    .end local v8    # "length2":J
    .end local v10    # "track":Landroid/media/SubtitleTrack;
    .end local v11    # "thread":Landroid/os/HandlerThread;
    .end local v13    # "fFormat":Landroid/media/MediaFormat;
    .end local v14    # "fd2":Ljava/io/FileDescriptor;
    .end local v15    # "handler":Landroid/os/Handler;
    :catch_b7
    move-exception v12

    .line 2754
    .local v12, "ex":Landroid/system/ErrnoException;
    const-string v3, "MediaPlayer"

    invoke-virtual {v12}, Landroid/system/ErrnoException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2755
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v12}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method public addTimedTextSource(Ljava/io/FileDescriptor;Ljava/lang/String;)V
    .registers 10
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "mimeType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 2723
    const-wide/16 v2, 0x0

    const-wide v4, 0x7ffffffffffffffL

    move-object v0, p0

    move-object v1, p1

    move-object v6, p2

    invoke-virtual/range {v0 .. v6}, addTimedTextSource(Ljava/io/FileDescriptor;JJLjava/lang/String;)V

    .line 2724
    return-void
.end method

.method public addTimedTextSource(Ljava/lang/String;Ljava/lang/String;)V
    .registers 9
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "mimeType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 2628
    invoke-static {p2}, availableMimeTypeForExternalSource(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1f

    .line 2629
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Illegal mimeType for timed text source: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2630
    .local v3, "msg":Ljava/lang/String;
    new-instance v4, Ljava/lang/IllegalArgumentException;

    invoke-direct {v4, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 2633
    .end local v3    # "msg":Ljava/lang/String;
    :cond_1f
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2634
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_43

    .line 2635
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 2639
    .local v2, "is":Ljava/io/FileInputStream;
    :try_start_2f
    invoke-virtual {v2}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v0

    .line 2640
    .local v0, "fd":Ljava/io/FileDescriptor;
    invoke-virtual {p0, v0, p2}, addTimedTextSource(Ljava/io/FileDescriptor;Ljava/lang/String;)V
    :try_end_36
    .catchall {:try_start_2f .. :try_end_36} :catchall_3c

    .line 2642
    if-eqz v2, :cond_3b

    .line 2643
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    .line 2655
    :cond_3b
    return-void

    .line 2642
    .end local v0    # "fd":Ljava/io/FileDescriptor;
    :catchall_3c
    move-exception v4

    if-eqz v2, :cond_42

    .line 2643
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    :cond_42
    throw v4

    .line 2653
    .end local v2    # "is":Ljava/io/FileInputStream;
    :cond_43
    new-instance v4, Ljava/io/IOException;

    invoke-direct {v4, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public addTimedTextSourceSEC(Ljava/lang/String;Ljava/lang/String;)V
    .registers 11
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "mimeType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 2858
    invoke-static {p2}, availableMimeTypeForExternalSource(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1f

    .line 2859
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Illegal mimeType for timed text source: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2860
    .local v3, "msg":Ljava/lang/String;
    new-instance v6, Ljava/lang/IllegalArgumentException;

    invoke-direct {v6, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 2863
    .end local v3    # "msg":Ljava/lang/String;
    :cond_1f
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2864
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_75

    .line 2865
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 2867
    .local v2, "is":Ljava/io/FileInputStream;
    :try_start_2f
    invoke-virtual {v2}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v0

    .line 2869
    .local v0, "fd":Ljava/io/FileDescriptor;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v5

    .line 2870
    .local v5, "request":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
    :try_end_3a
    .catchall {:try_start_2f .. :try_end_3a} :catchall_6e

    move-result-object v4

    .line 2872
    .local v4, "reply":Landroid/os/Parcel;
    :try_start_3b
    const-string v6, "android.media.IMediaPlayer"

    invoke-virtual {v5, v6}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2873
    const/4 v6, 0x3

    invoke-virtual {v5, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2874
    invoke-virtual {v5, v0}, Landroid/os/Parcel;->writeFileDescriptor(Ljava/io/FileDescriptor;)V

    .line 2875
    const-wide/16 v6, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/os/Parcel;->writeLong(J)V

    .line 2876
    const-wide v6, 0x7ffffffffffffffL

    invoke-virtual {v5, v6, v7}, Landroid/os/Parcel;->writeLong(J)V

    .line 2877
    invoke-virtual {v5, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2878
    invoke-virtual {p0, v5, v4}, invoke(Landroid/os/Parcel;Landroid/os/Parcel;)V
    :try_end_5a
    .catchall {:try_start_3b .. :try_end_5a} :catchall_66

    .line 2880
    :try_start_5a
    invoke-virtual {v5}, Landroid/os/Parcel;->recycle()V

    .line 2881
    invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V
    :try_end_60
    .catchall {:try_start_5a .. :try_end_60} :catchall_6e

    .line 2884
    if-eqz v2, :cond_65

    .line 2885
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    .line 2892
    :cond_65
    return-void

    .line 2880
    :catchall_66
    move-exception v6

    :try_start_67
    invoke-virtual {v5}, Landroid/os/Parcel;->recycle()V

    .line 2881
    invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V

    throw v6
    :try_end_6e
    .catchall {:try_start_67 .. :try_end_6e} :catchall_6e

    .line 2884
    .end local v0    # "fd":Ljava/io/FileDescriptor;
    .end local v4    # "reply":Landroid/os/Parcel;
    .end local v5    # "request":Landroid/os/Parcel;
    :catchall_6e
    move-exception v6

    if-eqz v2, :cond_74

    .line 2885
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    :cond_74
    throw v6

    .line 2890
    .end local v2    # "is":Ljava/io/FileInputStream;
    :cond_75
    new-instance v6, Ljava/io/IOException;

    invoke-direct {v6, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6
.end method

.method public native attachAuxEffect(I)V
.end method

.method public deselectTrack(I)V
    .registers 3
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 3171
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, selectOrDeselectTrack(IZ)V

    .line 3172
    return-void
.end method

.method protected finalize()V
    .registers 1

    .prologue
    .line 3298
    invoke-direct {p0}, native_finalize()V

    return-void
.end method

.method public native getAudioSessionId()I
.end method

.method public native getCurrentFrame()Landroid/graphics/Bitmap;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method public native getCurrentPosition()I
.end method

.method public native getDuration()I
.end method

.method public getFullDumpSubtitle(Ljava/io/FileDescriptor;Ljava/lang/String;)[B
    .registers 9
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "mimeType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 2906
    invoke-static {p2}, availableMimeTypeForExternalSource(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1f

    .line 2907
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Illegal mimeType for timed text source: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 2909
    :cond_1f
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2910
    .local v1, "request":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2911
    .local v0, "reply":Landroid/os/Parcel;
    const/4 v2, 0x0

    .line 2913
    .local v2, "ret":[B
    :try_start_28
    const-string v3, "android.media.IMediaPlayer"

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2914
    const/16 v3, 0xb

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 2915
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeFileDescriptor(Ljava/io/FileDescriptor;)V

    .line 2916
    const-wide/16 v4, 0x0

    invoke-virtual {v1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    .line 2917
    const-wide v4, 0x7ffffffffffffffL

    invoke-virtual {v1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    .line 2918
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2919
    invoke-virtual {p0, v1, v0}, invoke(Landroid/os/Parcel;Landroid/os/Parcel;)V

    .line 2920
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 2921
    const-string v3, "MediaPlayer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "parcel size = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Landroid/os/Parcel;->dataSize()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2922
    invoke-virtual {v0}, Landroid/os/Parcel;->marshall()[B
    :try_end_6c
    .catchall {:try_start_28 .. :try_end_6c} :catchall_74

    move-result-object v2

    .line 2924
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2925
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2927
    return-object v2

    .line 2924
    :catchall_74
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2925
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public getInbandTracksInfo()[Landroid/media/MediaPlayer$TrackInfo;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 2939
    const-string v3, "MediaPlayer"

    const-string v4, "getInbandSubtilteTrackInfo"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2940
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2941
    .local v1, "request":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2943
    .local v0, "reply":Landroid/os/Parcel;
    :try_start_f
    const-string v3, "android.media.IMediaPlayer"

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2944
    const/16 v3, 0x9

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 2945
    invoke-virtual {p0, v1, v0}, invoke(Landroid/os/Parcel;Landroid/os/Parcel;)V

    .line 2946
    sget-object v3, Landroid/media/MediaPlayer$TrackInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/media/MediaPlayer$TrackInfo;
    :try_end_24
    .catchall {:try_start_f .. :try_end_24} :catchall_2b

    .line 2950
    .local v2, "trackInfo":[Landroid/media/MediaPlayer$TrackInfo;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2951
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object v2

    .line 2950
    .end local v2    # "trackInfo":[Landroid/media/MediaPlayer$TrackInfo;
    :catchall_2b
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2951
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public getIntParameter(I)I
    .registers 4
    .param p1, "key"    # I

    .prologue
    .line 2048
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2049
    .local v0, "p":Landroid/os/Parcel;
    invoke-direct {p0, p1, v0}, getParameter(ILandroid/os/Parcel;)V

    .line 2050
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 2051
    .local v1, "ret":I
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2052
    return v1
.end method

.method public getMediaTimeProvider()Landroid/media/MediaTimeProvider;
    .registers 2

    .prologue
    .line 3330
    iget-object v0, p0, mTimeProvider:Landroid/media/MediaPlayer$TimeProvider;

    if-nez v0, :cond_b

    .line 3331
    new-instance v0, Landroid/media/MediaPlayer$TimeProvider;

    invoke-direct {v0, p0}, Landroid/media/MediaPlayer$TimeProvider;-><init>(Landroid/media/MediaPlayer;)V

    iput-object v0, p0, mTimeProvider:Landroid/media/MediaPlayer$TimeProvider;

    .line 3333
    :cond_b
    iget-object v0, p0, mTimeProvider:Landroid/media/MediaPlayer$TimeProvider;

    return-object v0
.end method

.method public getMetadata(ZZ)Landroid/media/Metadata;
    .registers 7
    .param p1, "update_only"    # Z
    .param p2, "apply_filter"    # Z

    .prologue
    const/4 v2, 0x0

    .line 1647
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1648
    .local v1, "reply":Landroid/os/Parcel;
    new-instance v0, Landroid/media/Metadata;

    invoke-direct {v0}, Landroid/media/Metadata;-><init>()V

    .line 1650
    .local v0, "data":Landroid/media/Metadata;
    invoke-direct {p0, p1, p2, v1}, native_getMetadata(ZZLandroid/os/Parcel;)Z

    move-result v3

    if-nez v3, :cond_15

    .line 1651
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    move-object v0, v2

    .line 1661
    .end local v0    # "data":Landroid/media/Metadata;
    :cond_14
    :goto_14
    return-object v0

    .line 1657
    .restart local v0    # "data":Landroid/media/Metadata;
    :cond_15
    invoke-virtual {v0, v1}, Landroid/media/Metadata;->parse(Landroid/os/Parcel;)Z

    move-result v3

    if-nez v3, :cond_14

    .line 1658
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    move-object v0, v2

    .line 1659
    goto :goto_14
.end method

.method public getOutbandSubtilteTrackInfo()[Landroid/media/MediaPlayer$TrackInfo;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 2990
    const-string v4, "MediaPlayer"

    const-string v5, "getOutbandSubtilteTrackInfo"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2992
    iget-object v4, p0, mOutOfBandSubtitleTracks:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v4

    new-array v2, v4, [Landroid/media/MediaPlayer$TrackInfo;

    .line 2993
    .local v2, "outTrackInfo":[Landroid/media/MediaPlayer$TrackInfo;
    const/4 v0, 0x0

    .line 2994
    .local v0, "i":I
    iget-object v4, p0, mOutOfBandSubtitleTracks:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_16
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_31

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/SubtitleTrack;

    .line 2995
    .local v3, "track":Landroid/media/SubtitleTrack;
    new-instance v4, Landroid/media/MediaPlayer$TrackInfo;

    const/4 v5, 0x4

    invoke-virtual {v3}, Landroid/media/SubtitleTrack;->getFormat()Landroid/media/MediaFormat;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Landroid/media/MediaPlayer$TrackInfo;-><init>(ILandroid/media/MediaFormat;)V

    aput-object v4, v2, v0

    .line 2996
    add-int/lit8 v0, v0, 0x1

    .line 2997
    goto :goto_16

    .line 2998
    .end local v3    # "track":Landroid/media/SubtitleTrack;
    :cond_31
    return-object v2
.end method

.method public getOutbandTimedTextTrackInfo()[Landroid/media/MediaPlayer$TrackInfo;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 2964
    const-string v3, "MediaPlayer"

    const-string v4, "getOutbandTimedTextTrackInfo"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2966
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2967
    .local v1, "request":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2969
    .local v0, "reply":Landroid/os/Parcel;
    :try_start_f
    const-string v3, "android.media.IMediaPlayer"

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2970
    const/16 v3, 0xa

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 2971
    invoke-virtual {p0, v1, v0}, invoke(Landroid/os/Parcel;Landroid/os/Parcel;)V

    .line 2972
    sget-object v3, Landroid/media/MediaPlayer$TrackInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/media/MediaPlayer$TrackInfo;
    :try_end_24
    .catchall {:try_start_f .. :try_end_24} :catchall_2b

    .line 2976
    .local v2, "trackInfo":[Landroid/media/MediaPlayer$TrackInfo;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2977
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object v2

    .line 2976
    .end local v2    # "trackInfo":[Landroid/media/MediaPlayer$TrackInfo;
    :catchall_2b
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2977
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public getParcelParameter(I)Landroid/os/Parcel;
    .registers 3
    .param p1, "key"    # I

    .prologue
    .line 2020
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2021
    .local v0, "p":Landroid/os/Parcel;
    invoke-direct {p0, p1, v0}, getParameter(ILandroid/os/Parcel;)V

    .line 2022
    return-object v0
.end method

.method public getSelectedTrack(I)I
    .registers 8
    .param p1, "trackType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 3099
    const/4 v5, 0x4

    if-ne p1, v5, :cond_1d

    iget-object v5, p0, mSubtitleController:Landroid/media/SubtitleController;

    if-eqz v5, :cond_1d

    .line 3100
    iget-object v5, p0, mSubtitleController:Landroid/media/SubtitleController;

    invoke-virtual {v5}, Landroid/media/SubtitleController;->getSelectedTrack()Landroid/media/SubtitleTrack;

    move-result-object v4

    .line 3101
    .local v4, "subtitleTrack":Landroid/media/SubtitleTrack;
    if-eqz v4, :cond_1d

    .line 3102
    iget-object v5, p0, mOutOfBandSubtitleTracks:Ljava/util/Vector;

    invoke-virtual {v5, v4}, Ljava/util/Vector;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 3103
    .local v0, "index":I
    if-ltz v0, :cond_1d

    .line 3104
    iget-object v5, p0, mInbandSubtitleTracks:[Landroid/media/SubtitleTrack;

    array-length v5, v5

    add-int v3, v5, v0

    .line 3120
    .end local v0    # "index":I
    .end local v4    # "subtitleTrack":Landroid/media/SubtitleTrack;
    :goto_1c
    return v3

    .line 3109
    :cond_1d
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 3110
    .local v2, "request":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3112
    .local v1, "reply":Landroid/os/Parcel;
    :try_start_25
    const-string v5, "android.media.IMediaPlayer"

    invoke-virtual {v2, v5}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3113
    const/4 v5, 0x7

    invoke-virtual {v2, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 3114
    invoke-virtual {v2, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3115
    invoke-virtual {p0, v2, v1}, invoke(Landroid/os/Parcel;Landroid/os/Parcel;)V

    .line 3116
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_37
    .catchall {:try_start_25 .. :try_end_37} :catchall_3f

    move-result v3

    .line 3119
    .local v3, "selectedTrack":I
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 3120
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    goto :goto_1c

    .line 3119
    .end local v3    # "selectedTrack":I
    :catchall_3f
    move-exception v5

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 3120
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v5
.end method

.method public getStringParameter(I)Ljava/lang/String;
    .registers 4
    .param p1, "key"    # I

    .prologue
    .line 2033
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2034
    .local v0, "p":Landroid/os/Parcel;
    invoke-direct {p0, p1, v0}, getParameter(ILandroid/os/Parcel;)V

    .line 2035
    invoke-virtual {v0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 2036
    .local v1, "ret":Ljava/lang/String;
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2037
    return-object v1
.end method

.method public getTrackInfo()[Landroid/media/MediaPlayer$TrackInfo;
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 2385
    invoke-direct {p0}, getInbandTrackInfo()[Landroid/media/MediaPlayer$TrackInfo;

    move-result-object v4

    .line 2387
    .local v4, "trackInfo":[Landroid/media/MediaPlayer$TrackInfo;
    array-length v6, v4

    iget-object v7, p0, mOutOfBandSubtitleTracks:Ljava/util/Vector;

    invoke-virtual {v7}, Ljava/util/Vector;->size()I

    move-result v7

    add-int/2addr v6, v7

    new-array v0, v6, [Landroid/media/MediaPlayer$TrackInfo;

    .line 2388
    .local v0, "allTrackInfo":[Landroid/media/MediaPlayer$TrackInfo;
    array-length v6, v4

    invoke-static {v4, v8, v0, v8, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2389
    array-length v1, v4

    .line 2390
    .local v1, "i":I
    iget-object v6, p0, mOutOfBandSubtitleTracks:Ljava/util/Vector;

    invoke-virtual {v6}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_1a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/SubtitleTrack;

    .line 2391
    .local v3, "track":Landroid/media/SubtitleTrack;
    invoke-virtual {v3}, Landroid/media/SubtitleTrack;->isTimedText()Z

    move-result v6

    if-eqz v6, :cond_3b

    const/4 v5, 0x3

    .line 2394
    .local v5, "type":I
    :goto_2d
    new-instance v6, Landroid/media/MediaPlayer$TrackInfo;

    invoke-virtual {v3}, Landroid/media/SubtitleTrack;->getFormat()Landroid/media/MediaFormat;

    move-result-object v7

    invoke-direct {v6, v5, v7}, Landroid/media/MediaPlayer$TrackInfo;-><init>(ILandroid/media/MediaFormat;)V

    aput-object v6, v0, v1

    .line 2395
    add-int/lit8 v1, v1, 0x1

    .line 2396
    goto :goto_1a

    .line 2391
    .end local v5    # "type":I
    :cond_3b
    const/4 v5, 0x4

    goto :goto_2d

    .line 2397
    .end local v3    # "track":Landroid/media/SubtitleTrack;
    :cond_3d
    return-object v0
.end method

.method public native getVideoHeight()I
.end method

.method public native getVideoWidth()I
.end method

.method public native hovering(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method public invoke(Landroid/os/Parcel;Landroid/os/Parcel;)V
    .registers 7
    .param p1, "request"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;

    .prologue
    .line 753
    invoke-direct {p0, p1, p2}, native_invoke(Landroid/os/Parcel;Landroid/os/Parcel;)I

    move-result v0

    .line 754
    .local v0, "retcode":I
    const/4 v1, 0x0

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 755
    if-eqz v0, :cond_23

    .line 756
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "failure code: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 758
    :cond_23
    return-void
.end method

.method public native isLooping()Z
.end method

.method public native isPlaying()Z
.end method

.method public newRequest()Landroid/os/Parcel;
    .registers 3

    .prologue
    .line 733
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 734
    .local v0, "parcel":Landroid/os/Parcel;
    const-string v1, "android.media.IMediaPlayer"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 735
    return-object v0
.end method

.method public onSubtitleTrackSelected(Landroid/media/SubtitleTrack;)V
    .registers 6
    .param p1, "track"    # Landroid/media/SubtitleTrack;

    .prologue
    .line 2489
    iget v1, p0, mSelectedSubtitleTrackIndex:I

    if-ltz v1, :cond_d

    .line 2491
    :try_start_4
    iget v1, p0, mSelectedSubtitleTrackIndex:I

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, selectOrDeselectInbandTrack(IZ)V
    :try_end_a
    .catch Ljava/lang/IllegalStateException; {:try_start_4 .. :try_end_a} :catch_4b

    .line 2494
    :goto_a
    const/4 v1, -0x1

    iput v1, p0, mSelectedSubtitleTrackIndex:I

    .line 2496
    :cond_d
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, setOnSubtitleDataListener(Landroid/media/MediaPlayer$OnSubtitleDataListener;)V

    .line 2497
    if-nez p1, :cond_14

    .line 2513
    :cond_13
    :goto_13
    return-void

    .line 2500
    :cond_14
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_15
    iget-object v1, p0, mInbandSubtitleTracks:[Landroid/media/SubtitleTrack;

    array-length v1, v1

    if-ge v0, v1, :cond_13

    .line 2501
    iget-object v1, p0, mInbandSubtitleTracks:[Landroid/media/SubtitleTrack;

    aget-object v1, v1, v0

    if-ne v1, p1, :cond_46

    .line 2502
    const-string v1, "MediaPlayer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Selecting subtitle track "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2503
    iput v0, p0, mSelectedSubtitleTrackIndex:I

    .line 2505
    :try_start_3a
    iget v1, p0, mSelectedSubtitleTrackIndex:I

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, selectOrDeselectInbandTrack(IZ)V
    :try_end_40
    .catch Ljava/lang/IllegalStateException; {:try_start_3a .. :try_end_40} :catch_49

    .line 2508
    :goto_40
    iget-object v1, p0, mSubtitleDataListener:Landroid/media/MediaPlayer$OnSubtitleDataListener;

    invoke-virtual {p0, v1}, setOnSubtitleDataListener(Landroid/media/MediaPlayer$OnSubtitleDataListener;)V

    goto :goto_13

    .line 2500
    :cond_46
    add-int/lit8 v0, v0, 0x1

    goto :goto_15

    .line 2506
    :catch_49
    move-exception v1

    goto :goto_40

    .line 2492
    .end local v0    # "i":I
    :catch_4b
    move-exception v1

    goto :goto_a
.end method

.method public pause()V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1453
    invoke-direct {p0, v4}, stayAwake(Z)V

    .line 1455
    sget-boolean v0, MMFWContextAware:Z

    if-eqz v0, :cond_66

    .line 1456
    iget-boolean v0, p0, mContextAwareSend:Z

    if-eqz v0, :cond_86

    .line 1457
    const-string v0, "com.samsung.CONTEXT_AWARE_MUSIC_INFO"

    const/16 v1, 0x8

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "TYPE"

    aput-object v2, v1, v4

    const-string/jumbo v2, "pause"

    aput-object v2, v1, v5

    const-string v2, "URI"

    aput-object v2, v1, v6

    const/4 v2, 0x3

    iget-object v3, p0, mContextAwareUri:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string v3, "ID"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    iget v3, p0, mContextAwareId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "PID"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    iget v3, p0, mPid:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-direct {p0, v0, v1}, sendBroadcastingIntent(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 1458
    const-string v0, "MediaPlayer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sendBroadcast CONTEXT_AWARE_MUSIC_INFO - type(pause) - id("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, mContextAwareId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1466
    :cond_66
    :goto_66
    iget-boolean v0, p0, mIsVideo:Z

    if-eqz v0, :cond_82

    .line 1467
    const-string v0, "android.intent.action.SMART_PAUSE"

    new-array v1, v6, [Ljava/lang/Object;

    const-string v2, "STATUS"

    aput-object v2, v1, v4

    const-string/jumbo v2, "paused"

    aput-object v2, v1, v5

    invoke-direct {p0, v0, v1}, sendBroadcastingIntent(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 1468
    const-string v0, "MediaPlayer"

    const-string/jumbo v1, "sendBroadcast SMART_PAUSE_pause()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1472
    :cond_82
    invoke-direct {p0}, _pause()V

    .line 1473
    return-void

    .line 1460
    :cond_86
    iput v5, p0, mPendingCommand:I

    goto :goto_66
.end method

.method public prepare()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 1327
    invoke-direct {p0}, _prepare()V

    .line 1328
    invoke-direct {p0}, scanInternalSubtitleTracks()V

    .line 1329
    return-void
.end method

.method public native prepareAsync()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method public release()V
    .registers 9

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 1750
    invoke-direct {p0, v5}, stayAwake(Z)V

    .line 1752
    sget-boolean v0, MMFWContextAware:Z

    if-eqz v0, :cond_69

    .line 1753
    iget-boolean v0, p0, mContextAwareSend:Z

    if-eqz v0, :cond_ab

    .line 1754
    const-string v0, "com.samsung.CONTEXT_AWARE_MUSIC_INFO"

    const/16 v1, 0x8

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "TYPE"

    aput-object v2, v1, v5

    const-string/jumbo v2, "stop"

    aput-object v2, v1, v7

    const-string v2, "URI"

    aput-object v2, v1, v6

    const/4 v2, 0x3

    iget-object v3, p0, mContextAwareUri:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string v3, "ID"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    iget v3, p0, mContextAwareId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "PID"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    iget v3, p0, mPid:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-direct {p0, v0, v1}, sendBroadcastingIntent(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 1755
    const-string v0, "MediaPlayer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sendBroadcast CONTEXT_AWARE_MUSIC_INFO - type(release) - id("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, mContextAwareId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1756
    iput-boolean v5, p0, mContextAwareSend:Z

    .line 1764
    :cond_69
    :goto_69
    iget-boolean v0, p0, mIsVideo:Z

    if-eqz v0, :cond_85

    .line 1765
    const-string v0, "android.intent.action.SMART_PAUSE"

    new-array v1, v6, [Ljava/lang/Object;

    const-string v2, "STATUS"

    aput-object v2, v1, v5

    const-string/jumbo v2, "stopped"

    aput-object v2, v1, v7

    invoke-direct {p0, v0, v1}, sendBroadcastingIntent(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 1766
    const-string v0, "MediaPlayer"

    const-string/jumbo v1, "sendBroadcast SMART_PAUSE_release()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1770
    :cond_85
    invoke-direct {p0}, updateSurfaceScreenOn()V

    .line 1771
    iput-object v4, p0, mOnPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    .line 1772
    iput-object v4, p0, mOnBufferingUpdateListener:Landroid/media/MediaPlayer$OnBufferingUpdateListener;

    .line 1773
    iput-object v4, p0, mOnCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    .line 1774
    iput-object v4, p0, mOnSeekCompleteListener:Landroid/media/MediaPlayer$OnSeekCompleteListener;

    .line 1775
    iput-object v4, p0, mOnErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    .line 1776
    iput-object v4, p0, mOnInfoListener:Landroid/media/MediaPlayer$OnInfoListener;

    .line 1777
    iput-object v4, p0, mOnVideoSizeChangedListener:Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

    .line 1778
    iput-object v4, p0, mOnTimedTextListener:Landroid/media/MediaPlayer$OnTimedTextListener;

    .line 1780
    iput-boolean v5, p0, mIsStart:Z

    .line 1782
    iget-object v0, p0, mTimeProvider:Landroid/media/MediaPlayer$TimeProvider;

    if-eqz v0, :cond_a5

    .line 1783
    iget-object v0, p0, mTimeProvider:Landroid/media/MediaPlayer$TimeProvider;

    invoke-virtual {v0}, Landroid/media/MediaPlayer$TimeProvider;->close()V

    .line 1784
    iput-object v4, p0, mTimeProvider:Landroid/media/MediaPlayer$TimeProvider;

    .line 1786
    :cond_a5
    iput-object v4, p0, mOnSubtitleDataListener:Landroid/media/MediaPlayer$OnSubtitleDataListener;

    .line 1787
    invoke-direct {p0}, _release()V

    .line 1788
    return-void

    .line 1758
    :cond_ab
    iput v6, p0, mPendingCommand:I

    goto :goto_69
.end method

.method public removeOutbandSubtitleSource()V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 3031
    const-string v6, "MediaPlayer"

    const-string/jumbo v7, "removeOutbandSubtitleSource"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3033
    iget-object v6, p0, mSubtitleController:Landroid/media/SubtitleController;

    if-nez v6, :cond_14

    .line 3034
    const-string v6, "MediaPlayer"

    const-string v7, "Should have subtitle controller already set"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3077
    :goto_13
    return-void

    .line 3038
    :cond_14
    const/4 v6, -0x1

    iput v6, p0, mSelectedSubtitleTrackIndex:I

    .line 3039
    iget-object v6, p0, mOpenSubtitleSources:Ljava/util/Vector;

    invoke-virtual {v6}, Ljava/util/Vector;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_40

    .line 3041
    iget-object v7, p0, mOpenSubtitleSources:Ljava/util/Vector;

    monitor-enter v7

    .line 3042
    :try_start_22
    iget-object v6, p0, mOpenSubtitleSources:Ljava/util/Vector;

    invoke-virtual {v6}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_28
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/io/InputStream;
    :try_end_34
    .catchall {:try_start_22 .. :try_end_34} :catchall_75

    .line 3044
    .local v3, "is":Ljava/io/InputStream;
    :try_start_34
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_37
    .catch Ljava/io/IOException; {:try_start_34 .. :try_end_37} :catch_38
    .catchall {:try_start_34 .. :try_end_37} :catchall_75

    goto :goto_28

    .line 3045
    :catch_38
    move-exception v6

    goto :goto_28

    .line 3048
    .end local v3    # "is":Ljava/io/InputStream;
    :cond_3a
    :try_start_3a
    iget-object v6, p0, mOpenSubtitleSources:Ljava/util/Vector;

    invoke-virtual {v6}, Ljava/util/Vector;->clear()V

    .line 3049
    monitor-exit v7
    :try_end_40
    .catchall {:try_start_3a .. :try_end_40} :catchall_75

    .line 3052
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_40
    iget-object v6, p0, mOutOfBandSubtitleTracks:Ljava/util/Vector;

    invoke-virtual {v6}, Ljava/util/Vector;->clear()V

    .line 3054
    const/4 v6, 0x0

    new-array v6, v6, [Landroid/media/SubtitleTrack;

    iput-object v6, p0, mInbandSubtitleTracks:[Landroid/media/SubtitleTrack;

    .line 3055
    iget-object v6, p0, mSubtitleController:Landroid/media/SubtitleController;

    if-eqz v6, :cond_53

    .line 3056
    iget-object v6, p0, mSubtitleController:Landroid/media/SubtitleController;

    invoke-virtual {v6}, Landroid/media/SubtitleController;->resetTracks()V

    .line 3061
    :cond_53
    invoke-direct {p0}, getInbandTrackInfo()[Landroid/media/MediaPlayer$TrackInfo;

    move-result-object v5

    .line 3062
    .local v5, "tracks":[Landroid/media/MediaPlayer$TrackInfo;
    array-length v6, v5

    new-array v2, v6, [Landroid/media/SubtitleTrack;

    .line 3063
    .local v2, "inbandTracks":[Landroid/media/SubtitleTrack;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_5b
    array-length v6, v5

    if-ge v0, v6, :cond_87

    .line 3064
    aget-object v6, v5, v0

    invoke-virtual {v6}, Landroid/media/MediaPlayer$TrackInfo;->getTrackType()I

    move-result v6

    const/4 v7, 0x4

    if-ne v6, v7, :cond_72

    .line 3065
    iget-object v6, p0, mInbandSubtitleTracks:[Landroid/media/SubtitleTrack;

    array-length v6, v6

    if-ge v0, v6, :cond_78

    .line 3066
    iget-object v6, p0, mInbandSubtitleTracks:[Landroid/media/SubtitleTrack;

    aget-object v6, v6, v0

    aput-object v6, v2, v0

    .line 3063
    :cond_72
    :goto_72
    add-int/lit8 v0, v0, 0x1

    goto :goto_5b

    .line 3049
    .end local v0    # "i":I
    .end local v2    # "inbandTracks":[Landroid/media/SubtitleTrack;
    .end local v5    # "tracks":[Landroid/media/MediaPlayer$TrackInfo;
    :catchall_75
    move-exception v6

    :try_start_76
    monitor-exit v7
    :try_end_77
    .catchall {:try_start_76 .. :try_end_77} :catchall_75

    throw v6

    .line 3068
    .restart local v0    # "i":I
    .restart local v2    # "inbandTracks":[Landroid/media/SubtitleTrack;
    .restart local v5    # "tracks":[Landroid/media/MediaPlayer$TrackInfo;
    :cond_78
    iget-object v6, p0, mSubtitleController:Landroid/media/SubtitleController;

    aget-object v7, v5, v0

    invoke-virtual {v7}, Landroid/media/MediaPlayer$TrackInfo;->getFormat()Landroid/media/MediaFormat;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/media/SubtitleController;->addTrack(Landroid/media/MediaFormat;)Landroid/media/SubtitleTrack;

    move-result-object v4

    .line 3070
    .local v4, "track":Landroid/media/SubtitleTrack;
    aput-object v4, v2, v0

    goto :goto_72

    .line 3074
    .end local v4    # "track":Landroid/media/SubtitleTrack;
    :cond_87
    iput-object v2, p0, mInbandSubtitleTracks:[Landroid/media/SubtitleTrack;

    goto :goto_13
.end method

.method public removeOutbandTimedTextSource()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 3010
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3011
    .local v1, "request":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3013
    .local v0, "reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.media.IMediaPlayer"

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3014
    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3015
    invoke-virtual {p0, v1, v0}, invoke(Landroid/os/Parcel;Landroid/os/Parcel;)V
    :try_end_15
    .catchall {:try_start_8 .. :try_end_15} :catchall_1c

    .line 3017
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3018
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3020
    return-void

    .line 3017
    :catchall_1c
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3018
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public reset()V
    .registers 11

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    const/4 v7, 0x2

    const/4 v6, 0x0

    .line 1798
    const/4 v2, -0x1

    iput v2, p0, mSelectedSubtitleTrackIndex:I

    .line 1799
    iget-object v3, p0, mOpenSubtitleSources:Ljava/util/Vector;

    monitor-enter v3

    .line 1800
    :try_start_a
    iget-object v2, p0, mOpenSubtitleSources:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_10
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_22

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/InputStream;
    :try_end_1c
    .catchall {:try_start_a .. :try_end_1c} :catchall_d5

    .line 1802
    .local v1, "is":Ljava/io/InputStream;
    :try_start_1c
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_1f
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_1f} :catch_20
    .catchall {:try_start_1c .. :try_end_1f} :catchall_d5

    goto :goto_10

    .line 1803
    :catch_20
    move-exception v2

    goto :goto_10

    .line 1806
    .end local v1    # "is":Ljava/io/InputStream;
    :cond_22
    :try_start_22
    iget-object v2, p0, mOpenSubtitleSources:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->clear()V

    .line 1807
    monitor-exit v3
    :try_end_28
    .catchall {:try_start_22 .. :try_end_28} :catchall_d5

    .line 1808
    iget-object v2, p0, mOutOfBandSubtitleTracks:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->clear()V

    .line 1809
    new-array v2, v6, [Landroid/media/SubtitleTrack;

    iput-object v2, p0, mInbandSubtitleTracks:[Landroid/media/SubtitleTrack;

    .line 1810
    iget-object v2, p0, mSubtitleController:Landroid/media/SubtitleController;

    if-eqz v2, :cond_3a

    .line 1811
    iget-object v2, p0, mSubtitleController:Landroid/media/SubtitleController;

    invoke-virtual {v2}, Landroid/media/SubtitleController;->reset()V

    .line 1813
    :cond_3a
    iget-object v2, p0, mTimeProvider:Landroid/media/MediaPlayer$TimeProvider;

    if-eqz v2, :cond_45

    .line 1814
    iget-object v2, p0, mTimeProvider:Landroid/media/MediaPlayer$TimeProvider;

    invoke-virtual {v2}, Landroid/media/MediaPlayer$TimeProvider;->close()V

    .line 1815
    iput-object v9, p0, mTimeProvider:Landroid/media/MediaPlayer$TimeProvider;

    .line 1818
    :cond_45
    invoke-direct {p0, v6}, stayAwake(Z)V

    .line 1820
    sget-boolean v2, MMFWContextAware:Z

    if-eqz v2, :cond_aa

    .line 1821
    iget-boolean v2, p0, mContextAwareSend:Z

    if-eqz v2, :cond_d8

    .line 1822
    const-string v2, "com.samsung.CONTEXT_AWARE_MUSIC_INFO"

    const/16 v3, 0x8

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "TYPE"

    aput-object v4, v3, v6

    const-string/jumbo v4, "stop"

    aput-object v4, v3, v8

    const-string v4, "URI"

    aput-object v4, v3, v7

    const/4 v4, 0x3

    iget-object v5, p0, mContextAwareUri:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x4

    const-string v5, "ID"

    aput-object v5, v3, v4

    const/4 v4, 0x5

    iget v5, p0, mContextAwareId:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x6

    const-string v5, "PID"

    aput-object v5, v3, v4

    const/4 v4, 0x7

    iget v5, p0, mPid:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-direct {p0, v2, v3}, sendBroadcastingIntent(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 1823
    const-string v2, "MediaPlayer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "sendBroadcast CONTEXT_AWARE_MUSIC_INFO - type(reset) - id("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, mContextAwareId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1824
    iput-boolean v6, p0, mContextAwareSend:Z

    .line 1832
    :cond_aa
    :goto_aa
    iget-boolean v2, p0, mIsVideo:Z

    if-eqz v2, :cond_c6

    .line 1833
    const-string v2, "android.intent.action.SMART_PAUSE"

    new-array v3, v7, [Ljava/lang/Object;

    const-string v4, "STATUS"

    aput-object v4, v3, v6

    const-string/jumbo v4, "stopped"

    aput-object v4, v3, v8

    invoke-direct {p0, v2, v3}, sendBroadcastingIntent(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 1834
    const-string v2, "MediaPlayer"

    const-string/jumbo v3, "sendBroadcast SMART_PAUSE_reset()"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1839
    :cond_c6
    iput-boolean v6, p0, mIsStart:Z

    .line 1842
    invoke-direct {p0}, _reset()V

    .line 1844
    iget-object v2, p0, mEventHandler:Landroid/media/MediaPlayer$EventHandler;

    if-eqz v2, :cond_d4

    .line 1845
    iget-object v2, p0, mEventHandler:Landroid/media/MediaPlayer$EventHandler;

    invoke-virtual {v2, v9}, Landroid/media/MediaPlayer$EventHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 1847
    :cond_d4
    return-void

    .line 1807
    .end local v0    # "i$":Ljava/util/Iterator;
    :catchall_d5
    move-exception v2

    :try_start_d6
    monitor-exit v3
    :try_end_d7
    .catchall {:try_start_d6 .. :try_end_d7} :catchall_d5

    throw v2

    .line 1826
    .restart local v0    # "i$":Ljava/util/Iterator;
    :cond_d8
    iput v7, p0, mPendingCommand:I

    goto :goto_aa
.end method

.method public resume()Z
    .registers 2

    .prologue
    .line 4250
    invoke-direct {p0}, _resume()Z

    move-result v0

    return v0
.end method

.method public native seekTo(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method public native seekTo(II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method public selectTrack(I)V
    .registers 3
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 3153
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, selectOrDeselectTrack(IZ)V

    .line 3154
    return-void
.end method

.method public setAIAContext(Z)V
    .registers 5
    .param p1, "AIAContext"    # Z

    .prologue
    .line 1022
    const-string v0, "MediaPlayer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setAIAFlag = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1023
    iput-boolean p1, p0, mAIAContext:Z

    .line 1024
    return-void
.end method

.method public setAudioAttributes(Landroid/media/AudioAttributes;)V
    .registers 7
    .param p1, "attributes"    # Landroid/media/AudioAttributes;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 2064
    if-nez p1, :cond_c

    .line 2065
    const-string v0, "Cannot set AudioAttributes to null"

    .line 2066
    .local v0, "msg":Ljava/lang/String;
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Cannot set AudioAttributes to null"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 2068
    .end local v0    # "msg":Ljava/lang/String;
    :cond_c
    invoke-virtual {p1}, Landroid/media/AudioAttributes;->getUsage()I

    move-result v3

    iput v3, p0, mUsage:I

    .line 2069
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2070
    .local v1, "pattributes":Landroid/os/Parcel;
    const/4 v3, 0x1

    invoke-virtual {p1, v1, v3}, Landroid/media/AudioAttributes;->writeToParcel(Landroid/os/Parcel;I)V

    .line 2071
    const/16 v3, 0x578

    invoke-virtual {p0, v3, v1}, setParameter(ILandroid/os/Parcel;)Z

    .line 2072
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2074
    invoke-static {p1}, Landroid/media/AudioAttributes;->toLegacyStreamType(Landroid/media/AudioAttributes;)I

    move-result v2

    .line 2075
    .local v2, "stream":I
    invoke-virtual {p0, v2}, setAudioStreamType(I)V

    .line 2076
    return-void
.end method

.method public native setAudioSessionId(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method public setAudioStreamType(I)V
    .registers 2
    .param p1, "streamtype"    # I

    .prologue
    .line 1861
    invoke-direct {p0, p1}, _setAudioStreamType(I)V

    .line 1862
    iput p1, p0, mStreamType:I

    .line 1863
    return-void
.end method

.method public setAuxEffectSendLevel(F)V
    .registers 3
    .param p1, "level"    # F

    .prologue
    .line 2181
    invoke-direct {p0}, isRestricted()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 2185
    :goto_6
    return-void

    .line 2184
    :cond_7
    invoke-direct {p0, p1}, _setAuxEffectSendLevel(F)V

    goto :goto_6
.end method

.method public setDataSource(Landroid/content/Context;Landroid/net/Uri;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "uri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/SecurityException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 1061
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, setDataSource(Landroid/content/Context;Landroid/net/Uri;Ljava/util/Map;)V

    .line 1062
    return-void
.end method

.method public setDataSource(Landroid/content/Context;Landroid/net/Uri;Ljava/util/Map;)V
    .registers 14
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "uri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/net/Uri;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/SecurityException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 1078
    .local p3, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v9

    .line 1079
    .local v9, "scheme":Ljava/lang/String;
    if-eqz v9, :cond_e

    const-string v0, "file"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 1080
    :cond_e
    invoke-virtual {p2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, setDataSource(Ljava/lang/String;)V

    .line 1117
    :cond_15
    :goto_15
    return-void

    .line 1084
    :cond_16
    const/4 v7, 0x0

    .line 1086
    .local v7, "fd":Landroid/content/res/AssetFileDescriptor;
    :try_start_17
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    .line 1087
    .local v8, "resolver":Landroid/content/ContentResolver;
    const-string/jumbo v0, "r"

    invoke-virtual {v8, p2, v0}, Landroid/content/ContentResolver;->openAssetFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;
    :try_end_21
    .catch Ljava/lang/SecurityException; {:try_start_17 .. :try_end_21} :catch_52
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_21} :catch_6f
    .catchall {:try_start_17 .. :try_end_21} :catchall_7e

    move-result-object v7

    .line 1088
    if-nez v7, :cond_2a

    .line 1109
    if-eqz v7, :cond_15

    .line 1110
    invoke-virtual {v7}, Landroid/content/res/AssetFileDescriptor;->close()V

    goto :goto_15

    .line 1094
    :cond_2a
    :try_start_2a
    invoke-virtual {v7}, Landroid/content/res/AssetFileDescriptor;->getDeclaredLength()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gez v0, :cond_41

    .line 1095
    invoke-virtual {v7}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-virtual {p0, v0}, setDataSource(Ljava/io/FileDescriptor;)V
    :try_end_3b
    .catch Ljava/lang/SecurityException; {:try_start_2a .. :try_end_3b} :catch_52
    .catch Ljava/io/IOException; {:try_start_2a .. :try_end_3b} :catch_6f
    .catchall {:try_start_2a .. :try_end_3b} :catchall_7e

    .line 1109
    :goto_3b
    if-eqz v7, :cond_15

    .line 1110
    invoke-virtual {v7}, Landroid/content/res/AssetFileDescriptor;->close()V

    goto :goto_15

    .line 1097
    :cond_41
    :try_start_41
    invoke-virtual {v7}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-virtual {v7}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v2

    invoke-virtual {v7}, Landroid/content/res/AssetFileDescriptor;->getDeclaredLength()J

    move-result-wide v4

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, setDataSource(Ljava/io/FileDescriptor;JJ)V
    :try_end_51
    .catch Ljava/lang/SecurityException; {:try_start_41 .. :try_end_51} :catch_52
    .catch Ljava/io/IOException; {:try_start_41 .. :try_end_51} :catch_6f
    .catchall {:try_start_41 .. :try_end_51} :catchall_7e

    goto :goto_3b

    .line 1100
    .end local v8    # "resolver":Landroid/content/ContentResolver;
    :catch_52
    move-exception v6

    .line 1102
    .local v6, "ex":Ljava/lang/SecurityException;
    :try_start_53
    const-string v0, "MediaPlayer"

    const-string/jumbo v1, "setDataSource SecurityException happend : "

    invoke-static {v0, v1, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5b
    .catchall {:try_start_53 .. :try_end_5b} :catchall_7e

    .line 1109
    if-eqz v7, :cond_60

    .line 1110
    invoke-virtual {v7}, Landroid/content/res/AssetFileDescriptor;->close()V

    .line 1114
    .end local v6    # "ex":Ljava/lang/SecurityException;
    :cond_60
    :goto_60
    const-string v0, "MediaPlayer"

    const-string v1, "Couldn\'t open file on client side, trying server side"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1116
    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p3}, setDataSource(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_15

    .line 1104
    :catch_6f
    move-exception v6

    .line 1106
    .local v6, "ex":Ljava/io/IOException;
    :try_start_70
    const-string v0, "MediaPlayer"

    const-string/jumbo v1, "setDataSource IOException happend : "

    invoke-static {v0, v1, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_78
    .catchall {:try_start_70 .. :try_end_78} :catchall_7e

    .line 1109
    if-eqz v7, :cond_60

    .line 1110
    invoke-virtual {v7}, Landroid/content/res/AssetFileDescriptor;->close()V

    goto :goto_60

    .line 1109
    .end local v6    # "ex":Ljava/io/IOException;
    :catchall_7e
    move-exception v0

    if-eqz v7, :cond_84

    .line 1110
    invoke-virtual {v7}, Landroid/content/res/AssetFileDescriptor;->close()V

    :cond_84
    throw v0
.end method

.method public setDataSource(Ljava/io/FileDescriptor;)V
    .registers 8
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 1280
    const-wide/16 v2, 0x0

    const-wide v4, 0x7ffffffffffffffL

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, setDataSource(Ljava/io/FileDescriptor;JJ)V

    .line 1281
    return-void
.end method

.method public setDataSource(Ljava/io/FileDescriptor;JJ)V
    .registers 6
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "offset"    # J
    .param p4, "length"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 1295
    invoke-direct/range {p0 .. p5}, _setDataSource(Ljava/io/FileDescriptor;JJ)V

    .line 1296
    return-void
.end method

.method public setDataSource(Ljava/lang/String;)V
    .registers 3
    .param p1, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/SecurityException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 1134
    invoke-direct {p0, p1, v0, v0}, setDataSource(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    .line 1135
    return-void
.end method

.method public setDataSource(Ljava/lang/String;Ljava/util/Map;)V
    .registers 9
    .param p1, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/SecurityException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 1148
    .local p2, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v3, 0x0

    .line 1149
    .local v3, "keys":[Ljava/lang/String;
    const/4 v4, 0x0

    .line 1151
    .local v4, "values":[Ljava/lang/String;
    if-eqz p2, :cond_38

    .line 1152
    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result v5

    new-array v3, v5, [Ljava/lang/String;

    .line 1153
    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result v5

    new-array v4, v5, [Ljava/lang/String;

    .line 1155
    const/4 v1, 0x0

    .line 1156
    .local v1, "i":I
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_19
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_38

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1157
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    aput-object v5, v3, v1

    .line 1158
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    aput-object v5, v4, v1

    .line 1159
    add-int/lit8 v1, v1, 0x1

    .line 1160
    goto :goto_19

    .line 1162
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v1    # "i":I
    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_38
    invoke-direct {p0, p1, v3, v4}, setDataSource(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    .line 1163
    return-void
.end method

.method public setDisplay(Landroid/view/SurfaceHolder;)V
    .registers 3
    .param p1, "sh"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 773
    iput-object p1, p0, mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 775
    if-eqz p1, :cond_f

    .line 776
    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v0

    .line 780
    .local v0, "surface":Landroid/view/Surface;
    :goto_8
    invoke-direct {p0, v0}, _setVideoSurface(Landroid/view/Surface;)V

    .line 781
    invoke-direct {p0}, updateSurfaceScreenOn()V

    .line 782
    return-void

    .line 778
    .end local v0    # "surface":Landroid/view/Surface;
    :cond_f
    const/4 v0, 0x0

    .restart local v0    # "surface":Landroid/view/Surface;
    goto :goto_8
.end method

.method public native setLooping(Z)V
.end method

.method public setMetadataFilter(Ljava/util/Set;Ljava/util/Set;)I
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 1689
    .local p1, "allow":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    .local p2, "block":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    invoke-virtual {p0}, newRequest()Landroid/os/Parcel;

    move-result-object v2

    .line 1695
    .local v2, "request":Landroid/os/Parcel;
    invoke-virtual {v2}, Landroid/os/Parcel;->dataSize()I

    move-result v4

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    add-int/lit8 v5, v5, 0x1

    invoke-interface {p2}, Ljava/util/Set;->size()I

    move-result v6

    add-int/2addr v5, v6

    mul-int/lit8 v5, v5, 0x4

    add-int v0, v4, v5

    .line 1697
    .local v0, "capacity":I
    invoke-virtual {v2}, Landroid/os/Parcel;->dataCapacity()I

    move-result v4

    if-ge v4, v0, :cond_22

    .line 1698
    invoke-virtual {v2, v0}, Landroid/os/Parcel;->setDataCapacity(I)V

    .line 1701
    :cond_22
    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1702
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_2d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_41

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 1703
    .local v3, "t":Ljava/lang/Integer;
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_2d

    .line 1705
    .end local v3    # "t":Ljava/lang/Integer;
    :cond_41
    invoke-interface {p2}, Ljava/util/Set;->size()I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1706
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_60

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 1707
    .restart local v3    # "t":Ljava/lang/Integer;
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_4c

    .line 1709
    .end local v3    # "t":Ljava/lang/Integer;
    :cond_60
    invoke-direct {p0, v2}, native_setMetadataFilter(Landroid/os/Parcel;)I

    move-result v4

    return v4
.end method

.method public native setNextMediaPlayer(Landroid/media/MediaPlayer;)V
.end method

.method public setOnBufferingUpdateListener(Landroid/media/MediaPlayer$OnBufferingUpdateListener;)V
    .registers 2
    .param p1, "listener"    # Landroid/media/MediaPlayer$OnBufferingUpdateListener;

    .prologue
    .line 3751
    iput-object p1, p0, mOnBufferingUpdateListener:Landroid/media/MediaPlayer$OnBufferingUpdateListener;

    .line 3752
    return-void
.end method

.method public setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V
    .registers 2
    .param p1, "listener"    # Landroid/media/MediaPlayer$OnCompletionListener;

    .prologue
    .line 3717
    iput-object p1, p0, mOnCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    .line 3718
    return-void
.end method

.method public setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V
    .registers 2
    .param p1, "listener"    # Landroid/media/MediaPlayer$OnErrorListener;

    .prologue
    .line 4036
    iput-object p1, p0, mOnErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    .line 4037
    return-void
.end method

.method public setOnInfoListener(Landroid/media/MediaPlayer$OnInfoListener;)V
    .registers 2
    .param p1, "listener"    # Landroid/media/MediaPlayer$OnInfoListener;

    .prologue
    .line 4225
    iput-object p1, p0, mOnInfoListener:Landroid/media/MediaPlayer$OnInfoListener;

    .line 4226
    return-void
.end method

.method public setOnPlayReadyErrorListener(Landroid/media/MediaPlayer$OnPlayReadyErrorListener;)V
    .registers 2
    .param p1, "listener"    # Landroid/media/MediaPlayer$OnPlayReadyErrorListener;

    .prologue
    .line 4024
    iput-object p1, p0, mOnPlayReadyErrorListener:Landroid/media/MediaPlayer$OnPlayReadyErrorListener;

    .line 4025
    return-void
.end method

.method public setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V
    .registers 2
    .param p1, "listener"    # Landroid/media/MediaPlayer$OnPreparedListener;

    .prologue
    .line 3690
    iput-object p1, p0, mOnPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    .line 3691
    return-void
.end method

.method public setOnSeekCompleteListener(Landroid/media/MediaPlayer$OnSeekCompleteListener;)V
    .registers 2
    .param p1, "listener"    # Landroid/media/MediaPlayer$OnSeekCompleteListener;

    .prologue
    .line 3778
    iput-object p1, p0, mOnSeekCompleteListener:Landroid/media/MediaPlayer$OnSeekCompleteListener;

    .line 3779
    return-void
.end method

.method public setOnSubtitleDataListener(Landroid/media/MediaPlayer$OnSubtitleDataListener;)V
    .registers 2
    .param p1, "listener"    # Landroid/media/MediaPlayer$OnSubtitleDataListener;

    .prologue
    .line 3864
    iput-object p1, p0, mOnSubtitleDataListener:Landroid/media/MediaPlayer$OnSubtitleDataListener;

    .line 3865
    return-void
.end method

.method public setOnTimedTextListener(Landroid/media/MediaPlayer$OnTimedTextListener;)V
    .registers 2
    .param p1, "listener"    # Landroid/media/MediaPlayer$OnTimedTextListener;

    .prologue
    .line 3839
    iput-object p1, p0, mOnTimedTextListener:Landroid/media/MediaPlayer$OnTimedTextListener;

    .line 3840
    return-void
.end method

.method public setOnVideoSizeChangedListener(Landroid/media/MediaPlayer$OnVideoSizeChangedListener;)V
    .registers 2
    .param p1, "listener"    # Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

    .prologue
    .line 3810
    iput-object p1, p0, mOnVideoSizeChangedListener:Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

    .line 3811
    return-void
.end method

.method public setParameter(II)Z
    .registers 5
    .param p1, "key"    # I
    .param p2, "value"    # I

    .prologue
    .line 1996
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1997
    .local v0, "p":Landroid/os/Parcel;
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1998
    invoke-virtual {p0, p1, v0}, setParameter(ILandroid/os/Parcel;)Z

    move-result v1

    .line 1999
    .local v1, "ret":Z
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2000
    return v1
.end method

.method public native setParameter(ILandroid/os/Parcel;)Z
.end method

.method public setParameter(ILjava/lang/String;)Z
    .registers 5
    .param p1, "key"    # I
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 1980
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1981
    .local v0, "p":Landroid/os/Parcel;
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1982
    invoke-virtual {p0, p1, v0}, setParameter(ILandroid/os/Parcel;)Z

    move-result v1

    .line 1983
    .local v1, "ret":Z
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1984
    return v1
.end method

.method public setRetransmitEndpoint(Ljava/net/InetSocketAddress;)V
    .registers 8
    .param p1, "endpoint"    # Ljava/net/InetSocketAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 3281
    const/4 v0, 0x0

    .line 3282
    .local v0, "addrString":Ljava/lang/String;
    const/4 v1, 0x0

    .line 3284
    .local v1, "port":I
    if-eqz p1, :cond_10

    .line 3285
    invoke-virtual {p1}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    .line 3286
    invoke-virtual {p1}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v1

    .line 3289
    :cond_10
    invoke-direct {p0, v0, v1}, native_setRetransmitEndpoint(Ljava/lang/String;I)I

    move-result v2

    .line 3290
    .local v2, "ret":I
    if-eqz v2, :cond_2f

    .line 3291
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Illegal re-transmit endpoint; native ret "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 3293
    :cond_2f
    return-void
.end method

.method public setScreenOnWhilePlaying(Z)V
    .registers 4
    .param p1, "screenOn"    # Z

    .prologue
    .line 1526
    iget-boolean v0, p0, mScreenOnWhilePlaying:Z

    if-eq v0, p1, :cond_17

    .line 1527
    if-eqz p1, :cond_12

    iget-object v0, p0, mSurfaceHolder:Landroid/view/SurfaceHolder;

    if-nez v0, :cond_12

    .line 1528
    const-string v0, "MediaPlayer"

    const-string/jumbo v1, "setScreenOnWhilePlaying(true) is ineffective without a SurfaceHolder"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1530
    :cond_12
    iput-boolean p1, p0, mScreenOnWhilePlaying:Z

    .line 1531
    invoke-direct {p0}, updateSurfaceScreenOn()V

    .line 1533
    :cond_17
    return-void
.end method

.method public setSoundAlive(Landroid/os/Parcel;Landroid/os/Parcel;)I
    .registers 4
    .param p1, "request"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;

    .prologue
    .line 1260
    invoke-virtual {p0, p1, p2}, invoke(Landroid/os/Parcel;Landroid/os/Parcel;)V

    .line 1261
    const/4 v0, 0x0

    return v0
.end method

.method public setSubtitleAnchor(Landroid/media/SubtitleController;Landroid/media/SubtitleController$Anchor;)V
    .registers 4
    .param p1, "controller"    # Landroid/media/SubtitleController;
    .param p2, "anchor"    # Landroid/media/SubtitleController$Anchor;

    .prologue
    .line 2462
    iput-object p1, p0, mSubtitleController:Landroid/media/SubtitleController;

    .line 2463
    iget-object v0, p0, mSubtitleController:Landroid/media/SubtitleController;

    invoke-virtual {v0, p2}, Landroid/media/SubtitleController;->setAnchor(Landroid/media/SubtitleController$Anchor;)V

    .line 2464
    return-void
.end method

.method public setSurface(Landroid/view/Surface;)V
    .registers 4
    .param p1, "surface"    # Landroid/view/Surface;

    .prologue
    .line 803
    iget-boolean v0, p0, mScreenOnWhilePlaying:Z

    if-eqz v0, :cond_e

    if-eqz p1, :cond_e

    .line 804
    const-string v0, "MediaPlayer"

    const-string/jumbo v1, "setScreenOnWhilePlaying(true) is ineffective for Surface"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 806
    :cond_e
    const/4 v0, 0x0

    iput-object v0, p0, mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 807
    invoke-direct {p0, p1}, _setVideoSurface(Landroid/view/Surface;)V

    .line 808
    invoke-direct {p0}, updateSurfaceScreenOn()V

    .line 809
    return-void
.end method

.method public setVideoScalingMode(I)V
    .registers 7
    .param p1, "mode"    # I

    .prologue
    .line 852
    invoke-direct {p0, p1}, isVideoScalingModeSupported(I)Z

    move-result v3

    if-nez v3, :cond_25

    .line 853
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Scaling mode "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is not supported"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 854
    .local v0, "msg":Ljava/lang/String;
    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-direct {v3, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 856
    .end local v0    # "msg":Ljava/lang/String;
    :cond_25
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 857
    .local v2, "request":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 859
    .local v1, "reply":Landroid/os/Parcel;
    :try_start_2d
    const-string v3, "android.media.IMediaPlayer"

    invoke-virtual {v2, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 860
    const/4 v3, 0x6

    invoke-virtual {v2, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 861
    invoke-virtual {v2, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 862
    invoke-virtual {p0, v2, v1}, invoke(Landroid/os/Parcel;Landroid/os/Parcel;)V
    :try_end_3c
    .catchall {:try_start_2d .. :try_end_3c} :catchall_43

    .line 864
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 865
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 867
    return-void

    .line 864
    :catchall_43
    move-exception v3

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 865
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public setVolume(F)V
    .registers 2
    .param p1, "volume"    # F

    .prologue
    .line 2123
    invoke-virtual {p0, p1, p1}, setVolume(FF)V

    .line 2124
    return-void
.end method

.method public setVolume(FF)V
    .registers 4
    .param p1, "leftVolume"    # F
    .param p2, "rightVolume"    # F

    .prologue
    .line 2110
    invoke-direct {p0}, isRestricted()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 2114
    :goto_6
    return-void

    .line 2113
    :cond_7
    invoke-direct {p0, p1, p2}, _setVolume(FF)V

    goto :goto_6
.end method

.method public setWakeMode(Landroid/content/Context;I)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "mode"    # I

    .prologue
    .line 1495
    const/4 v1, 0x0

    .line 1496
    .local v1, "washeld":Z
    iget-object v2, p0, mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v2, :cond_16

    .line 1497
    iget-object v2, p0, mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v2

    if-eqz v2, :cond_13

    .line 1498
    const/4 v1, 0x1

    .line 1499
    iget-object v2, p0, mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1501
    :cond_13
    const/4 v2, 0x0

    iput-object v2, p0, mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 1504
    :cond_16
    const-string/jumbo v2, "power"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 1507
    .local v0, "pm":Landroid/os/PowerManager;
    const-class v2, Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, p2, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    iput-object v2, p0, mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 1509
    iget-object v2, p0, mWakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 1510
    if-eqz v1, :cond_38

    .line 1511
    iget-object v2, p0, mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 1513
    :cond_38
    return-void
.end method

.method public start()V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1357
    iget-boolean v0, p0, mIsVideo:Z

    if-eqz v0, :cond_33

    .line 1360
    const-string v0, "android.intent.action.SMART_PAUSE"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "STATUS"

    aput-object v2, v1, v3

    const-string/jumbo v2, "started"

    aput-object v2, v1, v4

    invoke-direct {p0, v0, v1}, sendBroadcastingIntent(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 1361
    const-string v0, "MediaPlayer"

    const-string/jumbo v1, "sendBroadcast SMART_PAUSE_start()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1364
    iget-boolean v0, p0, mAIAContext:Z

    if-nez v0, :cond_4d

    .line 1365
    const-string v0, "android.media.IMediaPlayer.videoexist"

    new-array v1, v3, [Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, sendBroadcastingIntent(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 1366
    const-string v0, "MediaPlayer"

    const-string/jumbo v1, "sendBroadcast android.media.IMediaPlayer.videoexist"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1371
    :cond_33
    :goto_33
    iput-boolean v4, p0, mIsStart:Z

    .line 1374
    sget-boolean v0, MMFWContextAware:Z

    if-eqz v0, :cond_3d

    .line 1375
    iput-boolean v3, p0, mContextAwareSend:Z

    .line 1376
    iput v3, p0, mPendingCommand:I

    .line 1380
    :cond_3d
    invoke-direct {p0}, isRestricted()Z

    move-result v0

    if-eqz v0, :cond_46

    .line 1381
    invoke-direct {p0, v5, v5}, _setVolume(FF)V

    .line 1383
    :cond_46
    invoke-direct {p0, v4}, stayAwake(Z)V

    .line 1384
    invoke-direct {p0}, _start()V

    .line 1385
    return-void

    .line 1369
    :cond_4d
    const-string v0, "MediaPlayer"

    const-string v1, "context is 1, don\'t send IMEDIA_PLAYER_VIDEO_EXIST!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_33
.end method

.method public stop()V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x2

    const/4 v4, 0x0

    .line 1421
    invoke-direct {p0, v4}, stayAwake(Z)V

    .line 1423
    sget-boolean v0, MMFWContextAware:Z

    if-eqz v0, :cond_68

    .line 1424
    iget-boolean v0, p0, mContextAwareSend:Z

    if-eqz v0, :cond_88

    .line 1425
    const-string v0, "com.samsung.CONTEXT_AWARE_MUSIC_INFO"

    const/16 v1, 0x8

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "TYPE"

    aput-object v2, v1, v4

    const-string/jumbo v2, "stop"

    aput-object v2, v1, v6

    const-string v2, "URI"

    aput-object v2, v1, v5

    const/4 v2, 0x3

    iget-object v3, p0, mContextAwareUri:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string v3, "ID"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    iget v3, p0, mContextAwareId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "PID"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    iget v3, p0, mPid:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-direct {p0, v0, v1}, sendBroadcastingIntent(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 1426
    const-string v0, "MediaPlayer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sendBroadcast CONTEXT_AWARE_MUSIC_INFO - type(stop) - id("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, mContextAwareId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1427
    iput-boolean v4, p0, mContextAwareSend:Z

    .line 1435
    :cond_68
    :goto_68
    iget-boolean v0, p0, mIsVideo:Z

    if-eqz v0, :cond_84

    .line 1436
    const-string v0, "android.intent.action.SMART_PAUSE"

    new-array v1, v5, [Ljava/lang/Object;

    const-string v2, "STATUS"

    aput-object v2, v1, v4

    const-string/jumbo v2, "stopped"

    aput-object v2, v1, v6

    invoke-direct {p0, v0, v1}, sendBroadcastingIntent(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 1437
    const-string v0, "MediaPlayer"

    const-string/jumbo v1, "sendBroadcast SMART_PAUSE_stop()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1441
    :cond_84
    invoke-direct {p0}, _stop()V

    .line 1442
    return-void

    .line 1429
    :cond_88
    iput v5, p0, mPendingCommand:I

    goto :goto_68
.end method

.method public suspend()Z
    .registers 2

    .prologue
    .line 4241
    const/4 v0, 0x0

    invoke-direct {p0, v0}, stayAwake(Z)V

    .line 4242
    invoke-direct {p0}, _suspend()Z

    move-result v0

    return v0
.end method
