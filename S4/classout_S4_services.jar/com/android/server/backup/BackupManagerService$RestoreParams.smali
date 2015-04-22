.class Lcom/android/server/backup/BackupManagerService$RestoreParams;
.super Ljava/lang/Object;
.source "BackupManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/backup/BackupManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RestoreParams"
.end annotation


# instance fields
.field public dirName:Ljava/lang/String;

.field public filterSet:[Ljava/lang/String;

.field public isSystemRestore:Z

.field public observer:Landroid/app/backup/IRestoreObserver;

.field public pkgInfo:Landroid/content/pm/PackageInfo;

.field public pmToken:I

.field final synthetic this$0:Lcom/android/server/backup/BackupManagerService;

.field public token:J

.field public transport:Lcom/android/internal/backup/IBackupTransport;


# direct methods
.method constructor <init>(Lcom/android/server/backup/BackupManagerService;Lcom/android/internal/backup/IBackupTransport;Ljava/lang/String;Landroid/app/backup/IRestoreObserver;J)V
    .registers 10
    .param p2, "_transport"    # Lcom/android/internal/backup/IBackupTransport;
    .param p3, "_dirName"    # Ljava/lang/String;
    .param p4, "_obs"    # Landroid/app/backup/IRestoreObserver;
    .param p5, "_token"    # J

    .prologue
    const/4 v1, 0x0

    .line 446
    iput-object p1, p0, this$0:Lcom/android/server/backup/BackupManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 447
    iput-object p2, p0, transport:Lcom/android/internal/backup/IBackupTransport;

    .line 448
    iput-object p3, p0, dirName:Ljava/lang/String;

    .line 449
    iput-object p4, p0, observer:Landroid/app/backup/IRestoreObserver;

    .line 450
    iput-wide p5, p0, token:J

    .line 451
    iput-object v1, p0, pkgInfo:Landroid/content/pm/PackageInfo;

    .line 452
    const/4 v0, 0x0

    iput v0, p0, pmToken:I

    .line 453
    const/4 v0, 0x1

    iput-boolean v0, p0, isSystemRestore:Z

    .line 454
    iput-object v1, p0, filterSet:[Ljava/lang/String;

    .line 455
    return-void
.end method

.method constructor <init>(Lcom/android/server/backup/BackupManagerService;Lcom/android/internal/backup/IBackupTransport;Ljava/lang/String;Landroid/app/backup/IRestoreObserver;JLandroid/content/pm/PackageInfo;I)V
    .registers 10
    .param p2, "_transport"    # Lcom/android/internal/backup/IBackupTransport;
    .param p3, "_dirName"    # Ljava/lang/String;
    .param p4, "_obs"    # Landroid/app/backup/IRestoreObserver;
    .param p5, "_token"    # J
    .param p7, "_pkg"    # Landroid/content/pm/PackageInfo;
    .param p8, "_pmToken"    # I

    .prologue
    .line 432
    iput-object p1, p0, this$0:Lcom/android/server/backup/BackupManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 433
    iput-object p2, p0, transport:Lcom/android/internal/backup/IBackupTransport;

    .line 434
    iput-object p3, p0, dirName:Ljava/lang/String;

    .line 435
    iput-object p4, p0, observer:Landroid/app/backup/IRestoreObserver;

    .line 436
    iput-wide p5, p0, token:J

    .line 437
    iput-object p7, p0, pkgInfo:Landroid/content/pm/PackageInfo;

    .line 438
    iput p8, p0, pmToken:I

    .line 439
    const/4 v0, 0x0

    iput-boolean v0, p0, isSystemRestore:Z

    .line 440
    const/4 v0, 0x0

    iput-object v0, p0, filterSet:[Ljava/lang/String;

    .line 441
    return-void
.end method

.method constructor <init>(Lcom/android/server/backup/BackupManagerService;Lcom/android/internal/backup/IBackupTransport;Ljava/lang/String;Landroid/app/backup/IRestoreObserver;J[Ljava/lang/String;Z)V
    .registers 10
    .param p2, "_transport"    # Lcom/android/internal/backup/IBackupTransport;
    .param p3, "_dirName"    # Ljava/lang/String;
    .param p4, "_obs"    # Landroid/app/backup/IRestoreObserver;
    .param p5, "_token"    # J
    .param p7, "_filterSet"    # [Ljava/lang/String;
    .param p8, "_isSystemRestore"    # Z

    .prologue
    .line 460
    iput-object p1, p0, this$0:Lcom/android/server/backup/BackupManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 461
    iput-object p2, p0, transport:Lcom/android/internal/backup/IBackupTransport;

    .line 462
    iput-object p3, p0, dirName:Ljava/lang/String;

    .line 463
    iput-object p4, p0, observer:Landroid/app/backup/IRestoreObserver;

    .line 464
    iput-wide p5, p0, token:J

    .line 465
    const/4 v0, 0x0

    iput-object v0, p0, pkgInfo:Landroid/content/pm/PackageInfo;

    .line 466
    const/4 v0, 0x0

    iput v0, p0, pmToken:I

    .line 467
    iput-boolean p8, p0, isSystemRestore:Z

    .line 468
    iput-object p7, p0, filterSet:[Ljava/lang/String;

    .line 469
    return-void
.end method
