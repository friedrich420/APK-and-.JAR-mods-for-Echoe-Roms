.class public Lcom/android/server/notification/ZenModeHelper;
.super Ljava/lang/Object;
.source "ZenModeHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/notification/ZenModeHelper$Callback;,
        Lcom/android/server/notification/ZenModeHelper$SettingsObserver;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = true

.field private static final TAG:Ljava/lang/String; = "ZenModeHelper"


# instance fields
.field private isPreviousVersion:Z

.field private final mAppOps:Landroid/app/AppOpsManager;

.field private mAudioManager:Landroid/media/AudioManager;

.field private final mCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/notification/ZenModeHelper$Callback;",
            ">;"
        }
    .end annotation
.end field

.field private mConfig:Landroid/service/notification/ZenModeConfig;

.field private final mContext:Landroid/content/Context;

.field private final mDefaultConfig:Landroid/service/notification/ZenModeConfig;

.field private mDefaultPhoneApp:Landroid/content/ComponentName;

.field private final mHandler:Landroid/os/Handler;

.field private mPreviousRingerMode:I

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private final mRingerModeChanged:Ljava/lang/Runnable;

.field private final mSettingsObserver:Lcom/android/server/notification/ZenModeHelper$SettingsObserver;

.field private mZenMode:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, mCallbacks:Ljava/util/ArrayList;

    .line 78
    const/4 v1, -0x1

    iput v1, p0, mPreviousRingerMode:I

    .line 80
    const/4 v1, 0x0

    iput-boolean v1, p0, isPreviousVersion:Z

    .line 448
    new-instance v1, Lcom/android/server/notification/ZenModeHelper$1;

    invoke-direct {v1, p0}, Lcom/android/server/notification/ZenModeHelper$1;-><init>(Lcom/android/server/notification/ZenModeHelper;)V

    iput-object v1, p0, mRingerModeChanged:Ljava/lang/Runnable;

    .line 480
    new-instance v1, Lcom/android/server/notification/ZenModeHelper$2;

    invoke-direct {v1, p0}, Lcom/android/server/notification/ZenModeHelper$2;-><init>(Lcom/android/server/notification/ZenModeHelper;)V

    iput-object v1, p0, mReceiver:Landroid/content/BroadcastReceiver;

    .line 83
    iput-object p1, p0, mContext:Landroid/content/Context;

    .line 84
    iput-object p2, p0, mHandler:Landroid/os/Handler;

    .line 85
    const-string v1, "appops"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AppOpsManager;

    iput-object v1, p0, mAppOps:Landroid/app/AppOpsManager;

    .line 86
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1}, readDefaultConfig(Landroid/content/res/Resources;)Landroid/service/notification/ZenModeConfig;

    move-result-object v1

    iput-object v1, p0, mDefaultConfig:Landroid/service/notification/ZenModeConfig;

    .line 87
    iget-object v1, p0, mDefaultConfig:Landroid/service/notification/ZenModeConfig;

    iput-object v1, p0, mConfig:Landroid/service/notification/ZenModeConfig;

    .line 88
    new-instance v1, Lcom/android/server/notification/ZenModeHelper$SettingsObserver;

    iget-object v2, p0, mHandler:Landroid/os/Handler;

    invoke-direct {v1, p0, v2}, Lcom/android/server/notification/ZenModeHelper$SettingsObserver;-><init>(Lcom/android/server/notification/ZenModeHelper;Landroid/os/Handler;)V

    iput-object v1, p0, mSettingsObserver:Lcom/android/server/notification/ZenModeHelper$SettingsObserver;

    .line 89
    iget-object v1, p0, mSettingsObserver:Lcom/android/server/notification/ZenModeHelper$SettingsObserver;

    invoke-virtual {v1}, Lcom/android/server/notification/ZenModeHelper$SettingsObserver;->observe()V

    .line 91
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 92
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.media.RINGER_MODE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 93
    iget-object v1, p0, mContext:Landroid/content/Context;

    iget-object v2, p0, mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 96
    const/4 v1, 0x1

    iput-boolean v1, p0, isPreviousVersion:Z

    .line 97
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/notification/ZenModeHelper;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/notification/ZenModeHelper;

    .prologue
    .line 63
    invoke-direct {p0}, handleRingerModeChanged()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/notification/ZenModeHelper;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/notification/ZenModeHelper;

    .prologue
    .line 63
    iget-object v0, p0, mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/notification/ZenModeHelper;)Ljava/lang/Runnable;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/notification/ZenModeHelper;

    .prologue
    .line 63
    iget-object v0, p0, mRingerModeChanged:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/notification/ZenModeHelper;)Landroid/os/Handler;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/notification/ZenModeHelper;

    .prologue
    .line 63
    iget-object v0, p0, mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private audienceMatches(F)Z
    .registers 6
    .param p1, "contactAffinity"    # F

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 432
    iget-object v2, p0, mConfig:Landroid/service/notification/ZenModeConfig;

    iget v2, v2, Landroid/service/notification/ZenModeConfig;->allowFrom:I

    packed-switch v2, :pswitch_data_4c

    .line 443
    const-string v1, "ZenModeHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Encountered unknown source: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, mConfig:Landroid/service/notification/ZenModeConfig;

    iget v3, v3, Landroid/service/notification/ZenModeConfig;->allowFrom:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 444
    :cond_25
    :goto_25
    return v0

    .line 434
    :pswitch_26
    const-string v1, "ZenModeHelper"

    const-string v2, "audienceMatches - SOURCE_ANYONE "

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_25

    .line 437
    :pswitch_2e
    const-string v2, "ZenModeHelper"

    const-string v3, "audienceMatches - SOURCE_CONTACT "

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 438
    const/high16 v2, 0x3f000000    # 0.5f

    cmpl-float v2, p1, v2

    if-gez v2, :cond_25

    move v0, v1

    goto :goto_25

    .line 440
    :pswitch_3d
    const-string v2, "ZenModeHelper"

    const-string v3, "audienceMatches - SOURCE_STAR "

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 441
    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v2, p1, v2

    if-gez v2, :cond_25

    move v0, v1

    goto :goto_25

    .line 432
    :pswitch_data_4c
    .packed-switch 0x0
        :pswitch_26
        :pswitch_2e
        :pswitch_3d
    .end packed-switch
