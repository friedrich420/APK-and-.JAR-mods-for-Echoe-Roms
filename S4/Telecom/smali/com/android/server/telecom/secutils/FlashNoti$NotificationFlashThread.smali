.class final Lcom/android/server/telecom/secutils/FlashNoti$NotificationFlashThread;
.super Ljava/lang/Thread;
.source "FlashNoti.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/telecom/secutils/FlashNoti;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "NotificationFlashThread"
.end annotation


# instance fields
.field private mContinueFlash:Z

.field private synthetic this$0:Lcom/android/server/telecom/secutils/FlashNoti;


# direct methods
.method private constructor <init>(Lcom/android/server/telecom/secutils/FlashNoti;)V
    .locals 1

    .prologue
    .line 147
    iput-object p1, p0, Lcom/android/server/telecom/secutils/FlashNoti$NotificationFlashThread;->this$0:Lcom/android/server/telecom/secutils/FlashNoti;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 149
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/telecom/secutils/FlashNoti$NotificationFlashThread;->mContinueFlash:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/telecom/secutils/FlashNoti;B)V
    .locals 0

    .prologue
    .line 147
    invoke-direct {p0, p1}, Lcom/android/server/telecom/secutils/FlashNoti$NotificationFlashThread;-><init>(Lcom/android/server/telecom/secutils/FlashNoti;)V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 163
    const-string v0, "NotificationFlash Thread Run! "

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 165
    :goto_0
    iget-boolean v0, p0, Lcom/android/server/telecom/secutils/FlashNoti$NotificationFlashThread;->mContinueFlash:Z

    if-eqz v0, :cond_0

    .line 169
    iget-object v0, p0, Lcom/android/server/telecom/secutils/FlashNoti$NotificationFlashThread;->this$0:Lcom/android/server/telecom/secutils/FlashNoti;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/telecom/secutils/FlashNoti;->controlFlashNotification(Z)V

    .line 171
    const-wide/16 v0, 0x5dc

    invoke-static {v0, v1}, Landroid/os/SystemClock;->sleep(J)V

    .line 175
    iget-object v0, p0, Lcom/android/server/telecom/secutils/FlashNoti$NotificationFlashThread;->this$0:Lcom/android/server/telecom/secutils/FlashNoti;

    invoke-virtual {v0, v2}, Lcom/android/server/telecom/secutils/FlashNoti;->controlFlashNotification(Z)V

    .line 177
    const-wide/16 v0, 0x7d0

    invoke-static {v0, v1}, Landroid/os/SystemClock;->sleep(J)V

    goto :goto_0

    .line 181
    :cond_0
    return-void
.end method

.method public final stopThread()V
    .locals 1

    .prologue
    .line 155
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/telecom/secutils/FlashNoti$NotificationFlashThread;->mContinueFlash:Z

    .line 157
    return-void
.end method
