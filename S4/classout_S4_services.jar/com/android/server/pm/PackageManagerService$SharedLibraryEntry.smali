.class public final Lcom/android/server/pm/PackageManagerService$SharedLibraryEntry;
.super Ljava/lang/Object;
.source "PackageManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PackageManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SharedLibraryEntry"
.end annotation


# instance fields
.field public final apk:Ljava/lang/String;

.field public final path:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .param p1, "_path"    # Ljava/lang/String;
    .param p2, "_apk"    # Ljava/lang/String;

    .prologue
    .line 565
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 566
    iput-object p1, p0, path:Ljava/lang/String;

    .line 567
    iput-object p2, p0, apk:Ljava/lang/String;

    .line 568
    return-void
.end method