.end method

.method private dispatchOnConfigChanged()V
    .registers 4

    .prologue
    .line 342
    iget-object v2, p0, mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_16

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/notification/ZenModeHelper$Callback;

    .line 343
    .local v0, "callback":Lcom/android/server/notification/ZenModeHelper$Callback;
    invoke-virtual {v0}, Lcom/android/server/notification/ZenModeHelper$Callback;->onConfigChanged()V

    goto :goto_6

    .line 345
    .end local v0    # "callback":Lcom/android/server/notification/ZenModeHelper$Callback;
    :cond_16
    return-void
.end method

.method private dispatchOnZenModeChanged()V
    .registers 4

    .prologue
    .line 348
    iget-object v2, p0, mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_16

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/notification/ZenModeHelper$Callback;

    .line 349
    .local v0, "callback":Lcom/android/server/notification/ZenModeHelper$Callback;
    invoke-virtual {v0}, Lcom/android/server/notification/ZenModeHelper$Callback;->onZenModeChanged()V

    goto :goto_6

    .line 351
    .end local v0    # "callback":Lcom/android/server/notification/ZenModeHelper$Callback;
    :cond_16
    return-void
.end method

.method private handleRingerModeChanged()V
    .registers 6

    .prologue
    const/4 v4, 0x2

    .line 317
    iget-object v2, p0, mAudioManager:Landroid/media/AudioManager;

    if-eqz v2, :cond_35

    .line 319
    iget-object v2, p0, mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v2}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v1

    .line 320
    .local v1, "ringerMode":I
    const/4 v0, -0x1

    .line 321
    .local v0, "newZen":I
    if-nez v1, :cond_3c

    .line 322
    iget v2, p0, mZenMode:I

    if-nez v2, :cond_36

    iget-object v2, p0, mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x112008d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    if-nez v2, :cond_36

    .line 324
    const/4 v0, 0x1

    .line 333
    :cond_22
    :goto_22
    iget-boolean v2, p0, isPreviousVersion:Z

    if-nez v2, :cond_27

    const/4 v0, -0x1

    .line 334
    :cond_27
    const/4 v2, -0x1

    if-eq v0, v2, :cond_35

    .line 335
    iget v2, p0, mZenMode:I

    invoke-static {v1, v2, v0}, Lcom/android/server/notification/ZenLog;->traceFollowRingerMode(III)V

    .line 336
    const-string/jumbo v2, "ringerMode"

    invoke-virtual {p0, v0, v2}, setZenMode(ILjava/lang/String;)V

    .line 339
    .end local v0    # "newZen":I
    .end local v1    # "ringerMode":I
    :cond_35
    return-void

    .line 325
    .restart local v0    # "newZen":I
    .restart local v1    # "ringerMode":I
    :cond_36
    iget v2, p0, mZenMode:I

    if-eq v2, v4, :cond_22

    .line 326
    const/4 v0, 0x2

    goto :goto_22

    .line 328
    :cond_3c
    if-eq v1, v4, :cond_41

    const/4 v2, 0x1

    if-ne v1, v2, :cond_22

    :cond_41
    iget v2, p0, mZenMode:I

    if-ne v2, v4, :cond_22

    .line 331
    const/4 v0, 0x0

    goto :goto_22
.end method

