.class public final Landroid/media/RemoteController;
.super Ljava/lang/Object;
.source "RemoteController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/RemoteController$1;,
        Landroid/media/RemoteController$PlaybackInfo;,
        Landroid/media/RemoteController$EventHandler;,
        Landroid/media/RemoteController$TopTransportSessionListener;,
        Landroid/media/RemoteController$MediaControllerCallback;,
        Landroid/media/RemoteController$RcDisplay;,
        Landroid/media/RemoteController$MetadataEditor;,
        Landroid/media/RemoteController$OnClientUpdateListener;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final MAX_BITMAP_DIMENSION:I = 0x200

.field private static final MSG_CLIENT_CHANGE:I = 0x4

.field private static final MSG_DISPLAY_ENABLE:I = 0x5

.field private static final MSG_NEW_MEDIA_METADATA:I = 0x7

.field private static final MSG_NEW_METADATA:I = 0x3

.field private static final MSG_NEW_PENDING_INTENT:I = 0x0

.field private static final MSG_NEW_PLAYBACK_INFO:I = 0x1

.field private static final MSG_NEW_PLAYBACK_STATE:I = 0x6

.field private static final MSG_NEW_TRANSPORT_INFO:I = 0x2

.field public static final POSITION_SYNCHRONIZATION_CHECK:I = 0x1

.field public static final POSITION_SYNCHRONIZATION_NONE:I = 0x0

.field private static final SENDMSG_NOOP:I = 0x1

.field private static final SENDMSG_QUEUE:I = 0x2

.field private static final SENDMSG_REPLACE:I = 0x0

.field private static final TAG:Ljava/lang/String; = "RemoteController"

.field private static final TRANSPORT_UNKNOWN:I = 0x0

.field private static final USE_SESSIONS:Z = true

.field private static final mGenLock:Ljava/lang/Object;

.field private static final mInfoLock:Ljava/lang/Object;


# instance fields
.field private mArtworkHeight:I

.field private mArtworkWidth:I

.field private final mAudioManager:Landroid/media/AudioManager;

.field private mClientGenerationIdCurrent:I

.field private mClientPendingIntentCurrent:Landroid/app/PendingIntent;

.field private final mContext:Landroid/content/Context;

.field private mCurrentSession:Landroid/media/session/MediaController;

.field private mEnabled:Z

.field private final mEventHandler:Landroid/media/RemoteController$EventHandler;

.field private mIsRegistered:Z

.field private mLastPlaybackInfo:Landroid/media/RemoteController$PlaybackInfo;

.field private final mMaxBitmapDimension:I

.field private mMetadataEditor:Landroid/media/RemoteController$MetadataEditor;

.field private mOnClientUpdateListener:Landroid/media/RemoteController$OnClientUpdateListener;

.field private final mRcd:Landroid/media/RemoteController$RcDisplay;

.field private mSessionCb:Landroid/media/session/MediaController$Callback;

.field private mSessionListener:Landroid/media/session/MediaSessionManager$OnActiveSessionsChangedListener;

.field private mSessionManager:Landroid/media/session/MediaSessionManager;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 68
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, mGenLock:Ljava/lang/Object;

    .line 69
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, mInfoLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/media/RemoteController$OnClientUpdateListener;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "updateListener"    # Landroid/media/RemoteController$OnClientUpdateListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 107
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, <init>(Landroid/content/Context;Landroid/media/RemoteController$OnClientUpdateListener;Landroid/os/Looper;)V

    .line 108
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/media/RemoteController$OnClientUpdateListener;Landroid/os/Looper;)V
    .registers 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "updateListener"    # Landroid/media/RemoteController$OnClientUpdateListener;
    .param p3, "looper"    # Landroid/os/Looper;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    const/4 v3, -0x1

    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    new-instance v2, Landroid/media/RemoteController$MediaControllerCallback;

    invoke-direct {v2, p0, v5}, Landroid/media/RemoteController$MediaControllerCallback;-><init>(Landroid/media/RemoteController;Landroid/media/RemoteController$1;)V

    iput-object v2, p0, mSessionCb:Landroid/media/session/MediaController$Callback;

    .line 83
    iput v4, p0, mClientGenerationIdCurrent:I

    .line 88
    iput-boolean v4, p0, mIsRegistered:Z

    .line 92
    iput v3, p0, mArtworkWidth:I

    .line 93
    iput v3, p0, mArtworkHeight:I

    .line 94
    const/4 v2, 0x1

    iput-boolean v2, p0, mEnabled:Z

    .line 121
    if-nez p1, :cond_22

    .line 122
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Invalid null Context"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 124
    :cond_22
    if-nez p2, :cond_2c

    .line 125
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Invalid null OnClientUpdateListener"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 127
    :cond_2c
    if-eqz p3, :cond_67

    .line 128
    new-instance v2, Landroid/media/RemoteController$EventHandler;

    invoke-direct {v2, p0, p0, p3}, Landroid/media/RemoteController$EventHandler;-><init>(Landroid/media/RemoteController;Landroid/media/RemoteController;Landroid/os/Looper;)V

    iput-object v2, p0, mEventHandler:Landroid/media/RemoteController$EventHandler;

    .line 137
    :goto_35
    iput-object p2, p0, mOnClientUpdateListener:Landroid/media/RemoteController$OnClientUpdateListener;

    .line 138
    iput-object p1, p0, mContext:Landroid/content/Context;

    .line 139
    new-instance v2, Landroid/media/RemoteController$RcDisplay;

    invoke-direct {v2, p0}, Landroid/media/RemoteController$RcDisplay;-><init>(Landroid/media/RemoteController;)V

    iput-object v2, p0, mRcd:Landroid/media/RemoteController$RcDisplay;

    .line 140
    const-string v2, "audio"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioManager;

    iput-object v2, p0, mAudioManager:Landroid/media/AudioManager;

    .line 141
    const-string/jumbo v2, "media_session"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/session/MediaSessionManager;

    iput-object v2, p0, mSessionManager:Landroid/media/session/MediaSessionManager;

    .line 143
    new-instance v2, Landroid/media/RemoteController$TopTransportSessionListener;

    invoke-direct {v2, p0, v5}, Landroid/media/RemoteController$TopTransportSessionListener;-><init>(Landroid/media/RemoteController;Landroid/media/RemoteController$1;)V

    iput-object v2, p0, mSessionListener:Landroid/media/session/MediaSessionManager$OnActiveSessionsChangedListener;

    .line 145
    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    move-result v2

    if-eqz v2, :cond_7d

    .line 146
    const/16 v2, 0x200

    iput v2, p0, mMaxBitmapDimension:I

    .line 151
    :goto_66
    return-void

    .line 130
    :cond_67
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    .line 131
    .local v1, "l":Landroid/os/Looper;
    if-eqz v1, :cond_75

    .line 132
    new-instance v2, Landroid/media/RemoteController$EventHandler;

    invoke-direct {v2, p0, p0, v1}, Landroid/media/RemoteController$EventHandler;-><init>(Landroid/media/RemoteController;Landroid/media/RemoteController;Landroid/os/Looper;)V

    iput-object v2, p0, mEventHandler:Landroid/media/RemoteController$EventHandler;

    goto :goto_35

    .line 134
    :cond_75
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Calling thread not associated with a looper"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 148
    .end local v1    # "l":Landroid/os/Looper;
    :cond_7d
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 149
    .local v0, "dm":Landroid/util/DisplayMetrics;
    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v3, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, p0, mMaxBitmapDimension:I

    goto :goto_66
.end method

