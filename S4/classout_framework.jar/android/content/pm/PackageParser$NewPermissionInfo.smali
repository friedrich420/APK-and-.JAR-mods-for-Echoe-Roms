.class public Landroid/content/pm/PackageParser$NewPermissionInfo;
.super Ljava/lang/Object;
.source "PackageParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/pm/PackageParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NewPermissionInfo"
.end annotation


# instance fields
.field public final fileVersion:I

.field public final name:Ljava/lang/String;

.field public final sdkVersion:I


# direct methods
.method public constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "sdkVersion"    # I
    .param p3, "fileVersion"    # I

    .prologue
    .line 153
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 154
    iput-object p1, p0, name:Ljava/lang/String;

    .line 155
    iput p2, p0, sdkVersion:I

    .line 156
    iput p3, p0, fileVersion:I

    .line 157
    return-void
.end method
