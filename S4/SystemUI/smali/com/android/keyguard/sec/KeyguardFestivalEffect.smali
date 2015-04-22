.class public Lcom/android/keyguard/sec/KeyguardFestivalEffect;
.super Ljava/lang/Object;
.source "KeyguardFestivalEffect.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    return-void
.end method


# virtual methods
.method public GetScreenState()Z
    .locals 1

    .prologue
    .line 56
    const/4 v0, 0x0

    return v0
.end method

.method public GetShowState()Z
    .locals 1

    .prologue
    .line 60
    const/4 v0, 0x0

    return v0
.end method

.method public SetScreenState(Z)V
    .locals 0
    .param p1, "Flag"    # Z

    .prologue
    .line 65
    return-void
.end method

.method public SetShowState(Z)V
    .locals 0
    .param p1, "Flag"    # Z

    .prologue
    .line 69
    return-void
.end method

.method public getChargeEffectView()Lcom/android/keyguard/sec/KeyguardEffectViewBase;
    .locals 1

    .prologue
    .line 52
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCurrentSeason()I
    .locals 1

    .prologue
    .line 72
    const/4 v0, 0x0

    return v0
.end method

.method public getFestivalView()Lcom/android/keyguard/sec/KeyguardEffectViewBase;
    .locals 1

    .prologue
    .line 39
    const/4 v0, 0x0

    return-object v0
.end method

.method public getUnlockEffectView()Lcom/android/keyguard/sec/KeyguardEffectViewBase;
    .locals 1

    .prologue
    .line 43
    const/4 v0, 0x0

    return-object v0
.end method

.method public isActivated()Z
    .locals 1

    .prologue
    .line 15
    const/4 v0, 0x0

    return v0
.end method

.method public isChargeEffectEnable()Z
    .locals 1

    .prologue
    .line 27
    const/4 v0, 0x0

    return v0
.end method

.method public isChargeState()Z
    .locals 1

    .prologue
    .line 35
    const/4 v0, 0x0

    return v0
.end method

.method public isCommonDayShowFestivalWallpaper()Z
    .locals 1

    .prologue
    .line 31
    const/4 v0, 0x0

    return v0
.end method

.method public isEnabled()Z
    .locals 1

    .prologue
    .line 19
    const/4 v0, 0x0

    return v0
.end method

.method public isFestivalToday()Z
    .locals 1

    .prologue
    .line 48
    const/4 v0, 0x0

    return v0
.end method

.method public isUnlockEffectEnabled()Z
    .locals 1

    .prologue
    .line 23
    const/4 v0, 0x0

    return v0
.end method

.method public makeForeground(Landroid/content/Context;Lcom/android/keyguard/sec/KeyguardEffectViewBase;Lcom/android/keyguard/sec/KeyguardEffectViewController$Foreground;)Lcom/android/keyguard/sec/KeyguardEffectViewBase;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "foreground"    # Lcom/android/keyguard/sec/KeyguardEffectViewBase;
    .param p3, "type"    # Lcom/android/keyguard/sec/KeyguardEffectViewController$Foreground;

    .prologue
    .line 76
    const/4 v0, 0x0

    return-object v0
.end method

.method public pauseAnimation()V
    .locals 0

    .prologue
    .line 81
    return-void
.end method

.method public resumeAnimation()V
    .locals 0

    .prologue
    .line 85
    return-void
.end method
