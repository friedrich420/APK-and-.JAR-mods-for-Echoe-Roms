.class Landroid/content/pm/PackageParser$ParseComponentArgs;
.super Landroid/content/pm/PackageParser$ParsePackageItemArgs;
.source "PackageParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/pm/PackageParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ParseComponentArgs"
.end annotation


# instance fields
.field final descriptionRes:I

.field final enabledRes:I

.field flags:I

.field final processRes:I

.field final sepProcesses:[Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/pm/PackageParser$Package;[Ljava/lang/String;IIIII[Ljava/lang/String;III)V
    .registers 12
    .param p1, "_owner"    # Landroid/content/pm/PackageParser$Package;
    .param p2, "_outError"    # [Ljava/lang/String;
    .param p3, "_nameRes"    # I
    .param p4, "_labelRes"    # I
    .param p5, "_iconRes"    # I
    .param p6, "_logoRes"    # I
    .param p7, "_bannerRes"    # I
    .param p8, "_sepProcesses"    # [Ljava/lang/String;
    .param p9, "_processRes"    # I
    .param p10, "_descriptionRes"    # I
    .param p11, "_enabledRes"    # I

    .prologue
    .line 266
    invoke-direct/range {p0 .. p7}, Landroid/content/pm/PackageParser$ParsePackageItemArgs;-><init>(Landroid/content/pm/PackageParser$Package;[Ljava/lang/String;IIIII)V

    .line 267
    iput-object p8, p0, sepProcesses:[Ljava/lang/String;

    .line 268
    iput p9, p0, processRes:I

    .line 269
    iput p10, p0, descriptionRes:I

    .line 270
    iput p11, p0, enabledRes:I

    .line 271
    return-void
.end method
