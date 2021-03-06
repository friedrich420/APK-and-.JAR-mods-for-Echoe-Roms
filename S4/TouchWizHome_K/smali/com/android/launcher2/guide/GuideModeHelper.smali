.class public final Lcom/android/launcher2/guide/GuideModeHelper;
.super Ljava/lang/Object;
.source "GuideModeHelper.java"


# static fields
.field public static final ACTION_BAR_POINTER_SHOW_DELAY:I = 0x96

.field public static final GUIDE_MODE_NAVIGATION:Ljava/lang/String; = "navigation"

.field public static final GUIDE_MODE_VIEWAPPS:Ljava/lang/String; = "viewapps"

.field public static final HOMESCREEN_GUIDE_COMPLETED:Ljava/lang/String; = "homescreen:guide_completed"

.field public static final HOMESCREEN_GUIDE_IS_ON:Ljava/lang/String; = "homescreen:guide_is_on"

.field public static final HOMESCREEN_GUIDE_MODE:Ljava/lang/String; = "homescreen:guide_mode"

.field private static mIsTablet:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 57
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/launcher2/guide/GuideModeHelper;->mIsTablet:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static emulateTouchOnFocusedView(Landroid/app/Activity;)V
    .locals 0
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 235
    return-void
.end method

.method static getGuideModeFromBundle(Landroid/os/Bundle;)Ljava/lang/String;
    .locals 2
    .param p0, "b"    # Landroid/os/Bundle;

    .prologue
    .line 88
    const/4 v0, 0x0

    .line 90
    .local v0, "result":Ljava/lang/String;
    if-eqz p0, :cond_0

    .line 91
    const-string v1, "homescreen:guide_mode"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 92
    const-string v1, "homescreen:guide_mode"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 94
    const-string v1, "homescreen:guide_is_on"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 95
    const-string v1, "homescreen:guide_mode"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 99
    :cond_0
    return-object v0
.end method

.method static getGuideModeFromIntent(Landroid/os/Bundle;Landroid/os/Bundle;)Ljava/lang/String;
    .locals 2
    .param p0, "savedInstanceState"    # Landroid/os/Bundle;
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 70
    if-eqz p0, :cond_1

    const-string v1, "homescreen:guide_mode"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 73
    .local v0, "result":Ljava/lang/String;
    :goto_0
    if-nez v0, :cond_0

    .line 74
    invoke-static {p1}, Lcom/android/launcher2/guide/GuideModeHelper;->getGuideModeFromBundle(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v0

    .line 77
    :cond_0
    return-object v0

    .line 70
    .end local v0    # "result":Ljava/lang/String;
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static init(Landroid/content/Context;)V
    .locals 0
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 304
    return-void
.end method

.method static isGuideCompleted(Landroid/os/Bundle;)Z
    .locals 2
    .param p0, "b"    # Landroid/os/Bundle;

    .prologue
    .line 103
    const/4 v0, 0x0

    .line 105
    .local v0, "result":Z
    if-eqz p0, :cond_0

    .line 106
    const-string v1, "homescreen:guide_completed"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 107
    const-string v1, "homescreen:guide_completed"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 108
    const-string v1, "homescreen:guide_completed"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 112
    :cond_0
    return v0
.end method

.method static isGuideModeNavigation(Ljava/lang/String;)Z
    .locals 2
    .param p0, "mode"    # Ljava/lang/String;

    .prologue
    .line 140
    const/4 v0, 0x0

    .line 141
    .local v0, "result":Z
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 142
    const-string v1, "navigation"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 143
    :cond_0
    return v0
.end method

.method static isGuideModeViewApps(Ljava/lang/String;)Z
    .locals 2
    .param p0, "mode"    # Ljava/lang/String;

    .prologue
    .line 153
    const/4 v0, 0x0

    .line 154
    .local v0, "result":Z
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 155
    const-string v1, "viewapps"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 156
    :cond_0
    return v0
.end method

.method static isInGuideMode(Landroid/os/Bundle;Landroid/os/Bundle;)Z
    .locals 2
    .param p0, "savedInstanceState"    # Landroid/os/Bundle;
    .param p1, "b"    # Landroid/os/Bundle;

    .prologue
    .line 117
    const/4 v0, 0x0

    .line 119
    .local v0, "result":Z
    if-eqz p0, :cond_1

    const-string v1, "homescreen:guide_is_on"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 120
    const-string v1, "homescreen:guide_is_on"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 130
    :cond_0
    :goto_0
    return v0

    .line 122
    :cond_1
    if-eqz p1, :cond_0

    .line 123
    const-string v1, "homescreen:guide_is_on"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 124
    const-string v1, "homescreen:guide_is_on"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 125
    const-string v1, "homescreen:guide_is_on"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    goto :goto_0
.end method

.method static isTablet()Z
    .locals 1

    .prologue
    .line 292
    sget-boolean v0, Lcom/android/launcher2/guide/GuideModeHelper;->mIsTablet:Z

    return v0
.end method

.method static setHomeViewDisabled(ZLandroid/app/Activity;)V
    .locals 2
    .param p0, "enabled"    # Z
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 277
    instance-of v1, p1, Lcom/android/launcher2/Launcher;

    if-eqz v1, :cond_0

    .line 278
    check-cast p1, Lcom/android/launcher2/Launcher;

    .end local p1    # "activity":Landroid/app/Activity;
    invoke-virtual {p1}, Lcom/android/launcher2/Launcher;->getHomeView()Lcom/android/launcher2/HomeView;

    move-result-object v0

    .line 280
    .local v0, "homeView":Lcom/android/launcher2/HomeView;
    if-eqz v0, :cond_0

    .line 281
    invoke-virtual {v0}, Lcom/android/launcher2/HomeView;->cancelClicksOnHome()V

    .line 284
    .end local v0    # "homeView":Lcom/android/launcher2/HomeView;
    :cond_0
    return-void
.end method

.method static switchMode(Landroid/app/Activity;)Z
    .locals 2
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 253
    invoke-static {}, Lcom/android/launcher2/guide/GuideModeHelper;->isTablet()Z

    move-result v1

    if-nez v1, :cond_0

    .line 254
    const/4 v0, 0x0

    .line 264
    :goto_0
    return v0

    .line 258
    :cond_0
    const/4 v0, 0x0

    .line 264
    .local v0, "retval":Z
    goto :goto_0
.end method
