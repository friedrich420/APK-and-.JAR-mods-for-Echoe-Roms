.class Lcom/android/server/connectivity/Tethering$TetherMasterSM;
.super Lcom/android/internal/util/StateMachine;
.source "Tethering.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/connectivity/Tethering;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TetherMasterSM"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/connectivity/Tethering$TetherMasterSM$SetDnsForwardersErrorState;,
        Lcom/android/server/connectivity/Tethering$TetherMasterSM$StopTetheringErrorState;,
        Lcom/android/server/connectivity/Tethering$TetherMasterSM$StartTetheringErrorState;,
        Lcom/android/server/connectivity/Tethering$TetherMasterSM$SetIpForwardingDisabledErrorState;,
        Lcom/android/server/connectivity/Tethering$TetherMasterSM$SetIpForwardingEnabledErrorState;,
        Lcom/android/server/connectivity/Tethering$TetherMasterSM$ErrorState;,
        Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherModeAliveState;,
        Lcom/android/server/connectivity/Tethering$TetherMasterSM$InitialState;,
        Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;
    }
.end annotation


# static fields
.field private static final CELL_CONNECTION_RENEW_MS:I = 0x9c40

.field static final CMD_CELL_CONNECTION_RENEW:I = 0x4

.field static final CMD_DISCONNECT_DUN:I = 0x6

.field static final CMD_RETRY_UPSTREAM:I = 0x5

.field static final CMD_TETHER_MODE_REQUESTED:I = 0x1

.field static final CMD_TETHER_MODE_UNREQUESTED:I = 0x2

.field static final CMD_UPSTREAM_CHANGED:I = 0x3

.field private static final UPSTREAM_SETTLE_TIME_MS:I = 0x2710


# instance fields
.field private mActualUpstreamIfaceName:Ljava/lang/String;

.field private mCurrentConnectionSequence:I

.field private mInitialState:Lcom/android/internal/util/State;

.field private mMobileApnReserved:I

.field private mNotifyList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;",
            ">;"
        }
    .end annotation
.end field

.field protected mRetryCount:I

.field private mSequenceNumber:I

.field private mSetDnsForwardersErrorState:Lcom/android/internal/util/State;

.field private mSetIpForwardingDisabledErrorState:Lcom/android/internal/util/State;

.field private mSetIpForwardingEnabledErrorState:Lcom/android/internal/util/State;

.field private mStartTetheringErrorState:Lcom/android/internal/util/State;

.field private mStopTetheringErrorState:Lcom/android/internal/util/State;

.field private mTetherModeAliveState:Lcom/android/internal/util/State;

.field private mTetheredIfaceName:Ljava/lang/String;

.field private mUpstreamIfaceName:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/server/connectivity/Tethering;


