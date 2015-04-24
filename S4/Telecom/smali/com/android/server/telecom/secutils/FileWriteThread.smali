.class public final Lcom/android/server/telecom/secutils/FileWriteThread;
.super Ljava/lang/Thread;
.source "FileWriteThread.java"


# static fields
.field private static mIsSetWakeKey:Z

.field private static sDataConnectState:I


# instance fields
.field private mThreadType:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 50
    const/4 v0, -0x1

    sput v0, Lcom/android/server/telecom/secutils/FileWriteThread;->sDataConnectState:I

    .line 62
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/telecom/secutils/FileWriteThread;->mIsSetWakeKey:Z

    return-void
.end method

.method public constructor <init>(I)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 67
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 68
    const-string v0, "FileWriteThread"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "FileWriteThread : threadType = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v4, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 69
    iput p1, p0, Lcom/android/server/telecom/secutils/FileWriteThread;->mThreadType:I

    .line 70
    return-void
.end method

.method private dataChargingCutOff(Z)V
    .locals 8

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 132
    sget v3, Lcom/android/server/telecom/secutils/FileWriteThread;->sDataConnectState:I

    if-ne p1, v0, :cond_1

    move v2, v0

    :goto_0
    if-ne v3, v2, :cond_2

    .line 133
    const-string v0, "FileWriteThread"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "dataChargingCutOff : skip same state - "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v1}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 166
    :cond_0
    :goto_1
    return-void

    :cond_1
    move v2, v1

    .line 132
    goto :goto_0

    .line 137
    :cond_2
    if-ne p1, v0, :cond_4

    :goto_2
    sput v0, Lcom/android/server/telecom/secutils/FileWriteThread;->sDataConnectState:I

    .line 139
    const/4 v3, 0x0

    .line 141
    :try_start_0
    new-instance v2, Ljava/io/FileOutputStream;

    const-string v0, "/sys/class/power_supply/battery/data_call"

    invoke-direct {v2, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 142
    const/16 v0, 0x30

    .line 144
    if-eqz p1, :cond_3

    .line 145
    const/16 v0, 0x31

    .line 148
    :cond_3
    :try_start_1
    const-string v3, "FileWriteThread"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "dataChargingCutOff : data_call = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v3, v4, v5}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 149
    invoke-virtual {v2, v0}, Ljava/io/FileOutputStream;->write(I)V

    .line 150
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 161
    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .line 164
    :catch_0
    move-exception v0

    const-string v0, "FileWriteThread"

    const-string v2, "close fail!!!"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v1}, Lcom/android/server/telecom/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    :cond_4
    move v0, v1

    .line 137
    goto :goto_2

    .line 151
    :catch_1
    move-exception v0

    move-object v2, v3

    .line 152
    :goto_3
    :try_start_3
    const-string v3, " dataChargingCutOff : data_call write error, exec orig."

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {p0, v0, v3, v4}, Lcom/android/server/telecom/Log;->e(Ljava/lang/Object;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 154
    if-eqz v2, :cond_5

    .line 155
    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 161
    :cond_5
    :goto_4
    if-eqz v2, :cond_0

    .line 162
    :try_start_5
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_1

    .line 164
    :catch_2
    move-exception v0

    const-string v0, "FileWriteThread"

    const-string v2, "close fail!!!"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v1}, Lcom/android/server/telecom/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 157
    :catch_3
    move-exception v0

    :try_start_6
    const-string v0, "FileWriteThread"

    const-string v3, "close fail!!!"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v0, v3, v4}, Lcom/android/server/telecom/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_4

    .line 160
    :catchall_0
    move-exception v0

    .line 161
    :goto_5
    if-eqz v2, :cond_6

    .line 162
    :try_start_7
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    .line 165
    :cond_6
    :goto_6
    throw v0

    .line 164
    :catch_4
    move-exception v2

    const-string v2, "FileWriteThread"

    const-string v3, "close fail!!!"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v2, v3, v1}, Lcom/android/server/telecom/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_6

    .line 160
    :catchall_1
    move-exception v0

    move-object v2, v3

    goto :goto_5

    .line 151
    :catch_5
    move-exception v0

    goto :goto_3
.end method