.method static synthetic access$1000(Landroid/media/RemoteController;Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 3
    .param p0, "x0"    # Landroid/media/RemoteController;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Landroid/os/Bundle;

    .prologue
    .line 61
    invoke-direct {p0, p1, p2}, onNewSessionEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$1100(Landroid/media/RemoteController;Landroid/media/session/MediaController;)V
    .registers 2
    .param p0, "x0"    # Landroid/media/RemoteController;
    .param p1, "x1"    # Landroid/media/session/MediaController;

    .prologue
    .line 61
    invoke-direct {p0, p1}, updateController(Landroid/media/session/MediaController;)V

    return-void
.end method

.method static synthetic access$1200(Landroid/media/RemoteController;ILandroid/app/PendingIntent;)V
    .registers 3
    .param p0, "x0"    # Landroid/media/RemoteController;
    .param p1, "x1"    # I
    .param p2, "x2"    # Landroid/app/PendingIntent;

    .prologue
    .line 61
    invoke-direct {p0, p1, p2}, onNewPendingIntent(ILandroid/app/PendingIntent;)V

    return-void
.end method

.method static synthetic access$1300(Landroid/media/RemoteController;ILandroid/media/RemoteController$PlaybackInfo;)V
    .registers 3
    .param p0, "x0"    # Landroid/media/RemoteController;
    .param p1, "x1"    # I
    .param p2, "x2"    # Landroid/media/RemoteController$PlaybackInfo;

    .prologue
    .line 61
    invoke-direct {p0, p1, p2}, onNewPlaybackInfo(ILandroid/media/RemoteController$PlaybackInfo;)V

    return-void
.end method

.method static synthetic access$1400(Landroid/media/RemoteController;II)V
    .registers 3
    .param p0, "x0"    # Landroid/media/RemoteController;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 61
    invoke-direct {p0, p1, p2}, onNewTransportInfo(II)V

    return-void
.end method

.method static synthetic access$1500(Landroid/media/RemoteController;ILandroid/os/Bundle;)V
    .registers 3
    .param p0, "x0"    # Landroid/media/RemoteController;
    .param p1, "x1"    # I
    .param p2, "x2"    # Landroid/os/Bundle;

    .prologue
    .line 61
    invoke-direct {p0, p1, p2}, onNewMetadata(ILandroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$1600(Landroid/media/RemoteController;IZ)V
    .registers 3
    .param p0, "x0"    # Landroid/media/RemoteController;
    .param p1, "x1"    # I
    .param p2, "x2"    # Z

    .prologue
    .line 61
    invoke-direct {p0, p1, p2}, onClientChange(IZ)V

    return-void
.end method

.method static synthetic access$1700(Landroid/media/RemoteController;Z)V
    .registers 2
    .param p0, "x0"    # Landroid/media/RemoteController;
    .param p1, "x1"    # Z

    .prologue
    .line 61
    invoke-direct {p0, p1}, onDisplayEnable(Z)V

    return-void
.end method

.method static synthetic access$200()Ljava/lang/Object;
    .registers 1

    .prologue
    .line 61
    sget-object v0, mInfoLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$300(Landroid/media/RemoteController;)Landroid/media/session/MediaController;
    .registers 2
    .param p0, "x0"    # Landroid/media/RemoteController;

    .prologue
    .line 61
    iget-object v0, p0, mCurrentSession:Landroid/media/session/MediaController;

    return-object v0
.end method

.method static synthetic access$400()Ljava/lang/Object;
    .registers 1

    .prologue
    .line 61
    sget-object v0, mGenLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$500(Landroid/media/RemoteController;)I
    .registers 2
    .param p0, "x0"    # Landroid/media/RemoteController;

    .prologue
    .line 61
    iget v0, p0, mClientGenerationIdCurrent:I

    return v0
.end method

.method static synthetic access$502(Landroid/media/RemoteController;I)I
    .registers 2
    .param p0, "x0"    # Landroid/media/RemoteController;
    .param p1, "x1"    # I

    .prologue
    .line 61
    iput p1, p0, mClientGenerationIdCurrent:I

    return p1
.end method

.method static synthetic access$600(Landroid/media/RemoteController;)Landroid/media/RemoteController$EventHandler;
    .registers 2
    .param p0, "x0"    # Landroid/media/RemoteController;

    .prologue
    .line 61
    iget-object v0, p0, mEventHandler:Landroid/media/RemoteController$EventHandler;

    return-object v0
.end method

.method static synthetic access$700(Landroid/os/Handler;IIIILjava/lang/Object;I)V
    .registers 7
    .param p0, "x0"    # Landroid/os/Handler;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # I
    .param p5, "x5"    # Ljava/lang/Object;
    .param p6, "x6"    # I

    .prologue
    .line 61
    invoke-static/range {p0 .. p6}, sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    return-void
.end method

.method static synthetic access$800(Landroid/media/RemoteController;Landroid/media/session/PlaybackState;)V
    .registers 2
    .param p0, "x0"    # Landroid/media/RemoteController;
    .param p1, "x1"    # Landroid/media/session/PlaybackState;

    .prologue
    .line 61
    invoke-direct {p0, p1}, onNewPlaybackState(Landroid/media/session/PlaybackState;)V

    return-void
.end method

.method static synthetic access$900(Landroid/media/RemoteController;Landroid/media/MediaMetadata;)V
    .registers 2
    .param p0, "x0"    # Landroid/media/RemoteController;
    .param p1, "x1"    # Landroid/media/MediaMetadata;

    .prologue
    .line 61
    invoke-direct {p0, p1}, onNewMediaMetadata(Landroid/media/MediaMetadata;)V

    return-void
.end method

.method private onClientChange(IZ)V
    .registers 6
    .param p1, "genId"    # I
    .param p2, "clearing"    # Z

    .prologue
    .line 1074
    sget-object v2, mGenLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1075
    :try_start_3
    iget v1, p0, mClientGenerationIdCurrent:I

    if-eq v1, p1, :cond_9

    .line 1076
    monitor-exit v2

    .line 1087
    :cond_8
    :goto_8
    return-void

    .line 1078
    :cond_9
    monitor-exit v2
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_19

    .line 1080
    sget-object v2, mInfoLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1081
    :try_start_d
    iget-object v0, p0, mOnClientUpdateListener:Landroid/media/RemoteController$OnClientUpdateListener;

    .line 1082
    .local v0, "l":Landroid/media/RemoteController$OnClientUpdateListener;
    const/4 v1, 0x0

    iput-object v1, p0, mMetadataEditor:Landroid/media/RemoteController$MetadataEditor;

    .line 1083
    monitor-exit v2
    :try_end_13
    .catchall {:try_start_d .. :try_end_13} :catchall_1c

    .line 1084
    if-eqz v0, :cond_8

    .line 1085
    invoke-interface {v0, p2}, Landroid/media/RemoteController$OnClientUpdateListener;->onClientChange(Z)V

    goto :goto_8

    .line 1078
    .end local v0    # "l":Landroid/media/RemoteController$OnClientUpdateListener;
    :catchall_19
    move-exception v1

    :try_start_1a
    monitor-exit v2
    :try_end_1b
    .catchall {:try_start_1a .. :try_end_1b} :catchall_19

    throw v1

    .line 1083
    :catchall_1c
    move-exception v1

    :try_start_1d
    monitor-exit v2
    :try_end_1e
    .catchall {:try_start_1d .. :try_end_1e} :catchall_1c

    throw v1
.end method

.method private onDisplayEnable(Z)V
    .registers 12
    .param p1, "enabled"    # Z

    .prologue
    .line 1091
    sget-object v2, mInfoLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1092
    :try_start_3
    iput-boolean p1, p0, mEnabled:Z

    .line 1093
    iget-object v9, p0, mOnClientUpdateListener:Landroid/media/RemoteController$OnClientUpdateListener;

    .line 1094
    .local v9, "l":Landroid/media/RemoteController$OnClientUpdateListener;
    monitor-exit v2
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_63

    .line 1095
    if-nez p1, :cond_62

    .line 1098
    sget-object v2, mGenLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1099
    :try_start_d
    iget v8, p0, mClientGenerationIdCurrent:I

    .line 1100
    .local v8, "genId":I
    monitor-exit v2
    :try_end_10
    .catchall {:try_start_d .. :try_end_10} :catchall_66

    .line 1102
    new-instance v0, Landroid/media/RemoteController$PlaybackInfo;

    const/4 v1, 0x1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Landroid/media/RemoteController$PlaybackInfo;-><init>(IJJF)V

    .line 1105
    .local v0, "pi":Landroid/media/RemoteController$PlaybackInfo;
    iget-object v1, p0, mEventHandler:Landroid/media/RemoteController$EventHandler;

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    move v4, v8

    move-object v6, v0

    invoke-static/range {v1 .. v7}, sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 1108
    iget-object v1, p0, mEventHandler:Landroid/media/RemoteController$EventHandler;

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move v4, v8

    invoke-static/range {v1 .. v7}, sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 1112
    new-instance v6, Landroid/os/Bundle;

    const/4 v1, 0x3

    invoke-direct {v6, v1}, Landroid/os/Bundle;-><init>(I)V

    .line 1113
    .local v6, "metadata":Landroid/os/Bundle;
    const/4 v1, 0x7

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v6, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1114
    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v6, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1115
    const/16 v1, 0x9

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-wide/16 v2, 0x0

    invoke-virtual {v6, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1116
    iget-object v1, p0, mEventHandler:Landroid/media/RemoteController$EventHandler;

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v5, 0x0

    const/4 v7, 0x0

    move v4, v8

    invoke-static/range {v1 .. v7}, sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 1119
    .end local v0    # "pi":Landroid/media/RemoteController$PlaybackInfo;
    .end local v6    # "metadata":Landroid/os/Bundle;
    .end local v8    # "genId":I
    :cond_62
    return-void

    .line 1094
    .end local v9    # "l":Landroid/media/RemoteController$OnClientUpdateListener;
    :catchall_63
    move-exception v1

    :try_start_64
    monitor-exit v2
    :try_end_65
    .catchall {:try_start_64 .. :try_end_65} :catchall_63

    throw v1

    .line 1100
    .restart local v9    # "l":Landroid/media/RemoteController$OnClientUpdateListener;
    :catchall_66
    move-exception v1

    :try_start_67
    monitor-exit v2
    :try_end_68
    .catchall {:try_start_67 .. :try_end_68} :catchall_66

    throw v1
.end method

.method private onNewMediaMetadata(Landroid/media/MediaMetadata;)V
    .registers 11
    .param p1, "metadata"    # Landroid/media/MediaMetadata;

    .prologue
    .line 1180
    if-nez p1, :cond_3

    .line 1200
    :cond_2
    :goto_2
    return-void

    .line 1187
    :cond_3
    sget-object v7, mInfoLock:Ljava/lang/Object;

    monitor-enter v7

    .line 1188
    :try_start_6
    iget-object v1, p0, mOnClientUpdateListener:Landroid/media/RemoteController$OnClientUpdateListener;

    .line 1189
    .local v1, "l":Landroid/media/RemoteController$OnClientUpdateListener;
    iget-object v6, p0, mCurrentSession:Landroid/media/session/MediaController;

    if-eqz v6, :cond_32

    iget-object v6, p0, mCurrentSession:Landroid/media/session/MediaController;

    invoke-virtual {v6}, Landroid/media/session/MediaController;->getRatingType()I

    move-result v6

    if-eqz v6, :cond_32

    const/4 v0, 0x1

    .line 1191
    .local v0, "canRate":Z
    :goto_15
    if-eqz v0, :cond_34

    const-wide/32 v2, 0x10000001

    .line 1192
    .local v2, "editableKeys":J
    :goto_1a
    iget v6, p0, mArtworkWidth:I

    iget v8, p0, mArtworkHeight:I

    invoke-static {p1, v6, v8}, Landroid/media/session/MediaSessionLegacyHelper;->getOldMetadata(Landroid/media/MediaMetadata;II)Landroid/os/Bundle;

    move-result-object v4

    .line 1194
    .local v4, "legacyMetadata":Landroid/os/Bundle;
    new-instance v6, Landroid/media/RemoteController$MetadataEditor;

    invoke-direct {v6, p0, v4, v2, v3}, Landroid/media/RemoteController$MetadataEditor;-><init>(Landroid/media/RemoteController;Landroid/os/Bundle;J)V

    iput-object v6, p0, mMetadataEditor:Landroid/media/RemoteController$MetadataEditor;

    .line 1195
    iget-object v5, p0, mMetadataEditor:Landroid/media/RemoteController$MetadataEditor;

    .line 1196
    .local v5, "metadataEditor":Landroid/media/RemoteController$MetadataEditor;
    monitor-exit v7
    :try_end_2c
    .catchall {:try_start_6 .. :try_end_2c} :catchall_37

    .line 1197
    if-eqz v1, :cond_2

    .line 1198
    invoke-interface {v1, v5}, Landroid/media/RemoteController$OnClientUpdateListener;->onClientMetadataUpdate(Landroid/media/RemoteController$MetadataEditor;)V

    goto :goto_2

    .line 1189
    .end local v0    # "canRate":Z
    .end local v2    # "editableKeys":J
    .end local v4    # "legacyMetadata":Landroid/os/Bundle;
    .end local v5    # "metadataEditor":Landroid/media/RemoteController$MetadataEditor;
    :cond_32
    const/4 v0, 0x0

    goto :goto_15

    .line 1191
    .restart local v0    # "canRate":Z
    :cond_34
    const-wide/16 v2, 0x0

    goto :goto_1a

    .line 1196
    .end local v0    # "canRate":Z
    .end local v1    # "l":Landroid/media/RemoteController$OnClientUpdateListener;
    :catchall_37
    move-exception v6

    :try_start_38
    monitor-exit v7
    :try_end_39
    .catchall {:try_start_38 .. :try_end_39} :catchall_37

    throw v6
.end method

.method private onNewMetadata(ILandroid/os/Bundle;)V
    .registers 13
    .param p1, "genId"    # I
    .param p2, "metadata"    # Landroid/os/Bundle;

    .prologue
    const-wide/16 v8, 0x0

    const v6, 0x1fffffff

    .line 1038
    sget-object v5, mGenLock:Ljava/lang/Object;

    monitor-enter v5

    .line 1039
    :try_start_8
    iget v4, p0, mClientGenerationIdCurrent:I

    if-eq v4, p1, :cond_e

    .line 1040
    monitor-exit v5

    .line 1071
    :cond_d
    :goto_d
    return-void

    .line 1042
    :cond_e
    monitor-exit v5
    :try_end_f
    .catchall {:try_start_8 .. :try_end_f} :catchall_61

    .line 1046
    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4, v8, v9}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 1048
    .local v0, "editableKeys":J
    cmp-long v4, v0, v8

    if-eqz v4, :cond_22

    .line 1049
    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 1051
    :cond_22
    sget-object v5, mInfoLock:Ljava/lang/Object;

    monitor-enter v5

    .line 1052
    :try_start_25
    iget-object v2, p0, mOnClientUpdateListener:Landroid/media/RemoteController$OnClientUpdateListener;

    .line 1053
    .local v2, "l":Landroid/media/RemoteController$OnClientUpdateListener;
    iget-object v4, p0, mMetadataEditor:Landroid/media/RemoteController$MetadataEditor;

    if-eqz v4, :cond_64

    iget-object v4, p0, mMetadataEditor:Landroid/media/RemoteController$MetadataEditor;

    iget-object v4, v4, Landroid/media/RemoteController$MetadataEditor;->mEditorMetadata:Landroid/os/Bundle;

    if-eqz v4, :cond_64

    .line 1054
    iget-object v4, p0, mMetadataEditor:Landroid/media/RemoteController$MetadataEditor;

    iget-object v4, v4, Landroid/media/RemoteController$MetadataEditor;->mEditorMetadata:Landroid/os/Bundle;

    if-eq v4, p2, :cond_3e

    .line 1056
    iget-object v4, p0, mMetadataEditor:Landroid/media/RemoteController$MetadataEditor;

    iget-object v4, v4, Landroid/media/RemoteController$MetadataEditor;->mEditorMetadata:Landroid/os/Bundle;

    invoke-virtual {v4, p2}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 1059
    :cond_3e
    iget-object v6, p0, mMetadataEditor:Landroid/media/RemoteController$MetadataEditor;

    const/16 v7, 0x64

    const/16 v4, 0x64

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/graphics/Bitmap;

    invoke-virtual {v6, v7, v4}, Landroid/media/RemoteController$MetadataEditor;->putBitmap(ILandroid/graphics/Bitmap;)Landroid/media/MediaMetadataEditor;

    .line 1062
    iget-object v4, p0, mMetadataEditor:Landroid/media/RemoteController$MetadataEditor;

    const/16 v6, 0x64

    # invokes: Landroid/media/RemoteController$MetadataEditor;->cleanupBitmapFromBundle(I)V
    invoke-static {v4, v6}, Landroid/media/RemoteController$MetadataEditor;->access$1800(Landroid/media/RemoteController$MetadataEditor;I)V

    .line 1066
    :goto_58
    iget-object v3, p0, mMetadataEditor:Landroid/media/RemoteController$MetadataEditor;

    .line 1067
    .local v3, "metadataEditor":Landroid/media/RemoteController$MetadataEditor;
    monitor-exit v5
    :try_end_5b
    .catchall {:try_start_25 .. :try_end_5b} :catchall_6c

    .line 1068
    if-eqz v2, :cond_d

    .line 1069
    invoke-interface {v2, v3}, Landroid/media/RemoteController$OnClientUpdateListener;->onClientMetadataUpdate(Landroid/media/RemoteController$MetadataEditor;)V

    goto :goto_d

    .line 1042
    .end local v0    # "editableKeys":J
    .end local v2    # "l":Landroid/media/RemoteController$OnClientUpdateListener;
    .end local v3    # "metadataEditor":Landroid/media/RemoteController$MetadataEditor;
    :catchall_61
    move-exception v4

    :try_start_62
    monitor-exit v5
    :try_end_63
    .catchall {:try_start_62 .. :try_end_63} :catchall_61

    throw v4

    .line 1064
    .restart local v0    # "editableKeys":J
    .restart local v2    # "l":Landroid/media/RemoteController$OnClientUpdateListener;
    :cond_64
    :try_start_64
    new-instance v4, Landroid/media/RemoteController$MetadataEditor;

    invoke-direct {v4, p0, p2, v0, v1}, Landroid/media/RemoteController$MetadataEditor;-><init>(Landroid/media/RemoteController;Landroid/os/Bundle;J)V

    iput-object v4, p0, mMetadataEditor:Landroid/media/RemoteController$MetadataEditor;

    goto :goto_58

    .line 1067
    .end local v2    # "l":Landroid/media/RemoteController$OnClientUpdateListener;
    :catchall_6c
    move-exception v4

    monitor-exit v5
    :try_end_6e
    .catchall {:try_start_64 .. :try_end_6e} :catchall_6c

    throw v4
.end method

.method private onNewPendingIntent(ILandroid/app/PendingIntent;)V
    .registers 5
    .param p1, "genId"    # I
    .param p2, "pi"    # Landroid/app/PendingIntent;

    .prologue
    .line 987
    sget-object v1, mGenLock:Ljava/lang/Object;

    monitor-enter v1

    .line 988
    :try_start_3
    iget v0, p0, mClientGenerationIdCurrent:I

    if-eq v0, p1, :cond_9

    .line 989
    monitor-exit v1

    .line 995
    :goto_8
    return-void

    .line 991
    :cond_9
    monitor-exit v1
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_14

    .line 992
    sget-object v1, mInfoLock:Ljava/lang/Object;

    monitor-enter v1

    .line 993
    :try_start_d
    iput-object p2, p0, mClientPendingIntentCurrent:Landroid/app/PendingIntent;

    .line 994
    monitor-exit v1

    goto :goto_8

    :catchall_11
    move-exception v0

    monitor-exit v1
    :try_end_13
    .catchall {:try_start_d .. :try_end_13} :catchall_11

    throw v0

    .line 991
    :catchall_14
    move-exception v0

    :try_start_15
    monitor-exit v1
    :try_end_16
    .catchall {:try_start_15 .. :try_end_16} :catchall_14

    throw v0
.end method

.method private onNewPlaybackInfo(ILandroid/media/RemoteController$PlaybackInfo;)V
    .registers 10
    .param p1, "genId"    # I
    .param p2, "pi"    # Landroid/media/RemoteController$PlaybackInfo;

    .prologue
    .line 998
    sget-object v2, mGenLock:Ljava/lang/Object;

    monitor-enter v2

    .line 999
    :try_start_3
    iget v1, p0, mClientGenerationIdCurrent:I

    if-eq v1, p1, :cond_9

    .line 1000
    monitor-exit v2

    .line 1016
    :cond_8
    :goto_8
    return-void

    .line 1002
    :cond_9
    monitor-exit v2
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_25

    .line 1004
    sget-object v2, mInfoLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1005
    :try_start_d
    iget-object v0, p0, mOnClientUpdateListener:Landroid/media/RemoteController$OnClientUpdateListener;

    .line 1006
    .local v0, "l":Landroid/media/RemoteController$OnClientUpdateListener;
    iput-object p2, p0, mLastPlaybackInfo:Landroid/media/RemoteController$PlaybackInfo;

    .line 1007
    monitor-exit v2
    :try_end_12
    .catchall {:try_start_d .. :try_end_12} :catchall_28

    .line 1008
    if-eqz v0, :cond_8

    .line 1009
    iget-wide v2, p2, Landroid/media/RemoteController$PlaybackInfo;->mCurrentPosMs:J

    const-wide v4, -0x7fe688e67fe67d00L

    cmp-long v1, v2, v4

    if-nez v1, :cond_2b

    .line 1010
    iget v1, p2, Landroid/media/RemoteController$PlaybackInfo;->mState:I

    invoke-interface {v0, v1}, Landroid/media/RemoteController$OnClientUpdateListener;->onClientPlaybackStateUpdate(I)V

    goto :goto_8

    .line 1002
    .end local v0    # "l":Landroid/media/RemoteController$OnClientUpdateListener;
    :catchall_25
    move-exception v1

    :try_start_26
    monitor-exit v2
    :try_end_27
    .catchall {:try_start_26 .. :try_end_27} :catchall_25

    throw v1

    .line 1007
    :catchall_28
    move-exception v1

    :try_start_29
    monitor-exit v2
    :try_end_2a
    .catchall {:try_start_29 .. :try_end_2a} :catchall_28

    throw v1

    .line 1012
    .restart local v0    # "l":Landroid/media/RemoteController$OnClientUpdateListener;
    :cond_2b
    iget v1, p2, Landroid/media/RemoteController$PlaybackInfo;->mState:I

    iget-wide v2, p2, Landroid/media/RemoteController$PlaybackInfo;->mStateChangeTimeMs:J

    iget-wide v4, p2, Landroid/media/RemoteController$PlaybackInfo;->mCurrentPosMs:J

    iget v6, p2, Landroid/media/RemoteController$PlaybackInfo;->mSpeed:F

    invoke-interface/range {v0 .. v6}, Landroid/media/RemoteController$OnClientUpdateListener;->onClientPlaybackStateUpdate(IJJF)V

    goto :goto_8
.end method

.method private onNewPlaybackState(Landroid/media/session/PlaybackState;)V
    .registers 9
    .param p1, "state"    # Landroid/media/session/PlaybackState;

    .prologue
    .line 1160
    sget-object v3, mInfoLock:Ljava/lang/Object;

    monitor-enter v3

    .line 1161
    :try_start_3
    iget-object v0, p0, mOnClientUpdateListener:Landroid/media/RemoteController$OnClientUpdateListener;

    .line 1162
    .local v0, "l":Landroid/media/RemoteController$OnClientUpdateListener;
    monitor-exit v3
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_28

    .line 1163
    if-eqz v0, :cond_27

    .line 1164
    if-nez p1, :cond_2b

    const/4 v1, 0x0

    .line 1166
    .local v1, "playstate":I
    :goto_b
    if-eqz p1, :cond_17

    invoke-virtual {p1}, Landroid/media/session/PlaybackState;->getPosition()J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-nez v2, :cond_34

    .line 1167
    :cond_17
    invoke-interface {v0, v1}, Landroid/media/RemoteController$OnClientUpdateListener;->onClientPlaybackStateUpdate(I)V

    .line 1172
    :goto_1a
    if-eqz p1, :cond_27

    .line 1173
    invoke-virtual {p1}, Landroid/media/session/PlaybackState;->getActions()J

    move-result-wide v2

    invoke-static {v2, v3}, Landroid/media/session/PlaybackState;->getRccControlFlagsFromActions(J)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/media/RemoteController$OnClientUpdateListener;->onClientTransportControlUpdate(I)V

    .line 1177
    .end local v1    # "playstate":I
    :cond_27
    return-void

    .line 1162
    .end local v0    # "l":Landroid/media/RemoteController$OnClientUpdateListener;
    :catchall_28
    move-exception v2

    :try_start_29
    monitor-exit v3
    :try_end_2a
    .catchall {:try_start_29 .. :try_end_2a} :catchall_28

    throw v2

    .line 1164
    .restart local v0    # "l":Landroid/media/RemoteController$OnClientUpdateListener;
    :cond_2b
    invoke-virtual {p1}, Landroid/media/session/PlaybackState;->getState()I

    move-result v2

    invoke-static {v2}, Landroid/media/session/PlaybackState;->getRccStateFromState(I)I

    move-result v1

    goto :goto_b

    .line 1169
    .restart local v1    # "playstate":I
    :cond_34
    invoke-virtual {p1}, Landroid/media/session/PlaybackState;->getLastPositionUpdateTime()J

    move-result-wide v2

    invoke-virtual {p1}, Landroid/media/session/PlaybackState;->getPosition()J

    move-result-wide v4

    invoke-virtual {p1}, Landroid/media/session/PlaybackState;->getPlaybackSpeed()F

    move-result v6

    invoke-interface/range {v0 .. v6}, Landroid/media/RemoteController$OnClientUpdateListener;->onClientPlaybackStateUpdate(IJJF)V

    goto :goto_1a
.end method

.method private onNewSessionEvent(Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 6
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 1204
    sget-object v2, mInfoLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1205
    :try_start_3
    iget-object v0, p0, mOnClientUpdateListener:Landroid/media/RemoteController$OnClientUpdateListener;

    .line 1206
    .local v0, "l":Landroid/media/RemoteController$OnClientUpdateListener;
    monitor-exit v2
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_c

    .line 1207
    if-eqz v0, :cond_b

    .line 1208
    invoke-interface {v0, p1, p2}, Landroid/media/RemoteController$OnClientUpdateListener;->onClientSessionEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1210
    :cond_b
    return-void

    .line 1206
    .end local v0    # "l":Landroid/media/RemoteController$OnClientUpdateListener;
    :catchall_c
    move-exception v1

    :try_start_d
    monitor-exit v2
    :try_end_e
    .catchall {:try_start_d .. :try_end_e} :catchall_c

    throw v1
.end method

.method private onNewTransportInfo(II)V
    .registers 6
    .param p1, "genId"    # I
    .param p2, "transportControlFlags"    # I

    .prologue
    .line 1019
    sget-object v2, mGenLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1020
    :try_start_3
    iget v1, p0, mClientGenerationIdCurrent:I

    if-eq v1, p1, :cond_9

    .line 1021
    monitor-exit v2

    .line 1031
    :cond_8
    :goto_8
    return-void

    .line 1023
    :cond_9
    monitor-exit v2
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_16

    .line 1025
    sget-object v2, mInfoLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1026
    :try_start_d
    iget-object v0, p0, mOnClientUpdateListener:Landroid/media/RemoteController$OnClientUpdateListener;

    .line 1027
    .local v0, "l":Landroid/media/RemoteController$OnClientUpdateListener;
    monitor-exit v2
    :try_end_10
    .catchall {:try_start_d .. :try_end_10} :catchall_19

    .line 1028
    if-eqz v0, :cond_8

    .line 1029
    invoke-interface {v0, p2}, Landroid/media/RemoteController$OnClientUpdateListener;->onClientTransportControlUpdate(I)V

    goto :goto_8

    .line 1023
    .end local v0    # "l":Landroid/media/RemoteController$OnClientUpdateListener;
    :catchall_16
    move-exception v1

    :try_start_17
    monitor-exit v2
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    throw v1

    .line 1027
    :catchall_19
    move-exception v1

    :try_start_1a
    monitor-exit v2
    :try_end_1b
    .catchall {:try_start_1a .. :try_end_1b} :catchall_19

    throw v1
.end method

.method private static sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V
    .registers 11
    .param p0, "handler"    # Landroid/os/Handler;
    .param p1, "msg"    # I
    .param p2, "existingMsgPolicy"    # I
    .param p3, "arg1"    # I
    .param p4, "arg2"    # I
    .param p5, "obj"    # Ljava/lang/Object;
    .param p6, "delayMs"    # I

    .prologue
    .line 973
    if-nez p0, :cond_1c

    .line 974
    const-string v0, "RemoteController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "null event handler, will not deliver message "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 983
    :goto_1b
    return-void

    .line 977
    :cond_1c
    if-nez p2, :cond_2a

    .line 978
    invoke-virtual {p0, p1}, Landroid/os/Handler;->removeMessages(I)V

    .line 982
    :cond_21
    invoke-virtual {p0, p1, p3, p4, p5}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    int-to-long v2, p6

    invoke-virtual {p0, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_1b

    .line 979
    :cond_2a
    const/4 v0, 0x1

    if-ne p2, v0, :cond_21

    invoke-virtual {p0, p1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_21

    goto :goto_1b
.end method

.method private updateController(Landroid/media/session/MediaController;)V
    .registers 16
    .param p1, "controller"    # Landroid/media/session/MediaController;

    .prologue
    .line 1127
    sget-object v13, mInfoLock:Ljava/lang/Object;

    monitor-enter v13

    .line 1128
    if-nez p1, :cond_20

    .line 1129
    :try_start_5
    iget-object v0, p0, mCurrentSession:Landroid/media/session/MediaController;

    if-eqz v0, :cond_1e

    .line 1130
    iget-object v0, p0, mCurrentSession:Landroid/media/session/MediaController;

    iget-object v1, p0, mSessionCb:Landroid/media/session/MediaController$Callback;

    invoke-virtual {v0, v1}, Landroid/media/session/MediaController;->unregisterCallback(Landroid/media/session/MediaController$Callback;)V

    .line 1131
    const/4 v0, 0x0

    iput-object v0, p0, mCurrentSession:Landroid/media/session/MediaController;

    .line 1132
    iget-object v0, p0, mEventHandler:Landroid/media/RemoteController$EventHandler;

    const/4 v1, 0x4

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 1155
    :cond_1e
    :goto_1e
    monitor-exit v13

    .line 1156
    return-void

    .line 1135
    :cond_20
    iget-object v0, p0, mCurrentSession:Landroid/media/session/MediaController;

    if-eqz v0, :cond_34

    invoke-virtual {p1}, Landroid/media/session/MediaController;->getSessionToken()Landroid/media/session/MediaSession$Token;

    move-result-object v0

    iget-object v1, p0, mCurrentSession:Landroid/media/session/MediaController;

    invoke-virtual {v1}, Landroid/media/session/MediaController;->getSessionToken()Landroid/media/session/MediaSession$Token;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/session/MediaSession$Token;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1e

    .line 1138
    :cond_34
    iget-object v0, p0, mCurrentSession:Landroid/media/session/MediaController;

    if-eqz v0, :cond_3f

    .line 1139
    iget-object v0, p0, mCurrentSession:Landroid/media/session/MediaController;

    iget-object v1, p0, mSessionCb:Landroid/media/session/MediaController$Callback;

    invoke-virtual {v0, v1}, Landroid/media/session/MediaController;->unregisterCallback(Landroid/media/session/MediaController$Callback;)V

    .line 1141
    :cond_3f
    iget-object v0, p0, mEventHandler:Landroid/media/RemoteController$EventHandler;

    const/4 v1, 0x4

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 1143
    iput-object p1, p0, mCurrentSession:Landroid/media/session/MediaController;

    .line 1144
    iget-object v0, p0, mCurrentSession:Landroid/media/session/MediaController;

    iget-object v1, p0, mSessionCb:Landroid/media/session/MediaController$Callback;

    iget-object v2, p0, mEventHandler:Landroid/media/RemoteController$EventHandler;

    invoke-virtual {v0, v1, v2}, Landroid/media/session/MediaController;->registerCallback(Landroid/media/session/MediaController$Callback;Landroid/os/Handler;)V

    .line 1146
    invoke-virtual {p1}, Landroid/media/session/MediaController;->getPlaybackState()Landroid/media/session/PlaybackState;

    move-result-object v5

    .line 1147
    .local v5, "state":Landroid/media/session/PlaybackState;
    iget-object v0, p0, mEventHandler:Landroid/media/RemoteController$EventHandler;

    const/4 v1, 0x6

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 1150
    invoke-virtual {p1}, Landroid/media/session/MediaController;->getMetadata()Landroid/media/MediaMetadata;

    move-result-object v11

    .line 1151
    .local v11, "metadata":Landroid/media/MediaMetadata;
    iget-object v6, p0, mEventHandler:Landroid/media/RemoteController$EventHandler;

    const/4 v7, 0x7

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v12, 0x0

    invoke-static/range {v6 .. v12}, sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    goto :goto_1e

    .line 1155
    .end local v5    # "state":Landroid/media/session/PlaybackState;
    .end local v11    # "metadata":Landroid/media/MediaMetadata;
    :catchall_72
    move-exception v0

    monitor-exit v13
    :try_end_74
    .catchall {:try_start_5 .. :try_end_74} :catchall_72

    throw v0
.end method


# virtual methods
.method public clearArtworkConfiguration()Z
    .registers 3

    .prologue
    const/4 v1, -0x1

    .line 535
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v1, v1}, setArtworkConfiguration(ZII)Z

    move-result v0

    return v0
.end method

.method public editMetadata()Landroid/media/RemoteController$MetadataEditor;
    .registers 5

    .prologue
    const/4 v2, 0x1

    .line 585
    new-instance v0, Landroid/media/RemoteController$MetadataEditor;

    invoke-direct {v0, p0}, Landroid/media/RemoteController$MetadataEditor;-><init>(Landroid/media/RemoteController;)V

    .line 586
    .local v0, "editor":Landroid/media/RemoteController$MetadataEditor;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    iput-object v1, v0, Landroid/media/RemoteController$MetadataEditor;->mEditorMetadata:Landroid/os/Bundle;

    .line 587
    const/4 v1, 0x0

    iput-object v1, v0, Landroid/media/RemoteController$MetadataEditor;->mEditorArtwork:Landroid/graphics/Bitmap;

    .line 588
    iput-boolean v2, v0, Landroid/media/RemoteController$MetadataEditor;->mMetadataChanged:Z

    .line 589
    iput-boolean v2, v0, Landroid/media/RemoteController$MetadataEditor;->mArtworkChanged:Z

    .line 590
    const-wide/16 v2, 0x0

    iput-wide v2, v0, Landroid/media/RemoteController$MetadataEditor;->mEditableKeys:J

    .line 591
    return-object v0
.end method

.method getArtworkSize()[I
    .registers 5

    .prologue
    .line 1317
    sget-object v2, mInfoLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1318
    const/4 v1, 0x2

    :try_start_4
    new-array v0, v1, [I

    const/4 v1, 0x0

    iget v3, p0, mArtworkWidth:I

    aput v3, v0, v1

    const/4 v1, 0x1

    iget v3, p0, mArtworkHeight:I

    aput v3, v0, v1

    .line 1319
    .local v0, "size":[I
    monitor-exit v2

    return-object v0

    .line 1320
    .end local v0    # "size":[I
    :catchall_12
    move-exception v1

    monitor-exit v2
    :try_end_14
    .catchall {:try_start_4 .. :try_end_14} :catchall_12

    throw v1
.end method

.method public getEstimatedMediaPosition()J
    .registers 6

    .prologue
    .line 273
    sget-object v4, mInfoLock:Ljava/lang/Object;

    monitor-enter v4

    .line 274
    :try_start_3
    iget-object v1, p0, mCurrentSession:Landroid/media/session/MediaController;

    if-eqz v1, :cond_15

    .line 275
    iget-object v1, p0, mCurrentSession:Landroid/media/session/MediaController;

    invoke-virtual {v1}, Landroid/media/session/MediaController;->getPlaybackState()Landroid/media/session/PlaybackState;

    move-result-object v0

    .line 276
    .local v0, "state":Landroid/media/session/PlaybackState;
    if-eqz v0, :cond_15

    .line 277
    invoke-virtual {v0}, Landroid/media/session/PlaybackState;->getPosition()J

    move-result-wide v2

    monitor-exit v4

    .line 305
    .end local v0    # "state":Landroid/media/session/PlaybackState;
    :goto_14
    return-wide v2

    .line 280
    :cond_15
    monitor-exit v4

    .line 305
    const-wide/16 v2, -0x1

    goto :goto_14

    .line 280
    :catchall_19
    move-exception v1

    monitor-exit v4
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_19

    throw v1
.end method

.method getRcDisplay()Landroid/media/RemoteController$RcDisplay;
    .registers 2

    .prologue
    .line 1308
    iget-object v0, p0, mRcd:Landroid/media/RemoteController$RcDisplay;

    return-object v0
.end method

.method public getRemoteControlClientNowPlayingEntries()V
    .registers 3

    .prologue
    .line 456
    const-string v0, "RemoteController"

    const-string v1, "getRemoteControlClientNowPlayingEntries()"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 457
    iget-boolean v0, p0, mEnabled:Z

    if-nez v0, :cond_13

    .line 458
    const-string v0, "RemoteController"

    const-string v1, "Cannot use getRemoteControlClientNowPlayingEntries() from a disabled RemoteController"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 467
    :goto_12
    return-void

    .line 462
    :cond_13
    sget-object v1, mInfoLock:Ljava/lang/Object;

    monitor-enter v1

    .line 463
    :try_start_16
    iget-object v0, p0, mCurrentSession:Landroid/media/session/MediaController;

    if-eqz v0, :cond_23

    .line 464
    iget-object v0, p0, mCurrentSession:Landroid/media/session/MediaController;

    invoke-virtual {v0}, Landroid/media/session/MediaController;->getTransportControls()Landroid/media/session/MediaController$TransportControls;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/session/MediaController$TransportControls;->getRemoteControlClientNowPlayingEntries()V

    .line 466
    :cond_23
    monitor-exit v1

    goto :goto_12

    :catchall_25
    move-exception v0

    monitor-exit v1
    :try_end_27
    .catchall {:try_start_16 .. :try_end_27} :catchall_25

    throw v0
.end method

.method public getRemoteControlClientPackageName()Ljava/lang/String;
    .registers 3

    .prologue
    .line 245
    sget-object v1, mInfoLock:Ljava/lang/Object;

    monitor-enter v1

    .line 246
    :try_start_3
    iget-object v0, p0, mCurrentSession:Landroid/media/session/MediaController;

    if-eqz v0, :cond_f

    iget-object v0, p0, mCurrentSession:Landroid/media/session/MediaController;

    invoke-virtual {v0}, Landroid/media/session/MediaController;->getPackageName()Ljava/lang/String;

    move-result-object v0

    :goto_d
    monitor-exit v1

    return-object v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_d

    .line 248
    :catchall_11
    move-exception v0

    monitor-exit v1
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_11

    throw v0
.end method

.method getUpdateListener()Landroid/media/RemoteController$OnClientUpdateListener;
    .registers 2

    .prologue
    .line 1329
    iget-object v0, p0, mOnClientUpdateListener:Landroid/media/RemoteController$OnClientUpdateListener;

    return-object v0
.end method

.method public onFolderInfoBrowsedPlayer(Ljava/lang/String;)V
    .registers 5
    .param p1, "stringUri"    # Ljava/lang/String;

    .prologue
    .line 1217
    const-string v1, "RemoteController"

    const-string v2, "RemoteController: onFolderInfoBrowsedPlayer"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1220
    sget-object v2, mInfoLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1221
    :try_start_a
    iget-object v0, p0, mOnClientUpdateListener:Landroid/media/RemoteController$OnClientUpdateListener;

    .line 1222
    .local v0, "l":Landroid/media/RemoteController$OnClientUpdateListener;
    monitor-exit v2
    :try_end_d
    .catchall {:try_start_a .. :try_end_d} :catchall_13

    .line 1224
    if-eqz v0, :cond_12

    .line 1225
    invoke-interface {v0, p1}, Landroid/media/RemoteController$OnClientUpdateListener;->onClientFolderInfoBrowsedPlayer(Ljava/lang/String;)V

    .line 1227
    :cond_12
    return-void

    .line 1222
    .end local v0    # "l":Landroid/media/RemoteController$OnClientUpdateListener;
    :catchall_13
    move-exception v1

    :try_start_14
    monitor-exit v2
    :try_end_15
    .catchall {:try_start_14 .. :try_end_15} :catchall_13

    throw v1
.end method

.method public onNowPlayingContentChange()V
    .registers 4

    .prologue
    .line 1248
    const-string v1, "RemoteController"

    const-string v2, "RemoteController: onNowPlayingContentChange"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1251
    sget-object v2, mInfoLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1252
    :try_start_a
    iget-object v0, p0, mOnClientUpdateListener:Landroid/media/RemoteController$OnClientUpdateListener;

    .line 1253
    .local v0, "l":Landroid/media/RemoteController$OnClientUpdateListener;
    monitor-exit v2
    :try_end_d
    .catchall {:try_start_a .. :try_end_d} :catchall_13

    .line 1255
    if-eqz v0, :cond_12

    .line 1256
    invoke-interface {v0}, Landroid/media/RemoteController$OnClientUpdateListener;->onClientNowPlayingContentChange()V

    .line 1258
    :cond_12
    return-void

    .line 1253
    .end local v0    # "l":Landroid/media/RemoteController$OnClientUpdateListener;
    :catchall_13
    move-exception v1

    :try_start_14
    monitor-exit v2
    :try_end_15
    .catchall {:try_start_14 .. :try_end_15} :catchall_13

    throw v1
.end method

.method public onNowPlayingEntriesUpdate([J)V
    .registers 5
    .param p1, "playList"    # [J

    .prologue
    .line 1233
    const-string v1, "RemoteController"

    const-string v2, "RemoteController: onUpdateNowPlayingEntries"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1236
    sget-object v2, mInfoLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1237
    :try_start_a
    iget-object v0, p0, mOnClientUpdateListener:Landroid/media/RemoteController$OnClientUpdateListener;

    .line 1238
    .local v0, "l":Landroid/media/RemoteController$OnClientUpdateListener;
    monitor-exit v2
    :try_end_d
    .catchall {:try_start_a .. :try_end_d} :catchall_13

    .line 1239
    if-eqz v0, :cond_12

    .line 1240
    invoke-interface {v0, p1}, Landroid/media/RemoteController$OnClientUpdateListener;->onClientUpdateNowPlayingEntries([J)V

    .line 1242
    :cond_12
    return-void

    .line 1238
    .end local v0    # "l":Landroid/media/RemoteController$OnClientUpdateListener;
    :catchall_13
    move-exception v1

    :try_start_14
    monitor-exit v2
    :try_end_15
    .catchall {:try_start_14 .. :try_end_15} :catchall_13

    throw v1
.end method

.method public onSetPlayItemResponse(Z)V
    .registers 5
    .param p1, "success"    # Z

    .prologue
    .line 1264
    const-string v1, "RemoteController"

    const-string v2, "RemoteController: onPlayItemResponse"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1267
    sget-object v2, mInfoLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1268
    :try_start_a
    iget-object v0, p0, mOnClientUpdateListener:Landroid/media/RemoteController$OnClientUpdateListener;

    .line 1269
    .local v0, "l":Landroid/media/RemoteController$OnClientUpdateListener;
    monitor-exit v2
    :try_end_d
    .catchall {:try_start_a .. :try_end_d} :catchall_13

    .line 1271
    if-eqz v0, :cond_12

    .line 1272
    invoke-interface {v0, p1}, Landroid/media/RemoteController$OnClientUpdateListener;->onClientPlayItemResponse(Z)V

    .line 1274
    :cond_12
    return-void

    .line 1269
    .end local v0    # "l":Landroid/media/RemoteController$OnClientUpdateListener;
    :catchall_13
    move-exception v1

    :try_start_14
    monitor-exit v2
    :try_end_15
    .catchall {:try_start_14 .. :try_end_15} :catchall_13

    throw v1
.end method

.method public seekTo(J)Z
    .registers 6
    .param p1, "timeMs"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 390
    const-string v0, "RemoteController"

    const-string/jumbo v1, "seekTo() in RemoteController"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 391
    iget-boolean v0, p0, mEnabled:Z

    if-nez v0, :cond_15

    .line 392
    const-string v0, "RemoteController"

    const-string v1, "Cannot use seekTo() from a disabled RemoteController"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 393
    const/4 v0, 0x0

    .line 403
    :goto_14
    return v0

    .line 395
    :cond_15
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gez v0, :cond_23

    .line 396
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "illegal negative time value"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 398
    :cond_23
    sget-object v1, mInfoLock:Ljava/lang/Object;

    monitor-enter v1

    .line 399
    :try_start_26
    iget-object v0, p0, mCurrentSession:Landroid/media/session/MediaController;

    if-eqz v0, :cond_33

    .line 400
    iget-object v0, p0, mCurrentSession:Landroid/media/session/MediaController;

    invoke-virtual {v0}, Landroid/media/session/MediaController;->getTransportControls()Landroid/media/session/MediaController$TransportControls;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/media/session/MediaController$TransportControls;->seekTo(J)V

    .line 402
    :cond_33
    monitor-exit v1

    .line 403
    const/4 v0, 0x1

    goto :goto_14

    .line 402
    :catchall_36
    move-exception v0

    monitor-exit v1
    :try_end_38
    .catchall {:try_start_26 .. :try_end_38} :catchall_36

    throw v0
.end method

.method public sendCustomAction(Ljava/lang/String;Landroid/os/Bundle;)Z
    .registers 5
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "args"    # Landroid/os/Bundle;

    .prologue
    .line 413
    iget-boolean v0, p0, mEnabled:Z

    if-nez v0, :cond_d

    .line 414
    const-string v0, "RemoteController"

    const-string v1, "Cannot use sendCustomAction() from a disabled RemoteController"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 415
    const/4 v0, 0x0

    .line 422
    :goto_c
    return v0

    .line 417
    :cond_d
    sget-object v1, mInfoLock:Ljava/lang/Object;

    monitor-enter v1

    .line 418
    :try_start_10
    iget-object v0, p0, mCurrentSession:Landroid/media/session/MediaController;

    if-eqz v0, :cond_1d

    .line 419
    iget-object v0, p0, mCurrentSession:Landroid/media/session/MediaController;

    invoke-virtual {v0}, Landroid/media/session/MediaController;->getTransportControls()Landroid/media/session/MediaController$TransportControls;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/media/session/MediaController$TransportControls;->sendCustomAction(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 421
    :cond_1d
    monitor-exit v1

    .line 422
    const/4 v0, 0x1

    goto :goto_c

    .line 421
    :catchall_20
    move-exception v0

    monitor-exit v1
    :try_end_22
    .catchall {:try_start_10 .. :try_end_22} :catchall_20

    throw v0
.end method

.method public sendMediaKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 4
    .param p1, "keyEvent"    # Landroid/view/KeyEvent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 337
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    invoke-static {v0}, Landroid/view/KeyEvent;->isMediaKey(I)Z

    move-result v0

    if-nez v0, :cond_13

    .line 338
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "not a media key event"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 341
    :cond_13
    sget-object v1, mInfoLock:Ljava/lang/Object;

    monitor-enter v1

    .line 342
    :try_start_16
    iget-object v0, p0, mCurrentSession:Landroid/media/session/MediaController;

    if-eqz v0, :cond_22

    .line 343
    iget-object v0, p0, mCurrentSession:Landroid/media/session/MediaController;

    invoke-virtual {v0, p1}, Landroid/media/session/MediaController;->dispatchMediaButtonEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    monitor-exit v1

    .line 345
    :goto_21
    return v0

    :cond_22
    const/4 v0, 0x0

    monitor-exit v1

    goto :goto_21

    .line 346
    :catchall_25
    move-exception v0

    monitor-exit v1
    :try_end_27
    .catchall {:try_start_16 .. :try_end_27} :catchall_25

    throw v0
.end method

.method public setArtworkConfiguration(II)Z
    .registers 4
    .param p1, "width"    # I
    .param p2, "height"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 527
    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1, p2}, setArtworkConfiguration(ZII)Z

    move-result v0

    return v0
.end method

.method public setArtworkConfiguration(ZII)Z
    .registers 7
    .param p1, "wantBitmap"    # Z
    .param p2, "width"    # I
    .param p3, "height"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 500
    sget-object v1, mInfoLock:Ljava/lang/Object;

    monitor-enter v1

    .line 501
    if-eqz p1, :cond_27

    .line 502
    if-lez p2, :cond_1c

    if-lez p3, :cond_1c

    .line 503
    :try_start_9
    iget v0, p0, mMaxBitmapDimension:I

    if-le p2, v0, :cond_f

    iget p2, p0, mMaxBitmapDimension:I

    .line 504
    :cond_f
    iget v0, p0, mMaxBitmapDimension:I

    if-le p3, v0, :cond_15

    iget p3, p0, mMaxBitmapDimension:I

    .line 505
    :cond_15
    iput p2, p0, mArtworkWidth:I

    .line 506
    iput p3, p0, mArtworkHeight:I

    .line 514
    :goto_19
    monitor-exit v1

    .line 515
    const/4 v0, 0x1

    return v0

    .line 508
    :cond_1c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "Invalid dimensions"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 514
    :catchall_24
    move-exception v0

    monitor-exit v1
    :try_end_26
    .catchall {:try_start_9 .. :try_end_26} :catchall_24

    throw v0

    .line 511
    :cond_27
    const/4 v0, -0x1

    :try_start_28
    iput v0, p0, mArtworkWidth:I

    .line 512
    const/4 v0, -0x1

    iput v0, p0, mArtworkHeight:I
    :try_end_2d
    .catchall {:try_start_28 .. :try_end_2d} :catchall_24

    goto :goto_19
.end method

.method setIsRegistered(Z)V
    .registers 4
    .param p1, "registered"    # Z

    .prologue
    .line 1297
    sget-object v1, mInfoLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1298
    :try_start_3
    iput-boolean p1, p0, mIsRegistered:Z

    .line 1299
    monitor-exit v1

    .line 1300
    return-void

    .line 1299
    :catchall_7
    move-exception v0

    monitor-exit v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v0
.end method

.method public setRemoteControlClientBrowsedPlayer()V
    .registers 3

    .prologue
    .line 476
    const-string v0, "RemoteController"

    const-string/jumbo v1, "setRemoteControlClientBrowsedPlayer()"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 477
    iget-boolean v0, p0, mEnabled:Z

    if-nez v0, :cond_14

    .line 478
    const-string v0, "RemoteController"

    const-string v1, "Cannot use setRemoteControlClientBrowsedPlayer() from a disabled RemoteController"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 487
    :goto_13
    return-void

    .line 482
    :cond_14
    sget-object v1, mInfoLock:Ljava/lang/Object;

    monitor-enter v1

    .line 483
    :try_start_17
    iget-object v0, p0, mCurrentSession:Landroid/media/session/MediaController;

    if-eqz v0, :cond_24

    .line 484
    iget-object v0, p0, mCurrentSession:Landroid/media/session/MediaController;

    invoke-virtual {v0}, Landroid/media/session/MediaController;->getTransportControls()Landroid/media/session/MediaController$TransportControls;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/session/MediaController$TransportControls;->setRemoteControlClientBrowsedPlayer()V

    .line 486
    :cond_24
    monitor-exit v1

    goto :goto_13

    :catchall_26
    move-exception v0

    monitor-exit v1
    :try_end_28
    .catchall {:try_start_17 .. :try_end_28} :catchall_26

    throw v0
.end method

.method public setRemoteControlClientPlayItem(JI)V
    .registers 7
    .param p1, "uid"    # J
    .param p3, "scope"    # I

    .prologue
    .line 435
    const-string v0, "RemoteController"

    const-string/jumbo v1, "setRemoteControlClientPlayItem()"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 436
    iget-boolean v0, p0, mEnabled:Z

    if-nez v0, :cond_14

    .line 437
    const-string v0, "RemoteController"

    const-string v1, "Cannot use setRemoteControlClientPlayItem() from a disabled RemoteController"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 446
    :goto_13
    return-void

    .line 441
    :cond_14
    sget-object v1, mInfoLock:Ljava/lang/Object;

    monitor-enter v1

    .line 442
    :try_start_17
    iget-object v0, p0, mCurrentSession:Landroid/media/session/MediaController;

    if-eqz v0, :cond_24

    .line 443
    iget-object v0, p0, mCurrentSession:Landroid/media/session/MediaController;

    invoke-virtual {v0}, Landroid/media/session/MediaController;->getTransportControls()Landroid/media/session/MediaController$TransportControls;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Landroid/media/session/MediaController$TransportControls;->setRemoteControlClientPlayItem(JI)V

    .line 445
    :cond_24
    monitor-exit v1

    goto :goto_13

    :catchall_26
    move-exception v0

    monitor-exit v1
    :try_end_28
    .catchall {:try_start_17 .. :try_end_28} :catchall_26

    throw v0
.end method

.method public setSynchronizationMode(I)Z
    .registers 6
    .param p1, "sync"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 565
    if-eqz p1, :cond_1f

    if-eq p1, v1, :cond_1f

    .line 566
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown synchronization mode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 568
    :cond_1f
    iget-boolean v2, p0, mIsRegistered:Z

    if-nez v2, :cond_2b

    .line 569
    const-string v1, "RemoteController"

    const-string v2, "Cannot set synchronization mode on an unregistered RemoteController"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 574
    :goto_2a
    return v0

    .line 572
    :cond_2b
    iget-object v2, p0, mAudioManager:Landroid/media/AudioManager;

    iget-object v3, p0, mRcd:Landroid/media/RemoteController$RcDisplay;

    if-ne v1, p1, :cond_32

    move v0, v1

    :cond_32
    invoke-virtual {v2, v3, v0}, Landroid/media/AudioManager;->remoteControlDisplayWantsPlaybackPositionSync(Landroid/media/IRemoteControlDisplay;Z)V

    move v0, v1

    .line 574
    goto :goto_2a
.end method

.method startListeningToSessions()V
    .registers 6

    .prologue
    .line 937
    new-instance v1, Landroid/content/ComponentName;

    iget-object v2, p0, mContext:Landroid/content/Context;

    iget-object v3, p0, mOnClientUpdateListener:Landroid/media/RemoteController$OnClientUpdateListener;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 939
    .local v1, "listenerComponent":Landroid/content/ComponentName;
    const/4 v0, 0x0

    .line 940
    .local v0, "handler":Landroid/os/Handler;
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    if-nez v2, :cond_1d

    .line 941
    new-instance v0, Landroid/os/Handler;

    .end local v0    # "handler":Landroid/os/Handler;
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 943
    .restart local v0    # "handler":Landroid/os/Handler;
    :cond_1d
    iget-object v2, p0, mSessionManager:Landroid/media/session/MediaSessionManager;

    iget-object v3, p0, mSessionListener:Landroid/media/session/MediaSessionManager$OnActiveSessionsChangedListener;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    invoke-virtual {v2, v3, v1, v4, v0}, Landroid/media/session/MediaSessionManager;->addOnActiveSessionsChangedListener(Landroid/media/session/MediaSessionManager$OnActiveSessionsChangedListener;Landroid/content/ComponentName;ILandroid/os/Handler;)V

    .line 945
    iget-object v2, p0, mSessionListener:Landroid/media/session/MediaSessionManager$OnActiveSessionsChangedListener;

    iget-object v3, p0, mSessionManager:Landroid/media/session/MediaSessionManager;

    invoke-virtual {v3, v1}, Landroid/media/session/MediaSessionManager;->getActiveSessions(Landroid/content/ComponentName;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v2, v3}, Landroid/media/session/MediaSessionManager$OnActiveSessionsChangedListener;->onActiveSessionsChanged(Ljava/util/List;)V

    .line 951
    return-void
.end method

.method stopListeningToSessions()V
    .registers 3

    .prologue
    .line 957
    iget-object v0, p0, mSessionManager:Landroid/media/session/MediaSessionManager;

    iget-object v1, p0, mSessionListener:Landroid/media/session/MediaSessionManager$OnActiveSessionsChangedListener;

    invoke-virtual {v0, v1}, Landroid/media/session/MediaSessionManager;->removeOnActiveSessionsChangedListener(Landroid/media/session/MediaSessionManager$OnActiveSessionsChangedListener;)V

    .line 962
    return-void
.end method
