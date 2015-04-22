.class Landroid/content/pm/PackageParser$ParsePackageItemArgs;
.super Ljava/lang/Object;
.source "PackageParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/pm/PackageParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ParsePackageItemArgs"
.end annotation


# instance fields
.field final bannerRes:I

.field final iconRes:I

.field final labelRes:I

.field final logoRes:I

.field final nameRes:I

.field final outError:[Ljava/lang/String;

.field final owner:Landroid/content/pm/PackageParser$Package;

.field sa:Landroid/content/res/TypedArray;

.field tag:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/pm/PackageParser$Package;[Ljava/lang/String;IIIII)V
    .registers 8
    .param p1, "_owner"    # Landroid/content/pm/PackageParser$Package;
    .param p2, "_outError"    # [Ljava/lang/String;
    .param p3, "_nameRes"    # I
    .param p4, "_labelRes"    # I
    .param p5, "_iconRes"    # I
    .param p6, "_logoRes"    # I
    .param p7, "_bannerRes"    # I

    .prologue
    .line 244
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 245
    iput-object p1, p0, owner:Landroid/content/pm/PackageParser$Package;

    .line 246
    iput-object p2, p0, outError:[Ljava/lang/String;

    .line 247
    iput p3, p0, nameRes:I

    .line 248
    iput p4, p0, labelRes:I

    .line 249
    iput p5, p0, iconRes:I

    .line 250
    iput p6, p0, logoRes:I

    .line 251
    iput p7, p0, bannerRes:I

    .line 252
    return-void
.end method
