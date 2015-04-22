.class final Lcom/android/server/cover/LedCoverController;
.super Ljava/lang/Object;
.source "LedCoverController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/cover/LedCoverController$LedCoverControllerHandler;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = true

.field private static final MSG_LED_OFF_BY_SELF:I = 0x2

.field private static final MSG_SEND_LED_DATA:I = 0x0

.field private static final MSG_UPDATE_COVER_ATTACH_STATE:I = 0x1

.field private static final SAFE_DEBUG:Z = true

.field private static final TAG:Ljava/lang/String; = "CoverManager.LedCoverController"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mCoverColor:I

.field private final mHandler:Lcom/android/server/cover/LedCoverController$LedCoverControllerHandler;

.field private mIsLedCoverAttached:Z

.field private mIsLedCoverPowered:Z

.field private mIsLedOn:Z

.field private mLedCoverPowerPath:Ljava/lang/String;

.field private mLedCoverUARTPath:Ljava/lang/String;

.field private mLedOnOffWakeLock:Landroid/os/PowerManager$WakeLock;

.field private final mPowerManager:Landroid/os/PowerManager;

.field private mRunnable:Ljava/lang/Runnable;

.field private mSendLedDataWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mSerialManager:Landroid/hardware/SerialManager;

.field private mUpdateAttachStateWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method constructor <init>(Landroid/os/Looper;Landroid/content/Context;)V
    .registers 7
    .param p1, "looper"    # Landroid/os/Looper;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-boolean v2, p0, mIsLedCoverPowered:Z

    .line 61
    iput-boolean v2, p0, mIsLedCoverAttached:Z

    .line 62
    iput-boolean v2, p0, mIsLedOn:Z

    .line 64
    iput v2, p0, mCoverColor:I

    .line 194
    new-instance v0, Lcom/android/server/cover/LedCoverController$1;

    invoke-direct {v0, p0}, Lcom/android/server/cover/LedCoverController$1;-><init>(Lcom/android/server/cover/LedCoverController;)V

    iput-object v0, p0, mRunnable:Ljava/lang/Runnable;

    .line 73
    iput-object p2, p0, mContext:Landroid/content/Context;

    .line 75
    const-string/jumbo v0, "power"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, mPowerManager:Landroid/os/PowerManager;

    .line 76
    new-instance v0, Lcom/android/server/cover/LedCoverController$LedCoverControllerHandler;

    invoke-direct {v0, p0, p1}, Lcom/android/server/cover/LedCoverController$LedCoverControllerHandler;-><init>(Lcom/android/server/cover/LedCoverController;Landroid/os/Looper;)V

    iput-object v0, p0, mHandler:Lcom/android/server/cover/LedCoverController$LedCoverControllerHandler;

    .line 77
    iget-object v0, p0, mPowerManager:Landroid/os/PowerManager;

    const-string/jumbo v1, "send leddata"

    invoke-virtual {v0, v3, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, mSendLedDataWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 79
    iget-object v0, p0, mSendLedDataWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0, v2}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 80
    iget-object v0, p0, mPowerManager:Landroid/os/PowerManager;

    const-string/jumbo v1, "powercontrol ledcover"

    invoke-virtual {v0, v3, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, mUpdateAttachStateWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 82
    iget-object v0, p0, mUpdateAttachStateWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0, v2}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 83
    iget-object v0, p0, mPowerManager:Landroid/os/PowerManager;

    const-string v1, "onoff ledcover"

    invoke-virtual {v0, v3, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, mLedOnOffWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 85
    iget-object v0, p0, mLedOnOffWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0, v2}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 87
    iget-object v0, p0, mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, initializeCoverControlPath(Landroid/content/Context;)V

    .line 88
    return-void
.end method

