.class public Lcom/android/server/am/ActivityManagerService$PendingAssistExtras;
.super Landroid/os/Binder;
.source "ActivityManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ActivityManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PendingAssistExtras"
.end annotation


# instance fields
.field public final activity:Lcom/android/server/am/ActivityRecord;

.field public final extras:Landroid/os/Bundle;

.field public haveResult:Z

.field public final hint:Ljava/lang/String;

.field public final intent:Landroid/content/Intent;

.field public result:Landroid/os/Bundle;

.field final synthetic this$0:Lcom/android/server/am/ActivityManagerService;

.field public final userHandle:I


# direct methods
.method public constructor <init>(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/ActivityRecord;Landroid/os/Bundle;Landroid/content/Intent;Ljava/lang/String;I)V
    .registers 8
    .param p2, "_activity"    # Lcom/android/server/am/ActivityRecord;
    .param p3, "_extras"    # Landroid/os/Bundle;
    .param p4, "_intent"    # Landroid/content/Intent;
    .param p5, "_hint"    # Ljava/lang/String;
    .param p6, "_userHandle"    # I

    .prologue
    .line 735
    iput-object p1, p0, this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 732
    const/4 v0, 0x0

    iput-boolean v0, p0, haveResult:Z

    .line 733
    const/4 v0, 0x0

    iput-object v0, p0, result:Landroid/os/Bundle;

    .line 736
    iput-object p2, p0, activity:Lcom/android/server/am/ActivityRecord;

    .line 737
    iput-object p3, p0, extras:Landroid/os/Bundle;

    .line 738
    iput-object p4, p0, intent:Landroid/content/Intent;

    .line 739
    iput-object p5, p0, hint:Ljava/lang/String;

    .line 740
    iput p6, p0, userHandle:I

    .line 741
    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 744
    const-string v0, "ActivityManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getAssistContextExtras failed: timeout retrieving from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, activity:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 745
    monitor-enter p0

    .line 746
    const/4 v0, 0x1

    :try_start_1c
    iput-boolean v0, p0, haveResult:Z

    .line 747
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 748
    monitor-exit p0

    .line 749
    return-void

    .line 748
    :catchall_23
    move-exception v0

    monitor-exit p0
    :try_end_25
    .catchall {:try_start_1c .. :try_end_25} :catchall_23

    throw v0
.end method
