.class final Landroid/content/ContentProviderOperation$1;
.super Ljava/lang/Object;
.source "ContentProviderOperation.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/ContentProviderOperation;
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
        "Landroid/content/ContentProviderOperation;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 406
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/content/ContentProviderOperation;
    .registers 4
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 408
    new-instance v0, Landroid/content/ContentProviderOperation;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Landroid/content/ContentProviderOperation;-><init>(Landroid/os/Parcel;Landroid/content/ContentProviderOperation$1;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 406
    invoke-virtual {p0, p1}, createFromParcel(Landroid/os/Parcel;)Landroid/content/ContentProviderOperation;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/content/ContentProviderOperation;
    .registers 3
    .param p1, "size"    # I

    .prologue
    .line 412
    new-array v0, p1, [Landroid/content/ContentProviderOperation;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 3
    .param p1, "x0"    # I

    .prologue
    .line 406
    invoke-virtual {p0, p1}, newArray(I)[Landroid/content/ContentProviderOperation;

    move-result-object v0

    return-object v0
.end method