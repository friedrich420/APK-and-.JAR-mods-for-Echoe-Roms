.class public Lcom/android/launcher2/Alarm;
.super Ljava/lang/Object;
.source "Alarm.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher2/Alarm$OnAlarmListener;
    }
.end annotation


# instance fields
.field private mAlarmListener:Lcom/android/launcher2/Alarm$OnAlarmListener;

.field private mAlarmPending:Z

.field private mAlarmTriggerTime:J

.field private mHandler:Landroid/os/Handler;

.field private mWaitingForCallback:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher2/Alarm;->mAlarmPending:Z

    .line 40
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/Alarm;->mHandler:Landroid/os/Handler;

    .line 41
    return-void
.end method


# virtual methods
.method public alarmPending()Z
    .locals 1

    .prologue
    .line 85
    iget-boolean v0, p0, Lcom/android/launcher2/Alarm;->mAlarmPending:Z

    return v0
.end method

.method public cancelAlarm()V
    .locals 2

    .prologue
    .line 60
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/launcher2/Alarm;->mAlarmTriggerTime:J

    .line 61
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher2/Alarm;->mAlarmPending:Z

    .line 62
    return-void
.end method

.method public run()V
    .locals 8

    .prologue
    const-wide/16 v6, 0x0

    const/4 v4, 0x0

    .line 67
    iput-boolean v4, p0, Lcom/android/launcher2/Alarm;->mWaitingForCallback:Z

    .line 68
    iget-wide v2, p0, Lcom/android/launcher2/Alarm;->mAlarmTriggerTime:J

    cmp-long v2, v2, v6

    if-eqz v2, :cond_0

    .line 69
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 70
    .local v0, "currentTime":J
    iget-wide v2, p0, Lcom/android/launcher2/Alarm;->mAlarmTriggerTime:J

    cmp-long v2, v2, v0

    if-lez v2, :cond_1

    .line 73
    iget-object v2, p0, Lcom/android/launcher2/Alarm;->mHandler:Landroid/os/Handler;

    iget-wide v4, p0, Lcom/android/launcher2/Alarm;->mAlarmTriggerTime:J

    sub-long/2addr v4, v0

    invoke-static {v6, v7, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    invoke-virtual {v2, p0, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 74
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/launcher2/Alarm;->mWaitingForCallback:Z

    .line 82
    .end local v0    # "currentTime":J
    :cond_0
    :goto_0
    return-void

    .line 76
    .restart local v0    # "currentTime":J
    :cond_1
    iput-boolean v4, p0, Lcom/android/launcher2/Alarm;->mAlarmPending:Z

    .line 77
    iget-object v2, p0, Lcom/android/launcher2/Alarm;->mAlarmListener:Lcom/android/launcher2/Alarm$OnAlarmListener;

    if-eqz v2, :cond_0

    .line 78
    iget-object v2, p0, Lcom/android/launcher2/Alarm;->mAlarmListener:Lcom/android/launcher2/Alarm$OnAlarmListener;

    invoke-interface {v2, p0}, Lcom/android/launcher2/Alarm$OnAlarmListener;->onAlarm(Lcom/android/launcher2/Alarm;)V

    goto :goto_0
.end method

.method public setAlarm(J)V
    .locals 7
    .param p1, "millisecondsInFuture"    # J

    .prologue
    const/4 v6, 0x1

    .line 50
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 51
    .local v0, "currentTime":J
    iput-boolean v6, p0, Lcom/android/launcher2/Alarm;->mAlarmPending:Z

    .line 52
    add-long v2, v0, p1

    iput-wide v2, p0, Lcom/android/launcher2/Alarm;->mAlarmTriggerTime:J

    .line 53
    iget-boolean v2, p0, Lcom/android/launcher2/Alarm;->mWaitingForCallback:Z

    if-nez v2, :cond_0

    .line 54
    iget-object v2, p0, Lcom/android/launcher2/Alarm;->mHandler:Landroid/os/Handler;

    iget-wide v4, p0, Lcom/android/launcher2/Alarm;->mAlarmTriggerTime:J

    sub-long/2addr v4, v0

    invoke-virtual {v2, p0, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 55
    iput-boolean v6, p0, Lcom/android/launcher2/Alarm;->mWaitingForCallback:Z

    .line 57
    :cond_0
    return-void
.end method

.method public setOnAlarmListener(Lcom/android/launcher2/Alarm$OnAlarmListener;)V
    .locals 0
    .param p1, "alarmListener"    # Lcom/android/launcher2/Alarm$OnAlarmListener;

    .prologue
    .line 44
    iput-object p1, p0, Lcom/android/launcher2/Alarm;->mAlarmListener:Lcom/android/launcher2/Alarm$OnAlarmListener;

    .line 45
    return-void
.end method
