.class public Landroid/content/pm/PackageParser$ApkLite;
.super Ljava/lang/Object;
.source "PackageParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/pm/PackageParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ApkLite"
.end annotation


# instance fields
.field public final codePath:Ljava/lang/String;

.field public final coreApp:Z

.field public final installLocation:I

.field public final multiArch:Z

.field public final packageName:Ljava/lang/String;

.field public final signatures:[Landroid/content/pm/Signature;

.field public final splitName:Ljava/lang/String;

.field public final verifiers:[Landroid/content/pm/VerifierInfo;

.field public final versionCode:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/util/List;[Landroid/content/pm/Signature;ZZ)V
    .registers 11
    .param p1, "codePath"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "splitName"    # Ljava/lang/String;
    .param p4, "versionCode"    # I
    .param p5, "installLocation"    # I
    .param p7, "signatures"    # [Landroid/content/pm/Signature;
    .param p8, "coreApp"    # Z
    .param p9, "multiArch"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "II",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/VerifierInfo;",
            ">;[",
            "Landroid/content/pm/Signature;",
            "ZZ)V"
        }
    .end annotation

    .prologue
    .line 341
    .local p6, "verifiers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/VerifierInfo;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 342
    iput-object p1, p0, codePath:Ljava/lang/String;

    .line 343
    iput-object p2, p0, packageName:Ljava/lang/String;

    .line 344
    iput-object p3, p0, splitName:Ljava/lang/String;

    .line 345
    iput p4, p0, versionCode:I

    .line 346
    iput p5, p0, installLocation:I

    .line 347
    invoke-interface {p6}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Landroid/content/pm/VerifierInfo;

    invoke-interface {p6, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/content/pm/VerifierInfo;

    iput-object v0, p0, verifiers:[Landroid/content/pm/VerifierInfo;

    .line 348
    iput-object p7, p0, signatures:[Landroid/content/pm/Signature;

    .line 349
    iput-boolean p8, p0, coreApp:Z

    .line 350
    iput-boolean p9, p0, multiArch:Z

    .line 351
    return-void
.end method
