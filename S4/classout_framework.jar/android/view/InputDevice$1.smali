.class final Landroid/view/InputDevice$1;
.super Ljava/lang/Object;
.source "InputDevice.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/InputDevice;
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
        "Landroid/view/InputDevice;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 366
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/view/InputDevice;
    .registers 4
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 368
    new-instance v0, Landroid/view/InputDevice;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Landroid/view/InputDevice;-><init>(Landroid/os/Parcel;Landroid/view/InputDevice$1;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 366
    invoke-virtual {p0, p1}, createFromParcel(Landroid/os/Parcel;)Landroid/view/InputDevice;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/view/InputDevice;
    .registers 3
    .param p1, "size"    # I

    .prologue
    .line 371
    new-array v0, p1, [Landroid/view/InputDevice;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 3
    .param p1, "x0"    # I

    .prologue
    .line 366
    invoke-virtual {p0, p1}, newArray(I)[Landroid/view/InputDevice;

    move-result-object v0

    return-object v0
.end method
