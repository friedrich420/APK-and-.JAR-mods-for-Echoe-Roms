.class final Lcom/android/settings/DisplaySettings$16;
.super Lcom/android/settings/search/BaseSearchIndexProvider;
.source "DisplaySettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/DisplaySettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 2038
    invoke-direct {p0}, Lcom/android/settings/search/BaseSearchIndexProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public getNonIndexableKeys(Landroid/content/Context;)Ljava/util/List;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2054
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2055
    .local v0, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1120055

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2057
    const-string v1, "screensaver"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2059
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    # invokes: Lcom/android/settings/DisplaySettings;->isAutomaticBrightnessAvailable(Landroid/content/res/Resources;)Z
    invoke-static {v1}, Lcom/android/settings/DisplaySettings;->access$1200(Landroid/content/res/Resources;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 2060
    const-string v1, "auto_brightness"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2062
    :cond_1
    # invokes: Lcom/android/settings/DisplaySettings;->isLiftToWakeAvailable(Landroid/content/Context;)Z
    invoke-static {p1}, Lcom/android/settings/DisplaySettings;->access$1300(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 2063
    const-string v1, "lift_to_wake"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2065
    :cond_2
    # invokes: Lcom/android/settings/DisplaySettings;->isDozeAvailable(Landroid/content/Context;)Z
    invoke-static {p1}, Lcom/android/settings/DisplaySettings;->access$1400(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 2066
    const-string v1, "doze"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2068
    :cond_3
    invoke-static {p1}, Lcom/android/internal/view/RotationPolicy;->isRotationLockToggleVisible(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 2069
    const-string v1, "auto_rotate"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2071
    :cond_4
    return-object v0
.end method

.method public getXmlResourcesToIndex(Landroid/content/Context;Z)Ljava/util/List;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "enabled"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Landroid/provider/SearchIndexableResource;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2042
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2045
    .local v0, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/provider/SearchIndexableResource;>;"
    new-instance v1, Landroid/provider/SearchIndexableResource;

    invoke-direct {v1, p1}, Landroid/provider/SearchIndexableResource;-><init>(Landroid/content/Context;)V

    .line 2046
    .local v1, "sir":Landroid/provider/SearchIndexableResource;
    const v2, 0x7f070047

    iput v2, v1, Landroid/provider/SearchIndexableResource;->xmlResId:I

    .line 2047
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2049
    return-object v0
.end method
