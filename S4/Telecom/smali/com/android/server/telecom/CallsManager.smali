.class public final Lcom/android/server/telecom/CallsManager;
.super Lcom/android/server/telecom/Call$Listener;
.source "CallsManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/telecom/CallsManager$CallsManagerListener;
    }
.end annotation


# static fields
.field private static INSTANCE:Lcom/android/server/telecom/CallsManager;

.field private static final LIVE_CALL_STATES:[I

.field private static final OUTGOING_CALL_STATES:[I


# instance fields
.field private defaultSubscriptionChanged:Z

.field private isNeedAddLog:Z

.field private mAudioManager:Landroid/media/AudioManager;

.field public final mCallAudioManager:Lcom/android/server/telecom/CallAudioManager;

.field private final mCalls:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/android/server/telecom/Call;",
            ">;"
        }
    .end annotation
.end field

.field private final mConnectionServiceRepository$f45da5c:Lcom/android/server/telecom/ServiceBinder$Listener;

.field private final mContext:Landroid/content/Context;

.field private final mDtmfLocalTonePlayer:Lcom/android/server/telecom/DtmfLocalTonePlayer;

.field private mForegroundCall:Lcom/android/server/telecom/Call;

.field private final mHeadsetMediaButton:Lcom/android/server/telecom/HeadsetMediaButton;

.field private final mInCallController:Lcom/android/server/telecom/InCallController;

.field public final mInCallToneMonitor:Lcom/android/server/telecom/InCallToneMonitor;

.field private final mListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/android/server/telecom/CallsManager$CallsManagerListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mLocallyDisconnectingCalls:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/android/server/telecom/Call;",
            ">;"
        }
    .end annotation
.end field

.field private final mMissedCallNotifier:Lcom/android/server/telecom/MissedCallNotifier;

.field private final mPhoneAccountRegistrar:Lcom/android/server/telecom/PhoneAccountRegistrar;

.field private mPhoneState:I

.field private final mPhoneStateBroadcaster:Lcom/android/server/telecom/PhoneStateBroadcaster;

.field private final mProximitySensorManager:Lcom/android/server/telecom/ProximitySensorManager;

.field private final mRinger:Lcom/android/server/telecom/Ringer;

.field public final mSecCallLogManager:Lcom/android/server/telecom/secutils/SecCallLogManager;

.field private final mSecCallsManagerListener:Lcom/android/server/telecom/secutils/SecCallsManagerListener;

.field private final mSecPhoneStateListener:Lcom/android/server/telecom/secutils/SecPhoneStateListener;

.field private final mTtyManager:Lcom/android/server/telecom/TtyManager;

.field private mWB_AMR_state:Z

.field public final mWiredHeadsetManager:Lcom/android/server/telecom/WiredHeadsetManager;

