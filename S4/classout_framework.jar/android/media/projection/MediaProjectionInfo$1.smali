.class final Landroid/media/projection/MediaProjectionInfo$1;
.super Ljava/lang/Object;
.source "MediaProjectionInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/projection/MediaProjectionInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Landroid/media/projection/MediaProjectionInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/media/projection/MediaProjectionInfo;
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 85
    new-instance v0, Landroid/media/projection/MediaProjectionInfo;

    invoke-direct {v0, p1}, Landroid/media/projection/MediaProjectionInfo;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 82
    invoke-virtual {p0, p1}, createFromParcel(Landroid/os/Parcel;)Landroid/media/projection/MediaProjectionInfo;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/media/projection/MediaProjectionInfo;
    .registers 3
    .param p1, "size"    # I

    .prologue
    .line 90
    new-array v0, p1, [Landroid/media/projection/MediaProjectionInfo;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 3
    .param p1, "x0"    # I

    .prologue
    .line 82
    invoke-virtual {p0, p1}, newArray(I)[Landroid/media/projection/MediaProjectionInfo;

    move-result-object v0

    return-object v0
.end method
