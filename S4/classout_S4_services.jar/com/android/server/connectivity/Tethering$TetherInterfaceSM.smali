.class Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;
.super Lcom/android/internal/util/StateMachine;
.source "Tethering.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/connectivity/Tethering;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TetherInterfaceSM"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$UnavailableState;,
        Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$TetheredState;,
        Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$StartingState;,
        Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$InitialState;
    }
.end annotation


# static fields
.field static final CMD_CELL_DUN_ERROR:I = 0x6

.field static final CMD_INTERFACE_DOWN:I = 0x4

.field static final CMD_INTERFACE_UP:I = 0x5

.field static final CMD_IP_FORWARDING_DISABLE_ERROR:I = 0x8

.field static final CMD_IP_FORWARDING_ENABLE_ERROR:I = 0x7

.field static final CMD_SET_DNS_FORWARDERS_ERROR:I = 0xb

.field static final CMD_START_TETHERING_ERROR:I = 0x9

.field static final CMD_STOP_TETHERING_ERROR:I = 0xa

.field static final CMD_TETHER_ACTIVE_SYNC_INTERNET_SHARING_BLOCKED:I = 0x14

.field static final CMD_TETHER_CONNECTION_CHANGED:I = 0xc

.field static final CMD_TETHER_MODE_DEAD:I = 0x1

.field static final CMD_TETHER_REQUESTED:I = 0x2

.field static final CMD_TETHER_UNREQUESTED:I = 0x3


# instance fields
.field mActualUpstreamIfaceName:Ljava/lang/String;

.field private mAvailable:Z

.field private mDefaultState:Lcom/android/internal/util/State;

.field mIfaceName:Ljava/lang/String;

.field private mInitialState:Lcom/android/internal/util/State;

.field mLastError:I

.field mMyUpstreamIfaceName:Ljava/lang/String;

.field private mStartingState:Lcom/android/internal/util/State;

.field private mTethered:Z

.field private mTetheredState:Lcom/android/internal/util/State;

.field private mUnavailableState:Lcom/android/internal/util/State;

.field mUsb:Z

.field final synthetic this$0:Lcom/android/server/connectivity/Tethering;


# direct methods
.method constructor <init>(Lcom/android/server/connectivity/Tethering;Ljava/lang/String;Landroid/os/Looper;Z)V
    .registers 6
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "looper"    # Landroid/os/Looper;
    .param p4, "usb"    # Z

    .prologue
    .line 2177
    iput-object p1, p0, this$0:Lcom/android/server/connectivity/Tethering;

    .line 2178
    invoke-direct {p0, p2, p3}, Lcom/android/internal/util/StateMachine;-><init>(Ljava/lang/String;Landroid/os/Looper;)V

    .line 2179
    iput-object p2, p0, mIfaceName:Ljava/lang/String;

    .line 2180
    iput-boolean p4, p0, mUsb:Z

    .line 2181
    const/4 v0, 0x0

    invoke-direct {p0, v0}, setLastError(I)V

    .line 2183
    new-instance v0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$InitialState;

    invoke-direct {v0, p0}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$InitialState;-><init>(Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;)V

    iput-object v0, p0, mInitialState:Lcom/android/internal/util/State;

    .line 2184
    iget-object v0, p0, mInitialState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v0}, addState(Lcom/android/internal/util/State;)V

    .line 2185
    new-instance v0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$StartingState;

    invoke-direct {v0, p0}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$StartingState;-><init>(Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;)V

    iput-object v0, p0, mStartingState:Lcom/android/internal/util/State;

    .line 2186
    iget-object v0, p0, mStartingState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v0}, addState(Lcom/android/internal/util/State;)V

    .line 2187
    new-instance v0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$TetheredState;

    invoke-direct {v0, p0}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$TetheredState;-><init>(Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;)V

    iput-object v0, p0, mTetheredState:Lcom/android/internal/util/State;

    .line 2188
    iget-object v0, p0, mTetheredState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v0}, addState(Lcom/android/internal/util/State;)V

    .line 2189
    new-instance v0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$UnavailableState;

    invoke-direct {v0, p0}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$UnavailableState;-><init>(Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;)V

    iput-object v0, p0, mUnavailableState:Lcom/android/internal/util/State;

    .line 2190
    iget-object v0, p0, mUnavailableState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v0}, addState(Lcom/android/internal/util/State;)V

    .line 2192
    iget-object v0, p0, mInitialState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v0}, setInitialState(Lcom/android/internal/util/State;)V

    .line 2193
    return-void
