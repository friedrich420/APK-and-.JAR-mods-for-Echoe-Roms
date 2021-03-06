.class public Landroid/media/audiofx/PresetReverb;
.super Landroid/media/audiofx/AudioEffect;
.source "PresetReverb.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/audiofx/PresetReverb$1;,
        Landroid/media/audiofx/PresetReverb$Settings;,
        Landroid/media/audiofx/PresetReverb$BaseParameterListener;,
        Landroid/media/audiofx/PresetReverb$OnParameterChangeListener;
    }
.end annotation


# static fields
.field public static final PARAM_PRESET:I = 0x0

.field public static final PRESET_LARGEHALL:S = 0x5s

.field public static final PRESET_LARGEROOM:S = 0x3s

.field public static final PRESET_MEDIUMHALL:S = 0x4s

.field public static final PRESET_MEDIUMROOM:S = 0x2s

.field public static final PRESET_NONE:S = 0x0s

.field public static final PRESET_PLATE:S = 0x6s

.field public static final PRESET_SMALLROOM:S = 0x1s

.field private static final TAG:Ljava/lang/String; = "PresetReverb"


# instance fields
.field private mBaseParamListener:Landroid/media/audiofx/PresetReverb$BaseParameterListener;

.field private mParamListener:Landroid/media/audiofx/PresetReverb$OnParameterChangeListener;

.field private final mParamListenerLock:Ljava/lang/Object;


# direct methods
.method public constructor <init>(II)V
    .registers 6
    .param p1, "priority"    # I
    .param p2, "audioSession"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/UnsupportedOperationException;,
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 128
    sget-object v0, EFFECT_TYPE_PRESET_REVERB:Ljava/util/UUID;

    sget-object v1, EFFECT_TYPE_NULL:Ljava/util/UUID;

    invoke-direct {p0, v0, v1, p1, p2}, Landroid/media/audiofx/AudioEffect;-><init>(Ljava/util/UUID;Ljava/util/UUID;II)V

    .line 98
    iput-object v2, p0, mParamListener:Landroid/media/audiofx/PresetReverb$OnParameterChangeListener;

    .line 103
    iput-object v2, p0, mBaseParamListener:Landroid/media/audiofx/PresetReverb$BaseParameterListener;

    .line 108
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, mParamListenerLock:Ljava/lang/Object;

    .line 129
    return-void
.end method

.method static synthetic access$000(Landroid/media/audiofx/PresetReverb;)Ljava/lang/Object;
    .registers 2
    .param p0, "x0"    # Landroid/media/audiofx/PresetReverb;

    .prologue
    .line 53
    iget-object v0, p0, mParamListenerLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100(Landroid/media/audiofx/PresetReverb;)Landroid/media/audiofx/PresetReverb$OnParameterChangeListener;
    .registers 2
    .param p0, "x0"    # Landroid/media/audiofx/PresetReverb;

    .prologue
    .line 53
    iget-object v0, p0, mParamListener:Landroid/media/audiofx/PresetReverb$OnParameterChangeListener;

    return-object v0
.end method


# virtual methods
.method public getPreset()S
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 156
    const/4 v1, 0x1

    new-array v0, v1, [S

    .line 157
    .local v0, "value":[S
    invoke-virtual {p0, v2, v0}, getParameter(I[S)I

    move-result v1

    invoke-virtual {p0, v1}, checkStatus(I)V

    .line 158
    aget-short v1, v0, v2

    return v1
.end method

.method public getProperties()Landroid/media/audiofx/PresetReverb$Settings;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 284
    new-instance v0, Landroid/media/audiofx/PresetReverb$Settings;

    invoke-direct {v0}, Landroid/media/audiofx/PresetReverb$Settings;-><init>()V

    .line 285
    .local v0, "settings":Landroid/media/audiofx/PresetReverb$Settings;
    const/4 v2, 0x1

    new-array v1, v2, [S

    .line 286
    .local v1, "value":[S
    invoke-virtual {p0, v3, v1}, getParameter(I[S)I

    move-result v2

    invoke-virtual {p0, v2}, checkStatus(I)V

    .line 287
    aget-short v2, v1, v3

    iput-short v2, v0, Landroid/media/audiofx/PresetReverb$Settings;->preset:S

    .line 288
    return-object v0
.end method

.method public setParameterListener(Landroid/media/audiofx/PresetReverb$OnParameterChangeListener;)V
    .registers 5
    .param p1, "listener"    # Landroid/media/audiofx/PresetReverb$OnParameterChangeListener;

    .prologue
    .line 216
    iget-object v1, p0, mParamListenerLock:Ljava/lang/Object;

    monitor-enter v1

    .line 217
    :try_start_3
    iget-object v0, p0, mParamListener:Landroid/media/audiofx/PresetReverb$OnParameterChangeListener;

    if-nez v0, :cond_16

    .line 218
    iput-object p1, p0, mParamListener:Landroid/media/audiofx/PresetReverb$OnParameterChangeListener;

    .line 219
    new-instance v0, Landroid/media/audiofx/PresetReverb$BaseParameterListener;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Landroid/media/audiofx/PresetReverb$BaseParameterListener;-><init>(Landroid/media/audiofx/PresetReverb;Landroid/media/audiofx/PresetReverb$1;)V

    iput-object v0, p0, mBaseParamListener:Landroid/media/audiofx/PresetReverb$BaseParameterListener;

    .line 220
    iget-object v0, p0, mBaseParamListener:Landroid/media/audiofx/PresetReverb$BaseParameterListener;

    invoke-super {p0, v0}, Landroid/media/audiofx/AudioEffect;->setParameterListener(Landroid/media/audiofx/AudioEffect$OnParameterChangeListener;)V

    .line 222
    :cond_16
    monitor-exit v1

    .line 223
    return-void

    .line 222
    :catchall_18
    move-exception v0

    monitor-exit v1
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_18

    throw v0
.end method

.method public setPreset(S)V
    .registers 3
    .param p1, "preset"    # S
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .prologue
    .line 144
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, setParameter(IS)I

    move-result v0

    invoke-virtual {p0, v0}, checkStatus(I)V

    .line 145
    return-void
.end method

.method public setProperties(Landroid/media/audiofx/PresetReverb$Settings;)V
    .registers 4
    .param p1, "settings"    # Landroid/media/audiofx/PresetReverb$Settings;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .prologue
    .line 301
    const/4 v0, 0x0

    iget-short v1, p1, Landroid/media/audiofx/PresetReverb$Settings;->preset:S

    invoke-virtual {p0, v0, v1}, setParameter(IS)I

    move-result v0

    invoke-virtual {p0, v0}, checkStatus(I)V

    .line 302
    return-void
.end method