.field private prevSubId:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 100
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/telecom/CallsManager;->INSTANCE:Lcom/android/server/telecom/CallsManager;

    .line 121
    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/server/telecom/CallsManager;->LIVE_CALL_STATES:[I

    .line 124
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/server/telecom/CallsManager;->OUTGOING_CALL_STATES:[I

    return-void

    .line 121
    :array_0
    .array-data 4
        0x1
        0x2
        0x3
        0x5
    .end array-data

    .line 124
    :array_1
    .array-data 4
        0x1
        0x2
        0x3
    .end array-data
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/server/telecom/MissedCallNotifier;Lcom/android/server/telecom/PhoneAccountRegistrar;)V
    .locals 7

    .prologue
    const v4, 0x3f666666    # 0.9f

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 191
    invoke-direct {p0}, Lcom/android/server/telecom/Call$Listener;-><init>()V

    .line 117
    iput-boolean v2, p0, Lcom/android/server/telecom/CallsManager;->defaultSubscriptionChanged:Z

    .line 119
    iput-boolean v3, p0, Lcom/android/server/telecom/CallsManager;->isNeedAddLog:Z

    .line 137
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    const/16 v1, 0x8

    invoke-direct {v0, v1, v4, v3}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    invoke-static {v0}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/telecom/CallsManager;->mCalls:Ljava/util/Set;

    .line 147
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    const/16 v1, 0x10

    invoke-direct {v0, v1, v4, v3}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    invoke-static {v0}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/telecom/CallsManager;->mListeners:Ljava/util/Set;

    .line 161
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/telecom/CallsManager;->mLocallyDisconnectingCalls:Ljava/util/Set;

    .line 169
    iput v2, p0, Lcom/android/server/telecom/CallsManager;->mPhoneState:I

    .line 171
    iput-boolean v2, p0, Lcom/android/server/telecom/CallsManager;->mWB_AMR_state:Z

    .line 192
    iput-object p1, p0, Lcom/android/server/telecom/CallsManager;->mContext:Landroid/content/Context;

    .line 193
    iput-object p3, p0, Lcom/android/server/telecom/CallsManager;->mPhoneAccountRegistrar:Lcom/android/server/telecom/PhoneAccountRegistrar;

    .line 194
    iput-object p2, p0, Lcom/android/server/telecom/CallsManager;->mMissedCallNotifier:Lcom/android/server/telecom/MissedCallNotifier;

    .line 195
    new-instance v6, Lcom/android/server/telecom/StatusBarNotifier;

    invoke-direct {v6, p1, p0}, Lcom/android/server/telecom/StatusBarNotifier;-><init>(Landroid/content/Context;Lcom/android/server/telecom/CallsManager;)V

    .line 196
    new-instance v0, Lcom/android/server/telecom/WiredHeadsetManager;

    invoke-direct {v0, p1}, Lcom/android/server/telecom/WiredHeadsetManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/telecom/CallsManager;->mWiredHeadsetManager:Lcom/android/server/telecom/WiredHeadsetManager;

    .line 197
    new-instance v0, Lcom/android/server/telecom/CallAudioManager;

    iget-object v1, p0, Lcom/android/server/telecom/CallsManager;->mWiredHeadsetManager:Lcom/android/server/telecom/WiredHeadsetManager;

    invoke-direct {v0, p1, v6, v1}, Lcom/android/server/telecom/CallAudioManager;-><init>(Landroid/content/Context;Lcom/android/server/telecom/StatusBarNotifier;Lcom/android/server/telecom/WiredHeadsetManager;)V

    iput-object v0, p0, Lcom/android/server/telecom/CallsManager;->mCallAudioManager:Lcom/android/server/telecom/CallAudioManager;

    .line 198
    new-instance v3, Lcom/android/server/telecom/InCallTonePlayer$Factory;

    iget-object v0, p0, Lcom/android/server/telecom/CallsManager;->mCallAudioManager:Lcom/android/server/telecom/CallAudioManager;

    invoke-direct {v3, v0}, Lcom/android/server/telecom/InCallTonePlayer$Factory;-><init>(Lcom/android/server/telecom/CallAudioManager;)V

    .line 199
    new-instance v0, Lcom/android/server/telecom/Ringer;

    iget-object v1, p0, Lcom/android/server/telecom/CallsManager;->mCallAudioManager:Lcom/android/server/telecom/CallAudioManager;

    iget-object v5, p0, Lcom/android/server/telecom/CallsManager;->mWiredHeadsetManager:Lcom/android/server/telecom/WiredHeadsetManager;

    move-object v2, p0

    move-object v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/server/telecom/Ringer;-><init>(Lcom/android/server/telecom/CallAudioManager;Lcom/android/server/telecom/CallsManager;Lcom/android/server/telecom/InCallTonePlayer$Factory;Landroid/content/Context;Lcom/android/server/telecom/WiredHeadsetManager;)V

    iput-object v0, p0, Lcom/android/server/telecom/CallsManager;->mRinger:Lcom/android/server/telecom/Ringer;

    .line 200
    new-instance v0, Lcom/android/server/telecom/HeadsetMediaButton;

    invoke-direct {v0, p1, p0}, Lcom/android/server/telecom/HeadsetMediaButton;-><init>(Landroid/content/Context;Lcom/android/server/telecom/CallsManager;)V

    iput-object v0, p0, Lcom/android/server/telecom/CallsManager;->mHeadsetMediaButton:Lcom/android/server/telecom/HeadsetMediaButton;

    .line 201
    new-instance v0, Lcom/android/server/telecom/TtyManager;

    iget-object v1, p0, Lcom/android/server/telecom/CallsManager;->mWiredHeadsetManager:Lcom/android/server/telecom/WiredHeadsetManager;

    invoke-direct {v0, p1, v1}, Lcom/android/server/telecom/TtyManager;-><init>(Landroid/content/Context;Lcom/android/server/telecom/WiredHeadsetManager;)V

    iput-object v0, p0, Lcom/android/server/telecom/CallsManager;->mTtyManager:Lcom/android/server/telecom/TtyManager;

    .line 202
    new-instance v0, Lcom/android/server/telecom/ProximitySensorManager;

    invoke-direct {v0, p1}, Lcom/android/server/telecom/ProximitySensorManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/telecom/CallsManager;->mProximitySensorManager:Lcom/android/server/telecom/ProximitySensorManager;

    .line 203
    new-instance v0, Lcom/android/server/telecom/PhoneStateBroadcaster;

    invoke-direct {v0}, Lcom/android/server/telecom/PhoneStateBroadcaster;-><init>()V

    iput-object v0, p0, Lcom/android/server/telecom/CallsManager;->mPhoneStateBroadcaster:Lcom/android/server/telecom/PhoneStateBroadcaster;

    .line 204
    new-instance v0, Lcom/android/server/telecom/secutils/SecPhoneStateListener;

    invoke-direct {v0, p1}, Lcom/android/server/telecom/secutils/SecPhoneStateListener;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/telecom/CallsManager;->mSecPhoneStateListener:Lcom/android/server/telecom/secutils/SecPhoneStateListener;

    .line 205
    new-instance v0, Lcom/android/server/telecom/secutils/SecCallLogManager;

    invoke-direct {v0, p1}, Lcom/android/server/telecom/secutils/SecCallLogManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/telecom/CallsManager;->mSecCallLogManager:Lcom/android/server/telecom/secutils/SecCallLogManager;

    .line 206
    new-instance v0, Lcom/android/server/telecom/secutils/SecCallsManagerListener;

    invoke-direct {v0, p1, p0}, Lcom/android/server/telecom/secutils/SecCallsManagerListener;-><init>(Landroid/content/Context;Lcom/android/server/telecom/CallsManager;)V

    iput-object v0, p0, Lcom/android/server/telecom/CallsManager;->mSecCallsManagerListener:Lcom/android/server/telecom/secutils/SecCallsManagerListener;

    .line 207
    new-instance v0, Lcom/android/server/telecom/InCallController;

    invoke-direct {v0, p1}, Lcom/android/server/telecom/InCallController;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/telecom/CallsManager;->mInCallController:Lcom/android/server/telecom/InCallController;

    .line 208
    new-instance v0, Lcom/android/server/telecom/DtmfLocalTonePlayer;

    invoke-direct {v0, p1}, Lcom/android/server/telecom/DtmfLocalTonePlayer;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/telecom/CallsManager;->mDtmfLocalTonePlayer:Lcom/android/server/telecom/DtmfLocalTonePlayer;

    .line 209
    new-instance v0, Lcom/android/server/telecom/ServiceBinder$Listener;

    iget-object v1, p0, Lcom/android/server/telecom/CallsManager;->mPhoneAccountRegistrar:Lcom/android/server/telecom/PhoneAccountRegistrar;

    invoke-direct {v0, v1, p1}, Lcom/android/server/telecom/ServiceBinder$Listener;-><init>(Lcom/android/server/telecom/PhoneAccountRegistrar;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/telecom/CallsManager;->mConnectionServiceRepository$f45da5c:Lcom/android/server/telecom/ServiceBinder$Listener;

    .line 211
    new-instance v0, Lcom/android/server/telecom/InCallToneMonitor;

    invoke-direct {v0, v3, p0}, Lcom/android/server/telecom/InCallToneMonitor;-><init>(Lcom/android/server/telecom/InCallTonePlayer$Factory;Lcom/android/server/telecom/CallsManager;)V

    iput-object v0, p0, Lcom/android/server/telecom/CallsManager;->mInCallToneMonitor:Lcom/android/server/telecom/InCallToneMonitor;

    .line 212
    const-string v0, "audio"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/android/server/telecom/CallsManager;->mAudioManager:Landroid/media/AudioManager;

    .line 214
    iget-object v0, p0, Lcom/android/server/telecom/CallsManager;->mListeners:Ljava/util/Set;

    invoke-interface {v0, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 215
    iget-object v0, p0, Lcom/android/server/telecom/CallsManager;->mListeners:Ljava/util/Set;

    iget-object v1, p0, Lcom/android/server/telecom/CallsManager;->mSecCallLogManager:Lcom/android/server/telecom/secutils/SecCallLogManager;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 216
    iget-object v0, p0, Lcom/android/server/telecom/CallsManager;->mListeners:Ljava/util/Set;

    iget-object v1, p0, Lcom/android/server/telecom/CallsManager;->mPhoneStateBroadcaster:Lcom/android/server/telecom/PhoneStateBroadcaster;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 217
    iget-object v0, p0, Lcom/android/server/telecom/CallsManager;->mListeners:Ljava/util/Set;

    iget-object v1, p0, Lcom/android/server/telecom/CallsManager;->mInCallController:Lcom/android/server/telecom/InCallController;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 218
    iget-object v0, p0, Lcom/android/server/telecom/CallsManager;->mListeners:Ljava/util/Set;

    iget-object v1, p0, Lcom/android/server/telecom/CallsManager;->mRinger:Lcom/android/server/telecom/Ringer;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 219
    iget-object v0, p0, Lcom/android/server/telecom/CallsManager;->mListeners:Ljava/util/Set;

    new-instance v1, Lcom/android/server/telecom/RingbackPlayer;

    invoke-direct {v1, p0, v3}, Lcom/android/server/telecom/RingbackPlayer;-><init>(Lcom/android/server/telecom/CallsManager;Lcom/android/server/telecom/InCallTonePlayer$Factory;)V

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 220
    iget-object v0, p0, Lcom/android/server/telecom/CallsManager;->mListeners:Ljava/util/Set;

    iget-object v1, p0, Lcom/android/server/telecom/CallsManager;->mInCallToneMonitor:Lcom/android/server/telecom/InCallToneMonitor;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 221
    iget-object v0, p0, Lcom/android/server/telecom/CallsManager;->mListeners:Ljava/util/Set;

    iget-object v1, p0, Lcom/android/server/telecom/CallsManager;->mCallAudioManager:Lcom/android/server/telecom/CallAudioManager;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 222
    iget-object v0, p0, Lcom/android/server/telecom/CallsManager;->mListeners:Ljava/util/Set;

    invoke-interface {v0, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 223
    iget-object v0, p0, Lcom/android/server/telecom/CallsManager;->mListeners:Ljava/util/Set;

    iget-object v1, p0, Lcom/android/server/telecom/CallsManager;->mDtmfLocalTonePlayer:Lcom/android/server/telecom/DtmfLocalTonePlayer;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 224
    iget-object v0, p0, Lcom/android/server/telecom/CallsManager;->mListeners:Ljava/util/Set;

    iget-object v1, p0, Lcom/android/server/telecom/CallsManager;->mHeadsetMediaButton:Lcom/android/server/telecom/HeadsetMediaButton;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 226
    iget-object v0, p0, Lcom/android/server/telecom/CallsManager;->mListeners:Ljava/util/Set;

    invoke-static {}, Lcom/android/server/telecom/rejectcallwithmessage/SecRespondViaSmsManager;->getInstance()Lcom/android/server/telecom/rejectcallwithmessage/SecRespondViaSmsManager;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 227
    iget-object v0, p0, Lcom/android/server/telecom/CallsManager;->mListeners:Ljava/util/Set;

    iget-object v1, p0, Lcom/android/server/telecom/CallsManager;->mProximitySensorManager:Lcom/android/server/telecom/ProximitySensorManager;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 228
    iget-object v0, p0, Lcom/android/server/telecom/CallsManager;->mListeners:Ljava/util/Set;

    iget-object v1, p0, Lcom/android/server/telecom/CallsManager;->mSecCallsManagerListener:Lcom/android/server/telecom/secutils/SecCallsManagerListener;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 229
    iget-object v0, p0, Lcom/android/server/telecom/CallsManager;->mListeners:Ljava/util/Set;

    iget-object v1, p0, Lcom/android/server/telecom/CallsManager;->mSecPhoneStateListener:Lcom/android/server/telecom/secutils/SecPhoneStateListener;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 230
    iget-object v0, p0, Lcom/android/server/telecom/CallsManager;->mListeners:Ljava/util/Set;

    invoke-static {}, Lcom/android/server/telecom/operator/usa/TelecomExtensionManager;->getInstance()Lcom/android/server/telecom/operator/usa/TelecomExtensionManager;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 232
    iget-object v0, p0, Lcom/android/server/telecom/CallsManager;->mInCallController:Lcom/android/server/telecom/InCallController;

    if-eqz v0, :cond_0

    .line 233
    iget-object v0, p0, Lcom/android/server/telecom/CallsManager;->mInCallController:Lcom/android/server/telecom/InCallController;

    invoke-virtual {v0}, Lcom/android/server/telecom/InCallController;->doEarlyServiceBinding()V

    .line 235
    :cond_0
    return-void
.end method

.method private static activateSpeakerIfDocked()Z
    .locals 2

    .prologue
    .line 816
    const/4 v0, 0x0

    .line 817
    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->isDockOn()Z

    move-result v1

    if-nez v1, :cond_0

    sget v1, Lcom/android/server/telecom/secutils/TeleBroadcastReceiver;->mDockState:I

    if-eqz v1, :cond_1

    .line 818
    :cond_0
    const/4 v0, 0x1

    .line 820
    :cond_1
    return v0
.end method

.method private addCall(Lcom/android/server/telecom/Call;)V
    .locals 3

    .prologue
    .line 1305
    const-string v0, "addCall(%s)"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1307
    invoke-virtual {p1, p0}, Lcom/android/server/telecom/Call;->addListener(Lcom/android/server/telecom/Call$Listener;)V

    .line 1308
    iget-object v0, p0, Lcom/android/server/telecom/CallsManager;->mCalls:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1312
    iget-object v0, p0, Lcom/android/server/telecom/CallsManager;->mListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/telecom/CallsManager$CallsManagerListener;

    .line 1313
    invoke-virtual {v0, p1}, Lcom/android/server/telecom/CallsManager$CallsManagerListener;->onCallAdded(Lcom/android/server/telecom/Call;)V

    goto :goto_0

    .line 1315
    :cond_0
    invoke-direct {p0}, Lcom/android/server/telecom/CallsManager;->updateForegroundCall()V

    .line 1316
    return-void
.end method

.method static conference(Lcom/android/server/telecom/Call;Lcom/android/server/telecom/Call;)V
    .locals 0

    .prologue
    .line 725
    invoke-virtual {p0, p1}, Lcom/android/server/telecom/Call;->conferenceWith(Lcom/android/server/telecom/Call;)V

    .line 726
    return-void
.end method

.method private varargs getFirstCallWithState(Lcom/android/server/telecom/Call;[I)Lcom/android/server/telecom/Call;
    .locals 7

    .prologue
    .line 1214
    array-length v2, p2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_5

    aget v3, p2, v1

    .line 1216
    iget-object v0, p0, Lcom/android/server/telecom/CallsManager;->mForegroundCall:Lcom/android/server/telecom/Call;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/telecom/CallsManager;->mForegroundCall:Lcom/android/server/telecom/Call;

    invoke-virtual {v0}, Lcom/android/server/telecom/Call;->getState()I

    move-result v0

    if-ne v0, v3, :cond_1

    .line 1217
    invoke-static {}, Lcom/android/server/telecom/secutils/TelecomUtils;->checkMultiSimDsda()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1218
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/android/server/telecom/Call;->getPhoneId()I

    move-result v0

    iget-object v4, p0, Lcom/android/server/telecom/CallsManager;->mForegroundCall:Lcom/android/server/telecom/Call;

    invoke-virtual {v4}, Lcom/android/server/telecom/Call;->getPhoneId()I

    move-result v4

    if-ne v0, v4, :cond_1

    .line 1219
    iget-object v0, p0, Lcom/android/server/telecom/CallsManager;->mForegroundCall:Lcom/android/server/telecom/Call;

    .line 1246
    :goto_1
    return-object v0

    .line 1221
    :cond_0
    iget-object v0, p0, Lcom/android/server/telecom/CallsManager;->mForegroundCall:Lcom/android/server/telecom/Call;

    goto :goto_1

    .line 1225
    :cond_1
    iget-object v0, p0, Lcom/android/server/telecom/CallsManager;->mCalls:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/telecom/Call;

    .line 1226
    invoke-static {p1, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 1227
    invoke-virtual {v0}, Lcom/android/server/telecom/Call;->getParentCall()Lcom/android/server/telecom/Call;

    move-result-object v5

    if-nez v5, :cond_2

    .line 1232
    invoke-static {}, Lcom/android/server/telecom/secutils/TelecomUtils;->checkMultiSimDsda()Z

    move-result v5

    if-eqz v5, :cond_3

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/android/server/telecom/Call;->getPhoneId()I

    move-result v5

    invoke-virtual {v0}, Lcom/android/server/telecom/Call;->getPhoneId()I

    move-result v6

    if-ne v5, v6, :cond_2

    .line 1238
    :cond_3
    invoke-virtual {v0}, Lcom/android/server/telecom/Call;->getState()I

    move-result v5

    if-ne v3, v5, :cond_2

    goto :goto_1

    .line 1214
    :cond_4
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 1246
    :cond_5
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static getInstance()Lcom/android/server/telecom/CallsManager;
    .locals 1

    .prologue
    .line 175
    sget-object v0, Lcom/android/server/telecom/CallsManager;->INSTANCE:Lcom/android/server/telecom/CallsManager;

    return-object v0
.end method

.method private varargs getNumCallsWithState([I)I
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 1520
    array-length v3, p1

    move v2, v0

    :goto_0
    if-ge v2, v3, :cond_1

    aget v4, p1, v2

    .line 1521
    iget-object v1, p0, Lcom/android/server/telecom/CallsManager;->mCalls:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v1, v0

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/telecom/Call;

    .line 1522
    invoke-virtual {v0}, Lcom/android/server/telecom/Call;->getState()I

    move-result v0

    if-ne v0, v4, :cond_2

    .line 1523
    add-int/lit8 v0, v1, 0x1

    :goto_2
    move v1, v0

    .line 1525
    goto :goto_1

    .line 1520
    :cond_0
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    move v0, v1

    goto :goto_0

    .line 1527
    :cond_1
    return v0

    :cond_2
    move v0, v1

    goto :goto_2
.end method

.method static initialize(Lcom/android/server/telecom/CallsManager;)V
    .locals 0

    .prologue
    .line 184
    sput-object p0, Lcom/android/server/telecom/CallsManager;->INSTANCE:Lcom/android/server/telecom/CallsManager;

    .line 185
    return-void
.end method

.method private makeRoomForOutgoingCall(Lcom/android/server/telecom/Call;Z)Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 1547
    sget-object v0, Lcom/android/server/telecom/CallsManager;->LIVE_CALL_STATES:[I

    invoke-direct {p0, v0}, Lcom/android/server/telecom/CallsManager;->getNumCallsWithState([I)I

    move-result v0

    if-gt v1, v0, :cond_2

    move v0, v1

    .line 1548
    :goto_0
    invoke-static {}, Lcom/android/server/telecom/secutils/TelecomUtils;->checkMultiSimDsda()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1552
    iget-object v0, p0, Lcom/android/server/telecom/CallsManager;->mCalls:Ljava/util/Set;

    invoke-static {v0, p1}, Lcom/android/server/telecom/secutils/TelecomUtilsMultiSIM;->hasMultiSimMaximumLiveCalls(Ljava/util/Collection;Lcom/android/server/telecom/Call;)Z

    move-result v0

    .line 1554
    :cond_0
    if-eqz v0, :cond_d

    .line 1557
    sget-object v0, Lcom/android/server/telecom/CallsManager;->LIVE_CALL_STATES:[I

    invoke-direct {p0, p1, v0}, Lcom/android/server/telecom/CallsManager;->getFirstCallWithState(Lcom/android/server/telecom/Call;[I)Lcom/android/server/telecom/Call;

    move-result-object v3

    .line 1559
    if-ne p1, v3, :cond_3

    .line 1633
    :cond_1
    :goto_1
    return v1

    :cond_2
    move v0, v2

    .line 1547
    goto :goto_0

    .line 1566
    :cond_3
    sget-object v0, Lcom/android/server/telecom/CallsManager;->OUTGOING_CALL_STATES:[I

    invoke-direct {p0, v0}, Lcom/android/server/telecom/CallsManager;->getNumCallsWithState([I)I

    move-result v0

    if-gt v1, v0, :cond_5

    move v0, v1

    .line 1567
    :goto_2
    invoke-static {}, Lcom/android/server/telecom/secutils/TelecomUtils;->checkMultiSimDsda()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1568
    iget-object v0, p0, Lcom/android/server/telecom/CallsManager;->mCalls:Ljava/util/Set;

    invoke-static {v0, p1}, Lcom/android/server/telecom/secutils/TelecomUtilsMultiSIM;->hasMultiSimMaximumOutgoingCalls(Ljava/util/Collection;Lcom/android/server/telecom/Call;)Z

    move-result v0

    .line 1570
    :cond_4
    if-eqz v0, :cond_7

    .line 1574
    const-string v0, "feature_chn"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 1575
    if-eqz p2, :cond_6

    .line 1576
    sget-object v0, Lcom/android/server/telecom/CallsManager;->OUTGOING_CALL_STATES:[I

    const/4 v3, 0x0

    invoke-direct {p0, v3, v0}, Lcom/android/server/telecom/CallsManager;->getFirstCallWithState(Lcom/android/server/telecom/Call;[I)Lcom/android/server/telecom/Call;

    move-result-object v0

    .line 1577
    invoke-virtual {v0}, Lcom/android/server/telecom/Call;->isEmergencyCall()Z

    move-result v3

    if-nez v3, :cond_6

    .line 1578
    invoke-virtual {v0}, Lcom/android/server/telecom/Call;->disconnect()V

    goto :goto_1

    :cond_5
    move v0, v2

    .line 1566
    goto :goto_2

    :cond_6
    move v1, v2

    .line 1583
    goto :goto_1

    .line 1586
    :cond_7
    new-array v0, v1, [I

    const/4 v4, 0x6

    aput v4, v0, v2

    invoke-direct {p0, v0}, Lcom/android/server/telecom/CallsManager;->getNumCallsWithState([I)I

    move-result v0

    if-gt v1, v0, :cond_9

    move v0, v1

    .line 1587
    :goto_3
    invoke-static {}, Lcom/android/server/telecom/secutils/TelecomUtils;->checkMultiSimDsda()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 1588
    iget-object v0, p0, Lcom/android/server/telecom/CallsManager;->mCalls:Ljava/util/Set;

    invoke-static {v0, p1}, Lcom/android/server/telecom/secutils/TelecomUtilsMultiSIM;->hasMultiSimMaximumHoldingCalls(Ljava/util/Collection;Lcom/android/server/telecom/Call;)Z

    move-result v0

    .line 1590
    :cond_8
    if-eqz v0, :cond_b

    .line 1592
    if-eqz p2, :cond_a

    .line 1595
    invoke-virtual {v3}, Lcom/android/server/telecom/Call;->disconnect()V

    goto :goto_1

    :cond_9
    move v0, v2

    .line 1586
    goto :goto_3

    :cond_a
    move v1, v2

    .line 1598
    goto :goto_1

    .line 1606
    :cond_b
    invoke-virtual {v3}, Lcom/android/server/telecom/Call;->getTargetPhoneAccount()Landroid/telecom/PhoneAccountHandle;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/server/telecom/Call;->getTargetPhoneAccount()Landroid/telecom/PhoneAccountHandle;

    move-result-object v4

    invoke-static {v0, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1608
    invoke-virtual {p1}, Lcom/android/server/telecom/Call;->getTargetPhoneAccount()Landroid/telecom/PhoneAccountHandle;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1619
    invoke-virtual {v3, v1}, Lcom/android/server/telecom/Call;->can(I)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 1620
    invoke-virtual {v3}, Lcom/android/server/telecom/Call;->hold()V

    goto :goto_1

    :cond_c
    move v1, v2

    .line 1625
    goto :goto_1

    .line 1628
    :cond_d
    const-string v0, "feature_ctc"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/android/server/telecom/secutils/TelecomUtils;->checkMultiSimDsda()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1629
    iget-object v0, p0, Lcom/android/server/telecom/CallsManager;->mCalls:Ljava/util/Set;

    sget-object v2, Lcom/android/server/telecom/CallsManager;->LIVE_CALL_STATES:[I

    invoke-static {v0, p1, v2}, Lcom/android/server/telecom/secutils/TelecomUtilsMultiSIM;->getOtherSlotFirstCallWithState(Ljava/util/Collection;Lcom/android/server/telecom/Call;[I)Lcom/android/server/telecom/Call;

    move-result-object v0

    .line 1630
    if-eqz v0, :cond_1

    invoke-virtual {v0, v1}, Lcom/android/server/telecom/Call;->can(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1631
    invoke-virtual {v0}, Lcom/android/server/telecom/Call;->hold()V

    goto/16 :goto_1
.end method

.method private setCallState(Lcom/android/server/telecom/Call;I)V
    .locals 6

    .prologue
    const/4 v5, 0x3

    .line 1360
    if-nez p1, :cond_1

    .line 1392
    :cond_0
    :goto_0
    return-void

    .line 1363
    :cond_1
    invoke-virtual {p1}, Lcom/android/server/telecom/Call;->getState()I

    move-result v1

    .line 1364
    const-string v0, "setCallState %s -> %s, call: %s"

    new-array v2, v5, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v1}, Landroid/telecom/CallState;->toString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p2}, Landroid/telecom/CallState;->toString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    aput-object p1, v2, v3

    invoke-static {p0, v0, v2}, Lcom/android/server/telecom/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1366
    if-eq p2, v1, :cond_4

    .line 1374
    invoke-virtual {p1, p2}, Lcom/android/server/telecom/Call;->setState(I)V

    .line 1375
    invoke-direct {p0, p2}, Lcom/android/server/telecom/CallsManager;->updatePhoneState(I)V

    .line 1377
    iget-object v0, p0, Lcom/android/server/telecom/CallsManager;->mCalls:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1378
    iget-object v0, p0, Lcom/android/server/telecom/CallsManager;->mListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/telecom/CallsManager$CallsManagerListener;

    .line 1379
    invoke-virtual {v0, p1, v1, p2}, Lcom/android/server/telecom/CallsManager$CallsManagerListener;->onCallStateChanged(Lcom/android/server/telecom/Call;II)V

    goto :goto_1

    .line 1381
    :cond_2
    invoke-direct {p0}, Lcom/android/server/telecom/CallsManager;->updateForegroundCall()V

    goto :goto_0

    .line 1386
    :cond_3
    iget-boolean v0, p0, Lcom/android/server/telecom/CallsManager;->isNeedAddLog:Z

    if-eqz v0, :cond_0

    .line 1387
    invoke-static {p1, p2}, Lcom/android/server/telecom/secutils/TelecomUtils;->addCallLogForNotRegisteredCall$44b8cb48(Lcom/android/server/telecom/Call;I)V

    goto :goto_0

    .line 1390
    :cond_4
    if-ne p2, v5, :cond_0

    invoke-virtual {p0}, Lcom/android/server/telecom/CallsManager;->hasActiveOrHoldingCall()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1391
    invoke-direct {p0}, Lcom/android/server/telecom/CallsManager;->updateForegroundCall()V

    goto :goto_0
.end method

.method private updateForegroundCall()V
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 1437
    iget-object v0, p0, Lcom/android/server/telecom/CallsManager;->mCalls:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move-object v1, v2

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/telecom/Call;

    .line 1444
    const-string v4, "feature_multisim_dsda"

    invoke-static {v4}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    sget-object v4, Lcom/android/server/telecom/CallsManager;->LIVE_CALL_STATES:[I

    invoke-direct {p0, v2, v4}, Lcom/android/server/telecom/CallsManager;->getFirstCallWithState(Lcom/android/server/telecom/Call;[I)Lcom/android/server/telecom/Call;

    move-result-object v4

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/android/server/telecom/CallsManager;->mCalls:Ljava/util/Set;

    invoke-static {v4}, Lcom/android/server/telecom/secutils/TelecomUtilsMultiSIM;->isDualCallRinging(Ljava/util/Collection;)Z

    move-result v4

    if-eqz v4, :cond_2

    :cond_1
    invoke-static {}, Lcom/android/server/telecom/secutils/TelecomUtilsMultiSIM;->isDualSim()Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/server/telecom/CallsManager;->mCalls:Ljava/util/Set;

    invoke-static {v4}, Lcom/android/server/telecom/secutils/TelecomUtilsMultiSIM;->isDualSimInCall(Ljava/util/Collection;)Z

    move-result v4

    if-eqz v4, :cond_2

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/android/server/telecom/Call;->getPhoneId()I

    move-result v4

    invoke-static {}, Lcom/android/server/telecom/secutils/TelecomUtilsMultiSIM;->getMultiSimDSDAForegoundPhoneId()I

    move-result v5

    if-ne v4, v5, :cond_0

    .line 1449
    :cond_2
    invoke-virtual {v0}, Lcom/android/server/telecom/Call;->getParentCall()Lcom/android/server/telecom/Call;

    move-result-object v4

    if-nez v4, :cond_0

    .line 1454
    invoke-virtual {v0}, Lcom/android/server/telecom/Call;->isActive()Z

    move-result v4

    if-nez v4, :cond_3

    invoke-virtual {v0}, Lcom/android/server/telecom/Call;->getState()I

    move-result v4

    const/4 v5, 0x3

    if-ne v4, v5, :cond_5

    .line 1471
    :cond_3
    :goto_1
    iget-object v1, p0, Lcom/android/server/telecom/CallsManager;->mForegroundCall:Lcom/android/server/telecom/Call;

    if-eq v0, v1, :cond_7

    .line 1472
    const-string v1, "Updating foreground call, %s -> %s."

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/server/telecom/CallsManager;->mForegroundCall:Lcom/android/server/telecom/Call;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object v0, v2, v3

    invoke-static {p0, v1, v2}, Lcom/android/server/telecom/Log;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1473
    iget-object v1, p0, Lcom/android/server/telecom/CallsManager;->mForegroundCall:Lcom/android/server/telecom/Call;

    .line 1474
    iput-object v0, p0, Lcom/android/server/telecom/CallsManager;->mForegroundCall:Lcom/android/server/telecom/Call;

    .line 1476
    iget-object v0, p0, Lcom/android/server/telecom/CallsManager;->mForegroundCall:Lcom/android/server/telecom/Call;

    if-eqz v0, :cond_4

    .line 1477
    iget-object v0, p0, Lcom/android/server/telecom/CallsManager;->mForegroundCall:Lcom/android/server/telecom/Call;

    iget-boolean v2, p0, Lcom/android/server/telecom/CallsManager;->mWB_AMR_state:Z

    invoke-static {v0, v2}, Lcom/android/server/telecom/secutils/TelecomUtils;->updateWideBand(Lcom/android/server/telecom/Call;Z)V

    .line 1480
    :cond_4
    iget-object v0, p0, Lcom/android/server/telecom/CallsManager;->mListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/telecom/CallsManager$CallsManagerListener;

    .line 1481
    iget-object v3, p0, Lcom/android/server/telecom/CallsManager;->mForegroundCall:Lcom/android/server/telecom/Call;

    invoke-virtual {v0, v1, v3}, Lcom/android/server/telecom/CallsManager$CallsManagerListener;->onForegroundCallChanged(Lcom/android/server/telecom/Call;Lcom/android/server/telecom/Call;)V

    goto :goto_2

    .line 1465
    :cond_5
    invoke-virtual {v0}, Lcom/android/server/telecom/Call;->isAlive()Z

    move-result v4

    if-nez v4, :cond_6

    invoke-virtual {v0}, Lcom/android/server/telecom/Call;->getState()I

    move-result v4

    const/4 v5, 0x4

    if-ne v4, v5, :cond_8

    :cond_6
    :goto_3
    move-object v1, v0

    .line 1469
    goto/16 :goto_0

    .line 1484
    :cond_7
    return-void

    :cond_8
    move-object v0, v1

    goto :goto_3

    :cond_9
    move-object v0, v1

    goto :goto_1
.end method

.method private updatePhoneState(I)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x4

    const/4 v3, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1395
    packed-switch p1, :pswitch_data_0

    .line 1407
    iput v2, p0, Lcom/android/server/telecom/CallsManager;->mPhoneState:I

    .line 1410
    :goto_0
    iget v0, p0, Lcom/android/server/telecom/CallsManager;->mPhoneState:I

    if-nez v0, :cond_2

    .line 1412
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    invoke-direct {p0, v5, v0}, Lcom/android/server/telecom/CallsManager;->getFirstCallWithState(Lcom/android/server/telecom/Call;[I)Lcom/android/server/telecom/Call;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 1413
    iput v3, p0, Lcom/android/server/telecom/CallsManager;->mPhoneState:I

    .line 1418
    :cond_0
    :goto_1
    iget-object v0, p0, Lcom/android/server/telecom/CallsManager;->mCalls:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/telecom/Call;

    invoke-virtual {v0}, Lcom/android/server/telecom/Call;->getState()I

    move-result v0

    if-ne v0, v4, :cond_1

    const-string v0, "Ringing"

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {p0, v0, v3}, Lcom/android/server/telecom/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    move v0, v1

    :goto_2
    if-eqz v0, :cond_2

    .line 1419
    iput v1, p0, Lcom/android/server/telecom/CallsManager;->mPhoneState:I

    .line 1422
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "updatePhoneState: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/server/telecom/CallsManager;->mPhoneState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1423
    return-void

    .line 1399
    :pswitch_0
    iput v3, p0, Lcom/android/server/telecom/CallsManager;->mPhoneState:I

    goto :goto_0

    .line 1402
    :pswitch_1
    iput v1, p0, Lcom/android/server/telecom/CallsManager;->mPhoneState:I

    goto :goto_0

    .line 1414
    :cond_3
    new-array v0, v1, [I

    aput v4, v0, v2

    invoke-direct {p0, v5, v0}, Lcom/android/server/telecom/CallsManager;->getFirstCallWithState(Lcom/android/server/telecom/Call;[I)Lcom/android/server/telecom/Call;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1415
    const-string v0, "foreground call is ringing"

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {p0, v0, v3}, Lcom/android/server/telecom/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1416
    iput v1, p0, Lcom/android/server/telecom/CallsManager;->mPhoneState:I

    goto :goto_1

    .line 1418
    :cond_4
    const-string v0, "isRinging()...false"

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {p0, v0, v3}, Lcom/android/server/telecom/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    move v0, v2

    goto :goto_2

    .line 1395
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch

    .line 1412
    :array_0
    .array-data 4
        0x3
        0x5
        0x6
    .end array-data
.end method


# virtual methods
.method final addListener(Lcom/android/server/telecom/CallsManager$CallsManagerListener;)V
    .locals 1

    .prologue
    .line 441
    iget-object v0, p0, Lcom/android/server/telecom/CallsManager;->mListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 442
    return-void
.end method

.method final addNewUnknownCall(Landroid/telecom/PhoneAccountHandle;Landroid/os/Bundle;)V
    .locals 9

    .prologue
    const/4 v4, 0x0

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 484
    const-string v0, "android.telecom.extra.UNKNOWN_CALL_HANDLE"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/net/Uri;

    .line 485
    const-string v0, "addNewUnknownCall with handle: %s"

    new-array v1, v7, [Ljava/lang/Object;

    invoke-static {v3}, Lcom/android/server/telecom/Log;->pii(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v8

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 486
    new-instance v0, Lcom/android/server/telecom/Call;

    iget-object v1, p0, Lcom/android/server/telecom/CallsManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/telecom/CallsManager;->mConnectionServiceRepository$f45da5c:Lcom/android/server/telecom/ServiceBinder$Listener;

    move-object v5, v4

    move-object v6, p1

    invoke-direct/range {v0 .. v8}, Lcom/android/server/telecom/Call;-><init>(Landroid/content/Context;Lcom/android/server/telecom/ServiceBinder$Listener;Landroid/net/Uri;Landroid/telecom/GatewayInfo;Landroid/telecom/PhoneAccountHandle;Landroid/telecom/PhoneAccountHandle;ZZ)V

    .line 497
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/android/server/telecom/Call;->setConnectTimeMillis(J)V

    .line 498
    invoke-virtual {v0, v7}, Lcom/android/server/telecom/Call;->setIsUnknown(Z)V

    .line 499
    invoke-virtual {v0, p2}, Lcom/android/server/telecom/Call;->setExtras(Landroid/os/Bundle;)V

    .line 500
    invoke-virtual {v0, p0}, Lcom/android/server/telecom/Call;->addListener(Lcom/android/server/telecom/Call$Listener;)V

    .line 501
    iget-object v1, p0, Lcom/android/server/telecom/CallsManager;->mPhoneAccountRegistrar:Lcom/android/server/telecom/PhoneAccountRegistrar;

    invoke-virtual {v0, v1}, Lcom/android/server/telecom/Call;->startCreateConnection(Lcom/android/server/telecom/PhoneAccountRegistrar;)V

    .line 502
    return-void
.end method

.method public final answerCall(Lcom/android/server/telecom/Call;I)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 737
    iget-object v0, p0, Lcom/android/server/telecom/CallsManager;->mCalls:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 738
    const-string v0, "Request to answer a non-existent call %s"

    new-array v1, v3, [Ljava/lang/Object;

    aput-object p1, v1, v4

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 775
    :goto_0
    return-void

    .line 742
    :cond_0
    iget-object v0, p0, Lcom/android/server/telecom/CallsManager;->mForegroundCall:Lcom/android/server/telecom/Call;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/telecom/CallsManager;->mForegroundCall:Lcom/android/server/telecom/Call;

    if-eq v0, p1, :cond_2

    iget-object v0, p0, Lcom/android/server/telecom/CallsManager;->mForegroundCall:Lcom/android/server/telecom/Call;

    invoke-virtual {v0}, Lcom/android/server/telecom/Call;->isActive()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/telecom/CallsManager;->mForegroundCall:Lcom/android/server/telecom/Call;

    invoke-virtual {v0}, Lcom/android/server/telecom/Call;->getState()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 745
    :cond_1
    iget-object v0, p0, Lcom/android/server/telecom/CallsManager;->mForegroundCall:Lcom/android/server/telecom/Call;

    invoke-virtual {v0}, Lcom/android/server/telecom/Call;->getCallCapabilities()I

    move-result v0

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_3

    .line 749
    iget-object v0, p0, Lcom/android/server/telecom/CallsManager;->mForegroundCall:Lcom/android/server/telecom/Call;

    invoke-virtual {v0}, Lcom/android/server/telecom/Call;->getConnectionService()Lcom/android/server/telecom/ConnectionServiceWrapper;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/server/telecom/Call;->getConnectionService()Lcom/android/server/telecom/ConnectionServiceWrapper;

    move-result-object v1

    if-eq v0, v1, :cond_2

    .line 750
    iget-object v0, p0, Lcom/android/server/telecom/CallsManager;->mForegroundCall:Lcom/android/server/telecom/Call;

    invoke-virtual {v0}, Lcom/android/server/telecom/Call;->disconnect()V

    .line 761
    :cond_2
    :goto_1
    invoke-static {v3}, Lcom/android/server/telecom/secutils/TelecomUtils;->setIncomingCallAnswered(Z)V

    .line 762
    iget-object v0, p0, Lcom/android/server/telecom/CallsManager;->mListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/telecom/CallsManager$CallsManagerListener;

    .line 763
    invoke-virtual {v0, p1}, Lcom/android/server/telecom/CallsManager$CallsManagerListener;->onIncomingCallAnswered(Lcom/android/server/telecom/Call;)V

    goto :goto_2

    .line 753
    :cond_3
    const-string v0, "Holding active/dialing call %s before answering incoming call %s."

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/android/server/telecom/CallsManager;->mForegroundCall:Lcom/android/server/telecom/Call;

    aput-object v2, v1, v4

    aput-object p1, v1, v3

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 755
    iget-object v0, p0, Lcom/android/server/telecom/CallsManager;->mForegroundCall:Lcom/android/server/telecom/Call;

    invoke-virtual {v0}, Lcom/android/server/telecom/Call;->hold()V

    goto :goto_1

    .line 766
    :cond_4
    invoke-static {}, Lcom/android/server/telecom/secutils/TelecomUtils;->checkMultiSimDsda()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 767
    invoke-virtual {p1}, Lcom/android/server/telecom/Call;->getPhoneId()I

    move-result v0

    invoke-static {v0}, Lcom/android/server/telecom/secutils/TelecomUtilsMultiSIM;->setAudioPath(I)V

    .line 771
    :cond_5
    iget-object v0, p0, Lcom/android/server/telecom/CallsManager;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->isSpeakerphoneOn()Z

    move-result v0

    if-nez v0, :cond_6

    .line 772
    iget-object v0, p0, Lcom/android/server/telecom/CallsManager;->mCallAudioManager:Lcom/android/server/telecom/CallAudioManager;

    invoke-static {}, Lcom/android/server/telecom/CallsManager;->activateSpeakerIfDocked()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/telecom/CallAudioManager;->turnOnSpeaker(Z)V

    .line 773
    :cond_6
    invoke-virtual {p1, p2}, Lcom/android/server/telecom/Call;->answer(I)V

    goto/16 :goto_0
.end method

.method final createConferenceCall(Landroid/telecom/PhoneAccountHandle;Landroid/telecom/ParcelableConference;)Lcom/android/server/telecom/Call;
    .locals 9

    .prologue
    const/4 v3, 0x0

    .line 1252
    new-instance v0, Lcom/android/server/telecom/Call;

    iget-object v1, p0, Lcom/android/server/telecom/CallsManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/telecom/CallsManager;->mConnectionServiceRepository$f45da5c:Lcom/android/server/telecom/ServiceBinder$Listener;

    const/4 v7, 0x0

    const/4 v8, 0x1

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    invoke-direct/range {v0 .. v8}, Lcom/android/server/telecom/Call;-><init>(Landroid/content/Context;Lcom/android/server/telecom/ServiceBinder$Listener;Landroid/net/Uri;Landroid/telecom/GatewayInfo;Landroid/telecom/PhoneAccountHandle;Landroid/telecom/PhoneAccountHandle;ZZ)V

    .line 1262
    invoke-virtual {p2}, Landroid/telecom/ParcelableConference;->getState()I

    move-result v1

    invoke-static {v1}, Lcom/android/server/telecom/Call;->getStateFromConnectionState(I)I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/android/server/telecom/CallsManager;->setCallState(Lcom/android/server/telecom/Call;I)V

    .line 1263
    invoke-virtual {v0}, Lcom/android/server/telecom/Call;->getState()I

    move-result v1

    const/4 v2, 0x5

    if-ne v1, v2, :cond_0

    .line 1264
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/android/server/telecom/Call;->setConnectTimeMillis(J)V

    .line 1266
    :cond_0
    invoke-virtual {p2}, Landroid/telecom/ParcelableConference;->getCapabilities()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/telecom/Call;->setCallCapabilities(I)V

    .line 1269
    invoke-virtual {v0, p0}, Lcom/android/server/telecom/Call;->addListener(Lcom/android/server/telecom/Call$Listener;)V

    .line 1270
    invoke-direct {p0, v0}, Lcom/android/server/telecom/CallsManager;->addCall(Lcom/android/server/telecom/Call;)V

    .line 1271
    return-object v0
.end method

.method public final disconnectAllCalls()V
    .locals 2

    .prologue
    .line 874
    const-string v0, "disconnectAllCalls"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 876
    iget-object v0, p0, Lcom/android/server/telecom/CallsManager;->mCalls:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/telecom/Call;

    .line 877
    invoke-virtual {p0, v0}, Lcom/android/server/telecom/CallsManager;->disconnectCall(Lcom/android/server/telecom/Call;)V

    goto :goto_0

    .line 879
    :cond_0
    return-void
.end method

.method final disconnectCall(Lcom/android/server/telecom/Call;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 860
    const-string v0, "disconnectCall %s"

    new-array v1, v3, [Ljava/lang/Object;

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 862
    iget-object v0, p0, Lcom/android/server/telecom/CallsManager;->mCalls:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 863
    const-string v0, "Unknown call (%s) asked to disconnect"

    new-array v1, v3, [Ljava/lang/Object;

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->w(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 868
    :goto_0
    return-void

    .line 865
    :cond_0
    iget-object v0, p0, Lcom/android/server/telecom/CallsManager;->mLocallyDisconnectingCalls:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 866
    invoke-virtual {p1}, Lcom/android/server/telecom/Call;->disconnect()V

    goto :goto_0
.end method

.method public final dump(Lcom/android/internal/util/IndentingPrintWriter;)V
    .locals 3

    .prologue
    .line 1675
    iget-object v0, p0, Lcom/android/server/telecom/CallsManager;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.DUMP"

    const-string v2, "CallsManager"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1676
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    .line 1677
    iget-object v0, p0, Lcom/android/server/telecom/CallsManager;->mCalls:Ljava/util/Set;

    if-eqz v0, :cond_1

    .line 1678
    const-string v0, "mCalls: "

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1679
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    .line 1680
    iget-object v0, p0, Lcom/android/server/telecom/CallsManager;->mCalls:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/telecom/Call;

    .line 1681
    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    goto :goto_0

    .line 1683
    :cond_0
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    .line 1685
    :cond_1
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    .line 1686
    return-void
.end method

.method public final getActiveCall()Lcom/android/server/telecom/Call;
    .locals 3

    .prologue
    .line 1181
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/4 v2, 0x5

    aput v2, v0, v1

    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Lcom/android/server/telecom/CallsManager;->getFirstCallWithState(Lcom/android/server/telecom/Call;[I)Lcom/android/server/telecom/Call;

    move-result-object v0

    return-object v0
.end method

.method public final getAudioState()Landroid/telecom/AudioState;
    .locals 1

    .prologue
    .line 429
    iget-object v0, p0, Lcom/android/server/telecom/CallsManager;->mCallAudioManager:Lcom/android/server/telecom/CallAudioManager;

    iget-object v0, v0, Lcom/android/server/telecom/CallAudioManager;->mAudioState:Landroid/telecom/AudioState;

    return-object v0
.end method

.method public final getCallState()I
    .locals 1

    .prologue
    .line 1279
    iget v0, p0, Lcom/android/server/telecom/CallsManager;->mPhoneState:I

    return v0
.end method

.method public final getCalls()Lcom/google/common/collect/ImmutableCollection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableCollection",
            "<",
            "Lcom/android/server/telecom/Call;",
            ">;"
        }
    .end annotation

    .prologue
    .line 404
    iget-object v0, p0, Lcom/android/server/telecom/CallsManager;->mCalls:Ljava/util/Set;

    invoke-static {v0}, Lcom/google/common/collect/ImmutableList;->copyOf(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    return-object v0
.end method

.method final getCurrentTtyMode()I
    .locals 1

    .prologue
    .line 437
    iget-object v0, p0, Lcom/android/server/telecom/CallsManager;->mTtyManager:Lcom/android/server/telecom/TtyManager;

    invoke-virtual {v0}, Lcom/android/server/telecom/TtyManager;->getCurrentTtyMode()I

    move-result v0

    return v0
.end method

.method final getDialingCall()Lcom/android/server/telecom/Call;
    .locals 3

    .prologue
    .line 1185
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/4 v2, 0x3

    aput v2, v0, v1

    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Lcom/android/server/telecom/CallsManager;->getFirstCallWithState(Lcom/android/server/telecom/Call;[I)Lcom/android/server/telecom/Call;

    move-result-object v0

    return-object v0
.end method

.method public final varargs getFirstCallWithState([I)Lcom/android/server/telecom/Call;
    .locals 1

    .prologue
    .line 1203
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/android/server/telecom/CallsManager;->getFirstCallWithState(Lcom/android/server/telecom/Call;[I)Lcom/android/server/telecom/Call;

    move-result-object v0

    return-object v0
.end method

.method public final getForegroundCall()Lcom/android/server/telecom/Call;
    .locals 1

    .prologue
    .line 408
    iget-object v0, p0, Lcom/android/server/telecom/CallsManager;->mForegroundCall:Lcom/android/server/telecom/Call;

    return-object v0
.end method

.method public final getHeldCall()Lcom/android/server/telecom/Call;
    .locals 3

    .prologue
    .line 1189
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/4 v2, 0x6

    aput v2, v0, v1

    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Lcom/android/server/telecom/CallsManager;->getFirstCallWithState(Lcom/android/server/telecom/Call;[I)Lcom/android/server/telecom/Call;

    move-result-object v0

    return-object v0
.end method

.method final getInCallController()Lcom/android/server/telecom/InCallController;
    .locals 1

    .prologue
    .line 416
    iget-object v0, p0, Lcom/android/server/telecom/CallsManager;->mInCallController:Lcom/android/server/telecom/InCallController;

    return-object v0
.end method

.method public final getMissedCallNotifier()Lcom/android/server/telecom/MissedCallNotifier;
    .locals 1

    .prologue
    .line 1296
    iget-object v0, p0, Lcom/android/server/telecom/CallsManager;->mMissedCallNotifier:Lcom/android/server/telecom/MissedCallNotifier;

    return-object v0
.end method

.method final getNumHeldCalls()I
    .locals 4

    .prologue
    .line 1193
    const/4 v0, 0x0

    .line 1194
    iget-object v1, p0, Lcom/android/server/telecom/CallsManager;->mCalls:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/telecom/Call;

    .line 1195
    invoke-virtual {v0}, Lcom/android/server/telecom/Call;->getParentCall()Lcom/android/server/telecom/Call;

    move-result-object v3

    if-nez v3, :cond_1

    invoke-virtual {v0}, Lcom/android/server/telecom/Call;->getState()I

    move-result v0

    const/4 v3, 0x6

    if-ne v0, v3, :cond_1

    .line 1196
    add-int/lit8 v1, v1, 0x1

    move v0, v1

    :goto_1
    move v1, v0

    .line 1198
    goto :goto_0

    .line 1199
    :cond_0
    return v1

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method final getPhoneAccountRegistrar()Lcom/android/server/telecom/PhoneAccountRegistrar;
    .locals 1

    .prologue
    .line 1288
    iget-object v0, p0, Lcom/android/server/telecom/CallsManager;->mPhoneAccountRegistrar:Lcom/android/server/telecom/PhoneAccountRegistrar;

    return-object v0
.end method

.method public final getRinger()Lcom/android/server/telecom/Ringer;
    .locals 1

    .prologue
    .line 412
    iget-object v0, p0, Lcom/android/server/telecom/CallsManager;->mRinger:Lcom/android/server/telecom/Ringer;

    return-object v0
.end method

.method public final getRingingCall()Lcom/android/server/telecom/Call;
    .locals 3

    .prologue
    .line 1177
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/4 v2, 0x4

    aput v2, v0, v1

    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Lcom/android/server/telecom/CallsManager;->getFirstCallWithState(Lcom/android/server/telecom/Call;[I)Lcom/android/server/telecom/Call;

    move-result-object v0

    return-object v0
.end method

.method public final getSecCallLogManager()Lcom/android/server/telecom/secutils/SecCallLogManager;
    .locals 1

    .prologue
    .line 1644
    iget-object v0, p0, Lcom/android/server/telecom/CallsManager;->mSecCallLogManager:Lcom/android/server/telecom/secutils/SecCallLogManager;

    return-object v0
.end method

.method public final getSecInCallController()Lcom/android/server/telecom/secutils/SecInCallController;
    .locals 1

    .prologue
    .line 1637
    iget-object v0, p0, Lcom/android/server/telecom/CallsManager;->mInCallController:Lcom/android/server/telecom/InCallController;

    if-eqz v0, :cond_0

    .line 1638
    iget-object v0, p0, Lcom/android/server/telecom/CallsManager;->mInCallController:Lcom/android/server/telecom/InCallController;

    invoke-virtual {v0}, Lcom/android/server/telecom/InCallController;->getSecInCallController()Lcom/android/server/telecom/secutils/SecInCallController;

    move-result-object v0

    .line 1640
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final handleConnectionServiceDeath(Lcom/android/server/telecom/ConnectionServiceWrapper;)V
    .locals 4

    .prologue
    .line 1087
    if-eqz p1, :cond_1

    .line 1088
    iget-object v0, p0, Lcom/android/server/telecom/CallsManager;->mCalls:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/telecom/Call;

    .line 1089
    invoke-virtual {v0}, Lcom/android/server/telecom/Call;->getConnectionService()Lcom/android/server/telecom/ConnectionServiceWrapper;

    move-result-object v2

    if-ne v2, p1, :cond_0

    .line 1090
    new-instance v2, Landroid/telecom/DisconnectCause;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Landroid/telecom/DisconnectCause;-><init>(I)V

    invoke-virtual {p0, v0, v2}, Lcom/android/server/telecom/CallsManager;->markCallAsDisconnected(Lcom/android/server/telecom/Call;Landroid/telecom/DisconnectCause;)V

    goto :goto_0

    .line 1094
    :cond_1
    return-void
.end method

.method public final hasActiveOrHoldingCall()Z
    .locals 2

    .prologue
    .line 1101
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Lcom/android/server/telecom/CallsManager;->getFirstCallWithState(Lcom/android/server/telecom/Call;[I)Lcom/android/server/telecom/Call;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    nop

    :array_0
    .array-data 4
        0x5
        0x6
    .end array-data
.end method

.method public final hasAnyCalls()Z
    .locals 1

    .prologue
    .line 1097
    iget-object v0, p0, Lcom/android/server/telecom/CallsManager;->mCalls:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final hasEmergencyCall()Z
    .locals 2

    .prologue
    .line 420
    iget-object v0, p0, Lcom/android/server/telecom/CallsManager;->mCalls:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/telecom/Call;

    .line 421
    invoke-virtual {v0}, Lcom/android/server/telecom/Call;->isEmergencyCall()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 422
    const/4 v0, 0x1

    .line 425
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final hasRingingCall()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1105
    new-array v2, v0, [I

    const/4 v3, 0x4

    aput v3, v2, v1

    const/4 v3, 0x0

    invoke-direct {p0, v3, v2}, Lcom/android/server/telecom/CallsManager;->getFirstCallWithState(Lcom/android/server/telecom/Call;[I)Lcom/android/server/telecom/Call;

    move-result-object v2

    if-eqz v2, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public final hasRingingCallOnly()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 649
    iget-object v0, p0, Lcom/android/server/telecom/CallsManager;->mCalls:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v0, v1

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/telecom/Call;

    .line 650
    invoke-virtual {v0}, Lcom/android/server/telecom/Call;->getState()I

    move-result v0

    const/4 v3, 0x4

    if-eq v0, v3, :cond_0

    .line 651
    const-string v0, "Non Ringing"

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v2}, Lcom/android/server/telecom/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 658
    :goto_1
    return v1

    .line 654
    :cond_0
    const/4 v0, 0x1

    .line 656
    goto :goto_0

    .line 657
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "hasRingingCallOnly()..."

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v2, v1}, Lcom/android/server/telecom/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    move v1, v0

    .line 658
    goto :goto_1
.end method

.method final holdCall(Lcom/android/server/telecom/Call;)V
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 888
    iget-object v0, p0, Lcom/android/server/telecom/CallsManager;->mCalls:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 889
    const-string v0, "Unknown call (%s) asked to be put on hold"

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->w(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 894
    :goto_0
    return-void

    .line 891
    :cond_0
    const-string v0, "Putting call on hold: (%s)"

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 892
    invoke-virtual {p1}, Lcom/android/server/telecom/Call;->hold()V

    goto :goto_0
.end method

.method protected final isAddCallCapable(Lcom/android/server/telecom/Call;)Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1140
    invoke-virtual {p1}, Lcom/android/server/telecom/Call;->getParentCall()Lcom/android/server/telecom/Call;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1173
    :cond_0
    :goto_0
    return v2

    .line 1147
    :cond_1
    const/16 v0, 0x80

    invoke-virtual {p1}, Lcom/android/server/telecom/Call;->getCallCapabilities()I

    move-result v3

    and-int/lit16 v3, v3, 0x80

    if-ne v0, v3, :cond_4

    move v0, v1

    .line 1149
    :goto_1
    invoke-virtual {p1}, Lcom/android/server/telecom/Call;->isConference()Z

    move-result v3

    if-eqz v3, :cond_2

    if-eqz v0, :cond_0

    .line 1155
    :cond_2
    const-string v0, "show_add_call_menu_for_3rd_call"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 1156
    iget-object v0, p0, Lcom/android/server/telecom/CallsManager;->mCalls:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/telecom/Call;

    .line 1157
    invoke-static {}, Lcom/android/server/telecom/secutils/TelecomUtils;->checkMultiSimDsda()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 1158
    if-eq p1, v0, :cond_3

    invoke-virtual {v0}, Lcom/android/server/telecom/Call;->getParentCall()Lcom/android/server/telecom/Call;

    move-result-object v4

    if-nez v4, :cond_3

    invoke-virtual {p1}, Lcom/android/server/telecom/Call;->getPhoneId()I

    move-result v4

    invoke-virtual {v0}, Lcom/android/server/telecom/Call;->getPhoneId()I

    move-result v0

    if-ne v4, v0, :cond_3

    goto :goto_0

    :cond_4
    move v0, v2

    .line 1147
    goto :goto_1

    .line 1163
    :cond_5
    if-eq p1, v0, :cond_3

    invoke-virtual {v0}, Lcom/android/server/telecom/Call;->getParentCall()Lcom/android/server/telecom/Call;

    move-result-object v0

    if-nez v0, :cond_3

    goto :goto_0

    .line 1169
    :cond_6
    invoke-static {p1}, Lcom/android/server/telecom/secutils/TelecomUtils;->checkOperatorAddCallCapable(Lcom/android/server/telecom/Call;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v2, v1

    .line 1173
    goto :goto_0
.end method

.method public final isInCall()Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 623
    iget-object v0, p0, Lcom/android/server/telecom/CallsManager;->mCalls:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/telecom/Call;

    .line 624
    invoke-virtual {v0}, Lcom/android/server/telecom/Call;->isActive()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 625
    const-string v0, "isInCall()...Active"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p0, v0, v2}, Lcom/android/server/telecom/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    move v0, v1

    .line 634
    :goto_0
    return v0

    .line 628
    :cond_1
    invoke-virtual {v0}, Lcom/android/server/telecom/Call;->isAlive()Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {v0}, Lcom/android/server/telecom/Call;->getState()I

    move-result v0

    const/4 v4, 0x4

    if-ne v0, v4, :cond_0

    .line 629
    :cond_2
    const-string v0, "isInCall()...Alive or Ringing"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p0, v0, v2}, Lcom/android/server/telecom/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    move v0, v1

    .line 630
    goto :goto_0

    .line 633
    :cond_3
    const-string v0, "isInCall()...false"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    move v0, v2

    .line 634
    goto :goto_0
.end method

.method final isTtySupported()Z
    .locals 1

    .prologue
    .line 433
    iget-object v0, p0, Lcom/android/server/telecom/CallsManager;->mTtyManager:Lcom/android/server/telecom/TtyManager;

    invoke-virtual {v0}, Lcom/android/server/telecom/TtyManager;->isTtySupported()Z

    move-result v0

    return v0
.end method

.method final markCallAsActive(Lcom/android/server/telecom/Call;)V
    .locals 4

    .prologue
    .line 1038
    invoke-virtual {p1}, Lcom/android/server/telecom/Call;->getConnectTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 1039
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/android/server/telecom/Call;->setConnectTimeMillis(J)V

    .line 1041
    :cond_0
    const/4 v0, 0x5

    invoke-direct {p0, p1, v0}, Lcom/android/server/telecom/CallsManager;->setCallState(Lcom/android/server/telecom/Call;I)V

    .line 1043
    invoke-static {p1}, Lcom/android/server/telecom/secutils/TelecomUtils;->setRouteSpeakerWithStartphoneOn(Lcom/android/server/telecom/Call;)V

    .line 1044
    return-void
.end method

.method final markCallAsDialing(Lcom/android/server/telecom/Call;)V
    .locals 1

    .prologue
    .line 1032
    const/4 v0, 0x3

    invoke-direct {p0, p1, v0}, Lcom/android/server/telecom/CallsManager;->setCallState(Lcom/android/server/telecom/Call;I)V

    .line 1034
    invoke-static {p1}, Lcom/android/server/telecom/secutils/TelecomUtils;->setRouteSpeakerWithStartphoneOn(Lcom/android/server/telecom/Call;)V

    .line 1035
    return-void
.end method

.method final markCallAsDisconnected(Lcom/android/server/telecom/Call;Landroid/telecom/DisconnectCause;)V
    .locals 1

    .prologue
    .line 1057
    invoke-virtual {p1, p2}, Lcom/android/server/telecom/Call;->setDisconnectCause(Landroid/telecom/DisconnectCause;)V

    .line 1058
    const/4 v0, 0x7

    invoke-direct {p0, p1, v0}, Lcom/android/server/telecom/CallsManager;->setCallState(Lcom/android/server/telecom/Call;I)V

    .line 1059
    invoke-static {}, Lcom/android/server/telecom/secutils/TelecomUtils;->sendRequestLastCall()V

    .line 1061
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/server/telecom/secutils/TelecomUtils;->setIMSPreRegState(Z)V

    .line 1062
    return-void
.end method

.method final markCallAsOnHold(Lcom/android/server/telecom/Call;)V
    .locals 1

    .prologue
    .line 1047
    const/4 v0, 0x6

    invoke-direct {p0, p1, v0}, Lcom/android/server/telecom/CallsManager;->setCallState(Lcom/android/server/telecom/Call;I)V

    .line 1048
    return-void
.end method

.method final markCallAsRemoved(Lcom/android/server/telecom/Call;)V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1068
    const-string v0, "removeCall(%s)"

    new-array v3, v1, [Ljava/lang/Object;

    aput-object p1, v3, v2

    invoke-static {p0, v0, v3}, Lcom/android/server/telecom/Log;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/server/telecom/Call;->setParentCall(Lcom/android/server/telecom/Call;)V

    invoke-virtual {p1, p0}, Lcom/android/server/telecom/Call;->removeListener(Lcom/android/server/telecom/Call$Listener;)V

    invoke-virtual {p1}, Lcom/android/server/telecom/Call;->clearConnectionService()V

    iget-object v0, p0, Lcom/android/server/telecom/CallsManager;->mCalls:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/server/telecom/CallsManager;->mCalls:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move v0, v1

    :goto_0
    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/telecom/CallsManager;->mListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/telecom/CallsManager$CallsManagerListener;

    invoke-virtual {v0, p1}, Lcom/android/server/telecom/CallsManager$CallsManagerListener;->onCallRemoved(Lcom/android/server/telecom/Call;)V

    goto :goto_1

    :cond_0
    invoke-direct {p0}, Lcom/android/server/telecom/CallsManager;->updateForegroundCall()V

    :cond_1
    invoke-virtual {p1}, Lcom/android/server/telecom/Call;->getState()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/telecom/CallsManager;->updatePhoneState(I)V

    iget-object v0, p0, Lcom/android/server/telecom/CallsManager;->mCalls:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/telecom/Call;

    invoke-virtual {v0}, Lcom/android/server/telecom/Call;->getCallCapabilities()I

    move-result v4

    invoke-virtual {v0, v4, v1}, Lcom/android/server/telecom/Call;->setCallCapabilities(IZ)V

    goto :goto_2

    :cond_2
    iget-boolean v0, p0, Lcom/android/server/telecom/CallsManager;->defaultSubscriptionChanged:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/server/telecom/CallsManager;->mCalls:Ljava/util/Set;

    invoke-static {v0}, Lcom/google/common/collect/ImmutableList;->copyOf(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableCollection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-wide v0, p0, Lcom/android/server/telecom/CallsManager;->prevSubId:J

    invoke-static {v0, v1}, Landroid/telephony/SubscriptionManager;->setDefaultVoiceSubId(J)V

    iput-boolean v2, p0, Lcom/android/server/telecom/CallsManager;->defaultSubscriptionChanged:Z

    .line 1069
    :cond_3
    iget-object v0, p0, Lcom/android/server/telecom/CallsManager;->mLocallyDisconnectingCalls:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1070
    iget-object v0, p0, Lcom/android/server/telecom/CallsManager;->mLocallyDisconnectingCalls:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 1071
    iget-object v0, p0, Lcom/android/server/telecom/CallsManager;->mForegroundCall:Lcom/android/server/telecom/Call;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/server/telecom/CallsManager;->mForegroundCall:Lcom/android/server/telecom/Call;

    invoke-virtual {v0}, Lcom/android/server/telecom/Call;->getState()I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_4

    .line 1072
    const-string v0, "markCallAsRemoved don\'t call unhold "

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1078
    :cond_4
    return-void

    :cond_5
    move v0, v2

    goto :goto_0
.end method

.method final markCallAsRinging(Lcom/android/server/telecom/Call;)V
    .locals 1

    .prologue
    .line 1028
    const/4 v0, 0x4

    invoke-direct {p0, p1, v0}, Lcom/android/server/telecom/CallsManager;->setCallState(Lcom/android/server/telecom/Call;I)V

    .line 1029
    return-void
.end method

.method final mute(Z)V
    .locals 1

    .prologue
    .line 938
    iget-object v0, p0, Lcom/android/server/telecom/CallsManager;->mCallAudioManager:Lcom/android/server/telecom/CallAudioManager;

    invoke-virtual {v0, p1}, Lcom/android/server/telecom/CallAudioManager;->mute(Z)V

    .line 939
    return-void
.end method

.method final onAudioStateChanged(Landroid/telecom/AudioState;Landroid/telecom/AudioState;)V
    .locals 3

    .prologue
    .line 1013
    const-string v0, "onAudioStateChanged, audioState: %s -> %s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1014
    iget-object v0, p0, Lcom/android/server/telecom/CallsManager;->mListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/telecom/CallsManager$CallsManagerListener;

    .line 1015
    invoke-virtual {v0, p1, p2}, Lcom/android/server/telecom/CallsManager$CallsManagerListener;->onAudioStateChanged(Landroid/telecom/AudioState;Landroid/telecom/AudioState;)V

    goto :goto_0

    .line 1017
    :cond_0
    return-void
.end method

.method public final bridge synthetic onCallCapabilitiesChanged(Lcom/android/server/telecom/Call;)V
    .locals 0

    .prologue
    .line 75
    invoke-super {p0, p1}, Lcom/android/server/telecom/Call$Listener;->onCallCapabilitiesChanged(Lcom/android/server/telecom/Call;)V

    return-void
.end method

.method public final bridge synthetic onCallerDisplayNameChanged(Lcom/android/server/telecom/Call;)V
    .locals 0

    .prologue
    .line 75
    invoke-super {p0, p1}, Lcom/android/server/telecom/Call$Listener;->onCallerDisplayNameChanged(Lcom/android/server/telecom/Call;)V

    return-void
.end method

.method public final bridge synthetic onCallerDualPhoneNumberChanged(Lcom/android/server/telecom/Call;)V
    .locals 0

    .prologue
    .line 75
    invoke-super {p0, p1}, Lcom/android/server/telecom/Call$Listener;->onCallerDualPhoneNumberChanged(Lcom/android/server/telecom/Call;)V

    return-void
.end method

.method public final bridge synthetic onCallerInfoChanged(Lcom/android/server/telecom/Call;)V
    .locals 0

    .prologue
    .line 75
    invoke-super {p0, p1}, Lcom/android/server/telecom/Call$Listener;->onCallerInfoChanged(Lcom/android/server/telecom/Call;)V

    return-void
.end method

.method public final bridge synthetic onCannedSmsResponsesLoaded(Lcom/android/server/telecom/Call;)V
    .locals 0

    .prologue
    .line 75
    invoke-super {p0, p1}, Lcom/android/server/telecom/Call$Listener;->onCannedSmsResponsesLoaded(Lcom/android/server/telecom/Call;)V

    return-void
.end method

.method final onChangeInContent(I)V
    .locals 2

    .prologue
    .line 1021
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onChangeInContent::"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1022
    iget-object v0, p0, Lcom/android/server/telecom/CallsManager;->mListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/telecom/CallsManager$CallsManagerListener;

    .line 1023
    invoke-virtual {v0, p1}, Lcom/android/server/telecom/CallsManager$CallsManagerListener;->onChangeInContent(I)V

    goto :goto_0

    .line 1025
    :cond_0
    return-void
.end method

.method public final onChildrenChanged(Lcom/android/server/telecom/Call;)V
    .locals 2

    .prologue
    .line 383
    invoke-direct {p0}, Lcom/android/server/telecom/CallsManager;->updateForegroundCall()V

    .line 384
    iget-object v0, p0, Lcom/android/server/telecom/CallsManager;->mListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/telecom/CallsManager$CallsManagerListener;

    .line 385
    invoke-virtual {v0, p1}, Lcom/android/server/telecom/CallsManager$CallsManagerListener;->onIsConferencedChanged(Lcom/android/server/telecom/Call;)V

    goto :goto_0

    .line 387
    :cond_0
    return-void
.end method

.method public final bridge synthetic onConferenceableCallsChanged(Lcom/android/server/telecom/Call;)V
    .locals 0

    .prologue
    .line 75
    invoke-super {p0, p1}, Lcom/android/server/telecom/Call$Listener;->onConferenceableCallsChanged(Lcom/android/server/telecom/Call;)V

    return-void
.end method

.method public final bridge synthetic onExtraChanged(Lcom/android/server/telecom/Call;)V
    .locals 0

    .prologue
    .line 75
    invoke-super {p0, p1}, Lcom/android/server/telecom/Call$Listener;->onExtraChanged(Lcom/android/server/telecom/Call;)V

    return-void
.end method

.method public final onFailedIncomingCall(Lcom/android/server/telecom/Call;)V
    .locals 1

    .prologue
    .line 341
    const/4 v0, 0x7

    invoke-direct {p0, p1, v0}, Lcom/android/server/telecom/CallsManager;->setCallState(Lcom/android/server/telecom/Call;I)V

    .line 342
    invoke-virtual {p1, p0}, Lcom/android/server/telecom/Call;->removeListener(Lcom/android/server/telecom/Call$Listener;)V

    .line 343
    return-void
.end method

.method public final onFailedOutgoingCall$47ced4ac(Lcom/android/server/telecom/Call;)V
    .locals 3

    .prologue
    .line 263
    const-string v0, "onFailedOutgoingCall, call: %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 264
    invoke-virtual {p0, p1}, Lcom/android/server/telecom/CallsManager;->markCallAsRemoved(Lcom/android/server/telecom/Call;)V

    .line 265
    return-void
.end method

.method public final onFailedUnknownCall(Lcom/android/server/telecom/Call;)V
    .locals 3

    .prologue
    .line 354
    const-string v0, "onFailedUnknownCall for call %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 355
    const/4 v0, 0x7

    invoke-direct {p0, p1, v0}, Lcom/android/server/telecom/CallsManager;->setCallState(Lcom/android/server/telecom/Call;I)V

    .line 356
    invoke-virtual {p1, p0}, Lcom/android/server/telecom/Call;->removeListener(Lcom/android/server/telecom/Call$Listener;)V

    .line 357
    return-void
.end method

.method public final bridge synthetic onHandleChanged(Lcom/android/server/telecom/Call;)V
    .locals 0

    .prologue
    .line 75
    invoke-super {p0, p1}, Lcom/android/server/telecom/Call$Listener;->onHandleChanged(Lcom/android/server/telecom/Call;)V

    return-void
.end method

.method public final onIsVoipAudioModeChanged(Lcom/android/server/telecom/Call;)V
    .locals 2

    .prologue
    .line 391
    iget-object v0, p0, Lcom/android/server/telecom/CallsManager;->mListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/telecom/CallsManager$CallsManagerListener;

    .line 392
    invoke-virtual {v0}, Lcom/android/server/telecom/CallsManager$CallsManagerListener;->onIsVoipAudioModeChanged$57920a58()V

    goto :goto_0

    .line 394
    :cond_0
    return-void
.end method

.method public final onParentChanged(Lcom/android/server/telecom/Call;)V
    .locals 2

    .prologue
    .line 374
    invoke-direct {p0}, Lcom/android/server/telecom/CallsManager;->updateForegroundCall()V

    .line 375
    iget-object v0, p0, Lcom/android/server/telecom/CallsManager;->mListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/telecom/CallsManager$CallsManagerListener;

    .line 376
    invoke-virtual {v0, p1}, Lcom/android/server/telecom/CallsManager$CallsManagerListener;->onIsConferencedChanged(Lcom/android/server/telecom/Call;)V

    goto :goto_0

    .line 378
    :cond_0
    return-void
.end method

.method public final onPostDialWait(Lcom/android/server/telecom/Call;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 368
    iget-object v0, p0, Lcom/android/server/telecom/CallsManager;->mInCallController:Lcom/android/server/telecom/InCallController;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/telecom/InCallController;->onPostDialWait(Lcom/android/server/telecom/Call;Ljava/lang/String;)V

    .line 369
    return-void
.end method

.method public final onRingbackRequested(Lcom/android/server/telecom/Call;Z)V
    .locals 2

    .prologue
    .line 361
    iget-object v0, p0, Lcom/android/server/telecom/CallsManager;->mListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/telecom/CallsManager$CallsManagerListener;

    .line 362
    invoke-virtual {v0, p1}, Lcom/android/server/telecom/CallsManager$CallsManagerListener;->onRingbackRequested$65500c84(Lcom/android/server/telecom/Call;)V

    goto :goto_0

    .line 364
    :cond_0
    return-void
.end method

.method public final bridge synthetic onStatusHintsChanged(Lcom/android/server/telecom/Call;)V
    .locals 0

    .prologue
    .line 75
    invoke-super {p0, p1}, Lcom/android/server/telecom/Call$Listener;->onStatusHintsChanged(Lcom/android/server/telecom/Call;)V

    return-void
.end method

.method public final onSuccessfulIncomingCall(Lcom/android/server/telecom/Call;)V
    .locals 6

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x3

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 269
    const-string v0, "onSuccessfulIncomingCall"

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {p0, v0, v3}, Lcom/android/server/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 270
    iput-boolean v1, p0, Lcom/android/server/telecom/CallsManager;->isNeedAddLog:Z

    .line 271
    invoke-direct {p0, p1, v5}, Lcom/android/server/telecom/CallsManager;->setCallState(Lcom/android/server/telecom/Call;I)V

    .line 274
    invoke-static {}, Lcom/android/server/telecom/TelecomApp;->getInstance()Lcom/android/server/telecom/TelecomApp;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/android/server/telecom/secutils/TelecomUtils;->checkDriveLink$304ff7b3(Landroid/content/Context;Z)V

    .line 275
    iget-object v0, p0, Lcom/android/server/telecom/CallsManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/telecom/secutils/TelecomUtils;->isDriveLinkModeOn(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/android/server/telecom/secutils/TelecomUtils;->isVideoCall(Lcom/android/server/telecom/Call;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 276
    invoke-virtual {p1}, Lcom/android/server/telecom/Call;->reject$2598ce09()V

    .line 277
    iget-object v0, p0, Lcom/android/server/telecom/CallsManager;->mSecCallLogManager:Lcom/android/server/telecom/secutils/SecCallLogManager;

    invoke-virtual {v0, p1, v4}, Lcom/android/server/telecom/secutils/SecCallLogManager;->logCall(Lcom/android/server/telecom/Call;I)V

    .line 278
    invoke-static {}, Lcom/android/server/telecom/TelecomApp;->getInstance()Lcom/android/server/telecom/TelecomApp;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/android/server/telecom/secutils/TelecomUtils;->launchDriveLinkDialogActivity(Landroid/content/Context;Lcom/android/server/telecom/Call;)V

    .line 337
    :goto_0
    return-void

    .line 282
    :cond_0
    sget-object v0, Lcom/android/server/telecom/CallsManager;->OUTGOING_CALL_STATES:[I

    const/4 v3, 0x0

    invoke-direct {p0, v3, v0}, Lcom/android/server/telecom/CallsManager;->getFirstCallWithState(Lcom/android/server/telecom/Call;[I)Lcom/android/server/telecom/Call;

    move-result-object v0

    .line 283
    if-eqz v0, :cond_1

    const-string v3, "sip"

    invoke-virtual {v0}, Lcom/android/server/telecom/Call;->getHandle()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 284
    invoke-virtual {p1}, Lcom/android/server/telecom/Call;->reject$2598ce09()V

    .line 285
    iput-boolean v2, p0, Lcom/android/server/telecom/CallsManager;->isNeedAddLog:Z

    .line 288
    iget-object v0, p0, Lcom/android/server/telecom/CallsManager;->mSecCallLogManager:Lcom/android/server/telecom/secutils/SecCallLogManager;

    const/4 v1, 0x5

    invoke-virtual {v0, p1, v1}, Lcom/android/server/telecom/secutils/SecCallLogManager;->logCall(Lcom/android/server/telecom/Call;I)V

    goto :goto_0

    .line 292
    :cond_1
    new-array v0, v1, [I

    aput v5, v0, v2

    invoke-direct {p0, v0}, Lcom/android/server/telecom/CallsManager;->getNumCallsWithState([I)I

    move-result v0

    if-gt v1, v0, :cond_3

    move v0, v1

    .line 293
    :goto_1
    invoke-static {}, Lcom/android/server/telecom/secutils/TelecomUtils;->checkMultiSimDsda()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 294
    iget-object v0, p0, Lcom/android/server/telecom/CallsManager;->mCalls:Ljava/util/Set;

    invoke-static {v0, p1}, Lcom/android/server/telecom/secutils/TelecomUtilsMultiSIM;->hasMultiSimMaximumRingingCalls(Ljava/util/Collection;Lcom/android/server/telecom/Call;)Z

    move-result v0

    .line 296
    :cond_2
    if-eqz v0, :cond_5

    .line 297
    if-eqz p1, :cond_4

    invoke-static {p1}, Lcom/android/server/telecom/secutils/TelecomUtils;->rejectCtcCdmaMultiInComingCall(Lcom/android/server/telecom/Call;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 298
    invoke-direct {p0, p1}, Lcom/android/server/telecom/CallsManager;->addCall(Lcom/android/server/telecom/Call;)V

    goto :goto_0

    :cond_3
    move v0, v2

    .line 292
    goto :goto_1

    .line 301
    :cond_4
    invoke-virtual {p1}, Lcom/android/server/telecom/Call;->reject$2598ce09()V

    .line 304
    iget-object v0, p0, Lcom/android/server/telecom/CallsManager;->mMissedCallNotifier:Lcom/android/server/telecom/MissedCallNotifier;

    invoke-virtual {v0, p1}, Lcom/android/server/telecom/MissedCallNotifier;->showMissedCallNotification(Lcom/android/server/telecom/Call;)V

    .line 305
    iget-object v0, p0, Lcom/android/server/telecom/CallsManager;->mSecCallLogManager:Lcom/android/server/telecom/secutils/SecCallLogManager;

    invoke-virtual {v0, p1, v4}, Lcom/android/server/telecom/secutils/SecCallLogManager;->logCall(Lcom/android/server/telecom/Call;I)V

    goto :goto_0

    .line 311
    :cond_5
    const-string v0, "automatic_answering_machine"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 312
    iget-object v0, p0, Lcom/android/server/telecom/CallsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "isAutoAnswered"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 314
    invoke-virtual {p0}, Lcom/android/server/telecom/CallsManager;->getActiveCall()Lcom/android/server/telecom/Call;

    move-result-object v2

    if-eqz v2, :cond_6

    if-ne v0, v1, :cond_6

    if-eqz p1, :cond_6

    .line 315
    invoke-virtual {p1}, Lcom/android/server/telecom/Call;->reject$2598ce09()V

    .line 318
    iget-object v0, p0, Lcom/android/server/telecom/CallsManager;->mMissedCallNotifier:Lcom/android/server/telecom/MissedCallNotifier;

    invoke-virtual {v0, p1}, Lcom/android/server/telecom/MissedCallNotifier;->showMissedCallNotification(Lcom/android/server/telecom/Call;)V

    .line 319
    iget-object v0, p0, Lcom/android/server/telecom/CallsManager;->mSecCallLogManager:Lcom/android/server/telecom/secutils/SecCallLogManager;

    invoke-virtual {v0, p1, v4}, Lcom/android/server/telecom/secutils/SecCallLogManager;->logCall(Lcom/android/server/telecom/Call;I)V

    goto/16 :goto_0

    .line 326
    :cond_6
    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->isTPhoneMode()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->isTPhoneRelaxMode()Z

    move-result v0

    if-nez v0, :cond_7

    invoke-static {p1}, Lcom/android/server/telecom/secutils/TelecomUtils;->isVideoCall(Lcom/android/server/telecom/Call;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 329
    :cond_7
    :try_start_0
    const-string v0, "launch incoming call for Tphone"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->w(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 330
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/android/server/telecom/secutils/TelecomUtils;->requestTPhoneStart(Lcom/android/server/telecom/Call;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 336
    :cond_8
    :goto_2
    invoke-direct {p0, p1}, Lcom/android/server/telecom/CallsManager;->addCall(Lcom/android/server/telecom/Call;)V

    goto/16 :goto_0

    .line 331
    :catch_0
    move-exception v0

    .line 332
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2
.end method

.method public final onSuccessfulOutgoingCall(Lcom/android/server/telecom/Call;I)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 239
    const-string v0, "onSuccessfulOutgoingCall, %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v3

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 241
    invoke-direct {p0, p1, p2}, Lcom/android/server/telecom/CallsManager;->setCallState(Lcom/android/server/telecom/Call;I)V

    .line 242
    iget-object v0, p0, Lcom/android/server/telecom/CallsManager;->mCalls:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 245
    invoke-direct {p0, p1}, Lcom/android/server/telecom/CallsManager;->addCall(Lcom/android/server/telecom/Call;)V

    .line 249
    :cond_0
    iget-object v0, p0, Lcom/android/server/telecom/CallsManager;->mListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/telecom/CallsManager$CallsManagerListener;

    .line 250
    invoke-virtual {p1}, Lcom/android/server/telecom/Call;->getConnectionService()Lcom/android/server/telecom/ConnectionServiceWrapper;

    move-result-object v2

    invoke-virtual {v0, p1, v2}, Lcom/android/server/telecom/CallsManager$CallsManagerListener;->onConnectionServiceChanged$382ed448(Lcom/android/server/telecom/Call;Lcom/android/server/telecom/ConnectionServiceWrapper;)V

    goto :goto_0

    .line 253
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/server/telecom/CallsManager;->markCallAsDialing(Lcom/android/server/telecom/Call;)V

    .line 255
    const-string v0, "feature_ctc"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {p1}, Lcom/android/server/telecom/secutils/TelecomUtils;->getPhoneTypeFromCall(Lcom/android/server/telecom/Call;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 257
    invoke-virtual {p0, v3}, Lcom/android/server/telecom/CallsManager;->mute(Z)V

    .line 259
    :cond_2
    return-void
.end method

.method public final onSuccessfulUnknownCall(Lcom/android/server/telecom/Call;I)V
    .locals 3

    .prologue
    .line 347
    invoke-direct {p0, p1, p2}, Lcom/android/server/telecom/CallsManager;->setCallState(Lcom/android/server/telecom/Call;I)V

    .line 348
    const-string v0, "onSuccessfulUnknownCall for call %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 349
    invoke-direct {p0, p1}, Lcom/android/server/telecom/CallsManager;->addCall(Lcom/android/server/telecom/Call;)V

    .line 350
    return-void
.end method

.method public final bridge synthetic onTargetPhoneAccountChanged(Lcom/android/server/telecom/Call;)V
    .locals 0

    .prologue
    .line 75
    invoke-super {p0, p1}, Lcom/android/server/telecom/Call$Listener;->onTargetPhoneAccountChanged(Lcom/android/server/telecom/Call;)V

    return-void
.end method

.method public final bridge synthetic onVideoCallProviderChanged(Lcom/android/server/telecom/Call;)V
    .locals 0

    .prologue
    .line 75
    invoke-super {p0, p1}, Lcom/android/server/telecom/Call$Listener;->onVideoCallProviderChanged(Lcom/android/server/telecom/Call;)V

    return-void
.end method

.method public final onVideoStateChanged(Lcom/android/server/telecom/Call;)V
    .locals 2

    .prologue
    .line 398
    iget-object v0, p0, Lcom/android/server/telecom/CallsManager;->mListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    goto :goto_0

    .line 401
    :cond_0
    return-void
.end method

.method final phoneAccountSelected(Lcom/android/server/telecom/Call;Landroid/telecom/PhoneAccountHandle;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 985
    iget-object v0, p0, Lcom/android/server/telecom/CallsManager;->mCalls:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 986
    const-string v0, "Attempted to add account to unknown call %s"

    new-array v1, v3, [Ljava/lang/Object;

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1009
    :cond_0
    :goto_0
    return-void

    .line 994
    :cond_1
    invoke-virtual {p1, p2}, Lcom/android/server/telecom/Call;->setTargetPhoneAccount(Landroid/telecom/PhoneAccountHandle;)V

    .line 998
    invoke-direct {p0, p1, v2}, Lcom/android/server/telecom/CallsManager;->makeRoomForOutgoingCall(Lcom/android/server/telecom/Call;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 999
    iget-object v0, p0, Lcom/android/server/telecom/CallsManager;->mPhoneAccountRegistrar:Lcom/android/server/telecom/PhoneAccountRegistrar;

    invoke-virtual {p1, v0}, Lcom/android/server/telecom/Call;->startCreateConnection(Lcom/android/server/telecom/PhoneAccountRegistrar;)V

    .line 1000
    const-string v0, "feature_multisim_dsds"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1001
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultVoiceSubId()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/telecom/CallsManager;->prevSubId:J

    .line 1002
    invoke-static {p1}, Lcom/android/server/telecom/secutils/TelecomUtilsMultiSIM;->setDefaultSubscriptionId(Lcom/android/server/telecom/Call;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1003
    iput-boolean v3, p0, Lcom/android/server/telecom/CallsManager;->defaultSubscriptionChanged:Z

    goto :goto_0

    .line 1006
    :cond_2
    invoke-virtual {p1}, Lcom/android/server/telecom/Call;->disconnect()V

    goto :goto_0
.end method

.method final placeOutgoingCall(Lcom/android/server/telecom/Call;Landroid/net/Uri;Landroid/telecom/GatewayInfo;ZI)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 671
    invoke-static {}, Landroid/util/GateConfig;->isGateEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 672
    const-string v0, "GATE"

    const-string v1, "<GATE-M>MO_CALL</GATE-M>"

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lcom/android/server/telecom/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 673
    :cond_0
    if-nez p1, :cond_2

    .line 675
    const-string v0, "Canceling unknown call."

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 716
    :cond_1
    :goto_0
    return-void

    .line 679
    :cond_2
    if-nez p3, :cond_7

    move-object v0, p2

    .line 681
    :goto_1
    if-nez p3, :cond_8

    .line 682
    const-string v1, "Creating a new outgoing call with handle: %s"

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {v0}, Lcom/android/server/telecom/Log;->piiHandle(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {p0, v1, v2}, Lcom/android/server/telecom/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 688
    :goto_2
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "placeOutgoingCall() setStartWithSpeakerphoneOn = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {p0, v1, v2}, Lcom/android/server/telecom/Log;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 690
    invoke-virtual {p1, v0}, Lcom/android/server/telecom/Call;->setHandle(Landroid/net/Uri;)V

    .line 691
    invoke-virtual {p1, p3}, Lcom/android/server/telecom/Call;->setGatewayInfo(Landroid/telecom/GatewayInfo;)V

    .line 692
    invoke-virtual {p1, p4}, Lcom/android/server/telecom/Call;->setStartWithSpeakerphoneOn(Z)V

    .line 693
    invoke-virtual {p1, p5}, Lcom/android/server/telecom/Call;->setVideoState(I)V

    .line 694
    iget-object v0, p0, Lcom/android/server/telecom/CallsManager;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->isSpeakerphoneOn()Z

    move-result v0

    if-nez v0, :cond_3

    .line 695
    iget-object v0, p0, Lcom/android/server/telecom/CallsManager;->mCallAudioManager:Lcom/android/server/telecom/CallAudioManager;

    invoke-static {}, Lcom/android/server/telecom/CallsManager;->activateSpeakerIfDocked()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/telecom/CallAudioManager;->turnOnSpeaker(Z)V

    .line 697
    :cond_3
    iget-object v0, p0, Lcom/android/server/telecom/CallsManager;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/android/server/telecom/Call;->getHandle()Landroid/net/Uri;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/telecom/TelephonyUtil;->shouldProcessAsEmergency(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v1

    .line 700
    invoke-static {}, Lcom/android/server/telecom/TelecomApp;->getInstance()Lcom/android/server/telecom/TelecomApp;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/android/server/telecom/secutils/TelecomUtils;->checkDriveLink$304ff7b3(Landroid/content/Context;Z)V

    .line 701
    if-eqz v1, :cond_4

    const-string v0, "feature_multisim"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 703
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/server/telecom/Call;->setTargetPhoneAccount(Landroid/telecom/PhoneAccountHandle;)V

    .line 705
    :cond_4
    const-string v0, "feature_multisim"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 706
    const-string v2, "call.emergency.dial"

    if-eqz v1, :cond_9

    const-string v0, "true"

    :goto_3
    invoke-static {v2, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 708
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "placeOutgoingCall() call.getTargetPhoneAccount() = "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/server/telecom/Call;->getTargetPhoneAccount()Landroid/telecom/PhoneAccountHandle;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {p0, v0, v2}, Lcom/android/server/telecom/Log;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 709
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "isEmergencyCall = "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {p0, v0, v2}, Lcom/android/server/telecom/Log;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 711
    invoke-virtual {p1}, Lcom/android/server/telecom/Call;->getTargetPhoneAccount()Landroid/telecom/PhoneAccountHandle;

    move-result-object v0

    if-nez v0, :cond_6

    if-eqz v1, :cond_1

    .line 714
    :cond_6
    iget-object v0, p0, Lcom/android/server/telecom/CallsManager;->mPhoneAccountRegistrar:Lcom/android/server/telecom/PhoneAccountRegistrar;

    invoke-virtual {p1, v0}, Lcom/android/server/telecom/Call;->startCreateConnection(Lcom/android/server/telecom/PhoneAccountRegistrar;)V

    goto/16 :goto_0

    .line 679
    :cond_7
    invoke-virtual {p3}, Landroid/telecom/GatewayInfo;->getGatewayAddress()Landroid/net/Uri;

    move-result-object v0

    goto/16 :goto_1

    .line 684
    :cond_8
    const-string v1, "Creating a new outgoing call with gateway handle: %s, original handle: %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0}, Lcom/android/server/telecom/Log;->pii(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {p2}, Lcom/android/server/telecom/Log;->pii(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {p0, v1, v2}, Lcom/android/server/telecom/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 706
    :cond_9
    const-string v0, "false"

    goto :goto_3
.end method

.method final playDtmfTone(Lcom/android/server/telecom/Call;C)V
    .locals 3

    .prologue
    .line 799
    iget-object v0, p0, Lcom/android/server/telecom/CallsManager;->mCalls:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 800
    const-string v0, "Request to play DTMF in a non-existent call %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 805
    :goto_0
    return-void

    .line 802
    :cond_0
    invoke-virtual {p1, p2}, Lcom/android/server/telecom/Call;->playDtmfTone(C)V

    .line 803
    iget-object v0, p0, Lcom/android/server/telecom/CallsManager;->mDtmfLocalTonePlayer:Lcom/android/server/telecom/DtmfLocalTonePlayer;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/telecom/DtmfLocalTonePlayer;->playTone(Lcom/android/server/telecom/Call;C)V

    goto :goto_0
.end method

.method public final playDtmfTonePlayer(Lcom/android/server/telecom/Call;C)V
    .locals 3

    .prologue
    .line 808
    iget-object v0, p0, Lcom/android/server/telecom/CallsManager;->mCalls:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 809
    const-string v0, "Request to play DTMF in a non-existent call %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 813
    :goto_0
    return-void

    .line 811
    :cond_0
    iget-object v0, p0, Lcom/android/server/telecom/CallsManager;->mDtmfLocalTonePlayer:Lcom/android/server/telecom/DtmfLocalTonePlayer;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/telecom/DtmfLocalTonePlayer;->playTone(Lcom/android/server/telecom/Call;C)V

    goto :goto_0
.end method

.method final postDialContinue(Lcom/android/server/telecom/Call;Z)V
    .locals 3

    .prologue
    .line 847
    iget-object v0, p0, Lcom/android/server/telecom/CallsManager;->mCalls:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 848
    const-string v0, "Request to continue post-dial string in a non-existent call %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 852
    :goto_0
    return-void

    .line 850
    :cond_0
    invoke-virtual {p1, p2}, Lcom/android/server/telecom/Call;->postDialContinue(Z)V

    goto :goto_0
.end method

.method final processIncomingCallIntent(Landroid/telecom/PhoneAccountHandle;Landroid/os/Bundle;)V
    .locals 9

    .prologue
    const/4 v4, 0x0

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 456
    const-string v0, "processIncomingCallIntent"

    new-array v1, v8, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 457
    invoke-static {}, Landroid/util/GateConfig;->isGateEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 458
    const-string v0, "GATE"

    const-string v1, "<GATE-M>INCOMING_CALL</GATE-M>"

    new-array v2, v7, [Ljava/lang/Object;

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v8

    invoke-static {v0, v1, v2}, Lcom/android/server/telecom/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 459
    :cond_0
    const-string v0, "incoming_number"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/net/Uri;

    .line 460
    new-instance v0, Lcom/android/server/telecom/Call;

    iget-object v1, p0, Lcom/android/server/telecom/CallsManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/telecom/CallsManager;->mConnectionServiceRepository$f45da5c:Lcom/android/server/telecom/ServiceBinder$Listener;

    move-object v5, v4

    move-object v6, p1

    invoke-direct/range {v0 .. v8}, Lcom/android/server/telecom/Call;-><init>(Landroid/content/Context;Lcom/android/server/telecom/ServiceBinder$Listener;Landroid/net/Uri;Landroid/telecom/GatewayInfo;Landroid/telecom/PhoneAccountHandle;Landroid/telecom/PhoneAccountHandle;ZZ)V

    invoke-static {v0, p2}, Lcom/android/server/telecom/secutils/TelecomUtils;->makeSecCall(Lcom/android/server/telecom/Call;Landroid/os/Bundle;)Lcom/android/server/telecom/Call;

    move-result-object v0

    .line 470
    invoke-virtual {v0, p2}, Lcom/android/server/telecom/Call;->setExtras(Landroid/os/Bundle;)V

    .line 472
    invoke-virtual {v0, p0}, Lcom/android/server/telecom/Call;->addListener(Lcom/android/server/telecom/Call$Listener;)V

    .line 473
    iget-object v1, p0, Lcom/android/server/telecom/CallsManager;->mPhoneAccountRegistrar:Lcom/android/server/telecom/PhoneAccountRegistrar;

    invoke-virtual {v0, v1}, Lcom/android/server/telecom/Call;->startCreateConnection(Lcom/android/server/telecom/PhoneAccountRegistrar;)V

    .line 476
    const-string v1, "feature_multisim_dsds"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 477
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultVoiceSubId()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/server/telecom/CallsManager;->prevSubId:J

    .line 478
    invoke-static {v0}, Lcom/android/server/telecom/secutils/TelecomUtilsMultiSIM;->setDefaultSubscriptionId(Lcom/android/server/telecom/Call;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 479
    iput-boolean v7, p0, Lcom/android/server/telecom/CallsManager;->defaultSubscriptionChanged:Z

    .line 481
    :cond_1
    return-void
.end method

.method final rejectCall(Lcom/android/server/telecom/Call;ZLjava/lang/String;)V
    .locals 3

    .prologue
    .line 783
    iget-object v0, p0, Lcom/android/server/telecom/CallsManager;->mCalls:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 784
    const-string v0, "Request to reject a non-existent call %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 791
    :goto_0
    return-void

    .line 786
    :cond_0
    iget-object v0, p0, Lcom/android/server/telecom/CallsManager;->mListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/telecom/CallsManager$CallsManagerListener;

    .line 787
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/telecom/CallsManager$CallsManagerListener;->onIncomingCallRejected(Lcom/android/server/telecom/Call;ZLjava/lang/String;)V

    goto :goto_1

    .line 789
    :cond_1
    invoke-virtual {p1}, Lcom/android/server/telecom/Call;->reject$2598ce09()V

    goto :goto_0
.end method

.method final removeListener(Lcom/android/server/telecom/CallsManager$CallsManagerListener;)V
    .locals 1

    .prologue
    .line 445
    iget-object v0, p0, Lcom/android/server/telecom/CallsManager;->mListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 446
    return-void
.end method

.method final requestRcsObserver(II)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 942
    const-string v0, "requestRcsObserver (%d,%d)"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    const/4 v2, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 943
    packed-switch p2, :pswitch_data_0

    .line 951
    :goto_0
    return-void

    .line 945
    :pswitch_0
    const-string v0, "REGISTER"

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 946
    invoke-static {}, Lcom/android/server/telecom/TelecomApp;->getInstance()Lcom/android/server/telecom/TelecomApp;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/telecom/TelecomApp;->registerRcsObserver(I)V

    goto :goto_0

    .line 949
    :pswitch_1
    const-string v0, "UNREGISTER"

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 950
    invoke-static {}, Lcom/android/server/telecom/TelecomApp;->getInstance()Lcom/android/server/telecom/TelecomApp;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/telecom/TelecomApp;->unRegisterRcsObserver(I)V

    goto :goto_0

    .line 943
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final resetAudioStateAfterDisconnect()V
    .locals 2

    .prologue
    .line 1665
    const-string v0, "resetAudioStateAfterDisconnect()..."

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1666
    iget-object v0, p0, Lcom/android/server/telecom/CallsManager;->mCallAudioManager:Lcom/android/server/telecom/CallAudioManager;

    invoke-virtual {v0}, Lcom/android/server/telecom/CallAudioManager;->resetAudioStateAfterDisconnect()V

    .line 1667
    return-void
.end method

.method public final setAudioRoute(I)V
    .locals 2

    .prologue
    .line 962
    iget-object v0, p0, Lcom/android/server/telecom/CallsManager;->mCallAudioManager:Lcom/android/server/telecom/CallAudioManager;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/server/telecom/CallAudioManager;->setAudioRoute(I)V

    .line 963
    return-void
.end method

.method public final setAudioRoute(IZ)V
    .locals 2

    .prologue
    .line 967
    iget-object v0, p0, Lcom/android/server/telecom/CallsManager;->mCallAudioManager:Lcom/android/server/telecom/CallAudioManager;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/android/server/telecom/CallAudioManager;->setAudioRoute(IZ)V

    .line 968
    return-void
.end method

.method public final setWBAMRstate(Z)V
    .locals 0

    .prologue
    .line 1648
    iput-boolean p1, p0, Lcom/android/server/telecom/CallsManager;->mWB_AMR_state:Z

    .line 1649
    return-void
.end method

.method final startOutgoingCall(Landroid/net/Uri;Landroid/telecom/PhoneAccountHandle;Landroid/os/Bundle;)Lcom/android/server/telecom/Call;
    .locals 9

    .prologue
    .line 515
    new-instance v0, Lcom/android/server/telecom/Call;

    iget-object v1, p0, Lcom/android/server/telecom/CallsManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/telecom/CallsManager;->mConnectionServiceRepository$f45da5c:Lcom/android/server/telecom/ServiceBinder$Listener;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v3, p1

    invoke-direct/range {v0 .. v8}, Lcom/android/server/telecom/Call;-><init>(Landroid/content/Context;Lcom/android/server/telecom/ServiceBinder$Listener;Landroid/net/Uri;Landroid/telecom/GatewayInfo;Landroid/telecom/PhoneAccountHandle;Landroid/telecom/PhoneAccountHandle;ZZ)V

    invoke-static {v0, p3}, Lcom/android/server/telecom/secutils/TelecomUtils;->makeSecCall(Lcom/android/server/telecom/Call;Landroid/os/Bundle;)Lcom/android/server/telecom/Call;

    move-result-object v1

    .line 525
    iget-object v0, p0, Lcom/android/server/telecom/CallsManager;->mPhoneAccountRegistrar:Lcom/android/server/telecom/PhoneAccountRegistrar;

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/server/telecom/PhoneAccountRegistrar;->getCallCapablePhoneAccounts(Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    .line 528
    invoke-static {p3}, Lcom/android/server/telecom/secutils/TelecomUtils;->isVideoCall(Landroid/os/Bundle;)Z

    move-result v0

    .line 533
    if-eqz p2, :cond_0

    .line 534
    invoke-interface {v4, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 535
    const/4 p2, 0x0

    .line 539
    :cond_0
    const-string v2, "feature_multisim"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    if-eqz p2, :cond_1

    .line 540
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/server/telecom/Call;->setUserExplictSelectPhoneAccount(Z)V

    .line 543
    :cond_1
    if-nez p2, :cond_a

    .line 544
    const-string v2, "feature_multisim_preferred_sim"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 545
    invoke-static {p1, v0}, Lcom/android/server/telecom/secutils/TelecomUtilsMultiSIM;->selectPhoneAccountHandle(Landroid/net/Uri;Z)Landroid/telecom/PhoneAccountHandle;

    move-result-object p2

    move-object v0, p2

    .line 556
    :cond_2
    :goto_0
    if-nez v0, :cond_3

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_3

    iget v2, p0, Lcom/android/server/telecom/CallsManager;->mPhoneState:I

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/server/telecom/CallsManager;->mForegroundCall:Lcom/android/server/telecom/Call;

    if-eqz v2, :cond_3

    .line 558
    iget-object v0, p0, Lcom/android/server/telecom/CallsManager;->mForegroundCall:Lcom/android/server/telecom/Call;

    invoke-virtual {v0}, Lcom/android/server/telecom/Call;->getTargetPhoneAccount()Landroid/telecom/PhoneAccountHandle;

    move-result-object v0

    .line 562
    :cond_3
    if-nez v0, :cond_5

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_5

    invoke-static {p3}, Lcom/android/server/telecom/secutils/TelecomUtils;->isVideoCall(Landroid/os/Bundle;)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-static {p3}, Lcom/android/server/telecom/secutils/TelecomUtils;->isCSVideoCall(Landroid/os/Bundle;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 563
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultVoiceSubId()J

    move-result-wide v2

    invoke-static {v2, v3}, Landroid/telephony/SubscriptionManager;->getPhoneId(J)I

    move-result v0

    .line 564
    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->isValidPhoneId(I)Z

    move-result v2

    .line 565
    if-nez v2, :cond_4

    .line 566
    const/4 v0, 0x0

    .line 567
    :cond_4
    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/PhoneAccountHandle;

    .line 571
    :cond_5
    const-string v2, "CallsManager"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "startOutgoingCall() phoneAccountHandle = "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v2, v3, v5}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 573
    invoke-virtual {v1, v0}, Lcom/android/server/telecom/Call;->setTargetPhoneAccount(Landroid/telecom/PhoneAccountHandle;)V

    .line 575
    iget-object v2, p0, Lcom/android/server/telecom/CallsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Lcom/android/server/telecom/Call;->getHandle()Landroid/net/Uri;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/telecom/TelephonyUtil;->shouldProcessAsEmergency(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v5

    .line 578
    if-eqz p1, :cond_c

    invoke-virtual {p1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_c

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    const-string v3, "tel"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    invoke-virtual {p1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v2

    const-string v3, "0"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    const-string v3, "1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v6, 0x2

    if-le v3, v6, :cond_8

    :cond_6
    const-string v3, "2"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v6, 0x2

    if-le v3, v6, :cond_8

    :cond_7
    const-string v3, "3"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    const-string v3, "4"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    const-string v3, "5"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    :cond_8
    const/4 v2, 0x1

    move v3, v2

    .line 582
    :goto_1
    if-nez v3, :cond_d

    invoke-direct {p0, v1, v5}, Lcom/android/server/telecom/CallsManager;->makeRoomForOutgoingCall(Lcom/android/server/telecom/Call;Z)Z

    move-result v2

    if-nez v2, :cond_d

    .line 584
    const/4 v0, 0x0

    .line 619
    :goto_2
    return-object v0

    .line 548
    :cond_9
    iget-object v0, p0, Lcom/android/server/telecom/CallsManager;->mPhoneAccountRegistrar:Lcom/android/server/telecom/PhoneAccountRegistrar;

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/server/telecom/PhoneAccountRegistrar;->getDefaultOutgoingPhoneAccount(Ljava/lang/String;)Landroid/telecom/PhoneAccountHandle;

    move-result-object v0

    .line 549
    if-nez v0, :cond_2

    :cond_a
    move-object v0, p2

    goto/16 :goto_0

    .line 578
    :cond_b
    const/4 v2, 0x0

    move v3, v2

    goto :goto_1

    :cond_c
    const/4 v2, 0x0

    move v3, v2

    goto :goto_1

    .line 587
    :cond_d
    if-nez v0, :cond_f

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v2

    const/4 v6, 0x1

    if-le v2, v6, :cond_f

    if-nez v5, :cond_f

    .line 589
    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/android/server/telecom/Call;->setState(I)V

    .line 590
    if-eqz p3, :cond_e

    .line 591
    const-string v2, "selectPhoneAccountAccounts"

    invoke-virtual {p3, v2, v4}, Landroid/os/Bundle;->putParcelableList(Ljava/lang/String;Ljava/util/List;)V

    .line 595
    :cond_e
    :goto_3
    invoke-virtual {v1, p3}, Lcom/android/server/telecom/Call;->setExtras(Landroid/os/Bundle;)V

    .line 596
    const-string v2, "CallsManager"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "startOutgoingCall() extras = "

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v2, v4, v6}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 597
    invoke-static {v1}, Lcom/android/server/telecom/LowBatteryManager;->supportLowBatteryManager(Lcom/android/server/telecom/Call;)Z

    move-result v2

    if-eqz v2, :cond_10

    invoke-static {}, Lcom/android/server/telecom/LowBatteryManager;->getInstance()Lcom/android/server/telecom/LowBatteryManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/telecom/LowBatteryManager;->isLowBatt()Z

    move-result v2

    if-eqz v2, :cond_10

    .line 598
    invoke-static {}, Lcom/android/server/telecom/LowBatteryManager;->getInstance()Lcom/android/server/telecom/LowBatteryManager;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/server/telecom/LowBatteryManager;->performBatteryLowProcess(Z)V

    .line 599
    invoke-virtual {v1}, Lcom/android/server/telecom/Call;->disconnect()V

    .line 600
    const/4 v0, 0x0

    goto :goto_2

    .line 593
    :cond_f
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/server/telecom/Call;->setState(I)V

    goto :goto_3

    .line 604
    :cond_10
    if-eqz p1, :cond_14

    invoke-virtual {p1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_14

    invoke-virtual {p1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v2

    const-string v4, "#"

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_11

    invoke-virtual {p1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v2

    const-string v4, "+"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14

    :cond_11
    const/4 v2, 0x1

    :goto_4
    if-nez v2, :cond_12

    if-eqz v3, :cond_15

    .line 605
    :cond_12
    invoke-virtual {v1, p0}, Lcom/android/server/telecom/Call;->addListener(Lcom/android/server/telecom/Call$Listener;)V

    .line 611
    :goto_5
    const-string v2, "feature_multisim_dsds"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 612
    if-eqz v0, :cond_13

    if-nez v5, :cond_13

    .line 613
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultVoiceSubId()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/server/telecom/CallsManager;->prevSubId:J

    .line 614
    invoke-static {v1}, Lcom/android/server/telecom/secutils/TelecomUtilsMultiSIM;->setDefaultSubscriptionId(Lcom/android/server/telecom/Call;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 615
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/telecom/CallsManager;->defaultSubscriptionChanged:Z

    :cond_13
    move-object v0, v1

    .line 619
    goto/16 :goto_2

    .line 604
    :cond_14
    const/4 v2, 0x0

    goto :goto_4

    .line 607
    :cond_15
    invoke-direct {p0, v1}, Lcom/android/server/telecom/CallsManager;->addCall(Lcom/android/server/telecom/Call;)V

    goto :goto_5
.end method

.method final stopDtmfTone(Lcom/android/server/telecom/Call;)V
    .locals 3

    .prologue
    .line 827
    iget-object v0, p0, Lcom/android/server/telecom/CallsManager;->mCalls:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 828
    const-string v0, "Request to stop DTMF in a non-existent call %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 833
    :goto_0
    return-void

    .line 830
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/telecom/Call;->stopDtmfTone()V

    .line 831
    iget-object v0, p0, Lcom/android/server/telecom/CallsManager;->mDtmfLocalTonePlayer:Lcom/android/server/telecom/DtmfLocalTonePlayer;

    invoke-virtual {v0, p1}, Lcom/android/server/telecom/DtmfLocalTonePlayer;->stopTone(Lcom/android/server/telecom/Call;)V

    goto :goto_0
.end method

.method public final stopDtmfTonePlayer(Lcom/android/server/telecom/Call;)V
    .locals 3

    .prologue
    .line 836
    iget-object v0, p0, Lcom/android/server/telecom/CallsManager;->mCalls:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 837
    const-string v0, "Request to stop DTMF in a non-existent call %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 841
    :goto_0
    return-void

    .line 839
    :cond_0
    iget-object v0, p0, Lcom/android/server/telecom/CallsManager;->mDtmfLocalTonePlayer:Lcom/android/server/telecom/DtmfLocalTonePlayer;

    invoke-virtual {v0, p1}, Lcom/android/server/telecom/DtmfLocalTonePlayer;->stopTone(Lcom/android/server/telecom/Call;)V

    goto :goto_0
.end method

.method public final storeSpeakerState(Z)V
    .locals 1

    .prologue
    .line 1656
    invoke-virtual {p0}, Lcom/android/server/telecom/CallsManager;->getRingingCall()Lcom/android/server/telecom/Call;

    move-result-object v0

    .line 1657
    if-eqz v0, :cond_0

    .line 1658
    invoke-virtual {v0, p1}, Lcom/android/server/telecom/Call;->setStartWithSpeakerphoneOn(Z)V

    .line 1662
    :goto_0
    return-void

    .line 1660
    :cond_0
    iget-object v0, p0, Lcom/android/server/telecom/CallsManager;->mCallAudioManager:Lcom/android/server/telecom/CallAudioManager;

    iput-boolean p1, v0, Lcom/android/server/telecom/CallAudioManager;->mWasSpeakerOn:Z

    goto :goto_0
.end method

.method final turnOffProximitySensor(Z)V
    .locals 1

    .prologue
    .line 981
    iget-object v0, p0, Lcom/android/server/telecom/CallsManager;->mProximitySensorManager:Lcom/android/server/telecom/ProximitySensorManager;

    invoke-virtual {v0, p1}, Lcom/android/server/telecom/ProximitySensorManager;->turnOff(Z)V

    .line 982
    return-void
.end method

.method final turnOnProximitySensor()V
    .locals 1

    .prologue
    .line 972
    iget-object v0, p0, Lcom/android/server/telecom/CallsManager;->mProximitySensorManager:Lcom/android/server/telecom/ProximitySensorManager;

    invoke-virtual {v0}, Lcom/android/server/telecom/ProximitySensorManager;->turnOn()V

    .line 973
    return-void
.end method

.method final unholdCall(Lcom/android/server/telecom/Call;)V
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 902
    iget-object v0, p0, Lcom/android/server/telecom/CallsManager;->mCalls:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 903
    const-string v0, "Unknown call (%s) asked to be removed from hold"

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->w(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 934
    :goto_0
    return-void

    .line 905
    :cond_0
    const-string v0, "unholding call: (%s)"

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 906
    const-string v0, "feature_ctc"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "feature_multisim_dsda"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 909
    invoke-virtual {p1}, Lcom/android/server/telecom/Call;->getPhoneId()I

    move-result v1

    .line 910
    iget-object v0, p0, Lcom/android/server/telecom/CallsManager;->mCalls:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/telecom/Call;

    .line 911
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/server/telecom/Call;->isAlive()Z

    move-result v3

    if-eqz v3, :cond_1

    if-eq v0, p1, :cond_1

    invoke-virtual {v0}, Lcom/android/server/telecom/Call;->getPhoneId()I

    move-result v3

    if-ne v1, v3, :cond_1

    .line 913
    :try_start_0
    const-string v3, "holding call: (%s)"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    invoke-static {p0, v3, v4}, Lcom/android/server/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 914
    invoke-virtual {v0}, Lcom/android/server/telecom/Call;->hold()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 915
    :catch_0
    move-exception v0

    .line 916
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 921
    :cond_2
    iget-object v0, p0, Lcom/android/server/telecom/CallsManager;->mCalls:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/telecom/Call;

    .line 922
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/android/server/telecom/Call;->isAlive()Z

    move-result v2

    if-eqz v2, :cond_3

    if-eq v0, p1, :cond_3

    .line 925
    :try_start_1
    invoke-virtual {v0}, Lcom/android/server/telecom/Call;->hold()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    .line 926
    :catch_1
    move-exception v0

    .line 927
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 932
    :cond_4
    invoke-virtual {p1}, Lcom/android/server/telecom/Call;->unhold()V

    goto :goto_0
.end method

.method public final updateForegroundCallForMulSimDsda()V
    .locals 0

    .prologue
    .line 1429
    invoke-direct {p0}, Lcom/android/server/telecom/CallsManager;->updateForegroundCall()V

    .line 1430
    return-void
.end method
