.class Lcom/android/server/backup/BackupManagerService$RestoreGetSetsParams;
.super Ljava/lang/Object;
.source "BackupManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/backup/BackupManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RestoreGetSetsParams"
.end annotation


# instance fields
.field public observer:Landroid/app/backup/IRestoreObserver;

.field public session:Lcom/android/server/backup/BackupManagerService$ActiveRestoreSession;

.field final synthetic this$0:Lcom/android/server/backup/BackupManagerService;

.field public transport:Lcom/android/internal/backup/IBackupTransport;


# direct methods
.method constructor <init>(Lcom/android/server/backup/BackupManagerService;Lcom/android/internal/backup/IBackupTransport;Lcom/android/server/backup/BackupManagerService$ActiveRestoreSession;Landroid/app/backup/IRestoreObserver;)V
    .registers 5
    .param p2, "_transport"    # Lcom/android/internal/backup/IBackupTransport;
    .param p3, "_session"    # Lcom/android/server/backup/BackupManagerService$ActiveRestoreSession;
    .param p4, "_observer"    # Landroid/app/backup/IRestoreObserver;

    .prologue
    .line 413
    iput-object p1, p0, this$0:Lcom/android/server/backup/BackupManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 414
    iput-object p2, p0, transport:Lcom/android/internal/backup/IBackupTransport;

    .line 415
    iput-object p3, p0, session:Lcom/android/server/backup/BackupManagerService$ActiveRestoreSession;

    .line 416
    iput-object p4, p0, observer:Landroid/app/backup/IRestoreObserver;

    .line 417
    return-void
.end method