# direct methods
.method constructor <init>(Lcom/android/server/connectivity/Tethering;Ljava/lang/String;Landroid/os/Looper;)V
    .registers 6
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "looper"    # Landroid/os/Looper;

    .prologue
    const/4 v1, 0x0

    .line 2686
    iput-object p1, p0, this$0:Lcom/android/server/connectivity/Tethering;

    .line 2687
    invoke-direct {p0, p2, p3}, Lcom/android/internal/util/StateMachine;-><init>(Ljava/lang/String;Landroid/os/Looper;)V

    .line 2672
    const/4 v0, -0x1

    iput v0, p0, mMobileApnReserved:I

    .line 2674
    iput-object v1, p0, mUpstreamIfaceName:Ljava/lang/String;

    .line 2676
    iput-object v1, p0, mTetheredIfaceName:Ljava/lang/String;

    .line 2677
    iput-object v1, p0, mActualUpstreamIfaceName:Ljava/lang/String;

    .line 2690
    new-instance v0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$InitialState;

    invoke-direct {v0, p0}, Lcom/android/server/connectivity/Tethering$TetherMasterSM$InitialState;-><init>(Lcom/android/server/connectivity/Tethering$TetherMasterSM;)V

    iput-object v0, p0, mInitialState:Lcom/android/internal/util/State;

    .line 2691
    iget-object v0, p0, mInitialState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v0}, addState(Lcom/android/internal/util/State;)V

    .line 2692
    new-instance v0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherModeAliveState;

    invoke-direct {v0, p0}, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherModeAliveState;-><init>(Lcom/android/server/connectivity/Tethering$TetherMasterSM;)V

    iput-object v0, p0, mTetherModeAliveState:Lcom/android/internal/util/State;

    .line 2693
    iget-object v0, p0, mTetherModeAliveState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v0}, addState(Lcom/android/internal/util/State;)V

    .line 2695
    new-instance v0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$SetIpForwardingEnabledErrorState;

    invoke-direct {v0, p0}, Lcom/android/server/connectivity/Tethering$TetherMasterSM$SetIpForwardingEnabledErrorState;-><init>(Lcom/android/server/connectivity/Tethering$TetherMasterSM;)V

    iput-object v0, p0, mSetIpForwardingEnabledErrorState:Lcom/android/internal/util/State;

    .line 2696
    iget-object v0, p0, mSetIpForwardingEnabledErrorState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v0}, addState(Lcom/android/internal/util/State;)V

    .line 2697
    new-instance v0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$SetIpForwardingDisabledErrorState;

    invoke-direct {v0, p0}, Lcom/android/server/connectivity/Tethering$TetherMasterSM$SetIpForwardingDisabledErrorState;-><init>(Lcom/android/server/connectivity/Tethering$TetherMasterSM;)V

    iput-object v0, p0, mSetIpForwardingDisabledErrorState:Lcom/android/internal/util/State;

    .line 2698
    iget-object v0, p0, mSetIpForwardingDisabledErrorState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v0}, addState(Lcom/android/internal/util/State;)V

    .line 2699
    new-instance v0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$StartTetheringErrorState;

    invoke-direct {v0, p0}, Lcom/android/server/connectivity/Tethering$TetherMasterSM$StartTetheringErrorState;-><init>(Lcom/android/server/connectivity/Tethering$TetherMasterSM;)V

    iput-object v0, p0, mStartTetheringErrorState:Lcom/android/internal/util/State;

    .line 2700
    iget-object v0, p0, mStartTetheringErrorState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v0}, addState(Lcom/android/internal/util/State;)V

    .line 2701
    new-instance v0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$StopTetheringErrorState;

    invoke-direct {v0, p0}, Lcom/android/server/connectivity/Tethering$TetherMasterSM$StopTetheringErrorState;-><init>(Lcom/android/server/connectivity/Tethering$TetherMasterSM;)V

    iput-object v0, p0, mStopTetheringErrorState:Lcom/android/internal/util/State;

    .line 2702
    iget-object v0, p0, mStopTetheringErrorState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v0}, addState(Lcom/android/internal/util/State;)V

    .line 2703
    new-instance v0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$SetDnsForwardersErrorState;

    invoke-direct {v0, p0}, Lcom/android/server/connectivity/Tethering$TetherMasterSM$SetDnsForwardersErrorState;-><init>(Lcom/android/server/connectivity/Tethering$TetherMasterSM;)V

    iput-object v0, p0, mSetDnsForwardersErrorState:Lcom/android/internal/util/State;

    .line 2704
    iget-object v0, p0, mSetDnsForwardersErrorState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v0}, addState(Lcom/android/internal/util/State;)V

    .line 2706
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, mNotifyList:Ljava/util/ArrayList;

    .line 2707
    iget-object v0, p0, mInitialState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v0}, setInitialState(Lcom/android/internal/util/State;)V

    .line 2708
    return-void
.end method