.method static synthetic access$002(Lcom/android/server/cover/LedCoverController;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/cover/LedCoverController;
    .param p1, "x1"    # Z

    .prologue
    .line 44
    iput-boolean p1, p0, mIsLedOn:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/server/cover/LedCoverController;I[B)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/cover/LedCoverController;
    .param p1, "x1"    # I
    .param p2, "x2"    # [B

    .prologue
    .line 44
    invoke-direct {p0, p1, p2}, handleSendDataToLedCover(I[B)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/cover/LedCoverController;Z)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/cover/LedCoverController;
    .param p1, "x1"    # Z

    .prologue
    .line 44
    invoke-direct {p0, p1}, handleUpdateLedCoverAttachState(Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/cover/LedCoverController;)Landroid/os/PowerManager$WakeLock;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/cover/LedCoverController;

    .prologue
    .line 44
    iget-object v0, p0, mLedOnOffWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/cover/LedCoverController;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/cover/LedCoverController;

    .prologue
    .line 44
    iget v0, p0, mCoverColor:I

    return v0
.end method

.method private declared-synchronized getSerialManager(Landroid/content/Context;)Landroid/hardware/SerialManager;
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 132
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, mSerialManager:Landroid/hardware/SerialManager;

    if-nez v0, :cond_1c

    .line 133
    const-string/jumbo v0, "serial"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SerialManager;

    iput-object v0, p0, mSerialManager:Landroid/hardware/SerialManager;

    .line 134
    iget-object v0, p0, mSerialManager:Landroid/hardware/SerialManager;

    if-nez v0, :cond_1c

    .line 135
    const-string v0, "CoverManager.LedCoverController"

    const-string/jumbo v1, "warning: no Serial Manager"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    :cond_1c
    iget-object v0, p0, mSerialManager:Landroid/hardware/SerialManager;
    :try_end_1e
    .catchall {:try_start_1 .. :try_end_1e} :catchall_20

    monitor-exit p0

    return-object v0

    .line 132
    :catchall_20
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private handleSendDataToLedCover(I[B)V
    .registers 10
    .param p1, "command"    # I
    .param p2, "data"    # [B

    .prologue
    const/4 v6, 0x0

    .line 363
    array-length v3, p2

    add-int/lit8 v2, v3, 0x5

    .line 364
    .local v2, "size":I
    const-string v3, "CoverManager.LedCoverController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleSendDataToLedCover : command : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ". data : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ". size = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    new-array v1, v2, [B

    .line 367
    .local v1, "genData":[B
    const/16 v3, 0x10

    aput-byte v3, v1, v6

    .line 368
    const/4 v3, 0x1

    int-to-byte v4, v2

    aput-byte v4, v1, v3

    .line 369
    const/4 v3, 0x2

    int-to-byte v4, p1

    aput-byte v4, v1, v3

    .line 370
    const/4 v3, 0x3

    add-int/lit8 v4, v2, -0x5

    invoke-static {p2, v6, v1, v3, v4}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 371
    add-int/lit8 v3, v2, -0x1

    add-int/lit8 v4, v2, -0x2

    const/4 v5, -0x1

    aput-byte v5, v1, v4

    aput-byte v5, v1, v3

    .line 374
    :try_start_4d
    iget-object v3, p0, mLedCoverUARTPath:Ljava/lang/String;

    invoke-direct {p0, v3, v1}, writeDataViaSerial(Ljava/lang/String;[B)Z

    move-result v3

    if-eqz v3, :cond_6b

    .line 375
    const-string v3, "CoverManager.LedCoverController"

    const-string/jumbo v4, "sendData success"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5d
    .catch Ljava/io/FileNotFoundException; {:try_start_4d .. :try_end_5d} :catch_74

    .line 382
    :goto_5d
    iget-object v3, p0, mSendLedDataWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v3

    if-eqz v3, :cond_6a

    .line 383
    iget-object v3, p0, mSendLedDataWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 385
    :cond_6a
    return-void

    .line 377
    :cond_6b
    :try_start_6b
    const-string v3, "CoverManager.LedCoverController"

    const-string/jumbo v4, "sendData fail"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_73
    .catch Ljava/io/FileNotFoundException; {:try_start_6b .. :try_end_73} :catch_74

    goto :goto_5d

    .line 379
    :catch_74
    move-exception v0

    .line 380
    .local v0, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_5d
.end method

.method private handleUpdateLedCoverAttachState(Z)V
    .registers 6
    .param p1, "attached"    # Z

    .prologue
    .line 177
    invoke-direct {p0, p1}, powerControlLedCover(Z)Z

    move-result v0

    iput-boolean v0, p0, mIsLedCoverPowered:Z

    .line 178
    iget-boolean v0, p0, mIsLedCoverAttached:Z

    if-eqz v0, :cond_4c

    .line 179
    const-string v0, "CoverManager.LedCoverController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleUpdateLedCoverAttachState : cover color : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, mCoverColor:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    iget-object v0, p0, mHandler:Lcom/android/server/cover/LedCoverController$LedCoverControllerHandler;

    iget-object v1, p0, mRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/server/cover/LedCoverController$LedCoverControllerHandler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v0

    if-eqz v0, :cond_35

    .line 181
    iget-object v0, p0, mHandler:Lcom/android/server/cover/LedCoverController$LedCoverControllerHandler;

    iget-object v1, p0, mRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/server/cover/LedCoverController$LedCoverControllerHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 183
    :cond_35
    iget-object v0, p0, mHandler:Lcom/android/server/cover/LedCoverController$LedCoverControllerHandler;

    iget-object v1, p0, mRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/cover/LedCoverController$LedCoverControllerHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 189
    :cond_3e
    :goto_3e
    iget-object v0, p0, mUpdateAttachStateWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_4b

    .line 190
    iget-object v0, p0, mUpdateAttachStateWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 192
    :cond_4b
    return-void

    .line 185
    :cond_4c
    iget-object v0, p0, mHandler:Lcom/android/server/cover/LedCoverController$LedCoverControllerHandler;

    iget-object v1, p0, mRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/server/cover/LedCoverController$LedCoverControllerHandler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v0

    if-eqz v0, :cond_3e

    .line 186
    iget-object v0, p0, mHandler:Lcom/android/server/cover/LedCoverController$LedCoverControllerHandler;

    iget-object v1, p0, mRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/server/cover/LedCoverController$LedCoverControllerHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_3e
.end method

.method private initializeCoverControlPath(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 142
    iget-object v0, p0, mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/cover/Feature;->getInstance(Landroid/content/Context;)Lcom/android/server/cover/Feature;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/cover/Feature;->isSupportLEDCoverQCOM()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 143
    const-string v0, "/sys/class/sec/expander/expgpio"

    iput-object v0, p0, mLedCoverPowerPath:Ljava/lang/String;

    .line 144
    const-string v0, "/dev/ttyHSL1"

    iput-object v0, p0, mLedCoverUARTPath:Ljava/lang/String;

    .line 152
    :goto_15
    return-void

    .line 145
    :cond_16
    iget-object v0, p0, mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/cover/Feature;->getInstance(Landroid/content/Context;)Lcom/android/server/cover/Feature;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/cover/Feature;->isSupportLEDCoverLSI()Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 146
    const-string v0, "/sys/class/sec/ledcover/cover_pwr"

    iput-object v0, p0, mLedCoverPowerPath:Ljava/lang/String;

    .line 147
    const-string v0, "/dev/ttySAC2"

    iput-object v0, p0, mLedCoverUARTPath:Ljava/lang/String;

    goto :goto_15

    .line 149
    :cond_2b
    iput-object v1, p0, mLedCoverPowerPath:Ljava/lang/String;

    .line 150
    iput-object v1, p0, mLedCoverUARTPath:Ljava/lang/String;

    goto :goto_15
.end method

.method private powerControlLedCover(Z)Z
    .registers 12
    .param p1, "attached"    # Z

    .prologue
    const/4 v6, 0x0

    .line 204
    const-string v7, "CoverManager.LedCoverController"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "powerControlLedCover : attached="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    iget-object v7, p0, mLedCoverPowerPath:Ljava/lang/String;

    if-nez v7, :cond_26

    .line 206
    const-string v7, "CoverManager.LedCoverController"

    const-string v8, "There is no node for power control"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    :cond_25
    :goto_25
    return v6

    .line 210
    :cond_26
    const/4 v3, 0x0

    .line 211
    .local v3, "out":Ljava/io/FileOutputStream;
    iget-object v5, p0, mLedCoverPowerPath:Ljava/lang/String;

    .line 212
    .local v5, "powerPath":Ljava/lang/String;
    if-eqz v5, :cond_25

    .line 214
    :try_start_2b
    new-instance v4, Ljava/io/FileOutputStream;

    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_35
    .catch Ljava/io/FileNotFoundException; {:try_start_2b .. :try_end_35} :catch_af
    .catch Ljava/io/IOException; {:try_start_2b .. :try_end_35} :catch_ad
    .catchall {:try_start_2b .. :try_end_35} :catchall_9e

    .line 216
    .end local v3    # "out":Ljava/io/FileOutputStream;
    .local v4, "out":Ljava/io/FileOutputStream;
    if-eqz p1, :cond_6b

    .line 217
    :try_start_37
    const-string v7, "/sys/class/sec/expander/expgpio"

    if-ne v5, v7, :cond_50

    .line 218
    const-string v7, "o 2 1"

    invoke-virtual {v7}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_44
    .catch Ljava/io/FileNotFoundException; {:try_start_37 .. :try_end_44} :catch_5b
    .catch Ljava/io/IOException; {:try_start_37 .. :try_end_44} :catch_8e
    .catchall {:try_start_37 .. :try_end_44} :catchall_aa

    .line 222
    :goto_44
    const/4 v6, 0x1

    .line 239
    if-eqz v4, :cond_25

    .line 240
    :try_start_47
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_4a
    .catch Ljava/io/IOException; {:try_start_47 .. :try_end_4a} :catch_4b

    goto :goto_25

    .line 242
    :catch_4b
    move-exception v1

    .line 243
    .local v1, "err":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_25

    .line 220
    .end local v1    # "err":Ljava/io/IOException;
    :cond_50
    :try_start_50
    const-string/jumbo v7, "val_on"

    invoke-virtual {v7}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_5a
    .catch Ljava/io/FileNotFoundException; {:try_start_50 .. :try_end_5a} :catch_5b
    .catch Ljava/io/IOException; {:try_start_50 .. :try_end_5a} :catch_8e
    .catchall {:try_start_50 .. :try_end_5a} :catchall_aa

    goto :goto_44

    .line 231
    :catch_5b
    move-exception v0

    move-object v3, v4

    .line 232
    .end local v4    # "out":Ljava/io/FileOutputStream;
    .local v0, "e":Ljava/io/FileNotFoundException;
    .restart local v3    # "out":Ljava/io/FileOutputStream;
    :goto_5d
    :try_start_5d
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_60
    .catchall {:try_start_5d .. :try_end_60} :catchall_9e

    .line 239
    if-eqz v3, :cond_25

    .line 240
    :try_start_62
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_65
    .catch Ljava/io/IOException; {:try_start_62 .. :try_end_65} :catch_66

    goto :goto_25

    .line 242
    :catch_66
    move-exception v1

    .line 243
    .restart local v1    # "err":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_25

    .line 224
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    .end local v1    # "err":Ljava/io/IOException;
    .end local v3    # "out":Ljava/io/FileOutputStream;
    .restart local v4    # "out":Ljava/io/FileOutputStream;
    :cond_6b
    :try_start_6b
    const-string v7, "/sys/class/sec/expander/expgpio"

    if-ne v5, v7, :cond_83

    .line 225
    const-string v7, "o 2 0"

    invoke-virtual {v7}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_78
    .catch Ljava/io/FileNotFoundException; {:try_start_6b .. :try_end_78} :catch_5b
    .catch Ljava/io/IOException; {:try_start_6b .. :try_end_78} :catch_8e
    .catchall {:try_start_6b .. :try_end_78} :catchall_aa

    .line 239
    :goto_78
    if-eqz v4, :cond_25

    .line 240
    :try_start_7a
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_7d
    .catch Ljava/io/IOException; {:try_start_7a .. :try_end_7d} :catch_7e

    goto :goto_25

    .line 242
    :catch_7e
    move-exception v1

    .line 243
    .restart local v1    # "err":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_25

    .line 227
    .end local v1    # "err":Ljava/io/IOException;
    :cond_83
    :try_start_83
    const-string/jumbo v7, "val_off"

    invoke-virtual {v7}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_8d
    .catch Ljava/io/FileNotFoundException; {:try_start_83 .. :try_end_8d} :catch_5b
    .catch Ljava/io/IOException; {:try_start_83 .. :try_end_8d} :catch_8e
    .catchall {:try_start_83 .. :try_end_8d} :catchall_aa

    goto :goto_78

    .line 234
    :catch_8e
    move-exception v2

    move-object v3, v4

    .line 235
    .end local v4    # "out":Ljava/io/FileOutputStream;
    .local v2, "ioe":Ljava/io/IOException;
    .restart local v3    # "out":Ljava/io/FileOutputStream;
    :goto_90
    :try_start_90
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_93
    .catchall {:try_start_90 .. :try_end_93} :catchall_9e

    .line 239
    if-eqz v3, :cond_25

    .line 240
    :try_start_95
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_98
    .catch Ljava/io/IOException; {:try_start_95 .. :try_end_98} :catch_99

    goto :goto_25

    .line 242
    :catch_99
    move-exception v1

    .line 243
    .restart local v1    # "err":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_25

    .line 238
    .end local v1    # "err":Ljava/io/IOException;
    .end local v2    # "ioe":Ljava/io/IOException;
    :catchall_9e
    move-exception v6

    .line 239
    :goto_9f
    if-eqz v3, :cond_a4

    .line 240
    :try_start_a1
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_a4
    .catch Ljava/io/IOException; {:try_start_a1 .. :try_end_a4} :catch_a5

    .line 244
    :cond_a4
    :goto_a4
    throw v6

    .line 242
    :catch_a5
    move-exception v1

    .line 243
    .restart local v1    # "err":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_a4

    .line 238
    .end local v1    # "err":Ljava/io/IOException;
    .end local v3    # "out":Ljava/io/FileOutputStream;
    .restart local v4    # "out":Ljava/io/FileOutputStream;
    :catchall_aa
    move-exception v6

    move-object v3, v4

    .end local v4    # "out":Ljava/io/FileOutputStream;
    .restart local v3    # "out":Ljava/io/FileOutputStream;
    goto :goto_9f

    .line 234
    :catch_ad
    move-exception v2

    goto :goto_90

    .line 231
    :catch_af
    move-exception v0

    goto :goto_5d
.end method

.method private writeDataViaSerial(Ljava/lang/String;[B)Z
    .registers 13
    .param p1, "uartPath"    # Ljava/lang/String;
    .param p2, "outbuf"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 388
    iget-object v7, p0, mContext:Landroid/content/Context;

    invoke-direct {p0, v7}, getSerialManager(Landroid/content/Context;)Landroid/hardware/SerialManager;

    move-result-object v4

    .line 389
    .local v4, "serialManager":Landroid/hardware/SerialManager;
    const/4 v5, 0x0

    .line 390
    .local v5, "serialPort":Landroid/hardware/SerialPort;
    array-length v7, p2

    invoke-static {v7}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 393
    .local v0, "bBuffer":Ljava/nio/ByteBuffer;
    if-eqz v4, :cond_55

    if-eqz p1, :cond_55

    .line 395
    :try_start_11
    invoke-virtual {v4}, Landroid/hardware/SerialManager;->getSerialPorts()[Ljava/lang/String;

    move-result-object v3

    .line 396
    .local v3, "ports":[Ljava/lang/String;
    if-eqz v3, :cond_46

    array-length v7, v3

    if-lez v7, :cond_46

    .line 397
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1b
    array-length v7, v3

    if-ge v2, v7, :cond_4e

    .line 398
    const-string v7, "CoverManager.LedCoverController"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "port["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "] : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    aget-object v9, v3, v2

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    add-int/lit8 v2, v2, 0x1

    goto :goto_1b

    .line 401
    .end local v2    # "i":I
    :cond_46
    const-string v7, "CoverManager.LedCoverController"

    const-string/jumbo v8, "ports is null"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 404
    :cond_4e
    const v7, 0x1c200

    invoke-virtual {v4, p1, v7}, Landroid/hardware/SerialManager;->openSerialPort(Ljava/lang/String;I)Landroid/hardware/SerialPort;

    move-result-object v5

    .line 406
    .end local v3    # "ports":[Ljava/lang/String;
    :cond_55
    if-eqz v5, :cond_81

    .line 407
    const-string v7, "CoverManager.LedCoverController"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "serialPort.getName() : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v5}, Landroid/hardware/SerialPort;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 408
    invoke-static {p2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v7

    array-length v8, p2

    invoke-virtual {v5, v7, v8}, Landroid/hardware/SerialPort;->write(Ljava/nio/ByteBuffer;I)V

    .line 409
    invoke-virtual {v5}, Landroid/hardware/SerialPort;->close()V

    .line 418
    const/4 v6, 0x1

    :goto_80
    return v6

    .line 411
    :cond_81
    const-string v7, "CoverManager.LedCoverController"

    const-string/jumbo v8, "serialPort isn\'t available"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_89
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_89} :catch_8a

    goto :goto_80

    .line 414
    :catch_8a
    move-exception v1

    .line 415
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_80
.end method


# virtual methods
.method dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 5
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 422
    const-string v0, " Current LedCoverController state:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 423
    const-string v0, "  mIsLEDCoverPowered="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, mIsLedCoverPowered:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 424
    const-string v0, "  mIsLEDCoverAttached="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, mIsLedCoverAttached:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 425
    const-string v0, "  "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 426
    return-void
.end method

.method isCoverAttached()Z
    .registers 2

    .prologue
    .line 128
    iget-boolean v0, p0, mIsLedCoverAttached:Z

    return v0
.end method

.method isCoverPowered()Z
    .registers 2

    .prologue
    .line 124
    iget-boolean v0, p0, mIsLedCoverPowered:Z

    return v0
.end method

.method sendDataToLedCover(I[B)Z
    .registers 9
    .param p1, "command"    # I
    .param p2, "data"    # [B

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x2

    .line 251
    iget-object v3, p0, mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/server/cover/Feature;->getInstance(Landroid/content/Context;)Lcom/android/server/cover/Feature;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/cover/Feature;->isSupportLEDCover()Z

    move-result v3

    if-nez v3, :cond_17

    .line 253
    const-string v3, "CoverManager.LedCoverController"

    const-string/jumbo v4, "sendDataToLedCover : Not support LED Cover"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    :goto_16
    return v2

    .line 258
    :cond_17
    iget-boolean v3, p0, mIsLedCoverAttached:Z

    if-nez v3, :cond_24

    .line 260
    const-string v3, "CoverManager.LedCoverController"

    const-string/jumbo v4, "sendDataToLedCover : Not attached LED Cover"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_16

    .line 265
    :cond_24
    iget-boolean v3, p0, mIsLedCoverPowered:Z

    if-nez v3, :cond_31

    .line 267
    const-string v3, "CoverManager.LedCoverController"

    const-string/jumbo v4, "sendDataToLedCover : Not Powered LED Cover"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_16

    .line 272
    :cond_31
    iget-object v3, p0, mSendLedDataWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v3

    if-nez v3, :cond_3e

    .line 273
    iget-object v3, p0, mSendLedDataWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 275
    :cond_3e
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 276
    .local v0, "msg":Landroid/os/Message;
    iput v2, v0, Landroid/os/Message;->what:I

    .line 277
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 278
    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 279
    iget-object v2, p0, mHandler:Lcom/android/server/cover/LedCoverController$LedCoverControllerHandler;

    invoke-virtual {v2, v0}, Lcom/android/server/cover/LedCoverController$LedCoverControllerHandler;->sendMessage(Landroid/os/Message;)Z

    .line 281
    const/16 v2, 0xf

    if-ne p1, v2, :cond_6d

    iget-object v2, p0, mHandler:Lcom/android/server/cover/LedCoverController$LedCoverControllerHandler;

    invoke-virtual {v2, v4}, Lcom/android/server/cover/LedCoverController$LedCoverControllerHandler;->hasMessages(I)Z

    move-result v2

    if-eqz v2, :cond_6d

    .line 282
    iget-object v2, p0, mHandler:Lcom/android/server/cover/LedCoverController$LedCoverControllerHandler;

    invoke-virtual {v2, v4}, Lcom/android/server/cover/LedCoverController$LedCoverControllerHandler;->removeMessages(I)V

    .line 283
    iget-object v2, p0, mLedOnOffWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v2

    if-eqz v2, :cond_6b

    .line 284
    iget-object v2, p0, mLedOnOffWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 321
    :cond_6b
    :goto_6b
    const/4 v2, 0x1

    goto :goto_16

    .line 286
    :cond_6d
    const/16 v2, 0x9

    if-eq p1, v2, :cond_6b

    .line 289
    iget-object v2, p0, mLedOnOffWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v2

    if-nez v2, :cond_7e

    .line 290
    iget-object v2, p0, mLedOnOffWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 293
    :cond_7e
    const/16 v2, 0xe

    if-eq p1, v2, :cond_6b

    .line 294
    iget-object v2, p0, mHandler:Lcom/android/server/cover/LedCoverController$LedCoverControllerHandler;

    invoke-virtual {v2, v4}, Lcom/android/server/cover/LedCoverController$LedCoverControllerHandler;->hasMessages(I)Z

    move-result v2

    if-eqz v2, :cond_8f

    .line 295
    iget-object v2, p0, mHandler:Lcom/android/server/cover/LedCoverController$LedCoverControllerHandler;

    invoke-virtual {v2, v4}, Lcom/android/server/cover/LedCoverController$LedCoverControllerHandler;->removeMessages(I)V

    .line 298
    :cond_8f
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 299
    .local v1, "msgLedOff":Landroid/os/Message;
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 300
    iput v4, v1, Landroid/os/Message;->what:I

    .line 302
    sparse-switch p1, :sswitch_data_be

    .line 316
    iget-object v2, p0, mHandler:Lcom/android/server/cover/LedCoverController$LedCoverControllerHandler;

    const-wide/16 v4, 0x1388

    invoke-virtual {v2, v1, v4, v5}, Lcom/android/server/cover/LedCoverController$LedCoverControllerHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_6b

    .line 304
    :sswitch_a4
    iget-object v2, p0, mHandler:Lcom/android/server/cover/LedCoverController$LedCoverControllerHandler;

    const-wide/16 v4, 0xdac

    invoke-virtual {v2, v1, v4, v5}, Lcom/android/server/cover/LedCoverController$LedCoverControllerHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_6b

    .line 308
    :sswitch_ac
    iget-object v2, p0, mHandler:Lcom/android/server/cover/LedCoverController$LedCoverControllerHandler;

    const-wide/16 v4, 0x2328

    invoke-virtual {v2, v1, v4, v5}, Lcom/android/server/cover/LedCoverController$LedCoverControllerHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_6b

    .line 312
    :sswitch_b4
    iget-object v2, p0, mHandler:Lcom/android/server/cover/LedCoverController$LedCoverControllerHandler;

    const-wide/32 v4, 0xea60

    invoke-virtual {v2, v1, v4, v5}, Lcom/android/server/cover/LedCoverController$LedCoverControllerHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_6b

    .line 302
    nop

    :sswitch_data_be
    .sparse-switch
        0x1 -> :sswitch_a4
        0x5 -> :sswitch_ac
        0xd -> :sswitch_b4
    .end sparse-switch
.end method

.method public sendPowerKeyToCover()V
    .registers 16

    .prologue
    const/4 v14, 0x2

    const/4 v13, 0x1

    const/4 v12, 0x0

    .line 325
    new-array v5, v13, [B

    .line 326
    .local v5, "data":[B
    aput-byte v12, v5, v12

    .line 328
    iget-boolean v9, p0, mIsLedOn:Z

    if-eqz v9, :cond_31

    .line 330
    const-string v9, "CoverManager.LedCoverController"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "mIsLedOn : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-boolean v11, p0, mIsLedOn:Z

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ". should be off"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 331
    const/16 v9, 0xf

    invoke-virtual {p0, v9, v5}, sendDataToLedCover(I[B)Z

    .line 360
    :goto_30
    return-void

    .line 334
    :cond_31
    const-string v9, "CoverManager.LedCoverController"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "mIsLedOn : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-boolean v11, p0, mIsLedOn:Z

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ". should be on"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    const/4 v4, 0x0

    .line 336
    .local v4, "curTimeStr":Ljava/lang/String;
    iget-object v9, p0, mContext:Landroid/content/Context;

    invoke-static {v9}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v0

    .line 337
    .local v0, "bIs24HTime":Z
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 338
    .local v2, "curTime":J
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 339
    .local v1, "c":Ljava/util/Calendar;
    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 341
    const/16 v9, 0xb

    invoke-virtual {v1, v9}, Ljava/util/Calendar;->get(I)I

    move-result v6

    .line 342
    .local v6, "hours":I
    const/16 v9, 0xc

    invoke-virtual {v1, v9}, Ljava/util/Calendar;->get(I)I

    move-result v7

    .line 344
    .local v7, "minutes":I
    if-eqz v0, :cond_ab

    .line 345
    const-string v9, "%02d:%02d"

    new-array v10, v14, [Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v10, v12

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v10, v13

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 353
    :goto_85
    const-string v9, "CoverManager.LedCoverController"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "sendPowerKeyToCover : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 356
    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    .line 357
    .local v8, "timeData":[B
    invoke-virtual {p0, v13, v8}, sendDataToLedCover(I[B)Z

    .line 358
    const/16 v9, 0xe

    invoke-virtual {p0, v9, v5}, sendDataToLedCover(I[B)Z

    goto :goto_30

    .line 347
    .end local v8    # "timeData":[B
    :cond_ab
    rem-int/lit8 v6, v6, 0xc

    .line 348
    if-nez v6, :cond_b1

    .line 349
    const/16 v6, 0xc

    .line 351
    :cond_b1
    const-string v9, "%2d:%02d"

    new-array v10, v14, [Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v10, v12

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v10, v13

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    goto :goto_85
.end method

.method updateLedCoverAttachStateLocked(ZLcom/samsung/android/cover/CoverState;)V
    .registers 9
    .param p1, "attached"    # Z
    .param p2, "coverState"    # Lcom/samsung/android/cover/CoverState;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 155
    iget-object v4, p0, mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/server/cover/Feature;->getInstance(Landroid/content/Context;)Lcom/android/server/cover/Feature;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/cover/Feature;->isSupportLEDCover()Z

    move-result v4

    if-nez v4, :cond_17

    .line 157
    const-string v2, "CoverManager.LedCoverController"

    const-string/jumbo v3, "updateLedCoverAttachStateLocked : Not support LED Cover"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    :cond_16
    :goto_16
    return-void

    .line 161
    :cond_17
    if-eqz p1, :cond_4c

    invoke-virtual {p2}, Lcom/samsung/android/cover/CoverState;->getType()I

    move-result v4

    const/4 v5, 0x7

    if-ne v4, v5, :cond_4c

    move v0, v2

    .line 163
    .local v0, "isCoverAttached":Z
    :goto_21
    invoke-virtual {p2}, Lcom/samsung/android/cover/CoverState;->getColor()I

    move-result v4

    iput v4, p0, mCoverColor:I

    .line 164
    iget-boolean v4, p0, mIsLedCoverAttached:Z

    if-eq v4, v0, :cond_16

    .line 165
    iget-object v4, p0, mUpdateAttachStateWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v4}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v4

    if-nez v4, :cond_38

    .line 166
    iget-object v4, p0, mUpdateAttachStateWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v4}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 168
    :cond_38
    iput-boolean v0, p0, mIsLedCoverAttached:Z

    .line 169
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 170
    .local v1, "msg":Landroid/os/Message;
    iput v2, v1, Landroid/os/Message;->what:I

    .line 171
    iget-boolean v4, p0, mIsLedCoverAttached:Z

    if-eqz v4, :cond_4e

    :goto_44
    iput v2, v1, Landroid/os/Message;->arg1:I

    .line 172
    iget-object v2, p0, mHandler:Lcom/android/server/cover/LedCoverController$LedCoverControllerHandler;

    invoke-virtual {v2, v1}, Lcom/android/server/cover/LedCoverController$LedCoverControllerHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_16

    .end local v0    # "isCoverAttached":Z
    .end local v1    # "msg":Landroid/os/Message;
    :cond_4c
    move v0, v3

    .line 161
    goto :goto_21

    .restart local v0    # "isCoverAttached":Z
    .restart local v1    # "msg":Landroid/os/Message;
    :cond_4e
    move v2, v3

    .line 171
    goto :goto_44
.end method
