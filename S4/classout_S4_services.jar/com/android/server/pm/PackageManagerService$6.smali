.class final Lcom/android/server/pm/PackageManagerService$6;
.super Ljava/lang/Object;
.source "PackageManagerService.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PackageManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Landroid/content/pm/ProviderInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 9860
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Landroid/content/pm/ProviderInfo;Landroid/content/pm/ProviderInfo;)I
    .registers 6
    .param p1, "p1"    # Landroid/content/pm/ProviderInfo;
    .param p2, "p2"    # Landroid/content/pm/ProviderInfo;

    .prologue
    .line 9862
    iget v0, p1, Landroid/content/pm/ProviderInfo;->initOrder:I

    .line 9863
    .local v0, "v1":I
    iget v1, p2, Landroid/content/pm/ProviderInfo;->initOrder:I

    .line 9864
    .local v1, "v2":I
    if-le v0, v1, :cond_8

    const/4 v2, -0x1

    :goto_7
    return v2

    :cond_8
    if-ge v0, v1, :cond_c

    const/4 v2, 0x1

    goto :goto_7

    :cond_c
    const/4 v2, 0x0

    goto :goto_7
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 9860
    check-cast p1, Landroid/content/pm/ProviderInfo;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Landroid/content/pm/ProviderInfo;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, compare(Landroid/content/pm/ProviderInfo;Landroid/content/pm/ProviderInfo;)I

    move-result v0

    return v0
.end method