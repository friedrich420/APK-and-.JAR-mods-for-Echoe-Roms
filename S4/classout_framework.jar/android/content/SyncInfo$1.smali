.class final Landroid/content/SyncInfo$1;
.super Ljava/lang/Object;
.source "SyncInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/SyncInfo;
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
        "Landroid/content/SyncInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/content/SyncInfo;
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 87
    new-instance v0, Landroid/content/SyncInfo;

    invoke-direct {v0, p1}, Landroid/content/SyncInfo;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 85
    invoke-virtual {p0, p1}, createFromParcel(Landroid/os/Parcel;)Landroid/content/SyncInfo;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/content/SyncInfo;
    .registers 3
    .param p1, "size"    # I

    .prologue
    .line 91
    new-array v0, p1, [Landroid/content/SyncInfo;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 3
    .param p1, "x0"    # I

    .prologue
    .line 85
    invoke-virtual {p0, p1}, newArray(I)[Landroid/content/SyncInfo;

    move-result-object v0

    return-object v0
.end method
