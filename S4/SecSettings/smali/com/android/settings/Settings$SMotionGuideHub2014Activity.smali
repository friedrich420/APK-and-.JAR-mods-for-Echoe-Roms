.class public Lcom/android/settings/Settings$SMotionGuideHub2014Activity;
.super Lcom/android/settings/Settings;
.source "Settings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/Settings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SMotionGuideHub2014Activity"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6459
    invoke-direct {p0}, Lcom/android/settings/Settings;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x0

    .line 6462
    invoke-super {p0, p1}, Lcom/android/settings/Settings;->onCreate(Landroid/os/Bundle;)V

    .line 6463
    invoke-static {v3}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/settings/Utils;->isSettingsUI2014Supported()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 6464
    const v1, 0x1020016

    invoke-virtual {p0, v1}, Lcom/android/settings/Settings$SMotionGuideHub2014Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/app/FragmentBreadCrumbs;

    .line 6466
    .local v0, "crumbs":Landroid/app/FragmentBreadCrumbs;
    invoke-virtual {p0}, Lcom/android/settings/Settings$SMotionGuideHub2014Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a1231

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/app/FragmentBreadCrumbs;->setTitle(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 6468
    .end local v0    # "crumbs":Landroid/app/FragmentBreadCrumbs;
    :cond_0
    return-void
.end method
