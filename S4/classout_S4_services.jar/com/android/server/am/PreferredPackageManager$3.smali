.class Lcom/android/server/am/PreferredPackageManager$3;
.super Ljava/lang/Object;
.source "PreferredPackageManager.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/PreferredPackageManager;->readPackagesFromGoogleXml()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Landroid/app/usage/UsageStats;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/PreferredPackageManager;


# direct methods
.method constructor <init>(Lcom/android/server/am/PreferredPackageManager;)V
    .registers 2

    .prologue
    .line 1066
    iput-object p1, p0, this$0:Lcom/android/server/am/PreferredPackageManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Landroid/app/usage/UsageStats;Landroid/app/usage/UsageStats;)I
    .registers 7
    .param p1, "o1"    # Landroid/app/usage/UsageStats;
    .param p2, "o2"    # Landroid/app/usage/UsageStats;

    .prologue
    .line 1069
    invoke-virtual {p1}, Landroid/app/usage/UsageStats;->getLaunchCount()J

    move-result-wide v0

    invoke-virtual {p2}, Landroid/app/usage/UsageStats;->getLaunchCount()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-ltz v0, :cond_e

    .line 1070
    const/4 v0, -0x1

    .line 1072
    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x1

    goto :goto_d
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 1066
    check-cast p1, Landroid/app/usage/UsageStats;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Landroid/app/usage/UsageStats;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, compare(Landroid/app/usage/UsageStats;Landroid/app/usage/UsageStats;)I

    move-result v0

    return v0
.end method
