.class public abstract Landroid/media/tv/TvInputManager$HardwareCallback;
.super Ljava/lang/Object;
.source "TvInputManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/tv/TvInputManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "HardwareCallback"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 549
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract onReleased()V
.end method

.method public abstract onStreamConfigChanged([Landroid/media/tv/TvStreamConfig;)V
.end method
