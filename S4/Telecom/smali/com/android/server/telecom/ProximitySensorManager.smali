.class public Lcom/android/server/telecom/ProximitySensorManager;
.super Lcom/android/server/telecom/CallsManager$CallsManagerListener;
.source "ProximitySensorManager.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mProximityWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const-class v0, Lcom/android/server/telecom/ProximitySensorManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/telecom/ProximitySensorManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    .prologue
    const/16 v2, 0x20

    .line 30
    invoke-direct {p0}, Lcom/android/server/telecom/CallsManager$CallsManagerListener;-><init>()V

    .line 31
    const-string v0, "power"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 33
    invoke-virtual {v0, v2}, Landroid/os/PowerManager;->isWakeLockLevelSupported(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 34
    sget-object v1, Lcom/android/server/telecom/ProximitySensorManager;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/telecom/ProximitySensorManager;->mProximityWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 39
    :goto_0
    const-string v0, "onCreate: mProximityWakeLock: "

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/server/telecom/ProximitySensorManager;->mProximityWakeLock:Landroid/os/PowerManager$WakeLock;

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 40
    return-void

    .line 37
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/telecom/ProximitySensorManager;->mProximityWakeLock:Landroid/os/PowerManager$WakeLock;

    goto :goto_0
.end method


# virtual methods
.method public final onCallRemoved(Lcom/android/server/telecom/Call;)V
    .locals 2

    .prologue
    .line 44
    invoke-static {}, Lcom/android/server/telecom/CallsManager;->getInstance()Lcom/android/server/telecom/CallsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/telecom/CallsManager;->getCalls()Lcom/google/common/collect/ImmutableCollection;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableCollection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 45
    const-string v0, "all calls removed, resetting proximity sensor to default state"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 46
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/telecom/ProximitySensorManager;->turnOff(Z)V

    .line 48
    :cond_0
    invoke-super {p0, p1}, Lcom/android/server/telecom/CallsManager$CallsManagerListener;->onCallRemoved(Lcom/android/server/telecom/Call;)V

    .line 49
    return-void
.end method

.method final turnOff(Z)V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 76
    iget-object v1, p0, Lcom/android/server/telecom/ProximitySensorManager;->mProximityWakeLock:Landroid/os/PowerManager$WakeLock;

    if-nez v1, :cond_0

    .line 87
    :goto_0
    return-void

    .line 79
    :cond_0
    iget-object v1, p0, Lcom/android/server/telecom/ProximitySensorManager;->mProximityWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 80
    const-string v1, "Releasing proximity wake lock"

    new-array v2, v0, [Ljava/lang/Object;

    invoke-static {p0, v1, v2}, Lcom/android/server/telecom/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 81
    if-eqz p1, :cond_1

    .line 83
    :goto_1
    iget-object v1, p0, Lcom/android/server/telecom/ProximitySensorManager;->mProximityWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1, v0}, Landroid/os/PowerManager$WakeLock;->release(I)V

    goto :goto_0

    .line 81
    :cond_1
    const/4 v0, 0x1

    goto :goto_1

    .line 85
    :cond_2
    const-string v1, "Proximity wake lock already released"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p0, v1, v0}, Lcom/android/server/telecom/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method final turnOn()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 55
    invoke-static {}, Lcom/android/server/telecom/CallsManager;->getInstance()Lcom/android/server/telecom/CallsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/telecom/CallsManager;->getCalls()Lcom/google/common/collect/ImmutableCollection;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableCollection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 56
    const-string v0, "Asking to turn on prox sensor without a call? I don\'t think so."

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->w(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 69
    :cond_0
    :goto_0
    return-void

    .line 60
    :cond_1
    iget-object v0, p0, Lcom/android/server/telecom/ProximitySensorManager;->mProximityWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    .line 63
    iget-object v0, p0, Lcom/android/server/telecom/ProximitySensorManager;->mProximityWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-nez v0, :cond_2

    .line 64
    const-string v0, "Acquiring proximity wake lock"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 65
    iget-object v0, p0, Lcom/android/server/telecom/ProximitySensorManager;->mProximityWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    goto :goto_0

    .line 67
    :cond_2
    const-string v0, "Proximity wake lock already acquired"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method
