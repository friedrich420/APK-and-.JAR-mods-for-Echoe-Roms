.class public Landroid/media/AudioMixPortConfig;
.super Landroid/media/AudioPortConfig;
.source "AudioMixPortConfig.java"


# direct methods
.method constructor <init>(Landroid/media/AudioMixPort;IIILandroid/media/AudioGainConfig;)V
    .registers 6
    .param p1, "mixPort"    # Landroid/media/AudioMixPort;
    .param p2, "samplingRate"    # I
    .param p3, "channelMask"    # I
    .param p4, "format"    # I
    .param p5, "gain"    # Landroid/media/AudioGainConfig;

    .prologue
    .line 31
    invoke-direct/range {p0 .. p5}, Landroid/media/AudioPortConfig;-><init>(Landroid/media/AudioPort;IIILandroid/media/AudioGainConfig;)V

    .line 32
    return-void
.end method


# virtual methods
.method public port()Landroid/media/AudioMixPort;
    .registers 2

    .prologue
    .line 38
    iget-object v0, p0, mPort:Landroid/media/AudioPort;

    check-cast v0, Landroid/media/AudioMixPort;

    return-object v0
.end method

.method public bridge synthetic port()Landroid/media/AudioPort;
    .registers 2

    .prologue
    .line 27
    invoke-virtual {p0}, port()Landroid/media/AudioMixPort;

    move-result-object v0

    return-object v0
.end method
