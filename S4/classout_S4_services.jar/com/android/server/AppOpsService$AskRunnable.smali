.class final Lcom/android/server/AppOpsService$AskRunnable;
.super Ljava/lang/Object;
.source "AppOpsService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/AppOpsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "AskRunnable"
.end annotation


# instance fields
.field final code:I

.field final op:Lcom/android/server/AppOpsService$Op;

.field final packageName:Ljava/lang/String;

.field final request:Lcom/android/server/PermissionDialogReqQueue$PermissionDialogReq;

.field final synthetic this$0:Lcom/android/server/AppOpsService;

.field final uid:I


# direct methods
.method public constructor <init>(Lcom/android/server/AppOpsService;IILjava/lang/String;Lcom/android/server/AppOpsService$Op;Lcom/android/server/PermissionDialogReqQueue$PermissionDialogReq;)V
    .registers 7
    .param p2, "code"    # I
    .param p3, "uid"    # I
    .param p4, "packageName"    # Ljava/lang/String;
    .param p5, "op"    # Lcom/android/server/AppOpsService$Op;
    .param p6, "request"    # Lcom/android/server/PermissionDialogReqQueue$PermissionDialogReq;

    .prologue
    .line 1404
    iput-object p1, p0, this$0:Lcom/android/server/AppOpsService;

    .line 1405
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1406
    iput p2, p0, code:I

    .line 1407
    iput p3, p0, uid:I

    .line 1408
    iput-object p4, p0, packageName:Ljava/lang/String;

    .line 1409
    iput-object p5, p0, op:Lcom/android/server/AppOpsService$Op;

    .line 1410
    iput-object p6, p0, request:Lcom/android/server/PermissionDialogReqQueue$PermissionDialogReq;

    .line 1411
    return-void
.end method


# virtual methods
.method public run()V
    .registers 9

    .prologue
    .line 1415
    iget-object v7, p0, this$0:Lcom/android/server/AppOpsService;

    monitor-enter v7

    .line 1416
    :try_start_3
    const-string v2, "AppOps"

    const-string v3, "Creating dialog box"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1417
    iget-object v2, p0, op:Lcom/android/server/AppOpsService$Op;

    iget-object v2, v2, Lcom/android/server/AppOpsService$Op;->dialogReqQueue:Lcom/android/server/PermissionDialogReqQueue;

    iget-object v3, p0, request:Lcom/android/server/PermissionDialogReqQueue$PermissionDialogReq;

    invoke-virtual {v2, v3}, Lcom/android/server/PermissionDialogReqQueue;->register(Lcom/android/server/PermissionDialogReqQueue$PermissionDialogReq;)V

    .line 1418
    iget-object v2, p0, op:Lcom/android/server/AppOpsService$Op;

    iget-object v2, v2, Lcom/android/server/AppOpsService$Op;->dialogReqQueue:Lcom/android/server/PermissionDialogReqQueue;

    invoke-virtual {v2}, Lcom/android/server/PermissionDialogReqQueue;->getDialog()Lcom/android/server/PermissionDialog;

    move-result-object v2

    if-nez v2, :cond_3c

    .line 1419
    new-instance v1, Lcom/android/server/PermissionDialog;

    iget-object v2, p0, this$0:Lcom/android/server/AppOpsService;

    iget-object v2, v2, Lcom/android/server/AppOpsService;->mContext:Landroid/content/Context;

    iget-object v3, p0, this$0:Lcom/android/server/AppOpsService;

    iget v4, p0, code:I

    iget v5, p0, uid:I

    iget-object v6, p0, packageName:Ljava/lang/String;

    invoke-direct/range {v1 .. v6}, Lcom/android/server/PermissionDialog;-><init>(Landroid/content/Context;Lcom/android/server/AppOpsService;IILjava/lang/String;)V

    .line 1421
    .local v1, "d":Landroid/app/Dialog;
    iget-object v2, p0, op:Lcom/android/server/AppOpsService$Op;

    iget-object v3, v2, Lcom/android/server/AppOpsService$Op;->dialogReqQueue:Lcom/android/server/PermissionDialogReqQueue;

    move-object v0, v1

    check-cast v0, Lcom/android/server/PermissionDialog;

    move-object v2, v0

    invoke-virtual {v3, v2}, Lcom/android/server/PermissionDialogReqQueue;->setDialog(Lcom/android/server/PermissionDialog;)V

    .line 1422
    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 1424
    .end local v1    # "d":Landroid/app/Dialog;
    :cond_3c
    monitor-exit v7

    .line 1425
    return-void

    .line 1424
    :catchall_3e
    move-exception v2

    monitor-exit v7
    :try_end_40
    .catchall {:try_start_3 .. :try_end_40} :catchall_3e

    throw v2
.end method
