.class public Lcom/android/internal/telephony/SmartcardInternal;
.super Ljava/lang/Object;
.source "SmartcardInternal.java"


# static fields
.field public static final SMARTCARD_IO_ERROR_ATR_BUFFER:I = -0x6

.field public static final SMARTCARD_IO_ERROR_CARD_NOT_EXIST:I = -0x2

.field public static final SMARTCARD_IO_ERROR_OPEN_CHANNEL:I = -0x1

.field public static final SMARTCARD_IO_ERROR_RESPONSE_BUFFER:I = -0x5

.field public static final SMARTCARD_IO_ERROR_TRANSMIT_BUFFER:I = -0x4

.field public static final SMARTCARD_IO_INVALID_CHANNEL:I = -0x3

.field public static final SMARTCARD_IO_SUCCESS:I = 0x0

.field static final mLogTag:Ljava/lang/String; = "SmartcardInternal"

.field private static pcscInstance:Lcom/android/internal/telephony/IccPcscProvider;

.field private static scInstance:Lcom/android/internal/telephony/SmartcardInternal;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    const/4 v0, 0x0

    .line 26
    sput-object v0, scInstance:Lcom/android/internal/telephony/SmartcardInternal;

    .line 27
    sput-object v0, pcscInstance:Lcom/android/internal/telephony/IccPcscProvider;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Lcom/android/internal/telephony/IccPcscProvider;

    invoke-direct {v0}, Lcom/android/internal/telephony/IccPcscProvider;-><init>()V

    sput-object v0, pcscInstance:Lcom/android/internal/telephony/IccPcscProvider;

    .line 43
    return-void
.end method

.method public static getInstance()Lcom/android/internal/telephony/SmartcardInternal;
    .registers 3

    .prologue
    .line 30
    sget-object v0, scInstance:Lcom/android/internal/telephony/SmartcardInternal;

    if-nez v0, :cond_1a

    .line 31
    const-class v1, Lcom/android/internal/telephony/SmartcardInternal;

    monitor-enter v1

    .line 32
    :try_start_7
    const-string v0, "SmartcardInternal"

    const-string v2, "Making an Instance..."

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    sget-object v0, scInstance:Lcom/android/internal/telephony/SmartcardInternal;

    if-nez v0, :cond_19

    .line 34
    new-instance v0, Lcom/android/internal/telephony/SmartcardInternal;

    invoke-direct {v0}, <init>()V

    sput-object v0, scInstance:Lcom/android/internal/telephony/SmartcardInternal;

    .line 36
    :cond_19
    monitor-exit v1
    :try_end_1a
    .catchall {:try_start_7 .. :try_end_1a} :catchall_1d

    .line 38
    :cond_1a
    sget-object v0, scInstance:Lcom/android/internal/telephony/SmartcardInternal;

    return-object v0

    .line 36
    :catchall_1d
    move-exception v0

    :try_start_1e
    monitor-exit v1
    :try_end_1f
    .catchall {:try_start_1e .. :try_end_1f} :catchall_1d

    throw v0
.end method


# virtual methods
.method public connect()I
    .registers 2

    .prologue
    .line 50
    sget-object v0, pcscInstance:Lcom/android/internal/telephony/IccPcscProvider;

    invoke-virtual {v0}, Lcom/android/internal/telephony/IccPcscProvider;->connect()I

    move-result v0

    return v0
.end method

.method public disconnect(I)I
    .registers 3
    .param p1, "channel"    # I

    .prologue
    .line 59
    sget-object v0, pcscInstance:Lcom/android/internal/telephony/IccPcscProvider;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/IccPcscProvider;->disconnect(I)I

    move-result v0

    return v0
.end method

.method public finalize()V
    .registers 2

    .prologue
    .line 46
    sget-object v0, pcscInstance:Lcom/android/internal/telephony/IccPcscProvider;

    invoke-virtual {v0}, Lcom/android/internal/telephony/IccPcscProvider;->finalize()V

    .line 47
    return-void
.end method

.method public getATR([B)I
    .registers 3
    .param p1, "atr"    # [B

    .prologue
    .line 63
    sget-object v0, pcscInstance:Lcom/android/internal/telephony/IccPcscProvider;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/IccPcscProvider;->getATR([B)I

    move-result v0

    return v0
.end method

.method public transmit(I[B[B)I
    .registers 5
    .param p1, "channel"    # I
    .param p2, "command"    # [B
    .param p3, "response"    # [B

    .prologue
    .line 55
    sget-object v0, pcscInstance:Lcom/android/internal/telephony/IccPcscProvider;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/telephony/IccPcscProvider;->transmit(I[B[B)I

    move-result v0

    return v0
.end method
