.class public final Landroid/view/SurfaceSession;
.super Ljava/lang/Object;
.source "SurfaceSession.java"


# instance fields
.field private mNativeClient:J


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    invoke-static {}, nativeCreate()J

    move-result-wide v0

    iput-wide v0, p0, mNativeClient:J

    .line 36
    return-void
.end method

.method private static native nativeCreate()J
.end method

.method private static native nativeDestroy(J)V
.end method

.method private static native nativeKill(J)V
.end method


# virtual methods
.method protected finalize()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 42
    :try_start_0
    iget-wide v0, p0, mNativeClient:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_d

    .line 43
    iget-wide v0, p0, mNativeClient:J

    invoke-static {v0, v1}, nativeDestroy(J)V
    :try_end_d
    .catchall {:try_start_0 .. :try_end_d} :catchall_11

    .line 46
    :cond_d
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 48
    return-void

    .line 46
    :catchall_11
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public kill()V
    .registers 3

    .prologue
    .line 56
    iget-wide v0, p0, mNativeClient:J

    invoke-static {v0, v1}, nativeKill(J)V

    .line 57
    return-void
.end method
