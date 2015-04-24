.class public final Lcom/android/server/telecom/secutils/FlashNoti;
.super Ljava/lang/Object;
.source "FlashNoti.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/telecom/secutils/FlashNoti$NotificationFlashThread;
    }
.end annotation


# static fields
.field private static mCfmsService:Landroid/os/ICustomFrequencyManager;


# instance fields
.field private isDone:Z

.field private mContext:Landroid/content/Context;

.field private mNotificationFlashThread:Lcom/android/server/telecom/secutils/FlashNoti$NotificationFlashThread;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/telecom/secutils/FlashNoti;->mCfmsService:Landroid/os/ICustomFrequencyManager;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/telecom/secutils/FlashNoti;->isDone:Z

    .line 71
    iput-object p1, p0, Lcom/android/server/telecom/secutils/FlashNoti;->mContext:Landroid/content/Context;

    .line 73
    return-void
.end method


# virtual methods
.method public final checkTorchLight()V
    .locals 6

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 79
    const-string v0, "flash_notification"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 81
    iget-object v0, p0, Lcom/android/server/telecom/secutils/FlashNoti;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "torch_light"

    invoke-static {v0, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_1

    move v0, v1

    .line 85
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "isEnableAssistiveLightBeforeStart : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v1, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {p0, v3, v4}, Lcom/android/server/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 89
    if-nez v0, :cond_0

    .line 91
    iget-object v0, p0, Lcom/android/server/telecom/secutils/FlashNoti;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "flash_notification"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_2

    move v0, v1

    :goto_1
    if-eqz v0, :cond_3

    move v0, v1

    :goto_2
    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/telecom/secutils/FlashNoti;->mNotificationFlashThread:Lcom/android/server/telecom/secutils/FlashNoti$NotificationFlashThread;

    if-nez v0, :cond_0

    .line 93
    iput-boolean v2, p0, Lcom/android/server/telecom/secutils/FlashNoti;->isDone:Z

    .line 95
    new-instance v0, Lcom/android/server/telecom/secutils/FlashNoti$NotificationFlashThread;

    invoke-direct {v0, p0, v2}, Lcom/android/server/telecom/secutils/FlashNoti$NotificationFlashThread;-><init>(Lcom/android/server/telecom/secutils/FlashNoti;B)V

    iput-object v0, p0, Lcom/android/server/telecom/secutils/FlashNoti;->mNotificationFlashThread:Lcom/android/server/telecom/secutils/FlashNoti$NotificationFlashThread;

    .line 97
    const-string v0, "starting notification flash...."

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    aput-object v1, v3, v2

    invoke-static {p0, v0, v3}, Lcom/android/server/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 99
    iget-object v0, p0, Lcom/android/server/telecom/secutils/FlashNoti;->mNotificationFlashThread:Lcom/android/server/telecom/secutils/FlashNoti$NotificationFlashThread;

    if-eqz v0, :cond_0

    .line 101
    iget-object v0, p0, Lcom/android/server/telecom/secutils/FlashNoti;->mNotificationFlashThread:Lcom/android/server/telecom/secutils/FlashNoti$NotificationFlashThread;

    invoke-virtual {v0}, Lcom/android/server/telecom/secutils/FlashNoti$NotificationFlashThread;->start()V

    .line 109
    :cond_0
    return-void

    :cond_1
    move v0, v2

    .line 81
    goto :goto_0

    :cond_2
    move v0, v2

    .line 91
    goto :goto_1

    :cond_3
    move v0, v2

    goto :goto_2
.end method

.method public final controlFlashNotification(Z)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 191
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "controlFlashNotification - "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 195
    :try_start_0
    sget-object v0, Lcom/android/server/telecom/secutils/FlashNoti;->mCfmsService:Landroid/os/ICustomFrequencyManager;

    if-nez v0, :cond_0

    .line 197
    const-string v0, "CustomFrequencyManagerService"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 199
    if-eqz v0, :cond_0

    .line 201
    invoke-static {v0}, Landroid/os/ICustomFrequencyManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/ICustomFrequencyManager;

    move-result-object v0

    sput-object v0, Lcom/android/server/telecom/secutils/FlashNoti;->mCfmsService:Landroid/os/ICustomFrequencyManager;

    .line 209
    :cond_0
    sget-object v0, Lcom/android/server/telecom/secutils/FlashNoti;->mCfmsService:Landroid/os/ICustomFrequencyManager;

    if-eqz v0, :cond_1

    .line 211
    if-eqz p1, :cond_2

    .line 213
    sget-object v0, Lcom/android/server/telecom/secutils/FlashNoti;->mCfmsService:Landroid/os/ICustomFrequencyManager;

    const-string v1, "CLOCK_SET_TORCH_LIGHT"

    const-string v2, "1"

    invoke-interface {v0, v1, v2}, Landroid/os/ICustomFrequencyManager;->sendCommandToSSRM(Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    :cond_1
    :goto_0
    return-void

    .line 217
    :cond_2
    iget-object v0, p0, Lcom/android/server/telecom/secutils/FlashNoti;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "torch_light"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 221
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "controlFlashNotification assitiveOn - "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p0, v1, v2}, Lcom/android/server/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 223
    if-nez v0, :cond_1

    .line 225
    sget-object v0, Lcom/android/server/telecom/secutils/FlashNoti;->mCfmsService:Landroid/os/ICustomFrequencyManager;

    const-string v1, "CLOCK_SET_TORCH_LIGHT"

    const-string v2, "0"

    invoke-interface {v0, v1, v2}, Landroid/os/ICustomFrequencyManager;->sendCommandToSSRM(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 233
    :catch_0
    move-exception v0

    .line 235
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Exception - "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public final getIsDone()Z
    .locals 1

    .prologue
    .line 123
    iget-boolean v0, p0, Lcom/android/server/telecom/secutils/FlashNoti;->isDone:Z

    return v0
.end method

.method final isNotiFlashing()Z
    .locals 1

    .prologue
    .line 275
    monitor-enter p0

    .line 277
    :try_start_0
    iget-object v0, p0, Lcom/android/server/telecom/secutils/FlashNoti;->mNotificationFlashThread:Lcom/android/server/telecom/secutils/FlashNoti$NotificationFlashThread;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 279
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final setIsDone(Z)V
    .locals 0

    .prologue
    .line 115
    iput-boolean p1, p0, Lcom/android/server/telecom/secutils/FlashNoti;->isDone:Z

    .line 117
    return-void
.end method

.method public final stopFlashThread()V
    .locals 1

    .prologue
    .line 261
    iget-object v0, p0, Lcom/android/server/telecom/secutils/FlashNoti;->mNotificationFlashThread:Lcom/android/server/telecom/secutils/FlashNoti$NotificationFlashThread;

    if-eqz v0, :cond_0

    .line 263
    iget-object v0, p0, Lcom/android/server/telecom/secutils/FlashNoti;->mNotificationFlashThread:Lcom/android/server/telecom/secutils/FlashNoti$NotificationFlashThread;

    invoke-virtual {v0}, Lcom/android/server/telecom/secutils/FlashNoti$NotificationFlashThread;->stopThread()V

    .line 265
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/telecom/secutils/FlashNoti;->mNotificationFlashThread:Lcom/android/server/telecom/secutils/FlashNoti$NotificationFlashThread;

    .line 269
    :cond_0
    return-void
.end method

.method public final stopNotiFlash()V
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 245
    invoke-virtual {p0}, Lcom/android/server/telecom/secutils/FlashNoti;->isNotiFlashing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 247
    const-string v0, "-stopNotiFlash: cleaning up notiflash thread..."

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 249
    invoke-virtual {p0, v3}, Lcom/android/server/telecom/secutils/FlashNoti;->controlFlashNotification(Z)V

    .line 251
    invoke-virtual {p0}, Lcom/android/server/telecom/secutils/FlashNoti;->stopFlashThread()V

    .line 255
    :cond_0
    return-void
.end method
