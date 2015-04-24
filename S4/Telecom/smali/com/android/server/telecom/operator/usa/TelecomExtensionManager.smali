.class public final Lcom/android/server/telecom/operator/usa/TelecomExtensionManager;
.super Lcom/android/server/telecom/CallsManager$CallsManagerListener;
.source "TelecomExtensionManager.java"


# static fields
.field private static final sInstance:Lcom/android/server/telecom/operator/usa/TelecomExtensionManager;


# instance fields
.field private final mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mServiceState:I

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private wirelessPriorityServiceIntent:Landroid/content/Intent;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 50
    new-instance v0, Lcom/android/server/telecom/operator/usa/TelecomExtensionManager;

    invoke-direct {v0}, Lcom/android/server/telecom/operator/usa/TelecomExtensionManager;-><init>()V

    sput-object v0, Lcom/android/server/telecom/operator/usa/TelecomExtensionManager;->sInstance:Lcom/android/server/telecom/operator/usa/TelecomExtensionManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/android/server/telecom/CallsManager$CallsManagerListener;-><init>()V

    .line 46
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/server/telecom/operator/usa/TelecomExtensionManager;->mServiceState:I

    .line 87
    new-instance v0, Lcom/android/server/telecom/operator/usa/TelecomExtensionManager$1;

    invoke-direct {v0, p0}, Lcom/android/server/telecom/operator/usa/TelecomExtensionManager$1;-><init>(Lcom/android/server/telecom/operator/usa/TelecomExtensionManager;)V

    iput-object v0, p0, Lcom/android/server/telecom/operator/usa/TelecomExtensionManager;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 54
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/telecom/operator/usa/TelecomExtensionManager;)I
    .locals 1

    .prologue
    .line 37
    iget v0, p0, Lcom/android/server/telecom/operator/usa/TelecomExtensionManager;->mServiceState:I

    return v0
.end method

.method static synthetic access$002(Lcom/android/server/telecom/operator/usa/TelecomExtensionManager;I)I
    .locals 0

    .prologue
    .line 37
    iput p1, p0, Lcom/android/server/telecom/operator/usa/TelecomExtensionManager;->mServiceState:I

    return p1
.end method

.method public static getInstance()Lcom/android/server/telecom/operator/usa/TelecomExtensionManager;
    .locals 1

    .prologue
    .line 52
    sget-object v0, Lcom/android/server/telecom/operator/usa/TelecomExtensionManager;->sInstance:Lcom/android/server/telecom/operator/usa/TelecomExtensionManager;

    return-object v0
.end method


# virtual methods
.method public final onCallRemoved(Lcom/android/server/telecom/Call;)V
    .locals 2

    .prologue
    .line 63
    invoke-static {}, Lcom/android/server/telecom/CallsManager;->getInstance()Lcom/android/server/telecom/CallsManager;

    move-result-object v0

    .line 73
    const-string v1, "wireless_priority_service_call"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 74
    invoke-virtual {v0}, Lcom/android/server/telecom/CallsManager;->getCalls()Lcom/google/common/collect/ImmutableCollection;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableCollection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 75
    iget-object v0, p0, Lcom/android/server/telecom/operator/usa/TelecomExtensionManager;->wirelessPriorityServiceIntent:Landroid/content/Intent;

    if-eqz v0, :cond_0

    .line 76
    iget-object v0, p0, Lcom/android/server/telecom/operator/usa/TelecomExtensionManager;->wirelessPriorityServiceIntent:Landroid/content/Intent;

    invoke-static {v0}, Lcom/android/server/telecom/operator/usa/TelecomExtension;->wirelessPriorityServiceCall(Landroid/content/Intent;)V

    .line 77
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/telecom/operator/usa/TelecomExtensionManager;->wirelessPriorityServiceIntent:Landroid/content/Intent;

    .line 81
    :cond_0
    return-void
.end method

.method public final setWirelessPriorityServiceIntent(Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 84
    iput-object p1, p0, Lcom/android/server/telecom/operator/usa/TelecomExtensionManager;->wirelessPriorityServiceIntent:Landroid/content/Intent;

    .line 85
    return-void
.end method

.method public final telephonyManager(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 57
    invoke-static {p1}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/telecom/operator/usa/TelecomExtensionManager;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 58
    iget-object v0, p0, Lcom/android/server/telecom/operator/usa/TelecomExtensionManager;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/server/telecom/operator/usa/TelecomExtensionManager;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 59
    return-void
.end method
