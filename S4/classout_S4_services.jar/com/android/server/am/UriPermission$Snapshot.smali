.class public Lcom/android/server/am/UriPermission$Snapshot;
.super Ljava/lang/Object;
.source "UriPermission.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/UriPermission;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Snapshot"
.end annotation


# instance fields
.field final persistedCreateTime:J

.field final persistedModeFlags:I

.field final sourcePkg:Ljava/lang/String;

.field final targetPkg:Ljava/lang/String;

.field final targetUserId:I

.field final uri:Lcom/android/server/am/ActivityManagerService$GrantUri;


# direct methods
.method private constructor <init>(Lcom/android/server/am/UriPermission;)V
    .registers 4
    .param p1, "perm"    # Lcom/android/server/am/UriPermission;

    .prologue
    .line 362
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 363
    iget v0, p1, Lcom/android/server/am/UriPermission;->targetUserId:I

    iput v0, p0, targetUserId:I

    .line 364
    iget-object v0, p1, Lcom/android/server/am/UriPermission;->sourcePkg:Ljava/lang/String;

    iput-object v0, p0, sourcePkg:Ljava/lang/String;

    .line 365
    iget-object v0, p1, Lcom/android/server/am/UriPermission;->targetPkg:Ljava/lang/String;

    iput-object v0, p0, targetPkg:Ljava/lang/String;

    .line 366
    iget-object v0, p1, Lcom/android/server/am/UriPermission;->uri:Lcom/android/server/am/ActivityManagerService$GrantUri;

    iput-object v0, p0, uri:Lcom/android/server/am/ActivityManagerService$GrantUri;

    .line 367
    iget v0, p1, Lcom/android/server/am/UriPermission;->persistedModeFlags:I

    iput v0, p0, persistedModeFlags:I

    .line 368
    iget-wide v0, p1, Lcom/android/server/am/UriPermission;->persistedCreateTime:J

    iput-wide v0, p0, persistedCreateTime:J

    .line 369
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/am/UriPermission;Lcom/android/server/am/UriPermission$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/android/server/am/UriPermission;
    .param p2, "x1"    # Lcom/android/server/am/UriPermission$1;

    .prologue
    .line 354
    invoke-direct {p0, p1}, <init>(Lcom/android/server/am/UriPermission;)V

    return-void
.end method
