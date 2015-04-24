.class public final Lcom/android/server/telecom/secutils/CallMotion;
.super Ljava/lang/Object;
.source "CallMotion.java"


# static fields
.field private static mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;


# instance fields
.field private mCallsManager:Lcom/android/server/telecom/CallsManager;

.field private mContext:Landroid/content/Context;

.field private mMotionListener:Landroid/hardware/motion/MRListener;

.field private mMotionType:I

.field private mRinger:Lcom/android/server/telecom/Ringer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 52
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/telecom/secutils/CallMotion;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    .line 63
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1

    .prologue
    .line 238
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    invoke-static {}, Lcom/android/server/telecom/CallsManager;->getInstance()Lcom/android/server/telecom/CallsManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/telecom/secutils/CallMotion;->mCallsManager:Lcom/android/server/telecom/CallsManager;

    .line 71
    new-instance v0, Lcom/android/server/telecom/secutils/CallMotion$1;

    invoke-direct {v0, p0}, Lcom/android/server/telecom/secutils/CallMotion$1;-><init>(Lcom/android/server/telecom/secutils/CallMotion;)V

    iput-object v0, p0, Lcom/android/server/telecom/secutils/CallMotion;->mMotionListener:Landroid/hardware/motion/MRListener;

    .line 239
    iput-object p1, p0, Lcom/android/server/telecom/secutils/CallMotion;->mContext:Landroid/content/Context;

    .line 240
    iput p2, p0, Lcom/android/server/telecom/secutils/CallMotion;->mMotionType:I

    .line 241
    iget-object v0, p0, Lcom/android/server/telecom/secutils/CallMotion;->mCallsManager:Lcom/android/server/telecom/CallsManager;

    invoke-virtual {v0}, Lcom/android/server/telecom/CallsManager;->getRinger()Lcom/android/server/telecom/Ringer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/telecom/secutils/CallMotion;->mRinger:Lcom/android/server/telecom/Ringer;

    .line 242
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/telecom/secutils/CallMotion;)I
    .locals 1

    .prologue
    .line 43
    iget v0, p0, Lcom/android/server/telecom/secutils/CallMotion;->mMotionType:I

    return v0
.end method

.method static synthetic access$100(Lcom/android/server/telecom/secutils/CallMotion;)Lcom/android/server/telecom/Ringer;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/server/telecom/secutils/CallMotion;->mRinger:Lcom/android/server/telecom/Ringer;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/telecom/secutils/CallMotion;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/server/telecom/secutils/CallMotion;->mContext:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method final startMotionCatch()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 245
    const-string v0, "CallMotion"

    const-string v1, "startMotionCatch"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v0, v1, v2}, Lcom/android/server/telecom/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 246
    sget-object v0, Lcom/android/server/telecom/secutils/CallMotion;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    if-nez v0, :cond_0

    .line 247
    iget-object v0, p0, Lcom/android/server/telecom/secutils/CallMotion;->mContext:Landroid/content/Context;

    const-string v1, "motion_recognition"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/motion/MotionRecognitionManager;

    sput-object v0, Lcom/android/server/telecom/secutils/CallMotion;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    .line 251
    :cond_0
    sget-object v0, Lcom/android/server/telecom/secutils/CallMotion;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    if-eqz v0, :cond_1

    .line 252
    sget-object v0, Lcom/android/server/telecom/secutils/CallMotion;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    iget-object v1, p0, Lcom/android/server/telecom/secutils/CallMotion;->mMotionListener:Landroid/hardware/motion/MRListener;

    invoke-virtual {v0, v1, v4}, Landroid/hardware/motion/MotionRecognitionManager;->registerListenerEvent(Landroid/hardware/motion/MRListener;I)V

    .line 257
    :goto_0
    return-void

    .line 255
    :cond_1
    const-string v0, "CallMotion"

    const-string v1, "fail to register"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v0, v1, v2}, Lcom/android/server/telecom/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method final stopMotionCatch()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 260
    const-string v0, "CallMotion"

    const-string v1, "stopMotionCatch"

    new-array v2, v4, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/android/server/telecom/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 262
    sget-object v0, Lcom/android/server/telecom/secutils/CallMotion;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    if-eqz v0, :cond_0

    .line 263
    sget-object v0, Lcom/android/server/telecom/secutils/CallMotion;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    iget-object v1, p0, Lcom/android/server/telecom/secutils/CallMotion;->mMotionListener:Landroid/hardware/motion/MRListener;

    invoke-virtual {v0, v1}, Landroid/hardware/motion/MotionRecognitionManager;->unregisterListener(Landroid/hardware/motion/MRListener;)V

    .line 264
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/telecom/secutils/CallMotion;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    .line 266
    :cond_0
    return-void
.end method
