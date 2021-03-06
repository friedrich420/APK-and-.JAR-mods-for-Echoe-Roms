.class public Landroid/media/session/ParcelableVolumeInfo;
.super Ljava/lang/Object;
.source "ParcelableVolumeInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/media/session/ParcelableVolumeInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public audioAttrs:Landroid/media/AudioAttributes;

.field public controlType:I

.field public currentVolume:I

.field public maxVolume:I

.field public volumeType:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 68
    new-instance v0, Landroid/media/session/ParcelableVolumeInfo$1;

    invoke-direct {v0}, Landroid/media/session/ParcelableVolumeInfo$1;-><init>()V

    sput-object v0, CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(ILandroid/media/AudioAttributes;III)V
    .registers 6
    .param p1, "volumeType"    # I
    .param p2, "audioAttrs"    # Landroid/media/AudioAttributes;
    .param p3, "controlType"    # I
    .param p4, "maxVolume"    # I
    .param p5, "currentVolume"    # I

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput p1, p0, volumeType:I

    .line 39
    iput-object p2, p0, audioAttrs:Landroid/media/AudioAttributes;

    .line 40
    iput p3, p0, controlType:I

    .line 41
    iput p4, p0, maxVolume:I

    .line 42
    iput p5, p0, currentVolume:I

    .line 43
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "from"    # Landroid/os/Parcel;

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, volumeType:I

    .line 47
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, controlType:I

    .line 48
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, maxVolume:I

    .line 49
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, currentVolume:I

    .line 50
    sget-object v0, Landroid/media/AudioAttributes;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioAttributes;

    iput-object v0, p0, audioAttrs:Landroid/media/AudioAttributes;

    .line 51
    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 55
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 60
    iget v0, p0, volumeType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 61
    iget v0, p0, controlType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 62
    iget v0, p0, maxVolume:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 63
    iget v0, p0, currentVolume:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 64
    iget-object v0, p0, audioAttrs:Landroid/media/AudioAttributes;

    invoke-virtual {v0, p1, p2}, Landroid/media/AudioAttributes;->writeToParcel(Landroid/os/Parcel;I)V

    .line 65
    return-void
.end method
