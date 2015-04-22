.class public final Landroid/content/pm/PackageParser$Provider;
.super Landroid/content/pm/PackageParser$Component;
.source "PackageParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/pm/PackageParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Provider"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/content/pm/PackageParser$Component",
        "<",
        "Landroid/content/pm/PackageParser$ProviderIntentInfo;",
        ">;"
    }
.end annotation


# instance fields
.field public final info:Landroid/content/pm/ProviderInfo;

.field public syncable:Z


# direct methods
.method public constructor <init>(Landroid/content/pm/PackageParser$ParseComponentArgs;Landroid/content/pm/ProviderInfo;)V
    .registers 5
    .param p1, "args"    # Landroid/content/pm/PackageParser$ParseComponentArgs;
    .param p2, "_info"    # Landroid/content/pm/ProviderInfo;

    .prologue
    .line 4904
    invoke-direct {p0, p1, p2}, Landroid/content/pm/PackageParser$Component;-><init>(Landroid/content/pm/PackageParser$ParseComponentArgs;Landroid/content/pm/ComponentInfo;)V

    .line 4905
    iput-object p2, p0, info:Landroid/content/pm/ProviderInfo;

    .line 4906
    iget-object v0, p0, info:Landroid/content/pm/ProviderInfo;

    iget-object v1, p1, Landroid/content/pm/PackageParser$ParseComponentArgs;->owner:Landroid/content/pm/PackageParser$Package;

    iget-object v1, v1, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iput-object v1, v0, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 4907
    const/4 v0, 0x0

    iput-boolean v0, p0, syncable:Z

    .line 4908
    return-void
.end method

.method public constructor <init>(Landroid/content/pm/PackageParser$Provider;)V
    .registers 3
    .param p1, "existingProvider"    # Landroid/content/pm/PackageParser$Provider;

    .prologue
    .line 4911
    invoke-direct {p0, p1}, Landroid/content/pm/PackageParser$Component;-><init>(Landroid/content/pm/PackageParser$Component;)V

    .line 4912
    iget-object v0, p1, info:Landroid/content/pm/ProviderInfo;

    iput-object v0, p0, info:Landroid/content/pm/ProviderInfo;

    .line 4913
    iget-boolean v0, p1, syncable:Z

    iput-boolean v0, p0, syncable:Z

    .line 4914
    return-void
.end method


# virtual methods
.method public setPackageName(Ljava/lang/String;)V
    .registers 3
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 4917
    invoke-super {p0, p1}, Landroid/content/pm/PackageParser$Component;->setPackageName(Ljava/lang/String;)V

    .line 4918
    iget-object v0, p0, info:Landroid/content/pm/ProviderInfo;

    iput-object p1, v0, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    .line 4919
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 4922
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 4923
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "Provider{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4924
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4925
    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4926
    invoke-virtual {p0, v0}, appendComponentShortName(Ljava/lang/StringBuilder;)V

    .line 4927
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4928
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
