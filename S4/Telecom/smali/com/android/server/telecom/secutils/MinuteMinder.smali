.class public Lcom/android/server/telecom/secutils/MinuteMinder;
.super Landroid/content/BroadcastReceiver;
.source "MinuteMinder.java"


# static fields
.field private static sAlarmManager:Landroid/app/AlarmManager;

.field private static sPendingIntent:Landroid/app/PendingIntent;


# instance fields
.field private mPartialWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 63
    sput-object v0, Lcom/android/server/telecom/secutils/MinuteMinder;->sPendingIntent:Landroid/app/PendingIntent;

    .line 65
    sput-object v0, Lcom/android/server/telecom/secutils/MinuteMinder;->sAlarmManager:Landroid/app/AlarmManager;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method static startMinuteMinderAlarm(Landroid/content/Context;)V
    .locals 9

    .prologue
    const/4 v1, 0x2

    const-wide/32 v4, 0xea60

    const/4 v8, 0x0

    .line 68
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "min_minder"

    invoke-static {v0, v2, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 74
    const-string v2, "MinuteMinder"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v6, "startMinuteMinderAlarm: minuteMinderTone = "

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v6, v8, [Ljava/lang/Object;

    invoke-static {v2, v3, v6}, Lcom/android/server/telecom/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 76
    invoke-static {}, Lcom/android/server/telecom/CallsManager;->getInstance()Lcom/android/server/telecom/CallsManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/telecom/CallsManager;->getForegroundCall()Lcom/android/server/telecom/Call;

    move-result-object v2

    .line 78
    const-string v3, "MinuteMinder"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "sAlarmManager = "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v7, Lcom/android/server/telecom/secutils/MinuteMinder;->sAlarmManager:Landroid/app/AlarmManager;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-array v7, v8, [Ljava/lang/Object;

    invoke-static {v3, v6, v7}, Lcom/android/server/telecom/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 79
    const-string v3, "MinuteMinder"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "sPendingIntent = "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v7, Lcom/android/server/telecom/secutils/MinuteMinder;->sPendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-array v7, v8, [Ljava/lang/Object;

    invoke-static {v3, v6, v7}, Lcom/android/server/telecom/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 80
    const-string v3, "MinuteMinder"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "currentCall = "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-array v7, v8, [Ljava/lang/Object;

    invoke-static {v3, v6, v7}, Lcom/android/server/telecom/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 82
    const/4 v3, 0x1

    if-ne v0, v3, :cond_0

    sget-object v0, Lcom/android/server/telecom/secutils/MinuteMinder;->sAlarmManager:Landroid/app/AlarmManager;

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/server/telecom/secutils/MinuteMinder;->sPendingIntent:Landroid/app/PendingIntent;

    if-nez v0, :cond_0

    if-eqz v2, :cond_0

    .line 84
    const-string v0, "MinuteMinder"

    const-string v2, "startMinuteMinderAlarm:.."

    new-array v3, v8, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lcom/android/server/telecom/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 86
    const-string v0, "alarm"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    sput-object v0, Lcom/android/server/telecom/secutils/MinuteMinder;->sAlarmManager:Landroid/app/AlarmManager;

    .line 98
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.android.server.telecom.MINUTE_MINDER_ALARM"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 99
    const/high16 v2, 0x10000000

    invoke-static {p0, v8, v0, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    sput-object v0, Lcom/android/server/telecom/secutils/MinuteMinder;->sPendingIntent:Landroid/app/PendingIntent;

    .line 102
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-ge v0, v2, :cond_1

    .line 103
    sget-object v0, Lcom/android/server/telecom/secutils/MinuteMinder;->sAlarmManager:Landroid/app/AlarmManager;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    add-long/2addr v2, v4

    sget-object v6, Lcom/android/server/telecom/secutils/MinuteMinder;->sPendingIntent:Landroid/app/PendingIntent;

    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->setRepeating(IJJLandroid/app/PendingIntent;)V

    .line 111
    :cond_0
    :goto_0
    return-void

    .line 106
    :cond_1
    sget-object v0, Lcom/android/server/telecom/secutils/MinuteMinder;->sAlarmManager:Landroid/app/AlarmManager;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    add-long/2addr v2, v4

    sget-object v4, Lcom/android/server/telecom/secutils/MinuteMinder;->sPendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V

    goto :goto_0
.end method

.method static stopMinuteMinderAlarm()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 114
    sget-object v0, Lcom/android/server/telecom/secutils/MinuteMinder;->sAlarmManager:Landroid/app/AlarmManager;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/telecom/secutils/MinuteMinder;->sPendingIntent:Landroid/app/PendingIntent;

    if-eqz v0, :cond_0

    .line 115
    const-string v0, "MinuteMinder"

    const-string v1, "stopMinuteMinderAlarm:.."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/server/telecom/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 116
    sget-object v0, Lcom/android/server/telecom/secutils/MinuteMinder;->sAlarmManager:Landroid/app/AlarmManager;

    sget-object v1, Lcom/android/server/telecom/secutils/MinuteMinder;->sPendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 117
    sput-object v3, Lcom/android/server/telecom/secutils/MinuteMinder;->sAlarmManager:Landroid/app/AlarmManager;

    .line 118
    sput-object v3, Lcom/android/server/telecom/secutils/MinuteMinder;->sPendingIntent:Landroid/app/PendingIntent;

    .line 120
    :cond_0
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 43
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 44
    const-string v1, "MinuteMinder"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "onReceive: Action = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v1, v2, v3}, Lcom/android/server/telecom/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 46
    const-string v1, "com.android.server.telecom.MINUTE_MINDER_ALARM"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 47
    const-string v0, "power"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    const v1, 0x20000001

    const-string v2, "MinuteMinder"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/telecom/secutils/MinuteMinder;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/telecom/secutils/MinuteMinder;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/telecom/secutils/MinuteMinder;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 48
    invoke-static {}, Lcom/android/server/telecom/CallsManager;->getInstance()Lcom/android/server/telecom/CallsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/telecom/CallsManager;->hasAnyCalls()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 49
    const-string v0, "MinuteMinder"

    const-string v1, "playMinuteMinder"

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {v0, v1, v2}, Lcom/android/server/telecom/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "min_minder"

    invoke-static {v0, v1, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-gtz v0, :cond_3

    .line 50
    :goto_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_1

    .line 51
    invoke-static {}, Lcom/android/server/telecom/secutils/MinuteMinder;->stopMinuteMinderAlarm()V

    .line 52
    invoke-static {p1}, Lcom/android/server/telecom/secutils/MinuteMinder;->startMinuteMinderAlarm(Landroid/content/Context;)V

    .line 55
    :cond_1
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/android/server/telecom/secutils/MinuteMinder$1;

    invoke-direct {v1, p0}, Lcom/android/server/telecom/secutils/MinuteMinder$1;-><init>(Lcom/android/server/telecom/secutils/MinuteMinder;)V

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 61
    :cond_2
    return-void

    .line 47
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 49
    :cond_3
    const-string v0, "MinuteMinder"

    const-string v1, "playMinuteMinder start!"

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {v0, v1, v2}, Lcom/android/server/telecom/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v0, Lcom/android/server/telecom/InCallTonePlayer$Factory;

    invoke-static {}, Lcom/android/server/telecom/CallsManager;->getInstance()Lcom/android/server/telecom/CallsManager;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/telecom/CallsManager;->mCallAudioManager:Lcom/android/server/telecom/CallAudioManager;

    invoke-direct {v0, v1}, Lcom/android/server/telecom/InCallTonePlayer$Factory;-><init>(Lcom/android/server/telecom/CallAudioManager;)V

    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Lcom/android/server/telecom/InCallTonePlayer$Factory;->createPlayer(I)Lcom/android/server/telecom/InCallTonePlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/telecom/InCallTonePlayer;->startTone()V

    goto :goto_0
.end method

.method final releasePartialWakeLock()V
    .locals 1

    .prologue
    .line 151
    monitor-enter p0

    .line 152
    :try_start_0
    iget-object v0, p0, Lcom/android/server/telecom/secutils/MinuteMinder;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 153
    iget-object v0, p0, Lcom/android/server/telecom/secutils/MinuteMinder;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 155
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