.method static synthetic access$6600(Lcom/android/server/connectivity/Tethering$TetherMasterSM;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    .prologue
    .line 2638
    iget v0, p0, mMobileApnReserved:I

    return v0
.end method

.method static synthetic access$6602(Lcom/android/server/connectivity/Tethering$TetherMasterSM;I)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/Tethering$TetherMasterSM;
    .param p1, "x1"    # I

    .prologue
    .line 2638
    iput p1, p0, mMobileApnReserved:I

    return p1
.end method

.method static synthetic access$6800(Lcom/android/server/connectivity/Tethering$TetherMasterSM;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    .prologue
    .line 2638
    iget v0, p0, mCurrentConnectionSequence:I

    return v0
.end method

.method static synthetic access$6804(Lcom/android/server/connectivity/Tethering$TetherMasterSM;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    .prologue
    .line 2638
    iget v0, p0, mCurrentConnectionSequence:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, mCurrentConnectionSequence:I

    return v0
.end method

.method static synthetic access$6900(Lcom/android/server/connectivity/Tethering$TetherMasterSM;)Ljava/util/ArrayList;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    .prologue
    .line 2638
    iget-object v0, p0, mNotifyList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$7000(Lcom/android/server/connectivity/Tethering$TetherMasterSM;)Lcom/android/internal/util/State;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    .prologue
    .line 2638
    iget-object v0, p0, mSetIpForwardingEnabledErrorState:Lcom/android/internal/util/State;

    return-object v0
.end method

.method static synthetic access$7100(Lcom/android/server/connectivity/Tethering$TetherMasterSM;Lcom/android/internal/util/IState;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/Tethering$TetherMasterSM;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 2638
    invoke-virtual {p0, p1}, transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$7200(Lcom/android/server/connectivity/Tethering$TetherMasterSM;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    .prologue
    .line 2638
    iget-object v0, p0, mTetheredIfaceName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$7202(Lcom/android/server/connectivity/Tethering$TetherMasterSM;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/Tethering$TetherMasterSM;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 2638
    iput-object p1, p0, mTetheredIfaceName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$7700(Lcom/android/server/connectivity/Tethering$TetherMasterSM;)Lcom/android/internal/util/State;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    .prologue
    .line 2638
    iget-object v0, p0, mStartTetheringErrorState:Lcom/android/internal/util/State;

    return-object v0
.end method

.method static synthetic access$7800(Lcom/android/server/connectivity/Tethering$TetherMasterSM;Lcom/android/internal/util/IState;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/Tethering$TetherMasterSM;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 2638
    invoke-virtual {p0, p1}, transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$7900(Lcom/android/server/connectivity/Tethering$TetherMasterSM;)Lcom/android/internal/util/State;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    .prologue
    .line 2638
    iget-object v0, p0, mStopTetheringErrorState:Lcom/android/internal/util/State;

    return-object v0
.end method

.method static synthetic access$8000(Lcom/android/server/connectivity/Tethering$TetherMasterSM;Lcom/android/internal/util/IState;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/Tethering$TetherMasterSM;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 2638
    invoke-virtual {p0, p1}, transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$8100(Lcom/android/server/connectivity/Tethering$TetherMasterSM;)Lcom/android/internal/util/State;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    .prologue
    .line 2638
    iget-object v0, p0, mSetIpForwardingDisabledErrorState:Lcom/android/internal/util/State;

    return-object v0
.end method

.method static synthetic access$8200(Lcom/android/server/connectivity/Tethering$TetherMasterSM;Lcom/android/internal/util/IState;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/Tethering$TetherMasterSM;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 2638
    invoke-virtual {p0, p1}, transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$8300(Lcom/android/server/connectivity/Tethering$TetherMasterSM;)Lcom/android/internal/util/State;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    .prologue
    .line 2638
    iget-object v0, p0, mInitialState:Lcom/android/internal/util/State;

    return-object v0
.end method

.method static synthetic access$8400(Lcom/android/server/connectivity/Tethering$TetherMasterSM;Lcom/android/internal/util/IState;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/Tethering$TetherMasterSM;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 2638
    invoke-virtual {p0, p1}, transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$8900(Lcom/android/server/connectivity/Tethering$TetherMasterSM;)Lcom/android/internal/util/State;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    .prologue
    .line 2638
    iget-object v0, p0, mSetDnsForwardersErrorState:Lcom/android/internal/util/State;

    return-object v0
.end method

.method static synthetic access$9000(Lcom/android/server/connectivity/Tethering$TetherMasterSM;Lcom/android/internal/util/IState;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/Tethering$TetherMasterSM;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 2638
    invoke-virtual {p0, p1}, transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$9100(Lcom/android/server/connectivity/Tethering$TetherMasterSM;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    .prologue
    .line 2638
    iget-object v0, p0, mUpstreamIfaceName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$9102(Lcom/android/server/connectivity/Tethering$TetherMasterSM;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/Tethering$TetherMasterSM;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 2638
    iput-object p1, p0, mUpstreamIfaceName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$9200(Lcom/android/server/connectivity/Tethering$TetherMasterSM;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    .prologue
    .line 2638
    iget-object v0, p0, mActualUpstreamIfaceName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$9202(Lcom/android/server/connectivity/Tethering$TetherMasterSM;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/Tethering$TetherMasterSM;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 2638
    iput-object p1, p0, mActualUpstreamIfaceName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$9300(Lcom/android/server/connectivity/Tethering$TetherMasterSM;Lcom/android/internal/util/IState;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/Tethering$TetherMasterSM;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 2638
    invoke-virtual {p0, p1}, transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$9400(Lcom/android/server/connectivity/Tethering$TetherMasterSM;)Lcom/android/internal/util/State;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    .prologue
    .line 2638
    iget-object v0, p0, mTetherModeAliveState:Lcom/android/internal/util/State;

    return-object v0
.end method

.method static synthetic access$9500(Lcom/android/server/connectivity/Tethering$TetherMasterSM;Lcom/android/internal/util/IState;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/Tethering$TetherMasterSM;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 2638
    invoke-virtual {p0, p1}, transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method
