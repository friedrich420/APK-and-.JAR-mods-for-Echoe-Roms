.class Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$SFinderLaunchPolicy;
.super Ljava/lang/Object;
.source "SamsungPhoneWindowManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SFinderLaunchPolicy"
.end annotation


# static fields
.field private static final FEATURE_NAME:Ljava/lang/String; = "com.sec.feature.findo"

.field private static final TAG:Ljava/lang/String; = "SFinderLaunchPolicy"


# instance fields
.field private mDeniedActivities:[Ljava/lang/String;

.field private mFeatureCached:Z

.field private mFeatureEnabled:Z

.field private mLaunchSFinder:Ljava/lang/Runnable;

.field private mSFinderIntent:Landroid/content/Intent;

.field final synthetic this$0:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;


# direct methods
.method private constructor <init>(Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;)V
    .registers 7

    .prologue
    const/4 v4, 0x0

    .line 2896
    iput-object p1, p0, this$0:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2893
    iput-boolean v4, p0, mFeatureEnabled:Z

    .line 2894
    iput-boolean v4, p0, mFeatureCached:Z

    .line 2903
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "{com.android.phone/com.android.phone.UsimDownload}"

    aput-object v1, v0, v4

    iput-object v0, p0, mDeniedActivities:[Ljava/lang/String;

    .line 2907
    new-instance v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$SFinderLaunchPolicy$1;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$SFinderLaunchPolicy$1;-><init>(Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$SFinderLaunchPolicy;)V

    iput-object v0, p0, mLaunchSFinder:Ljava/lang/Runnable;

    .line 2897
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iput-object v0, p0, mSFinderIntent:Landroid/content/Intent;

    .line 2898
    iget-object v0, p0, mSFinderIntent:Landroid/content/Intent;

    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.samsung.android.app.galaxyfinder"

    const-string v3, "com.samsung.android.app.galaxyfinder.GalaxyFinderActivity"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 2900
    iget-object v0, p0, mSFinderIntent:Landroid/content/Intent;

    const-string v1, "callername"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2901
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;
    .param p2, "x1"    # Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$1;

    .prologue
    .line 2887
    invoke-direct {p0, p1}, <init>(Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$SFinderLaunchPolicy;)Landroid/content/Intent;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$SFinderLaunchPolicy;

    .prologue
    .line 2887
    iget-object v0, p0, mSFinderIntent:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$SFinderLaunchPolicy;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$SFinderLaunchPolicy;

    .prologue
    .line 2887
    invoke-direct {p0}, launch()Z

    move-result v0

    return v0
.end method

.method private ensureFeatureCached()Z
    .registers 4

    .prologue
    const/4 v0, 0x1

    .line 2928
    iget-boolean v1, p0, mFeatureCached:Z

    if-nez v1, :cond_c

    .line 2929
    iget-object v1, p0, this$0:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    iget-object v1, v1, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    if-nez v1, :cond_d

    .line 2930
    const/4 v0, 0x0

    .line 2937
    :cond_c
    :goto_c
    return v0

    .line 2933
    :cond_d
    iget-object v1, p0, this$0:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    iget-object v1, v1, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "com.sec.feature.findo"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, mFeatureEnabled:Z

    .line 2934
    iput-boolean v0, p0, mFeatureCached:Z

    goto :goto_c
.end method

.method private isDeniedActivity()Z
    .registers 9

    .prologue
    const/4 v6, 0x1

    .line 2941
    iget-object v7, p0, this$0:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    iget-object v7, v7, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mPWM:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-virtual {v7}, Lcom/android/internal/policy/impl/PhoneWindowManager;->getCurrentTopActivity()Landroid/content/ComponentName;

    move-result-object v5

    .line 2943
    .local v5, "topActivity":Landroid/content/ComponentName;
    if-nez v5, :cond_c

    .line 2955
    :cond_b
    :goto_b
    return v6

    .line 2947
    :cond_c
    invoke-virtual {v5}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v1

    .line 2949
    .local v1, "cmpName":Ljava/lang/String;
    iget-object v0, p0, mDeniedActivities:[Ljava/lang/String;

    .local v0, "arr$":[Ljava/lang/String;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_14
    if-ge v3, v4, :cond_21

    aget-object v2, v0, v3

    .line 2950
    .local v2, "entry":Ljava/lang/String;
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_b

    .line 2949
    add-int/lit8 v3, v3, 0x1

    goto :goto_14

    .line 2955
    .end local v2    # "entry":Ljava/lang/String;
    :cond_21
    const/4 v6, 0x0

    goto :goto_b
.end method

.method private isLaunchable()Z
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 2959
    invoke-direct {p0}, ensureFeatureCached()Z

    move-result v1

    if-nez v1, :cond_8

    .line 2985
    :goto_7
    return v0

    .line 2963
    :cond_8
    iget-boolean v1, p0, mFeatureEnabled:Z

    if-nez v1, :cond_13

    .line 2964
    const-string v1, "SFinderLaunchPolicy"

    const-string v2, "isLaunchable: feature is disabled."

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2965
    :cond_13
    iget-object v1, p0, this$0:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    iget-boolean v1, v1, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mBootCompleted:Z

    if-nez v1, :cond_21

    .line 2966
    const-string v1, "SFinderLaunchPolicy"

    const-string v2, "isLaunchable: mBootCompleted=false"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    .line 2973
    :cond_21
    invoke-direct {p0}, isDeniedActivity()Z

    move-result v1

    if-eqz v1, :cond_2f

    .line 2974
    const-string v1, "SFinderLaunchPolicy"

    const-string v2, "isLaunchable: isDeniedActivity()=true"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    .line 2975
    :cond_2f
    iget-object v1, p0, this$0:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->isDeviceProvisioned()Z

    move-result v1

    if-nez v1, :cond_3f

    .line 2976
    const-string v1, "SFinderLaunchPolicy"

    const-string v2, "isLaunchable: device is not provisioned yet!"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    .line 2977
    :cond_3f
    iget-object v1, p0, this$0:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    iget-object v1, v1, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mPWM:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isKeyguardLocked()Z

    move-result v1

    if-eqz v1, :cond_51

    .line 2978
    const-string v1, "SFinderLaunchPolicy"

    const-string v2, "isLaunchable: keyguard is on!"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    .line 2979
    :cond_51
    invoke-static {}, Landroid/os/FactoryTest;->isFactoryMode()Z

    move-result v1

    if-nez v1, :cond_61

    iget-object v1, p0, this$0:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    iget-object v1, v1, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/os/FactoryTest;->isAutomaticTestMode(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_91

    .line 2980
    :cond_61
    const-string v1, "SFinderLaunchPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isLaunchable: isFactoryMode()="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/FactoryTest;->isFactoryMode()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", isAutomaticTestMode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, this$0:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    iget-object v3, v3, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/os/FactoryTest;->isAutomaticTestMode(Landroid/content/Context;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7

    .line 2982
    :cond_91
    const/4 v0, 0x1

    goto/16 :goto_7
.end method

.method private launch()Z
    .registers 3

    .prologue
    .line 2989
    invoke-direct {p0}, ensureFeatureCached()Z

    move-result v0

    if-nez v0, :cond_8

    .line 2990
    const/4 v0, 0x0

    .line 2998
    :goto_7
    return v0

    .line 2993
    :cond_8
    invoke-direct {p0}, isLaunchable()Z

    move-result v0

    if-eqz v0, :cond_20

    .line 2994
    iget-object v0, p0, this$0:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    iget-object v0, v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, mLaunchSFinder:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2995
    iget-object v0, p0, this$0:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    iget-object v0, v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, mLaunchSFinder:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2998
    :cond_20
    iget-boolean v0, p0, mFeatureEnabled:Z

    goto :goto_7
.end method
