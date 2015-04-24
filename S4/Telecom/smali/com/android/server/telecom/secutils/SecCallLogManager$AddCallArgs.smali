.class final Lcom/android/server/telecom/secutils/SecCallLogManager$AddCallArgs;
.super Ljava/lang/Object;
.source "SecCallLogManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/telecom/secutils/SecCallLogManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AddCallArgs"
.end annotation


# instance fields
.field public final accountHandle:Landroid/telecom/PhoneAccountHandle;

.field public final callType:I

.field public final callerInfo:Lcom/android/internal/telephony/CallerInfo;

.field public final context:Landroid/content/Context;

.field public dbUri:Landroid/net/Uri;

.field public final durationInSec:I

.field public extraValues:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final isAutoRejectCall:Z

.field public isCallOutDuration:Z

.field public final number:Ljava/lang/String;

.field public final photoringUrl:Ljava/lang/String;

.field public final presentation:I

.field public service_type:I

.field public final timestamp:J


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/telephony/CallerInfo;Ljava/lang/String;IIILandroid/telecom/PhoneAccountHandle;JJLjava/lang/Long;Ljava/lang/String;Z)V
    .locals 4

    .prologue
    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    iput-object p1, p0, Lcom/android/server/telecom/secutils/SecCallLogManager$AddCallArgs;->context:Landroid/content/Context;

    .line 100
    iput-object p2, p0, Lcom/android/server/telecom/secutils/SecCallLogManager$AddCallArgs;->callerInfo:Lcom/android/internal/telephony/CallerInfo;

    .line 101
    iput-object p3, p0, Lcom/android/server/telecom/secutils/SecCallLogManager$AddCallArgs;->number:Ljava/lang/String;

    .line 102
    iput p4, p0, Lcom/android/server/telecom/secutils/SecCallLogManager$AddCallArgs;->presentation:I

    .line 103
    iput p5, p0, Lcom/android/server/telecom/secutils/SecCallLogManager$AddCallArgs;->callType:I

    .line 104
    iput-object p7, p0, Lcom/android/server/telecom/secutils/SecCallLogManager$AddCallArgs;->accountHandle:Landroid/telecom/PhoneAccountHandle;

    .line 106
    iput-wide p8, p0, Lcom/android/server/telecom/secutils/SecCallLogManager$AddCallArgs;->timestamp:J

    .line 107
    const-wide/16 v2, 0x3e8

    div-long v2, p10, v2

    long-to-int v2, v2

    iput v2, p0, Lcom/android/server/telecom/secutils/SecCallLogManager$AddCallArgs;->durationInSec:I

    .line 108
    move-object/from16 v0, p13

    iput-object v0, p0, Lcom/android/server/telecom/secutils/SecCallLogManager$AddCallArgs;->photoringUrl:Ljava/lang/String;

    .line 110
    move/from16 v0, p14

    iput-boolean v0, p0, Lcom/android/server/telecom/secutils/SecCallLogManager$AddCallArgs;->isAutoRejectCall:Z

    .line 111
    return-void
.end method