.method private static log(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 248
    const-string v0, "FileWriteThread"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, p0, v1}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 249
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    .prologue
    const/4 v3, 0x0

    const/16 v5, 0x31

    const/16 v4, 0x30

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 220
    iget v2, p0, Lcom/android/server/telecom/secutils/FileWriteThread;->mThreadType:I

    packed-switch v2, :pswitch_data_0

    .line 240
    :cond_0
    :goto_0
    return-void

    .line 223
    :pswitch_0
    invoke-static {}, Lcom/android/server/telecom/CallsManager;->getInstance()Lcom/android/server/telecom/CallsManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/telecom/CallsManager;->isInCall()Z

    move-result v2

    if-eqz v2, :cond_1

    move v1, v0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "writeSleepCheckingFile "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-boolean v2, Lcom/android/server/telecom/secutils/FileWriteThread;->mIsSetWakeKey:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/telecom/secutils/FileWriteThread;->log(Ljava/lang/String;)V

    sget-boolean v0, Lcom/android/server/telecom/secutils/FileWriteThread;->mIsSetWakeKey:Z

    if-eq v1, v0, :cond_0

    invoke-static {}, Lcom/android/server/telecom/TelecomApp;->getInstance()Lcom/android/server/telecom/TelecomApp;

    move-result-object v2

    const-string v0, "input"

    invoke-virtual {v2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/input/InputManager;

    if-eqz v0, :cond_0

    sput-boolean v1, Lcom/android/server/telecom/secutils/FileWriteThread;->mIsSetWakeKey:Z

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "114,115"

    invoke-virtual {v0, v2, v1, v3}, Landroid/hardware/input/InputManager;->setWakeKeyDynamically(Ljava/lang/String;ZLjava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "setWakeKeyDynamically(114,115) : "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/telecom/secutils/FileWriteThread;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 227
    :pswitch_1
    const-string v2, "gsm.network.type"

    const-string v6, ""

    invoke-static {v2, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_3

    :try_start_0
    const-string v2, "GPRS"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "EDGE"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "GSM"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "Unexpected"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_2
    new-instance v2, Ljava/io/FileOutputStream;

    const-string v7, "/sys/class/power_supply/battery/talk_gsm"

    invoke-direct {v2, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    move-object v3, v2

    :goto_1
    invoke-static {}, Lcom/android/server/telecom/CallsManager;->getInstance()Lcom/android/server/telecom/CallsManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/telecom/CallsManager;->isInCall()Z

    move-result v2

    if-eqz v2, :cond_c

    :goto_2
    const-string v2, "FileWriteThread"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " : voice_call = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const/4 v8, 0x1

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v2, v4, v6}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v3, v5}, Ljava/io/FileOutputStream;->write(I)V

    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    if-eqz v3, :cond_0

    :try_start_1
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v2

    const-string v2, "FileWriteThread"

    const-string v3, "2nd close fail!!!"

    new-array v4, v0, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v4, v1

    invoke-static {v2, v3, v4}, Lcom/android/server/telecom/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_4
    :try_start_2
    new-instance v2, Ljava/io/FileOutputStream;

    const-string v7, "/sys/class/power_supply/battery/talk_wcdma"

    invoke-direct {v2, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v3, v2

    goto :goto_1

    :catch_1
    move-exception v2

    :try_start_3
    const-string v4, " voice_call write error, exec orig"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {p0, v2, v4, v5}, Lcom/android/server/telecom/Log;->e(Ljava/lang/Object;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v3, :cond_5

    :try_start_4
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_5
    :goto_3
    if-eqz v3, :cond_0

    :try_start_5
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto/16 :goto_0

    :catch_2
    move-exception v2

    const-string v2, "FileWriteThread"

    const-string v3, "2nd close fail!!!"

    new-array v4, v0, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v4, v1

    invoke-static {v2, v3, v4}, Lcom/android/server/telecom/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    :catch_3
    move-exception v2

    :try_start_6
    const-string v2, "FileWriteThread"

    const-string v4, "1st close fail!!!"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v2, v4, v5}, Lcom/android/server/telecom/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception v2

    if-eqz v3, :cond_6

    :try_start_7
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    :cond_6
    :goto_4
    throw v2

    :catch_4
    move-exception v3

    const-string v3, "FileWriteThread"

    const-string v4, "2nd close fail!!!"

    new-array v5, v0, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v5, v1

    invoke-static {v3, v4, v5}, Lcom/android/server/telecom/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_4

    .line 228
    :pswitch_2
    invoke-direct {p0, v0}, Lcom/android/server/telecom/secutils/FileWriteThread;->dataChargingCutOff(Z)V

    goto/16 :goto_0

    .line 235
    :pswitch_3
    invoke-direct {p0, v1}, Lcom/android/server/telecom/secutils/FileWriteThread;->dataChargingCutOff(Z)V

    goto/16 :goto_0

    .line 239
    :pswitch_4
    const-string v2, "ro.debuggable"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-eq v2, v0, :cond_0

    const-string v0, "/sys/power/hard_reset_ctl"

    const-string v2, "ro.board.platform"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_7

    const-string v6, "exynos5"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    const-string v0, "/sys/bus/platform/drivers/s2mps11-pmic/s2mps11-pmic/mrstb"

    :cond_7
    :try_start_8
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_9

    const-string v0, "writeHardKeyResetFile : not exist file"

    invoke-static {v0}, Lcom/android/server/telecom/secutils/FileWriteThread;->log(Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_6
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :try_start_9
    invoke-virtual {v6}, Ljava/io/File;->createNewFile()Z
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_5
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_6
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    goto/16 :goto_0

    :catch_5
    move-exception v0

    :try_start_a
    const-string v2, "FileWriteThread"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "IOException : "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v0, v4}, Lcom/android/server/telecom/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_6
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    goto/16 :goto_0

    :catch_6
    move-exception v0

    :goto_5
    :try_start_b
    const-string v2, " writeHardKeyResetFile exception"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {p0, v0, v2, v4}, Lcom/android/server/telecom/Log;->e(Ljava/lang/Object;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    if-eqz v3, :cond_8

    :try_start_c
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_9
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    :cond_8
    :goto_6
    if-eqz v3, :cond_0

    :try_start_d
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_7

    goto/16 :goto_0

    :catch_7
    move-exception v0

    const-string v0, "FileWriteThread"

    const-string v2, "2nd close fail!!!"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v1}, Lcom/android/server/telecom/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_9
    :try_start_e
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_6
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    :try_start_f
    invoke-static {}, Lcom/android/server/telecom/CallsManager;->getInstance()Lcom/android/server/telecom/CallsManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/telecom/CallsManager;->isInCall()Z

    move-result v0

    if-eqz v0, :cond_b

    move v0, v4

    :goto_7
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "writeHardKeyResetFile : hardKeyResetState = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "FileWriteThread"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const/4 v8, 0x1

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v4, v6}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v2, v0}, Ljava/io/FileOutputStream;->write(I)V

    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "writeHardKeyResetFile end : cm.isInCall() = "

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/android/server/telecom/CallsManager;->isInCall()Z

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/telecom/secutils/FileWriteThread;->log(Ljava/lang/String;)V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_b
    .catchall {:try_start_f .. :try_end_f} :catchall_2

    :try_start_10
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_8

    goto/16 :goto_0

    :catch_8
    move-exception v0

    const-string v0, "FileWriteThread"

    const-string v2, "2nd close fail!!!"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v1}, Lcom/android/server/telecom/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    :catch_9
    move-exception v0

    :try_start_11
    const-string v0, "FileWriteThread"

    const-string v2, "1st close fail!!!"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v0, v2, v4}, Lcom/android/server/telecom/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_1

    goto :goto_6

    :catchall_1
    move-exception v0

    :goto_8
    if-eqz v3, :cond_a

    :try_start_12
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_a

    :cond_a
    :goto_9
    throw v0

    :catch_a
    move-exception v2

    const-string v2, "FileWriteThread"

    const-string v3, "2nd close fail!!!"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v2, v3, v1}, Lcom/android/server/telecom/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_9

    :catchall_2
    move-exception v0

    move-object v3, v2

    goto :goto_8

    :catch_b
    move-exception v0

    move-object v3, v2

    goto/16 :goto_5

    :cond_b
    move v0, v5

    goto :goto_7

    :cond_c
    move v5, v4

    goto/16 :goto_2

    .line 220
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
