.class public Lcom/samsung/android/sensorhub/SensorHub;
.super Ljava/lang/Object;
.source "SensorHub.java"


# static fields
.field public static final TYPE_ALL:I = -0x1

.field public static final TYPE_CONTEXT:I = 0x1

.field public static final TYPE_GESTURE:I = 0x2


# instance fields
.field private mHandle:I

.field private mMinDelay:I

.field private mName:Ljava/lang/String;

.field private mType:I

.field private mVendor:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    return-void
.end method


# virtual methods
.method getHandle()I
    .registers 2

    .prologue
    .line 61
    iget v0, p0, mHandle:I

    return v0
.end method

.method public getMinDelay()I
    .registers 2

    .prologue
    .line 57
    iget v0, p0, mMinDelay:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 45
    iget-object v0, p0, mName:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .registers 2

    .prologue
    .line 53
    iget v0, p0, mType:I

    return v0
.end method

.method public getVendor()Ljava/lang/String;
    .registers 2

    .prologue
    .line 49
    iget-object v0, p0, mVendor:Ljava/lang/String;

    return-object v0
.end method
