.class Lcom/android/server/am/PreferredPackageManager$PreferredPackageCounter;
.super Ljava/lang/Object;
.source "PreferredPackageManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/PreferredPackageManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PreferredPackageCounter"
.end annotation


# instance fields
.field hitCount:I

.field packageName:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "cnt"    # I

    .prologue
    .line 276
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 277
    iput-object p1, p0, packageName:Ljava/lang/String;

    .line 278
    iput p2, p0, hitCount:I

    .line 279
    return-void
.end method
