.class Lcom/android/internal/app/ProcessStats$PssAggr;
.super Ljava/lang/Object;
.source "ProcessStats.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/ProcessStats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "PssAggr"
.end annotation


# instance fields
.field pss:J

.field samples:J


# direct methods
.method constructor <init>()V
    .registers 3

    .prologue
    const-wide/16 v0, 0x0

    .line 660
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 661
    iput-wide v0, p0, pss:J

    .line 662
    iput-wide v0, p0, samples:J

    return-void
.end method


# virtual methods
.method add(JJ)V
    .registers 12
    .param p1, "newPss"    # J
    .param p3, "newSamples"    # J

    .prologue
    .line 665
    iget-wide v0, p0, pss:J

    long-to-double v0, v0

    iget-wide v2, p0, samples:J

    long-to-double v2, v2

    mul-double/2addr v0, v2

    long-to-double v2, p1

    long-to-double v4, p3

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    double-to-long v0, v0

    iget-wide v2, p0, samples:J

    add-long/2addr v2, p3

    div-long/2addr v0, v2

    iput-wide v0, p0, pss:J

    .line 667
    iget-wide v0, p0, samples:J

    add-long/2addr v0, p3

    iput-wide v0, p0, samples:J

    .line 668
    return-void
.end method