.end method

.method static synthetic access$3900(Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;Z)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;
    .param p1, "x1"    # Z

    .prologue
    .line 2129
    invoke-direct {p0, p1}, setAvailable(Z)V

    return-void
.end method

.method static synthetic access$4000(Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;Z)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;
    .param p1, "x1"    # Z

    .prologue
    .line 2129
    invoke-direct {p0, p1}, setTethered(Z)V

    return-void
.end method

.method static synthetic access$4200(Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;I)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;
    .param p1, "x1"    # I

    .prologue
    .line 2129
    invoke-direct {p0, p1}, setLastError(I)V

    return-void
.end method

.method static synthetic access$4300(Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;)Lcom/android/internal/util/State;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    .prologue
    .line 2129
    iget-object v0, p0, mStartingState:Lcom/android/internal/util/State;

    return-object v0
.end method

.method static synthetic access$4400(Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;Lcom/android/internal/util/IState;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 2129
    invoke-virtual {p0, p1}, transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$4500(Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;)Lcom/android/internal/util/State;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    .prologue
    .line 2129
    iget-object v0, p0, mUnavailableState:Lcom/android/internal/util/State;

    return-object v0
.end method

.method static synthetic access$4600(Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;Lcom/android/internal/util/IState;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 2129
    invoke-virtual {p0, p1}, transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$4800(Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;)Lcom/android/internal/util/State;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    .prologue
    .line 2129
    iget-object v0, p0, mInitialState:Lcom/android/internal/util/State;

    return-object v0
.end method

.method static synthetic access$4900(Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;Lcom/android/internal/util/IState;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 2129
    invoke-virtual {p0, p1}, transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$5000(Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;Lcom/android/internal/util/IState;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 2129
    invoke-virtual {p0, p1}, transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$5100(Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;)Lcom/android/internal/util/State;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    .prologue
    .line 2129
    iget-object v0, p0, mTetheredState:Lcom/android/internal/util/State;

    return-object v0
.end method

.method static synthetic access$5200(Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;Lcom/android/internal/util/IState;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 2129
    invoke-virtual {p0, p1}, transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$5300(Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;Lcom/android/internal/util/IState;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 2129
    invoke-virtual {p0, p1}, transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$5400(Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;Lcom/android/internal/util/IState;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 2129
    invoke-virtual {p0, p1}, transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$5600(Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;Lcom/android/internal/util/IState;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 2129
    invoke-virtual {p0, p1}, transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$5900(Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;Lcom/android/internal/util/IState;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 2129
    invoke-virtual {p0, p1}, transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$6000(Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;Lcom/android/internal/util/IState;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 2129
    invoke-virtual {p0, p1}, transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$6100(Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;Lcom/android/internal/util/IState;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 2129
    invoke-virtual {p0, p1}, transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$6200(Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;Lcom/android/internal/util/IState;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 2129
    invoke-virtual {p0, p1}, transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$6300(Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;Lcom/android/internal/util/IState;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 2129
    invoke-virtual {p0, p1}, transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$6400(Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;Lcom/android/internal/util/IState;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 2129
    invoke-virtual {p0, p1}, transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$6500(Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;Lcom/android/internal/util/IState;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 2129
    invoke-virtual {p0, p1}, transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method private setAvailable(Z)V
    .registers 4
    .param p1, "available"    # Z

    .prologue
    .line 2236
    iget-object v0, p0, this$0:Lcom/android/server/connectivity/Tethering;

    # getter for: Lcom/android/server/connectivity/Tethering;->mPublicSync:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/connectivity/Tethering;->access$300(Lcom/android/server/connectivity/Tethering;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 2237
    :try_start_7
    iput-boolean p1, p0, mAvailable:Z

    .line 2238
    monitor-exit v1

    .line 2239
    return-void

    .line 2238
    :catchall_b
    move-exception v0

    monitor-exit v1
    :try_end_d
    .catchall {:try_start_7 .. :try_end_d} :catchall_b

    throw v0
.end method

.method private setLastError(I)V
    .registers 5
    .param p1, "error"    # I

    .prologue
    .line 2216
    iget-object v0, p0, this$0:Lcom/android/server/connectivity/Tethering;

    # getter for: Lcom/android/server/connectivity/Tethering;->mPublicSync:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/connectivity/Tethering;->access$300(Lcom/android/server/connectivity/Tethering;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 2217
    :try_start_7
    iput p1, p0, mLastError:I

    .line 2219
    invoke-virtual {p0}, isErrored()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 2220
    iget-boolean v0, p0, mUsb:Z

    if-eqz v0, :cond_19

    .line 2223
    iget-object v0, p0, this$0:Lcom/android/server/connectivity/Tethering;

    const/4 v2, 0x0

    # invokes: Lcom/android/server/connectivity/Tethering;->configureUsbIface(Z)Z
    invoke-static {v0, v2}, Lcom/android/server/connectivity/Tethering;->access$3800(Lcom/android/server/connectivity/Tethering;Z)Z

    .line 2226
    :cond_19
    monitor-exit v1

    .line 2227
    return-void

    .line 2226
    :catchall_1b
    move-exception v0

    monitor-exit v1
    :try_end_1d
    .catchall {:try_start_7 .. :try_end_1d} :catchall_1b

    throw v0
.end method

.method private setTethered(Z)V
    .registers 4
    .param p1, "tethered"    # Z

    .prologue
    .line 2254
    iget-object v0, p0, this$0:Lcom/android/server/connectivity/Tethering;

    # getter for: Lcom/android/server/connectivity/Tethering;->mPublicSync:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/connectivity/Tethering;->access$300(Lcom/android/server/connectivity/Tethering;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 2255
    :try_start_7
    iput-boolean p1, p0, mTethered:Z

    .line 2256
    monitor-exit v1

    .line 2257
    return-void

    .line 2256
    :catchall_b
    move-exception v0

    monitor-exit v1
    :try_end_d
    .catchall {:try_start_7 .. :try_end_d} :catchall_b

    throw v0
.end method


# virtual methods
.method public getLastError()I
    .registers 3

    .prologue
    .line 2210
    iget-object v0, p0, this$0:Lcom/android/server/connectivity/Tethering;

    # getter for: Lcom/android/server/connectivity/Tethering;->mPublicSync:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/connectivity/Tethering;->access$300(Lcom/android/server/connectivity/Tethering;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 2211
    :try_start_7
    iget v0, p0, mLastError:I

    monitor-exit v1

    return v0

    .line 2212
    :catchall_b
    move-exception v0

    monitor-exit v1
    :try_end_d
    .catchall {:try_start_7 .. :try_end_d} :catchall_b

    throw v0
.end method

.method public getTethered()Ljava/lang/String;
    .registers 3

    .prologue
    .line 2248
    iget-object v0, p0, this$0:Lcom/android/server/connectivity/Tethering;

    # getter for: Lcom/android/server/connectivity/Tethering;->mPublicSync:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/connectivity/Tethering;->access$300(Lcom/android/server/connectivity/Tethering;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 2249
    :try_start_7
    iget-object v0, p0, mIfaceName:Ljava/lang/String;

    monitor-exit v1

    return-object v0

    .line 2250
    :catchall_b
    move-exception v0

    monitor-exit v1
    :try_end_d
    .catchall {:try_start_7 .. :try_end_d} :catchall_b

    throw v0
.end method

.method public isAvailable()Z
    .registers 3

    .prologue
    .line 2230
    iget-object v0, p0, this$0:Lcom/android/server/connectivity/Tethering;

    # getter for: Lcom/android/server/connectivity/Tethering;->mPublicSync:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/connectivity/Tethering;->access$300(Lcom/android/server/connectivity/Tethering;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 2231
    :try_start_7
    iget-boolean v0, p0, mAvailable:Z

    monitor-exit v1

    return v0

    .line 2232
    :catchall_b
    move-exception v0

    monitor-exit v1
    :try_end_d
    .catchall {:try_start_7 .. :try_end_d} :catchall_b

    throw v0
.end method

.method public isErrored()Z
    .registers 3

    .prologue
    .line 2260
    iget-object v0, p0, this$0:Lcom/android/server/connectivity/Tethering;

    # getter for: Lcom/android/server/connectivity/Tethering;->mPublicSync:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/connectivity/Tethering;->access$300(Lcom/android/server/connectivity/Tethering;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 2261
    :try_start_7
    iget v0, p0, mLastError:I

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_c
    monitor-exit v1

    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_c

    .line 2262
    :catchall_10
    move-exception v0

    monitor-exit v1
    :try_end_12
    .catchall {:try_start_7 .. :try_end_12} :catchall_10

    throw v0
.end method

.method public isTethered()Z
    .registers 3

    .prologue
    .line 2242
    iget-object v0, p0, this$0:Lcom/android/server/connectivity/Tethering;

    # getter for: Lcom/android/server/connectivity/Tethering;->mPublicSync:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/connectivity/Tethering;->access$300(Lcom/android/server/connectivity/Tethering;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 2243
    :try_start_7
    iget-boolean v0, p0, mTethered:Z

    monitor-exit v1

    return v0

    .line 2244
    :catchall_b
    move-exception v0

    monitor-exit v1
    :try_end_d
    .catchall {:try_start_7 .. :try_end_d} :catchall_b

    throw v0
.end method

.method setLastErrorAndTransitionToInitialState(I)V
    .registers 3
    .param p1, "error"    # I

    .prologue
    .line 2632
    invoke-direct {p0, p1}, setLastError(I)V

    .line 2633
    iget-object v0, p0, mInitialState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v0}, transitionTo(Lcom/android/internal/util/IState;)V

    .line 2634
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .prologue
    .line 2196
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1}, Ljava/lang/String;-><init>()V

    .line 2197
    .local v1, "res":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, mIfaceName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2198
    invoke-virtual {p0}, getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v0

    .line 2199
    .local v0, "current":Lcom/android/internal/util/IState;
    iget-object v2, p0, mInitialState:Lcom/android/internal/util/State;

    if-ne v0, v2, :cond_39

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "InitialState"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2200
    :cond_39
    iget-object v2, p0, mStartingState:Lcom/android/internal/util/State;

    if-ne v0, v2, :cond_50

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "StartingState"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2201
    :cond_50
    iget-object v2, p0, mTetheredState:Lcom/android/internal/util/State;

    if-ne v0, v2, :cond_67

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "TetheredState"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2202
    :cond_67
    iget-object v2, p0, mUnavailableState:Lcom/android/internal/util/State;

    if-ne v0, v2, :cond_7e

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "UnavailableState"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2203
    :cond_7e
    iget-boolean v2, p0, mAvailable:Z

    if-eqz v2, :cond_95

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " - Available"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2204
    :cond_95
    iget-boolean v2, p0, mTethered:Z

    if-eqz v2, :cond_ac

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " - Tethered"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2205
    :cond_ac
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " - lastError ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, mLastError:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2206
    return-object v1
.end method