.method private static isAlarm(Lcom/android/server/notification/NotificationRecord;)Z
    .registers 3
    .param p0, "record"    # Lcom/android/server/notification/NotificationRecord;

    .prologue
    const/4 v1, 0x4

    .line 358
    const-string v0, "alarm"

    invoke-virtual {p0, v0}, Lcom/android/server/notification/NotificationRecord;->isCategory(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_15

    invoke-virtual {p0, v1}, Lcom/android/server/notification/NotificationRecord;->isAudioStream(I)Z

    move-result v0

    if-nez v0, :cond_15

    invoke-virtual {p0, v1}, Lcom/android/server/notification/NotificationRecord;->isAudioAttributesUsage(I)Z

    move-result v0

    if-eqz v0, :cond_17

    :cond_15
    const/4 v0, 0x1

    :goto_16
    return v0

    :cond_17
    const/4 v0, 0x0

    goto :goto_16
.end method

.method private isDefaultMessagingApp(Lcom/android/server/notification/NotificationRecord;)Z
    .registers 6
    .param p1, "record"    # Lcom/android/server/notification/NotificationRecord;

    .prologue
    .line 384
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getUserId()I

    move-result v1

    .line 385
    .local v1, "userId":I
    const/16 v2, -0x2710

    if-eq v1, v2, :cond_b

    const/4 v2, -0x1

    if-ne v1, v2, :cond_d

    :cond_b
    const/4 v2, 0x0

    .line 388
    :goto_c
    return v2

    .line 386
    :cond_d
    iget-object v2, p0, mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "sms_default_application"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 388
    .local v0, "defaultApp":Ljava/lang/String;
    iget-object v2, p1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    goto :goto_c
.end method

.method private isDefaultPhoneApp(Ljava/lang/String;)Z
    .registers 6
    .param p1, "pkg"    # Ljava/lang/String;

    .prologue
    .line 373
    iget-object v1, p0, mDefaultPhoneApp:Landroid/content/ComponentName;

    if-nez v1, :cond_31

    .line 374
    iget-object v1, p0, mContext:Landroid/content/Context;

    const-string/jumbo v2, "telecom"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/TelecomManager;

    .line 376
    .local v0, "telecomm":Landroid/telecom/TelecomManager;
    if-eqz v0, :cond_45

    invoke-virtual {v0}, Landroid/telecom/TelecomManager;->getDefaultPhoneApp()Landroid/content/ComponentName;

    move-result-object v1

    :goto_15
    iput-object v1, p0, mDefaultPhoneApp:Landroid/content/ComponentName;

    .line 377
    const-string v1, "ZenModeHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Default phone app: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, mDefaultPhoneApp:Landroid/content/ComponentName;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 379
    .end local v0    # "telecomm":Landroid/telecom/TelecomManager;
    :cond_31
    if-eqz p1, :cond_47

    iget-object v1, p0, mDefaultPhoneApp:Landroid/content/ComponentName;

    if-eqz v1, :cond_47

    iget-object v1, p0, mDefaultPhoneApp:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_47

    const/4 v1, 0x1

    :goto_44
    return v1

    .line 376
    .restart local v0    # "telecomm":Landroid/telecom/TelecomManager;
    :cond_45
    const/4 v1, 0x0

    goto :goto_15

    .line 379
    .end local v0    # "telecomm":Landroid/telecom/TelecomManager;
    :cond_47
    const/4 v1, 0x0

    goto :goto_44
.end method

.method private static isEvent(Lcom/android/server/notification/NotificationRecord;)Z
    .registers 2
    .param p0, "record"    # Lcom/android/server/notification/NotificationRecord;

    .prologue
    .line 364
    const-string v0, "event"

    invoke-virtual {p0, v0}, Lcom/android/server/notification/NotificationRecord;->isCategory(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private isMessage(Lcom/android/server/notification/NotificationRecord;)Z
    .registers 3
    .param p1, "record"    # Lcom/android/server/notification/NotificationRecord;

    .prologue
    .line 392
    const-string v0, "msg"

    invoke-virtual {p1, v0}, Lcom/android/server/notification/NotificationRecord;->isCategory(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_e

    invoke-direct {p0, p1}, isDefaultMessagingApp(Lcom/android/server/notification/NotificationRecord;)Z

    move-result v0

    if-eqz v0, :cond_10

    :cond_e
    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method private static isSystem(Lcom/android/server/notification/NotificationRecord;)Z
    .registers 2
    .param p0, "record"    # Lcom/android/server/notification/NotificationRecord;

    .prologue
    .line 354
    const-string/jumbo v0, "sys"

    invoke-virtual {p0, v0}, Lcom/android/server/notification/NotificationRecord;->isCategory(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static readDefaultConfig(Landroid/content/res/Resources;)Landroid/service/notification/ZenModeConfig;
    .registers 6
    .param p0, "resources"    # Landroid/content/res/Resources;

    .prologue
    .line 100
    const/4 v2, 0x0

    .line 102
    .local v2, "parser":Landroid/content/res/XmlResourceParser;
    const v3, 0x1110004

    :try_start_4
    invoke-virtual {p0, v3}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v2

    .line 103
    :cond_8
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_19

    .line 104
    invoke-static {v2}, Landroid/service/notification/ZenModeConfig;->readXml(Lorg/xmlpull/v1/XmlPullParser;)Landroid/service/notification/ZenModeConfig;
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_12} :catch_22
    .catchall {:try_start_4 .. :try_end_12} :catchall_2e

    move-result-object v0

    .line 105
    .local v0, "config":Landroid/service/notification/ZenModeConfig;
    if-eqz v0, :cond_8

    .line 110
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 112
    .end local v0    # "config":Landroid/service/notification/ZenModeConfig;
    :goto_18
    return-object v0

    .line 110
    :cond_19
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 112
    :goto_1c
    new-instance v0, Landroid/service/notification/ZenModeConfig;

    invoke-direct {v0}, Landroid/service/notification/ZenModeConfig;-><init>()V

    goto :goto_18

    .line 107
    :catch_22
    move-exception v1

    .line 108
    .local v1, "e":Ljava/lang/Exception;
    :try_start_23
    const-string v3, "ZenModeHelper"

    const-string v4, "Error reading default zen mode config from resource"

    invoke-static {v3, v4, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2a
    .catchall {:try_start_23 .. :try_end_2a} :catchall_2e

    .line 110
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    goto :goto_1c

    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_2e
    move-exception v3

    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v3
.end method

.method private shouldInterceptAudience(Lcom/android/server/notification/NotificationRecord;)Z
    .registers 3
    .param p1, "record"    # Lcom/android/server/notification/NotificationRecord;

    .prologue
    .line 209
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getContactAffinity()F

    move-result v0

    invoke-direct {p0, v0}, audienceMatches(F)Z

    move-result v0

    if-nez v0, :cond_11

    .line 210
    const-string v0, "!audienceMatches"

    invoke-static {p1, v0}, Lcom/android/server/notification/ZenLog;->traceIntercepted(Lcom/android/server/notification/NotificationRecord;Ljava/lang/String;)V

    .line 211
    const/4 v0, 0x1

    .line 213
    :goto_10
    return v0

    :cond_11
    const/4 v0, 0x0

    goto :goto_10
.end method

.method private static zenModeFromListenerInterruptionFilter(II)I
    .registers 2
    .param p0, "listenerInterruptionFilter"    # I
    .param p1, "defValue"    # I

    .prologue
    .line 138
    packed-switch p0, :pswitch_data_a

    .line 146
    .end local p1    # "defValue":I
    :goto_3
    return p1

    .line 140
    .restart local p1    # "defValue":I
    :pswitch_4
    const/4 p1, 0x0

    goto :goto_3

    .line 142
    :pswitch_6
    const/4 p1, 0x1

    goto :goto_3

    .line 144
    :pswitch_8
    const/4 p1, 0x2

    goto :goto_3

    .line 138
    :pswitch_data_a
    .packed-switch 0x1
        :pswitch_4
        :pswitch_6
        :pswitch_8
    .end packed-switch
.end method


# virtual methods
.method public addCallback(Lcom/android/server/notification/ZenModeHelper$Callback;)V
    .registers 3
    .param p1, "callback"    # Lcom/android/server/notification/ZenModeHelper$Callback;

    .prologue
    .line 116
    iget-object v0, p0, mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 117
    return-void
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 4
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;

    .prologue
    .line 281
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mZenMode="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 282
    iget v0, p0, mZenMode:I

    invoke-static {v0}, Landroid/provider/Settings$Global;->zenModeToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 283
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mConfig="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, mConfig:Landroid/service/notification/ZenModeConfig;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 284
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mDefaultConfig="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, mDefaultConfig:Landroid/service/notification/ZenModeConfig;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 285
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mPreviousRingerMode="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, mPreviousRingerMode:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 286
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mDefaultPhoneApp="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, mDefaultPhoneApp:Landroid/content/ComponentName;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 287
    return-void
.end method

.method public getConfig()Landroid/service/notification/ZenModeConfig;
    .registers 2

    .prologue
    .line 301
    iget-object v0, p0, mConfig:Landroid/service/notification/ZenModeConfig;

    return-object v0
.end method

.method public getZenMode()I
    .registers 2

    .prologue
    .line 217
    iget v0, p0, mZenMode:I

    return v0
.end method

.method public getZenModeListenerInterruptionFilter()I
    .registers 2

    .prologue
    .line 124
    iget v0, p0, mZenMode:I

    packed-switch v0, :pswitch_data_e

    .line 132
    const/4 v0, 0x0

    :goto_6
    return v0

    .line 126
    :pswitch_7
    const/4 v0, 0x1

    goto :goto_6

    .line 128
    :pswitch_9
    const/4 v0, 0x2

    goto :goto_6

    .line 130
    :pswitch_b
    const/4 v0, 0x3

    goto :goto_6

    .line 124
    nop

    :pswitch_data_e
    .packed-switch 0x0
        :pswitch_7
        :pswitch_9
        :pswitch_b
    .end packed-switch
.end method

.method public isCall(Lcom/android/server/notification/NotificationRecord;)Z
    .registers 3
    .param p1, "record"    # Lcom/android/server/notification/NotificationRecord;

    .prologue
    .line 368
    if-eqz p1, :cond_18

    iget-object v0, p1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, isDefaultPhoneApp(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_16

    const-string v0, "call"

    invoke-virtual {p1, v0}, Lcom/android/server/notification/NotificationRecord;->isCategory(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_18

    :cond_16
    const/4 v0, 0x1

    :goto_17
    return v0

    :cond_18
    const/4 v0, 0x0

    goto :goto_17
.end method

.method public matchesCallFilter(Landroid/os/UserHandle;Landroid/os/Bundle;Lcom/android/server/notification/ValidateNotificationPeople;IF)Z
    .registers 11
    .param p1, "userHandle"    # Landroid/os/UserHandle;
    .param p2, "extras"    # Landroid/os/Bundle;
    .param p3, "validator"    # Lcom/android/server/notification/ValidateNotificationPeople;
    .param p4, "contactsTimeoutMs"    # I
    .param p5, "timeoutAffinity"    # F

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 403
    iget v1, p0, mZenMode:I

    .line 404
    .local v1, "zen":I
    const/4 v4, 0x2

    if-ne v1, v4, :cond_8

    .line 413
    :cond_7
    :goto_7
    return v2

    .line 405
    :cond_8
    if-ne v1, v3, :cond_1b

    .line 406
    iget-object v4, p0, mConfig:Landroid/service/notification/ZenModeConfig;

    iget-boolean v4, v4, Landroid/service/notification/ZenModeConfig;->allowCalls:Z

    if-eqz v4, :cond_7

    .line 407
    if-eqz p3, :cond_1b

    .line 408
    invoke-virtual {p3, p1, p2, p4, p5}, Lcom/android/server/notification/ValidateNotificationPeople;->getContactAffinity(Landroid/os/UserHandle;Landroid/os/Bundle;IF)F

    move-result v0

    .line 410
    .local v0, "contactAffinity":F
    invoke-direct {p0, v0}, audienceMatches(F)Z

    move-result v2

    goto :goto_7

    .end local v0    # "contactAffinity":F
    :cond_1b
    move v2, v3

    .line 413
    goto :goto_7
.end method

.method public matchesMessageFilter(Landroid/os/UserHandle;Landroid/os/Bundle;Lcom/android/server/notification/ValidateNotificationPeople;IF)Z
    .registers 11
    .param p1, "userHandle"    # Landroid/os/UserHandle;
    .param p2, "extras"    # Landroid/os/Bundle;
    .param p3, "validator"    # Lcom/android/server/notification/ValidateNotificationPeople;
    .param p4, "contactsTimeoutMs"    # I
    .param p5, "timeoutAffinity"    # F

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 418
    iget v1, p0, mZenMode:I

    .line 419
    .local v1, "zen":I
    const/4 v4, 0x2

    if-ne v1, v4, :cond_8

    .line 428
    :cond_7
    :goto_7
    return v2

    .line 420
    :cond_8
    if-ne v1, v3, :cond_1b

    .line 421
    iget-object v4, p0, mConfig:Landroid/service/notification/ZenModeConfig;

    iget-boolean v4, v4, Landroid/service/notification/ZenModeConfig;->allowMessages:Z

    if-eqz v4, :cond_7

    .line 422
    if-eqz p3, :cond_1b

    .line 423
    invoke-virtual {p3, p1, p2, p4, p5}, Lcom/android/server/notification/ValidateNotificationPeople;->getContactAffinity(Landroid/os/UserHandle;Landroid/os/Bundle;IF)F

    move-result v0

    .line 425
    .local v0, "contactAffinity":F
    invoke-direct {p0, v0}, audienceMatches(F)Z

    move-result v2

    goto :goto_7

    .end local v0    # "contactAffinity":F
    :cond_1b
    move v2, v3

    .line 428
    goto :goto_7
.end method

.method public readXml(Lorg/xmlpull/v1/XmlPullParser;)V
    .registers 3
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 290
    invoke-static {p1}, Landroid/service/notification/ZenModeConfig;->readXml(Lorg/xmlpull/v1/XmlPullParser;)Landroid/service/notification/ZenModeConfig;

    move-result-object v0

    .line 291
    .local v0, "config":Landroid/service/notification/ZenModeConfig;
    if-eqz v0, :cond_9

    .line 292
    invoke-virtual {p0, v0}, setConfig(Landroid/service/notification/ZenModeConfig;)Z

    .line 294
    :cond_9
    return-void
.end method

.method public requestFromListener(I)V
    .registers 4
    .param p1, "interruptionFilter"    # I

    .prologue
    const/4 v1, -0x1

    .line 151
    invoke-static {p1, v1}, zenModeFromListenerInterruptionFilter(II)I

    move-result v0

    .line 152
    .local v0, "newZen":I
    if-eq v0, v1, :cond_c

    .line 153
    const-string v1, "listener"

    invoke-virtual {p0, v0, v1}, setZenMode(ILjava/lang/String;)V

    .line 155
    :cond_c
    return-void
.end method

.method public setAudioManager(Landroid/media/AudioManager;)V
    .registers 2
    .param p1, "audioManager"    # Landroid/media/AudioManager;

    .prologue
    .line 120
    iput-object p1, p0, mAudioManager:Landroid/media/AudioManager;

    .line 121
    return-void
.end method

.method public setConfig(Landroid/service/notification/ZenModeConfig;)Z
    .registers 6
    .param p1, "config"    # Landroid/service/notification/ZenModeConfig;

    .prologue
    const/4 v1, 0x1

    .line 305
    if-eqz p1, :cond_9

    invoke-virtual {p1}, Landroid/service/notification/ZenModeConfig;->isValid()Z

    move-result v2

    if-nez v2, :cond_b

    :cond_9
    const/4 v1, 0x0

    .line 313
    :cond_a
    :goto_a
    return v1

    .line 306
    :cond_b
    iget-object v2, p0, mConfig:Landroid/service/notification/ZenModeConfig;

    invoke-virtual {p1, v2}, Landroid/service/notification/ZenModeConfig;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    .line 307
    iget-object v2, p0, mConfig:Landroid/service/notification/ZenModeConfig;

    invoke-static {v2, p1}, Lcom/android/server/notification/ZenLog;->traceConfig(Landroid/service/notification/ZenModeConfig;Landroid/service/notification/ZenModeConfig;)V

    .line 308
    iput-object p1, p0, mConfig:Landroid/service/notification/ZenModeConfig;

    .line 309
    invoke-direct {p0}, dispatchOnConfigChanged()V

    .line 310
    iget-object v2, p0, mConfig:Landroid/service/notification/ZenModeConfig;

    invoke-virtual {v2}, Landroid/service/notification/ZenModeConfig;->hashCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 311
    .local v0, "val":Ljava/lang/String;
    iget-object v2, p0, mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "zen_mode_config_etag"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 312
    invoke-virtual {p0}, updateZenMode()V

    goto :goto_a
.end method

.method public setZenMode(ILjava/lang/String;)V
    .registers 5
    .param p1, "zenModeValue"    # I
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .line 221
    invoke-static {p1, p2}, Lcom/android/server/notification/ZenLog;->traceSetZenMode(ILjava/lang/String;)V

    .line 222
    iget-object v0, p0, mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "zen_mode"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 223
    return-void
.end method

.method public shouldIntercept(Lcom/android/server/notification/NotificationRecord;)Z
    .registers 6
    .param p1, "record"    # Lcom/android/server/notification/NotificationRecord;

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 158
    invoke-static {p1}, isSystem(Lcom/android/server/notification/NotificationRecord;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 204
    :cond_8
    :goto_8
    return v0

    .line 161
    :cond_9
    iget v2, p0, mZenMode:I

    packed-switch v2, :pswitch_data_8a

    goto :goto_8

    .line 167
    :pswitch_f
    invoke-static {p1}, isAlarm(Lcom/android/server/notification/NotificationRecord;)Z

    move-result v2

    if-eqz v2, :cond_22

    .line 168
    const-string v1, "isAlarm"

    invoke-static {p1, v1}, Lcom/android/server/notification/ZenLog;->traceIntercepted(Lcom/android/server/notification/NotificationRecord;Ljava/lang/String;)V

    goto :goto_8

    .line 164
    :pswitch_1b
    const-string v0, "none"

    invoke-static {p1, v0}, Lcom/android/server/notification/ZenLog;->traceIntercepted(Lcom/android/server/notification/NotificationRecord;Ljava/lang/String;)V

    move v0, v1

    .line 165
    goto :goto_8

    .line 173
    :cond_22
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getPackagePriority()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_30

    .line 174
    const-string/jumbo v1, "priorityApp"

    invoke-static {p1, v1}, Lcom/android/server/notification/ZenLog;->traceNotIntercepted(Lcom/android/server/notification/NotificationRecord;Ljava/lang/String;)V

    goto :goto_8

    .line 177
    :cond_30
    invoke-virtual {p0, p1}, isCall(Lcom/android/server/notification/NotificationRecord;)Z

    move-result v2

    if-eqz v2, :cond_4d

    .line 178
    const-string v0, "isCall"

    invoke-static {p1, v0}, Lcom/android/server/notification/ZenLog;->traceIntercepted(Lcom/android/server/notification/NotificationRecord;Ljava/lang/String;)V

    .line 179
    iget-object v0, p0, mConfig:Landroid/service/notification/ZenModeConfig;

    iget-boolean v0, v0, Landroid/service/notification/ZenModeConfig;->allowCalls:Z

    if-nez v0, :cond_48

    .line 180
    const-string v0, "!allowCalls"

    invoke-static {p1, v0}, Lcom/android/server/notification/ZenLog;->traceIntercepted(Lcom/android/server/notification/NotificationRecord;Ljava/lang/String;)V

    move v0, v1

    .line 181
    goto :goto_8

    .line 183
    :cond_48
    invoke-direct {p0, p1}, shouldInterceptAudience(Lcom/android/server/notification/NotificationRecord;)Z

    move-result v0

    goto :goto_8

    .line 185
    :cond_4d
    invoke-direct {p0, p1}, isMessage(Lcom/android/server/notification/NotificationRecord;)Z

    move-result v2

    if-eqz v2, :cond_6a

    .line 186
    const-string v0, "isMessage"

    invoke-static {p1, v0}, Lcom/android/server/notification/ZenLog;->traceIntercepted(Lcom/android/server/notification/NotificationRecord;Ljava/lang/String;)V

    .line 187
    iget-object v0, p0, mConfig:Landroid/service/notification/ZenModeConfig;

    iget-boolean v0, v0, Landroid/service/notification/ZenModeConfig;->allowMessages:Z

    if-nez v0, :cond_65

    .line 188
    const-string v0, "!allowMessages"

    invoke-static {p1, v0}, Lcom/android/server/notification/ZenLog;->traceIntercepted(Lcom/android/server/notification/NotificationRecord;Ljava/lang/String;)V

    move v0, v1

    .line 189
    goto :goto_8

    .line 191
    :cond_65
    invoke-direct {p0, p1}, shouldInterceptAudience(Lcom/android/server/notification/NotificationRecord;)Z

    move-result v0

    goto :goto_8

    .line 193
    :cond_6a
    invoke-static {p1}, isEvent(Lcom/android/server/notification/NotificationRecord;)Z

    move-result v2

    if-eqz v2, :cond_82

    .line 194
    const-string v2, "isEvent"

    invoke-static {p1, v2}, Lcom/android/server/notification/ZenLog;->traceIntercepted(Lcom/android/server/notification/NotificationRecord;Ljava/lang/String;)V

    .line 195
    iget-object v2, p0, mConfig:Landroid/service/notification/ZenModeConfig;

    iget-boolean v2, v2, Landroid/service/notification/ZenModeConfig;->allowEvents:Z

    if-nez v2, :cond_8

    .line 196
    const-string v0, "!allowEvents"

    invoke-static {p1, v0}, Lcom/android/server/notification/ZenLog;->traceIntercepted(Lcom/android/server/notification/NotificationRecord;Ljava/lang/String;)V

    move v0, v1

    .line 197
    goto :goto_8

    .line 201
    :cond_82
    const-string v0, "!priority"

    invoke-static {p1, v0}, Lcom/android/server/notification/ZenLog;->traceIntercepted(Lcom/android/server/notification/NotificationRecord;Ljava/lang/String;)V

    move v0, v1

    .line 202
    goto :goto_8

    .line 161
    nop

    :pswitch_data_8a
    .packed-switch 0x1
        :pswitch_f
        :pswitch_1b
    .end packed-switch
.end method

.method public updateZenMode()V
    .registers 12

    .prologue
    .line 226
    iget-object v7, p0, mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string/jumbo v8, "zen_mode"

    const/4 v9, 0x0

    invoke-static {v7, v8, v9}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 228
    .local v2, "mode":I
    iget v7, p0, mZenMode:I

    if-eq v2, v7, :cond_17

    .line 229
    iget v7, p0, mZenMode:I

    invoke-static {v7, v2}, Lcom/android/server/notification/ZenLog;->traceUpdateZenMode(II)V

    .line 231
    :cond_17
    iput v2, p0, mZenMode:I

    .line 232
    iget v7, p0, mZenMode:I

    if-eqz v7, :cond_84

    const/4 v6, 0x1

    .line 233
    .local v6, "zen":Z
    :goto_1e
    const/4 v0, 0x0

    .line 236
    .local v0, "exceptionPackages":[Ljava/lang/String;
    if-eqz v6, :cond_86

    iget-object v7, p0, mConfig:Landroid/service/notification/ZenModeConfig;

    iget-boolean v7, v7, Landroid/service/notification/ZenModeConfig;->allowCalls:Z

    if-nez v7, :cond_86

    const/4 v4, 0x1

    .line 237
    .local v4, "muteCalls":Z
    :goto_28
    iget-object v8, p0, mAppOps:Landroid/app/AppOpsManager;

    const/4 v9, 0x3

    const/4 v10, 0x6

    if-eqz v4, :cond_88

    const/4 v7, 0x1

    :goto_2f
    invoke-virtual {v8, v9, v10, v7, v0}, Landroid/app/AppOpsManager;->setRestriction(III[Ljava/lang/String;)V

    .line 240
    iget-object v8, p0, mAppOps:Landroid/app/AppOpsManager;

    const/16 v9, 0x1c

    const/4 v10, 0x6

    if-eqz v4, :cond_8a

    const/4 v7, 0x1

    :goto_3a
    invoke-virtual {v8, v9, v10, v7, v0}, Landroid/app/AppOpsManager;->setRestriction(III[Ljava/lang/String;)V

    .line 245
    iget v7, p0, mZenMode:I

    const/4 v8, 0x2

    if-ne v7, v8, :cond_8c

    const/4 v3, 0x1

    .line 246
    .local v3, "muteAlarms":Z
    :goto_43
    iget-object v8, p0, mAppOps:Landroid/app/AppOpsManager;

    const/4 v9, 0x3

    const/4 v10, 0x4

    if-eqz v3, :cond_8e

    const/4 v7, 0x1

    :goto_4a
    invoke-virtual {v8, v9, v10, v7, v0}, Landroid/app/AppOpsManager;->setRestriction(III[Ljava/lang/String;)V

    .line 249
    iget-object v8, p0, mAppOps:Landroid/app/AppOpsManager;

    const/16 v9, 0x1c

    const/4 v10, 0x4

    if-eqz v3, :cond_90

    const/4 v7, 0x1

    :goto_55
    invoke-virtual {v8, v9, v10, v7, v0}, Landroid/app/AppOpsManager;->setRestriction(III[Ljava/lang/String;)V

    .line 254
    iget-object v7, p0, mAudioManager:Landroid/media/AudioManager;

    if-eqz v7, :cond_80

    .line 255
    iget-object v7, p0, mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v7}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v5

    .line 256
    .local v5, "ringerMode":I
    const/4 v1, -0x1

    .line 257
    .local v1, "forcedRingerMode":I
    iget v7, p0, mZenMode:I

    const/4 v8, 0x2

    if-ne v7, v8, :cond_92

    .line 258
    if-eqz v5, :cond_74

    .line 259
    iput v5, p0, mPreviousRingerMode:I

    .line 260
    const-string v7, "ZenModeHelper"

    const-string v8, "Silencing ringer"

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    const/4 v1, 0x0

    .line 272
    :cond_74
    :goto_74
    const/4 v7, -0x1

    if-eq v1, v7, :cond_80

    .line 273
    iget-object v7, p0, mAudioManager:Landroid/media/AudioManager;

    const/4 v8, 0x0

    invoke-virtual {v7, v1, v8}, Landroid/media/AudioManager;->setRingerMode(IZ)V

    .line 274
    invoke-static {v1}, Lcom/android/server/notification/ZenLog;->traceSetRingerMode(I)V

    .line 277
    .end local v1    # "forcedRingerMode":I
    .end local v5    # "ringerMode":I
    :cond_80
    invoke-direct {p0}, dispatchOnZenModeChanged()V

    .line 278
    return-void

    .line 232
    .end local v0    # "exceptionPackages":[Ljava/lang/String;
    .end local v3    # "muteAlarms":Z
    .end local v4    # "muteCalls":Z
    .end local v6    # "zen":Z
    :cond_84
    const/4 v6, 0x0

    goto :goto_1e

    .line 236
    .restart local v0    # "exceptionPackages":[Ljava/lang/String;
    .restart local v6    # "zen":Z
    :cond_86
    const/4 v4, 0x0

    goto :goto_28

    .line 237
    .restart local v4    # "muteCalls":Z
    :cond_88
    const/4 v7, 0x0

    goto :goto_2f

    .line 240
    :cond_8a
    const/4 v7, 0x0

    goto :goto_3a

    .line 245
    :cond_8c
    const/4 v3, 0x0

    goto :goto_43

    .line 246
    .restart local v3    # "muteAlarms":Z
    :cond_8e
    const/4 v7, 0x0

    goto :goto_4a

    .line 249
    :cond_90
    const/4 v7, 0x0

    goto :goto_55

    .line 264
    .restart local v1    # "forcedRingerMode":I
    .restart local v5    # "ringerMode":I
    :cond_92
    if-nez v5, :cond_a5

    .line 265
    const-string v7, "ZenModeHelper"

    const-string v8, "Unsilencing ringer"

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    iget v7, p0, mPreviousRingerMode:I

    const/4 v8, -0x1

    if-eq v7, v8, :cond_ab

    iget v1, p0, mPreviousRingerMode:I

    .line 268
    :goto_a2
    const/4 v7, -0x1

    iput v7, p0, mPreviousRingerMode:I

    .line 270
    :cond_a5
    iget-boolean v7, p0, isPreviousVersion:Z

    if-nez v7, :cond_74

    const/4 v1, -0x1

    goto :goto_74

    .line 266
    :cond_ab
    const/4 v1, 0x2

    goto :goto_a2
.end method

.method public writeXml(Lorg/xmlpull/v1/XmlSerializer;)V
    .registers 3
    .param p1, "out"    # Lorg/xmlpull/v1/XmlSerializer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 297
    iget-object v0, p0, mConfig:Landroid/service/notification/ZenModeConfig;

    invoke-virtual {v0, p1}, Landroid/service/notification/ZenModeConfig;->writeXml(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 298
    return-void
.end method
