.class public final Lcom/android/internal/os/UidSipper$BatterySipStat;
.super Ljava/lang/Object;
.source "UidSipper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/os/UidSipper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "BatterySipStat"
.end annotation


# instance fields
.field lcdOn:Z

.field power:D

.field time:Ljava/lang/String;

.field totalPower:D


# direct methods
.method private constructor <init>(Ljava/lang/String;ZDD)V
    .registers 8
    .param p1, "time"    # Ljava/lang/String;
    .param p2, "lcdOn"    # Z
    .param p3, "power"    # D
    .param p5, "totalPower"    # D

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    iput-object p1, p0, time:Ljava/lang/String;

    .line 68
    iput-boolean p2, p0, lcdOn:Z

    .line 69
    iput-wide p3, p0, power:D

    .line 70
    iput-wide p5, p0, totalPower:D

    .line 71
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ZDDLcom/android/internal/os/UidSipper$1;)V
    .registers 9
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # Z
    .param p3, "x2"    # D
    .param p5, "x3"    # D
    .param p7, "x4"    # Lcom/android/internal/os/UidSipper$1;

    .prologue
    .line 57
    invoke-direct/range {p0 .. p6}, <init>(Ljava/lang/String;ZDD)V

    return-void
.end method


# virtual methods
.method public getPower()D
    .registers 3

    .prologue
    .line 82
    iget-wide v0, p0, power:D

    return-wide v0
.end method

.method public getTime()Ljava/lang/String;
    .registers 2

    .prologue
    .line 74
    iget-object v0, p0, time:Ljava/lang/String;

    return-object v0
.end method

.method public getTotalPower()D
    .registers 3

    .prologue
    .line 86
    iget-wide v0, p0, totalPower:D

    return-wide v0
.end method

.method public isLcdOn()Z
    .registers 2

    .prologue
    .line 78
    iget-boolean v0, p0, lcdOn:Z

    return v0
.end method
