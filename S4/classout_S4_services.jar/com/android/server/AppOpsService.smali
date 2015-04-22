.class public Lcom/android/server/AppOpsService;
.super Lcom/android/internal/app/IAppOpsService$Stub;
.source "AppOpsService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/AppOpsService$AskRunnable;,
        Lcom/android/server/AppOpsService$Restriction;,
        Lcom/android/server/AppOpsService$ClientState;,
        Lcom/android/server/AppOpsService$Callback;,
        Lcom/android/server/AppOpsService$Op;,
        Lcom/android/server/AppOpsService$Ops;
    }
.end annotation


# static fields
.field static final DEBUG:Z = false

.field static final DEFAULT_POLICY_FILE:Ljava/lang/String; = "/system/etc/appops_policy.xml"

.field static final TAG:Ljava/lang/String; = "AppOps"

.field static final WRITE_DELAY:J = 0x1b7740L


# instance fields
.field final mAudioRestrictions:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/server/AppOpsService$Restriction;",
            ">;>;"
        }
    .end annotation
.end field

.field final mClients:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Landroid/os/IBinder;",
            "Lcom/android/server/AppOpsService$ClientState;",
            ">;"
        }
    .end annotation
.end field

.field mContext:Landroid/content/Context;

.field final mFile:Landroid/util/AtomicFile;

.field final mHandler:Landroid/os/Handler;

.field final mLooper:Landroid/os/Looper;

.field final mModeWatchers:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Landroid/os/IBinder;",
            "Lcom/android/server/AppOpsService$Callback;",
            ">;"
        }
    .end annotation
.end field

.field final mOpModeWatchers:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/AppOpsService$Callback;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mOpRestrictions:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<[Z>;"
        }
    .end annotation
.end field

.field final mPackageModeWatchers:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/AppOpsService$Callback;",
            ">;>;"
        }
    .end annotation
.end field

.field mPolicy:Lcom/android/server/AppOpsPolicy;

.field final mStrictEnable:Z

.field final mUidOps:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/AppOpsService$Ops;",
            ">;>;"
        }
    .end annotation
.end field

.field final mWriteRunner:Ljava/lang/Runnable;

.field mWriteScheduled:Z


# direct methods
.method public constructor <init>(Ljava/io/File;Landroid/os/Handler;)V
    .registers 4
    .param p1, "storagePath"    # Ljava/io/File;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 228
    invoke-direct {p0}, Lcom/android/internal/app/IAppOpsService$Stub;-><init>()V

    .line 93
    new-instance v0, Lcom/android/server/AppOpsService$1;

    invoke-direct {v0, p0}, Lcom/android/server/AppOpsService$1;-><init>(Lcom/android/server/AppOpsService;)V

    iput-object v0, p0, mWriteRunner:Ljava/lang/Runnable;

    .line 108
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, mUidOps:Landroid/util/SparseArray;

    .line 111
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, mOpRestrictions:Landroid/util/SparseArray;

    .line 157
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, mOpModeWatchers:Landroid/util/SparseArray;

    .line 159
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, mPackageModeWatchers:Landroid/util/ArrayMap;

    .line 161
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, mModeWatchers:Landroid/util/ArrayMap;

    .line 163
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, mAudioRestrictions:Landroid/util/SparseArray;

    .line 187
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, mClients:Landroid/util/ArrayMap;

    .line 229
    new-instance v0, Landroid/util/AtomicFile;

    invoke-direct {v0, p1}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    iput-object v0, p0, mFile:Landroid/util/AtomicFile;

    .line 230
    iput-object p2, p0, mHandler:Landroid/os/Handler;

    .line 231
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iput-object v0, p0, mLooper:Landroid/os/Looper;

    .line 232
    invoke-static {}, Landroid/app/AppOpsManager;->isStrictEnable()Z

    move-result v0

    iput-boolean v0, p0, mStrictEnable:Z

    .line 233
    invoke-virtual {p0}, readState()V

    .line 234
    return-void
.end method

.method private static addCallbacks(Ljava/util/HashMap;Ljava/lang/String;ILjava/util/ArrayList;)Ljava/util/HashMap;
    .registers 9
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "op"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Lcom/android/server/AppOpsService$Callback;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;>;>;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/AppOpsService$Callback;",
            ">;)",
            "Ljava/util/HashMap",
            "<",
            "Lcom/android/server/AppOpsService$Callback;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;>;>;"
        }
    .end annotation

    .prologue
    .line 449
    .local p0, "callbacks":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/android/server/AppOpsService$Callback;Ljava/util/ArrayList<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;>;>;"
    .local p3, "cbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    if-nez p3, :cond_3

    .line 464
    :cond_2
    return-object p0

    .line 452
    :cond_3
    if-nez p0, :cond_a

    .line 453
    new-instance p0, Ljava/util/HashMap;

    .end local p0    # "callbacks":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/android/server/AppOpsService$Callback;Ljava/util/ArrayList<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;>;>;"
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 455
    .restart local p0    # "callbacks":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/android/server/AppOpsService$Callback;Ljava/util/ArrayList<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;>;>;"
    :cond_a
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_b
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_2

    .line 456
    invoke-virtual {p3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/AppOpsService$Callback;

    .line 457
    .local v0, "cb":Lcom/android/server/AppOpsService$Callback;
    invoke-virtual {p0, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 458
    .local v2, "reports":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;>;"
    if-nez v2, :cond_27

    .line 459
    new-instance v2, Ljava/util/ArrayList;

    .end local v2    # "reports":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;>;"
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 460
    .restart local v2    # "reports":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;>;"
    invoke-virtual {p0, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 462
    :cond_27
    new-instance v3, Landroid/util/Pair;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v3, p1, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 455
    add-int/lit8 v1, v1, 0x1

    goto :goto_b
.end method

.method private askOperationLocked(IILjava/lang/String;Lcom/android/server/AppOpsService$Op;)Lcom/android/server/PermissionDialogReqQueue$PermissionDialogReq;
    .registers 13
    .param p1, "code"    # I
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "op"    # Lcom/android/server/AppOpsService$Op;

    .prologue
    .line 1430
    new-instance v6, Lcom/android/server/PermissionDialogReqQueue$PermissionDialogReq;

    invoke-direct {v6}, Lcom/android/server/PermissionDialogReqQueue$PermissionDialogReq;-><init>()V

    .line 1431
    .local v6, "request":Lcom/android/server/PermissionDialogReqQueue$PermissionDialogReq;
    iget-object v7, p0, mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/server/AppOpsService$AskRunnable;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v6}, Lcom/android/server/AppOpsService$AskRunnable;-><init>(Lcom/android/server/AppOpsService;IILjava/lang/String;Lcom/android/server/AppOpsService$Op;Lcom/android/server/PermissionDialogReqQueue$PermissionDialogReq;)V

    invoke-virtual {v7, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1432
    return-object v6
.end method

.method private checkRestrictionLocked(IIILjava/lang/String;)I
    .registers 8
    .param p1, "code"    # I
    .param p2, "usage"    # I
    .param p3, "uid"    # I
    .param p4, "packageName"    # Ljava/lang/String;

    .prologue
    .line 622
    iget-object v2, p0, mAudioRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/SparseArray;

    .line 623
    .local v1, "usageRestrictions":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/AppOpsService$Restriction;>;"
    if-eqz v1, :cond_1d

    .line 624
    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/AppOpsService$Restriction;

    .line 625
    .local v0, "r":Lcom/android/server/AppOpsService$Restriction;
    if-eqz v0, :cond_1d

    iget-object v2, v0, Lcom/android/server/AppOpsService$Restriction;->exceptionPackages:Landroid/util/ArraySet;

    invoke-virtual {v2, p4}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1d

    .line 626
    iget v2, v0, Lcom/android/server/AppOpsService$Restriction;->mode:I

    .line 629
    .end local v0    # "r":Lcom/android/server/AppOpsService$Restriction;
    :goto_1c
    return v2

    :cond_1d
    const/4 v2, 0x0

    goto :goto_1c
.end method

.method private checkSystemUid(Ljava/lang/String;)V
    .registers 6
    .param p1, "function"    # Ljava/lang/String;

    .prologue
    .line 1389
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1390
    .local v0, "uid":I
    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_21

    .line 1391
    new-instance v1, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " must by called by the system"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1394
    :cond_21
    return-void
.end method

.method private collectOps(Lcom/android/server/AppOpsService$Ops;[I)Ljava/util/ArrayList;
    .registers 14
    .param p1, "pkgOps"    # Lcom/android/server/AppOpsService$Ops;
    .param p2, "ops"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/AppOpsService$Ops;",
            "[I)",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/AppOpsManager$OpEntry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 312
    const/4 v10, 0x0

    .line 313
    .local v10, "resOps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/AppOpsManager$OpEntry;>;"
    if-nez p2, :cond_2a

    .line 314
    new-instance v10, Ljava/util/ArrayList;

    .end local v10    # "resOps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/AppOpsManager$OpEntry;>;"
    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 315
    .restart local v10    # "resOps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/AppOpsManager$OpEntry;>;"
    const/4 v9, 0x0

    .local v9, "j":I
    :goto_9
    invoke-virtual {p1}, Lcom/android/server/AppOpsService$Ops;->size()I

    move-result v1

    if-ge v9, v1, :cond_54

    .line 316
    invoke-virtual {p1, v9}, Lcom/android/server/AppOpsService$Ops;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/AppOpsService$Op;

    .line 317
    .local v0, "curOp":Lcom/android/server/AppOpsService$Op;
    new-instance v1, Landroid/app/AppOpsManager$OpEntry;

    iget v2, v0, Lcom/android/server/AppOpsService$Op;->op:I

    iget v3, v0, Lcom/android/server/AppOpsService$Op;->mode:I

    iget-wide v4, v0, Lcom/android/server/AppOpsService$Op;->time:J

    iget-wide v6, v0, Lcom/android/server/AppOpsService$Op;->rejectTime:J

    iget v8, v0, Lcom/android/server/AppOpsService$Op;->duration:I

    invoke-direct/range {v1 .. v8}, Landroid/app/AppOpsManager$OpEntry;-><init>(IIJJI)V

    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 315
    add-int/lit8 v9, v9, 0x1

    goto :goto_9

    .line 321
    .end local v0    # "curOp":Lcom/android/server/AppOpsService$Op;
    .end local v9    # "j":I
    :cond_2a
    const/4 v9, 0x0

    .restart local v9    # "j":I
    :goto_2b
    array-length v1, p2

    if-ge v9, v1, :cond_54

    .line 322
    aget v1, p2, v9

    invoke-virtual {p1, v1}, Lcom/android/server/AppOpsService$Ops;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/AppOpsService$Op;

    .line 323
    .restart local v0    # "curOp":Lcom/android/server/AppOpsService$Op;
    if-eqz v0, :cond_51

    .line 324
    if-nez v10, :cond_3f

    .line 325
    new-instance v10, Ljava/util/ArrayList;

    .end local v10    # "resOps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/AppOpsManager$OpEntry;>;"
    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 327
    .restart local v10    # "resOps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/AppOpsManager$OpEntry;>;"
    :cond_3f
    new-instance v1, Landroid/app/AppOpsManager$OpEntry;

    iget v2, v0, Lcom/android/server/AppOpsService$Op;->op:I

    iget v3, v0, Lcom/android/server/AppOpsService$Op;->mode:I

    iget-wide v4, v0, Lcom/android/server/AppOpsService$Op;->time:J

    iget-wide v6, v0, Lcom/android/server/AppOpsService$Op;->rejectTime:J

    iget v8, v0, Lcom/android/server/AppOpsService$Op;->duration:I

    invoke-direct/range {v1 .. v8}, Landroid/app/AppOpsManager$OpEntry;-><init>(IIJJI)V

    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 321
    :cond_51
    add-int/lit8 v9, v9, 0x1

    goto :goto_2b

    .line 332
    .end local v0    # "curOp":Lcom/android/server/AppOpsService$Op;
    :cond_54
    return-object v10
.end method

.method private getDefaultMode(IILjava/lang/String;)I
    .registers 7
    .param p1, "code"    # I
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;

    .prologue
    .line 1436
    invoke-direct {p0, p1, p2, p3}, isStrict(IILjava/lang/String;)Z

    move-result v2

    invoke-static {p1, v2}, Landroid/app/AppOpsManager;->opToDefaultMode(IZ)I

    move-result v0

    .line 1438
    .local v0, "mode":I
    invoke-static {p1}, Landroid/app/AppOpsManager;->isStrictOp(I)Z

    move-result v2

    if-eqz v2, :cond_1c

    iget-object v2, p0, mPolicy:Lcom/android/server/AppOpsPolicy;

    if-eqz v2, :cond_1c

    .line 1439
    iget-object v2, p0, mPolicy:Lcom/android/server/AppOpsPolicy;

    invoke-virtual {v2, p1, p3}, Lcom/android/server/AppOpsPolicy;->getDefualtMode(ILjava/lang/String;)I

    move-result v1

    .line 1440
    .local v1, "policyMode":I
    const/4 v2, 0x2

    if-eq v1, v2, :cond_1c

    .line 1441
    move v0, v1

    .line 1444
    .end local v1    # "policyMode":I
    :cond_1c
    return v0
.end method

.method private getOpLocked(IILjava/lang/String;Z)Lcom/android/server/AppOpsService$Op;
    .registers 7
    .param p1, "code"    # I
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "edit"    # Z

    .prologue
    .line 934
    invoke-direct {p0, p2, p3, p4}, getOpsLocked(ILjava/lang/String;Z)Lcom/android/server/AppOpsService$Ops;

    move-result-object v0

    .line 935
    .local v0, "ops":Lcom/android/server/AppOpsService$Ops;
    if-nez v0, :cond_8

    .line 936
    const/4 v1, 0x0

    .line 938
    :goto_7
    return-object v1

    :cond_8
    invoke-direct {p0, v0, p1, p4}, getOpLocked(Lcom/android/server/AppOpsService$Ops;IZ)Lcom/android/server/AppOpsService$Op;

    move-result-object v1

    goto :goto_7
.end method

.method private getOpLocked(Lcom/android/server/AppOpsService$Ops;IZ)Lcom/android/server/AppOpsService$Op;
    .registers 8
    .param p1, "ops"    # Lcom/android/server/AppOpsService$Ops;
    .param p2, "code"    # I
    .param p3, "edit"    # Z

    .prologue
    .line 943
    invoke-virtual {p1, p2}, Lcom/android/server/AppOpsService$Ops;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/AppOpsService$Op;

    .line 944
    .local v1, "op":Lcom/android/server/AppOpsService$Op;
    if-nez v1, :cond_20

    .line 945
    if-nez p3, :cond_c

    .line 946
    const/4 v2, 0x0

    .line 955
    :goto_b
    return-object v2

    .line 948
    :cond_c
    iget v2, p1, Lcom/android/server/AppOpsService$Ops;->uid:I

    iget-object v3, p1, Lcom/android/server/AppOpsService$Ops;->packageName:Ljava/lang/String;

    invoke-direct {p0, p2, v2, v3}, getDefaultMode(IILjava/lang/String;)I

    move-result v0

    .line 949
    .local v0, "mode":I
    new-instance v1, Lcom/android/server/AppOpsService$Op;

    .end local v1    # "op":Lcom/android/server/AppOpsService$Op;
    iget v2, p1, Lcom/android/server/AppOpsService$Ops;->uid:I

    iget-object v3, p1, Lcom/android/server/AppOpsService$Ops;->packageName:Ljava/lang/String;

    invoke-direct {v1, v2, v3, p2, v0}, Lcom/android/server/AppOpsService$Op;-><init>(ILjava/lang/String;II)V

    .line 950
    .restart local v1    # "op":Lcom/android/server/AppOpsService$Op;
    invoke-virtual {p1, p2, v1}, Lcom/android/server/AppOpsService$Ops;->put(ILjava/lang/Object;)V

    .line 952
    .end local v0    # "mode":I
    :cond_20
    if-eqz p3, :cond_25

    .line 953
    invoke-direct {p0}, scheduleWriteLocked()V

    :cond_25
    move-object v2, v1

    .line 955
    goto :goto_b
.end method

.method private getOpsLocked(ILjava/lang/String;Z)Lcom/android/server/AppOpsService$Ops;
    .registers 5
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "edit"    # Z

    .prologue
    .line 848
    if-nez p1, :cond_a

    .line 849
    const-string/jumbo p2, "root"

    .line 856
    :cond_5
    :goto_5
    invoke-direct {p0, p1, p2, p3}, getOpsRawLocked(ILjava/lang/String;Z)Lcom/android/server/AppOpsService$Ops;

    move-result-object v0

    return-object v0

    .line 850
    :cond_a
    const/16 v0, 0x7d0

    if-ne p1, v0, :cond_11

    .line 851
    const-string p2, "com.android.shell"

    goto :goto_5

    .line 852
    :cond_11
    const/16 v0, 0x3e8

    if-ne p1, v0, :cond_5

    .line 853
    if-nez p2, :cond_5

    .line 854
    const-string p2, "android"

    goto :goto_5
.end method

.method private getOpsRawLocked(ILjava/lang/String;Z)Lcom/android/server/AppOpsService$Ops;
    .registers 17
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "edit"    # Z

    .prologue
    .line 860
    iget-object v10, p0, mUidOps:Landroid/util/SparseArray;

    invoke-virtual {v10, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/HashMap;

    .line 861
    .local v8, "pkgOps":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/server/AppOpsService$Ops;>;"
    if-nez v8, :cond_18

    .line 862
    if-nez p3, :cond_e

    .line 863
    const/4 v7, 0x0

    .line 915
    :cond_d
    :goto_d
    return-object v7

    .line 865
    :cond_e
    new-instance v8, Ljava/util/HashMap;

    .end local v8    # "pkgOps":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/server/AppOpsService$Ops;>;"
    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 866
    .restart local v8    # "pkgOps":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/server/AppOpsService$Ops;>;"
    iget-object v10, p0, mUidOps:Landroid/util/SparseArray;

    invoke-virtual {v10, p1, v8}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 868
    :cond_18
    invoke-virtual {v8, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/AppOpsService$Ops;

    .line 869
    .local v7, "ops":Lcom/android/server/AppOpsService$Ops;
    if-eqz v7, :cond_24

    iget-boolean v10, v7, Lcom/android/server/AppOpsService$Ops;->isPrivilegedCredible:Z

    if-nez v10, :cond_d

    .line 870
    :cond_24
    if-nez p3, :cond_2a

    if-nez v7, :cond_2a

    .line 871
    const/4 v7, 0x0

    goto :goto_d

    .line 873
    :cond_2a
    const/4 v3, 0x0

    .line 876
    .local v3, "isPrivileged":Z
    if-eqz p1, :cond_9d

    .line 877
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 879
    .local v4, "ident":J
    const/4 v9, -0x1

    .line 881
    .local v9, "pkgUid":I
    :try_start_32
    invoke-static {}, Landroid/app/ActivityThread;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v10

    const/4 v11, 0x0

    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v12

    invoke-interface {v10, p2, v11, v12}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 883
    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    if-eqz v0, :cond_80

    .line 884
    iget v9, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 885
    iget v10, v0, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_45
    .catch Landroid/os/RemoteException; {:try_start_32 .. :try_end_45} :catch_8c
    .catchall {:try_start_32 .. :try_end_45} :catchall_95

    const/high16 v11, 0x40000000    # 2.0f

    and-int/2addr v10, v11

    if-eqz v10, :cond_7e

    const/4 v3, 0x1

    .line 895
    .end local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :cond_4b
    :goto_4b
    if-eq v9, p1, :cond_9a

    .line 898
    :try_start_4d
    const-string v10, "AppOps"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Bad call: specified package "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " under uid "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " but it is really "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_79
    .catchall {:try_start_4d .. :try_end_79} :catchall_95

    .line 900
    const/4 v7, 0x0

    .line 903
    .end local v7    # "ops":Lcom/android/server/AppOpsService$Ops;
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_d

    .line 885
    .restart local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .restart local v7    # "ops":Lcom/android/server/AppOpsService$Ops;
    :cond_7e
    const/4 v3, 0x0

    goto :goto_4b

    .line 887
    :cond_80
    :try_start_80
    const-string v10, "media"

    invoke-virtual {v10, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_85
    .catch Landroid/os/RemoteException; {:try_start_80 .. :try_end_85} :catch_8c
    .catchall {:try_start_80 .. :try_end_85} :catchall_95

    move-result v10

    if-eqz v10, :cond_4b

    .line 888
    const/16 v9, 0x3f5

    .line 889
    const/4 v3, 0x0

    goto :goto_4b

    .line 892
    .end local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :catch_8c
    move-exception v1

    .line 893
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_8d
    const-string v10, "AppOps"

    const-string v11, "Could not contact PackageManager"

    invoke-static {v10, v11, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_94
    .catchall {:try_start_8d .. :try_end_94} :catchall_95

    goto :goto_4b

    .line 903
    .end local v1    # "e":Landroid/os/RemoteException;
    :catchall_95
    move-exception v10

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v10

    :cond_9a
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 906
    .end local v4    # "ident":J
    .end local v9    # "pkgUid":I
    :cond_9d
    new-instance v6, Lcom/android/server/AppOpsService$Ops;

    invoke-direct {v6, p2, p1, v3}, Lcom/android/server/AppOpsService$Ops;-><init>(Ljava/lang/String;IZ)V

    .line 907
    .local v6, "newOps":Lcom/android/server/AppOpsService$Ops;
    if-eqz v7, :cond_bd

    .line 908
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_a5
    invoke-virtual {v7}, Lcom/android/server/AppOpsService$Ops;->size()I

    move-result v10

    if-ge v2, v10, :cond_bd

    .line 909
    invoke-virtual {v7, v2}, Lcom/android/server/AppOpsService$Ops;->valueAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/AppOpsService$Op;

    iget v10, v10, Lcom/android/server/AppOpsService$Op;->op:I

    invoke-virtual {v7, v2}, Lcom/android/server/AppOpsService$Ops;->valueAt(I)Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v6, v10, v11}, Lcom/android/server/AppOpsService$Ops;->put(ILjava/lang/Object;)V

    .line 908
    add-int/lit8 v2, v2, 0x1

    goto :goto_a5

    .line 912
    .end local v2    # "i":I
    :cond_bd
    move-object v7, v6

    .line 913
    invoke-virtual {v8, p2, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_d
.end method

.method private isOpRestricted(IILjava/lang/String;)Z
    .registers 10
    .param p1, "uid"    # I
    .param p2, "code"    # I
    .param p3, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 959
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    .line 960
    .local v2, "userHandle":I
    iget-object v5, p0, mOpRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v5, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Z

    .line 961
    .local v0, "opRestrictions":[Z
    if-eqz v0, :cond_27

    aget-boolean v5, v0, p2

    if-eqz v5, :cond_27

    .line 962
    invoke-static {p2}, Landroid/app/AppOpsManager;->opAllowSystemBypassRestriction(I)Z

    move-result v5

    if-eqz v5, :cond_29

    .line 963
    monitor-enter p0

    .line 964
    const/4 v5, 0x1

    :try_start_1c
    invoke-direct {p0, p1, p3, v5}, getOpsLocked(ILjava/lang/String;Z)Lcom/android/server/AppOpsService$Ops;

    move-result-object v1

    .line 965
    .local v1, "ops":Lcom/android/server/AppOpsService$Ops;
    if-eqz v1, :cond_28

    iget-boolean v5, v1, Lcom/android/server/AppOpsService$Ops;->isPrivileged:Z

    if-eqz v5, :cond_28

    .line 966
    monitor-exit p0

    .line 972
    .end local v1    # "ops":Lcom/android/server/AppOpsService$Ops;
    :cond_27
    :goto_27
    return v3

    .line 968
    .restart local v1    # "ops":Lcom/android/server/AppOpsService$Ops;
    :cond_28
    monitor-exit p0

    .end local v1    # "ops":Lcom/android/server/AppOpsService$Ops;
    :cond_29
    move v3, v4

    .line 970
    goto :goto_27

    .line 968
    :catchall_2b
    move-exception v3

    monitor-exit p0
    :try_end_2d
    .catchall {:try_start_1c .. :try_end_2d} :catchall_2b

    throw v3
.end method

.method private isStrict(IILjava/lang/String;)Z
    .registers 5
    .param p1, "code"    # I
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;

    .prologue
    .line 1448
    iget-boolean v0, p0, mStrictEnable:Z

    if-nez v0, :cond_6

    .line 1449
    const/4 v0, 0x0

    .line 1451
    :goto_5
    return v0

    :cond_6
    invoke-static {p2}, Landroid/os/UserHandle;->isApp(I)Z

    move-result v0

    goto :goto_5
.end method

.method private printOperationLocked(Lcom/android/server/AppOpsService$Op;ILjava/lang/String;)V
    .registers 6
    .param p1, "op"    # Lcom/android/server/AppOpsService$Op;
    .param p2, "mode"    # I
    .param p3, "operation"    # Ljava/lang/String;

    .prologue
    .line 1455
    if-eqz p1, :cond_b

    .line 1456
    iget v1, p1, Lcom/android/server/AppOpsService$Op;->op:I

    invoke-static {v1}, Landroid/app/AppOpsManager;->opToSwitch(I)I

    move-result v0

    .line 1457
    .local v0, "switchCode":I
    const/4 v1, 0x1

    if-ne p2, v1, :cond_c

    .line 1467
    .end local v0    # "switchCode":I
    :cond_b
    :goto_b
    return-void

    .line 1461
    .restart local v0    # "switchCode":I
    :cond_c
    if-nez p2, :cond_b

    goto :goto_b
.end method

.method private pruneOp(Lcom/android/server/AppOpsService$Op;ILjava/lang/String;)V
    .registers 10
    .param p1, "op"    # Lcom/android/server/AppOpsService$Op;
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;

    .prologue
    const-wide/16 v4, 0x0

    .line 382
    iget-wide v2, p1, Lcom/android/server/AppOpsService$Op;->time:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_3a

    iget-wide v2, p1, Lcom/android/server/AppOpsService$Op;->rejectTime:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_3a

    .line 383
    const/4 v2, 0x0

    invoke-direct {p0, p2, p3, v2}, getOpsLocked(ILjava/lang/String;Z)Lcom/android/server/AppOpsService$Ops;

    move-result-object v0

    .line 384
    .local v0, "ops":Lcom/android/server/AppOpsService$Ops;
    if-eqz v0, :cond_3a

    .line 385
    iget v2, p1, Lcom/android/server/AppOpsService$Op;->op:I

    invoke-virtual {v0, v2}, Lcom/android/server/AppOpsService$Ops;->remove(I)V

    .line 386
    invoke-virtual {v0}, Lcom/android/server/AppOpsService$Ops;->size()I

    move-result v2

    if-gtz v2, :cond_3a

    .line 387
    iget-object v2, p0, mUidOps:Landroid/util/SparseArray;

    invoke-virtual {v2, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    .line 388
    .local v1, "pkgOps":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/server/AppOpsService$Ops;>;"
    if-eqz v1, :cond_3a

    .line 389
    iget-object v2, v0, Lcom/android/server/AppOpsService$Ops;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 390
    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v2

    if-gtz v2, :cond_3a

    .line 391
    iget-object v2, p0, mUidOps:Landroid/util/SparseArray;

    invoke-virtual {v2, p2}, Landroid/util/SparseArray;->remove(I)V

    .line 397
    .end local v0    # "ops":Lcom/android/server/AppOpsService$Ops;
    .end local v1    # "pkgOps":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/server/AppOpsService$Ops;>;"
    :cond_3a
    return-void
.end method

.method private readPolicy()V
    .registers 4

    .prologue
    .line 1560
    iget-boolean v0, p0, mStrictEnable:Z

    if-eqz v0, :cond_1f

    .line 1561
    new-instance v0, Lcom/android/server/AppOpsPolicy;

    new-instance v1, Ljava/io/File;

    const-string v2, "/system/etc/appops_policy.xml"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, mContext:Landroid/content/Context;

    invoke-direct {v0, v1, v2}, Lcom/android/server/AppOpsPolicy;-><init>(Ljava/io/File;Landroid/content/Context;)V

    iput-object v0, p0, mPolicy:Lcom/android/server/AppOpsPolicy;

    .line 1562
    iget-object v0, p0, mPolicy:Lcom/android/server/AppOpsPolicy;

    invoke-virtual {v0}, Lcom/android/server/AppOpsPolicy;->readPolicy()V

    .line 1563
    iget-object v0, p0, mPolicy:Lcom/android/server/AppOpsPolicy;

    invoke-virtual {v0}, Lcom/android/server/AppOpsPolicy;->debugPoilcy()V

    .line 1567
    :goto_1e
    return-void

    .line 1565
    :cond_1f
    const/4 v0, 0x0

    iput-object v0, p0, mPolicy:Lcom/android/server/AppOpsPolicy;

    goto :goto_1e
.end method

.method private recordOperationLocked(IILjava/lang/String;I)V
    .registers 15
    .param p1, "code"    # I
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "mode"    # I

    .prologue
    const-wide/16 v8, 0x0

    const/4 v6, 0x0

    .line 1471
    invoke-direct {p0, p1, p2, p3, v6}, getOpLocked(IILjava/lang/String;Z)Lcom/android/server/AppOpsService$Op;

    move-result-object v2

    .line 1472
    .local v2, "op":Lcom/android/server/AppOpsService$Op;
    if-eqz v2, :cond_2e

    .line 1473
    iget v3, v2, Lcom/android/server/AppOpsService$Op;->noteOpCount:I

    if-eqz v3, :cond_12

    .line 1474
    const-string v3, "noteOperartion"

    invoke-direct {p0, v2, p4, v3}, printOperationLocked(Lcom/android/server/AppOpsService$Op;ILjava/lang/String;)V

    .line 1475
    :cond_12
    iget v3, v2, Lcom/android/server/AppOpsService$Op;->startOpCount:I

    if-eqz v3, :cond_1c

    .line 1476
    const-string/jumbo v3, "startOperation"

    invoke-direct {p0, v2, p4, v3}, printOperationLocked(Lcom/android/server/AppOpsService$Op;ILjava/lang/String;)V

    .line 1477
    :cond_1c
    const/4 v3, 0x1

    if-ne p4, v3, :cond_2f

    .line 1478
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, v2, Lcom/android/server/AppOpsService$Op;->rejectTime:J

    .line 1503
    :cond_25
    iget-object v3, v2, Lcom/android/server/AppOpsService$Op;->clientTokens:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 1504
    iput v6, v2, Lcom/android/server/AppOpsService$Op;->startOpCount:I

    .line 1505
    iput v6, v2, Lcom/android/server/AppOpsService$Op;->noteOpCount:I

    .line 1507
    :cond_2e
    return-void

    .line 1479
    :cond_2f
    if-nez p4, :cond_25

    .line 1480
    iget v3, v2, Lcom/android/server/AppOpsService$Op;->noteOpCount:I

    if-eqz v3, :cond_3d

    .line 1481
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, v2, Lcom/android/server/AppOpsService$Op;->time:J

    .line 1482
    iput-wide v8, v2, Lcom/android/server/AppOpsService$Op;->rejectTime:J

    .line 1484
    :cond_3d
    iget v3, v2, Lcom/android/server/AppOpsService$Op;->startOpCount:I

    if-eqz v3, :cond_25

    .line 1485
    iget v3, v2, Lcom/android/server/AppOpsService$Op;->nesting:I

    if-nez v3, :cond_50

    .line 1486
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, v2, Lcom/android/server/AppOpsService$Op;->time:J

    .line 1487
    iput-wide v8, v2, Lcom/android/server/AppOpsService$Op;->rejectTime:J

    .line 1488
    const/4 v3, -0x1

    iput v3, v2, Lcom/android/server/AppOpsService$Op;->duration:I

    .line 1490
    :cond_50
    iget v3, v2, Lcom/android/server/AppOpsService$Op;->nesting:I

    iget v4, v2, Lcom/android/server/AppOpsService$Op;->startOpCount:I

    add-int/2addr v3, v4

    iput v3, v2, Lcom/android/server/AppOpsService$Op;->nesting:I

    .line 1491
    :goto_57
    iget-object v3, v2, Lcom/android/server/AppOpsService$Op;->clientTokens:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-eqz v3, :cond_25

    .line 1492
    iget-object v3, v2, Lcom/android/server/AppOpsService$Op;->clientTokens:Ljava/util/ArrayList;

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/IBinder;

    .line 1493
    .local v1, "clientToken":Landroid/os/IBinder;
    iget-object v3, p0, mClients:Landroid/util/ArrayMap;

    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/AppOpsService$ClientState;

    .line 1494
    .local v0, "client":Lcom/android/server/AppOpsService$ClientState;
    if-eqz v0, :cond_7a

    .line 1495
    iget-object v3, v0, Lcom/android/server/AppOpsService$ClientState;->mStartedOps:Ljava/util/ArrayList;

    if-eqz v3, :cond_7a

    .line 1496
    iget-object v3, v0, Lcom/android/server/AppOpsService$ClientState;->mStartedOps:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1499
    :cond_7a
    iget-object v3, v2, Lcom/android/server/AppOpsService$Op;->clientTokens:Ljava/util/ArrayList;

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_57
.end method

.method private scheduleWriteLocked()V
    .registers 5

    .prologue
    .line 919
    iget-boolean v0, p0, mWriteScheduled:Z

    if-nez v0, :cond_11

    .line 920
    const/4 v0, 0x1

    iput-boolean v0, p0, mWriteScheduled:Z

    .line 921
    iget-object v0, p0, mHandler:Landroid/os/Handler;

    iget-object v1, p0, mWriteRunner:Ljava/lang/Runnable;

    const-wide/32 v2, 0x1b7740

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 923
    :cond_11
    return-void
.end method

.method private scheduleWriteNowLocked()V
    .registers 3

    .prologue
    .line 926
    iget-boolean v0, p0, mWriteScheduled:Z

    if-nez v0, :cond_7

    .line 927
    const/4 v0, 0x1

    iput-boolean v0, p0, mWriteScheduled:Z

    .line 929
    :cond_7
    iget-object v0, p0, mHandler:Landroid/os/Handler;

    iget-object v1, p0, mWriteRunner:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 930
    iget-object v0, p0, mHandler:Landroid/os/Handler;

    iget-object v1, p0, mWriteRunner:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 931
    return-void
.end method

.method private verifyIncomingOp(I)V
    .registers 5
    .param p1, "op"    # I

    .prologue
    .line 841
    if-ltz p1, :cond_7

    const/16 v0, 0x3c

    if-ge p1, v0, :cond_7

    .line 842
    return-void

    .line 844
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad operation #"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private verifyIncomingUid(I)V
    .registers 7
    .param p1, "uid"    # I

    .prologue
    .line 830
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    if-ne p1, v0, :cond_7

    .line 838
    :cond_6
    :goto_6
    return-void

    .line 833
    :cond_7
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    if-eq v0, v1, :cond_6

    .line 836
    iget-object v0, p0, mContext:Landroid/content/Context;

    const-string v1, "android.permission.UPDATE_APP_OPS_STATS"

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    goto :goto_6
.end method


# virtual methods
.method public checkAudioOperation(IIILjava/lang/String;)I
    .registers 7
    .param p1, "code"    # I
    .param p2, "usage"    # I
    .param p3, "uid"    # I
    .param p4, "packageName"    # Ljava/lang/String;

    .prologue
    .line 612
    monitor-enter p0

    .line 613
    :try_start_1
    invoke-direct {p0, p1, p2, p3, p4}, checkRestrictionLocked(IIILjava/lang/String;)I

    move-result v0

    .line 614
    .local v0, "mode":I
    if-eqz v0, :cond_9

    .line 615
    monitor-exit p0

    .line 618
    .end local v0    # "mode":I
    :goto_8
    return v0

    .line 617
    .restart local v0    # "mode":I
    :cond_9
    monitor-exit p0
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_f

    .line 618
    invoke-virtual {p0, p1, p3, p4}, checkOperation(IILjava/lang/String;)I

    move-result v0

    goto :goto_8

    .line 617
    .end local v0    # "mode":I
    :catchall_f
    move-exception v1

    :try_start_10
    monitor-exit p0
    :try_end_11
    .catchall {:try_start_10 .. :try_end_11} :catchall_f

    throw v1
.end method

.method public checkOperation(IILjava/lang/String;)I
    .registers 7
    .param p1, "code"    # I
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;

    .prologue
    .line 596
    invoke-direct {p0, p2}, verifyIncomingUid(I)V

    .line 597
    invoke-direct {p0, p1}, verifyIncomingOp(I)V

    .line 598
    monitor-enter p0

    .line 599
    :try_start_7
    invoke-direct {p0, p2, p1, p3}, isOpRestricted(IILjava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 600
    const/4 v1, 0x1

    monitor-exit p0

    .line 606
    :goto_f
    return v1

    .line 602
    :cond_10
    invoke-static {p1}, Landroid/app/AppOpsManager;->opToSwitch(I)I

    move-result v1

    const/4 v2, 0x0

    invoke-direct {p0, v1, p2, p3, v2}, getOpLocked(IILjava/lang/String;Z)Lcom/android/server/AppOpsService$Op;

    move-result-object v0

    .line 603
    .local v0, "op":Lcom/android/server/AppOpsService$Op;
    if-nez v0, :cond_24

    .line 604
    invoke-direct {p0, p1, p2, p3}, getDefaultMode(IILjava/lang/String;)I

    move-result v1

    monitor-exit p0

    goto :goto_f

    .line 607
    .end local v0    # "op":Lcom/android/server/AppOpsService$Op;
    :catchall_21
    move-exception v1

    monitor-exit p0
    :try_end_23
    .catchall {:try_start_7 .. :try_end_23} :catchall_21

    throw v1

    .line 606
    .restart local v0    # "op":Lcom/android/server/AppOpsService$Op;
    :cond_24
    :try_start_24
    iget v1, v0, Lcom/android/server/AppOpsService$Op;->mode:I

    monitor-exit p0
    :try_end_27
    .catchall {:try_start_24 .. :try_end_27} :catchall_21

    goto :goto_f
.end method

.method public checkPackage(ILjava/lang/String;)I
    .registers 4
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    .line 664
    monitor-enter p0

    .line 665
    const/4 v0, 0x1

    :try_start_2
    invoke-direct {p0, p1, p2, v0}, getOpsRawLocked(ILjava/lang/String;Z)Lcom/android/server/AppOpsService$Ops;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 666
    const/4 v0, 0x0

    monitor-exit p0

    .line 668
    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x2

    monitor-exit p0

    goto :goto_a

    .line 670
    :catchall_e
    move-exception v0

    monitor-exit p0
    :try_end_10
    .catchall {:try_start_2 .. :try_end_10} :catchall_e

    throw v0
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 28
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 1236
    move-object/from16 v0, p0

    iget-object v0, v0, mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    const-string v21, "android.permission.DUMP"

    invoke-virtual/range {v20 .. v21}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v20

    if-eqz v20, :cond_3b

    .line 1238
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Permission Denial: can\'t dump ApOps service from from pid="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ", uid="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1356
    :goto_3a
    return-void

    .line 1244
    :cond_3b
    monitor-enter p0

    .line 1245
    :try_start_3c
    const-string v20, "Current AppOps Service state:"

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1246
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 1247
    .local v10, "now":J
    const/4 v9, 0x0

    .line 1248
    .local v9, "needSep":Z
    move-object/from16 v0, p0

    iget-object v0, v0, mOpModeWatchers:Landroid/util/SparseArray;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/util/SparseArray;->size()I

    move-result v20

    if-lez v20, :cond_d7

    .line 1249
    const/4 v9, 0x1

    .line 1250
    const-string v20, "  Op mode watchers:"

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1251
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_61
    move-object/from16 v0, p0

    iget-object v0, v0, mOpModeWatchers:Landroid/util/SparseArray;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/util/SparseArray;->size()I

    move-result v20

    move/from16 v0, v20

    if-ge v6, v0, :cond_d7

    .line 1252
    const-string v20, "    Op "

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, mOpModeWatchers:Landroid/util/SparseArray;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v20

    invoke-static/range {v20 .. v20}, Landroid/app/AppOpsManager;->opToName(I)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1253
    const-string v20, ":"

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1254
    move-object/from16 v0, p0

    iget-object v0, v0, mOpModeWatchers:Landroid/util/SparseArray;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    .line 1255
    .local v4, "callbacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    const/4 v8, 0x0

    .local v8, "j":I
    :goto_a7
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v20

    move/from16 v0, v20

    if-ge v8, v0, :cond_d4

    .line 1256
    const-string v20, "      #"

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p2

    invoke-virtual {v0, v8}, Ljava/io/PrintWriter;->print(I)V

    const-string v20, ": "

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1257
    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v20

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1255
    add-int/lit8 v8, v8, 0x1

    goto :goto_a7

    .line 1251
    :cond_d4
    add-int/lit8 v6, v6, 0x1

    goto :goto_61

    .line 1261
    .end local v4    # "callbacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    .end local v6    # "i":I
    .end local v8    # "j":I
    :cond_d7
    move-object/from16 v0, p0

    iget-object v0, v0, mPackageModeWatchers:Landroid/util/ArrayMap;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/util/ArrayMap;->size()I

    move-result v20

    if-lez v20, :cond_162

    .line 1262
    const/4 v9, 0x1

    .line 1263
    const-string v20, "  Package mode watchers:"

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1264
    const/4 v6, 0x0

    .restart local v6    # "i":I
    :goto_ee
    move-object/from16 v0, p0

    iget-object v0, v0, mPackageModeWatchers:Landroid/util/ArrayMap;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/util/ArrayMap;->size()I

    move-result v20

    move/from16 v0, v20

    if-ge v6, v0, :cond_162

    .line 1265
    const-string v20, "    Pkg "

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, mPackageModeWatchers:Landroid/util/ArrayMap;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/String;

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1266
    const-string v20, ":"

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1267
    move-object/from16 v0, p0

    iget-object v0, v0, mPackageModeWatchers:Landroid/util/ArrayMap;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    .line 1268
    .restart local v4    # "callbacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    const/4 v8, 0x0

    .restart local v8    # "j":I
    :goto_132
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v20

    move/from16 v0, v20

    if-ge v8, v0, :cond_15f

    .line 1269
    const-string v20, "      #"

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p2

    invoke-virtual {v0, v8}, Ljava/io/PrintWriter;->print(I)V

    const-string v20, ": "

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1270
    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v20

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1268
    add-int/lit8 v8, v8, 0x1

    goto :goto_132

    .line 1264
    :cond_15f
    add-int/lit8 v6, v6, 0x1

    goto :goto_ee

    .line 1274
    .end local v4    # "callbacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    .end local v6    # "i":I
    .end local v8    # "j":I
    :cond_162
    move-object/from16 v0, p0

    iget-object v0, v0, mModeWatchers:Landroid/util/ArrayMap;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/util/ArrayMap;->size()I

    move-result v20

    if-lez v20, :cond_1c2

    .line 1275
    const/4 v9, 0x1

    .line 1276
    const-string v20, "  All mode watchers:"

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1277
    const/4 v6, 0x0

    .restart local v6    # "i":I
    :goto_179
    move-object/from16 v0, p0

    iget-object v0, v0, mModeWatchers:Landroid/util/ArrayMap;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/util/ArrayMap;->size()I

    move-result v20

    move/from16 v0, v20

    if-ge v6, v0, :cond_1c2

    .line 1278
    const-string v20, "    "

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, mModeWatchers:Landroid/util/ArrayMap;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v20

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 1279
    const-string v20, " -> "

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, mModeWatchers:Landroid/util/ArrayMap;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v20

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1277
    add-int/lit8 v6, v6, 0x1

    goto :goto_179

    .line 1282
    .end local v6    # "i":I
    :cond_1c2
    move-object/from16 v0, p0

    iget-object v0, v0, mClients:Landroid/util/ArrayMap;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/util/ArrayMap;->size()I

    move-result v20

    if-lez v20, :cond_2ab

    .line 1283
    const/4 v9, 0x1

    .line 1284
    const-string v20, "  Clients:"

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1285
    const/4 v6, 0x0

    .restart local v6    # "i":I
    :goto_1d9
    move-object/from16 v0, p0

    iget-object v0, v0, mClients:Landroid/util/ArrayMap;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/util/ArrayMap;->size()I

    move-result v20

    move/from16 v0, v20

    if-ge v6, v0, :cond_2ab

    .line 1286
    const-string v20, "    "

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, mClients:Landroid/util/ArrayMap;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v20

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    const-string v20, ":"

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1287
    move-object/from16 v0, p0

    iget-object v0, v0, mClients:Landroid/util/ArrayMap;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/AppOpsService$ClientState;

    .line 1288
    .local v5, "cs":Lcom/android/server/AppOpsService$ClientState;
    const-string v20, "      "

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1289
    iget-object v0, v5, Lcom/android/server/AppOpsService$ClientState;->mStartedOps:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    if-eqz v20, :cond_2a7

    iget-object v0, v5, Lcom/android/server/AppOpsService$ClientState;->mStartedOps:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->size()I

    move-result v20

    if-lez v20, :cond_2a7

    .line 1290
    const-string v20, "      Started ops:"

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1291
    const/4 v8, 0x0

    .restart local v8    # "j":I
    :goto_242
    iget-object v0, v5, Lcom/android/server/AppOpsService$ClientState;->mStartedOps:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->size()I

    move-result v20

    move/from16 v0, v20

    if-ge v8, v0, :cond_2a7

    .line 1292
    iget-object v0, v5, Lcom/android/server/AppOpsService$ClientState;->mStartedOps:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/AppOpsService$Op;

    .line 1293
    .local v13, "op":Lcom/android/server/AppOpsService$Op;
    const-string v20, "        "

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v20, "uid="

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, v13, Lcom/android/server/AppOpsService$Op;->uid:I

    move/from16 v20, v0

    move-object/from16 v0, p2

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 1294
    const-string v20, " pkg="

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, v13, Lcom/android/server/AppOpsService$Op;->packageName:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1295
    const-string v20, " op="

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, v13, Lcom/android/server/AppOpsService$Op;->op:I

    move/from16 v20, v0

    invoke-static/range {v20 .. v20}, Landroid/app/AppOpsManager;->opToName(I)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1291
    add-int/lit8 v8, v8, 0x1

    goto :goto_242

    .line 1285
    .end local v8    # "j":I
    .end local v13    # "op":Lcom/android/server/AppOpsService$Op;
    :cond_2a7
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_1d9

    .line 1300
    .end local v5    # "cs":Lcom/android/server/AppOpsService$ClientState;
    .end local v6    # "i":I
    :cond_2ab
    move-object/from16 v0, p0

    iget-object v0, v0, mAudioRestrictions:Landroid/util/SparseArray;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/util/SparseArray;->size()I

    move-result v20

    if-lez v20, :cond_390

    .line 1301
    const/16 v16, 0x0

    .line 1302
    .local v16, "printedHeader":Z
    const/4 v12, 0x0

    .local v12, "o":I
    :goto_2ba
    move-object/from16 v0, p0

    iget-object v0, v0, mAudioRestrictions:Landroid/util/SparseArray;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/util/SparseArray;->size()I

    move-result v20

    move/from16 v0, v20

    if-ge v12, v0, :cond_390

    .line 1303
    move-object/from16 v0, p0

    iget-object v0, v0, mAudioRestrictions:Landroid/util/SparseArray;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v12}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v20

    invoke-static/range {v20 .. v20}, Landroid/app/AppOpsManager;->opToName(I)Ljava/lang/String;

    move-result-object v13

    .line 1304
    .local v13, "op":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, mAudioRestrictions:Landroid/util/SparseArray;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v12}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/util/SparseArray;

    .line 1305
    .local v18, "restrictions":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/AppOpsService$Restriction;>;"
    const/4 v6, 0x0

    .restart local v6    # "i":I
    :goto_2e7
    invoke-virtual/range {v18 .. v18}, Landroid/util/SparseArray;->size()I

    move-result v20

    move/from16 v0, v20

    if-ge v6, v0, :cond_38c

    .line 1306
    if-nez v16, :cond_2fd

    .line 1307
    const-string v20, "  Audio Restrictions:"

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1308
    const/16 v16, 0x1

    .line 1309
    const/4 v9, 0x1

    .line 1311
    :cond_2fd
    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v19

    .line 1312
    .local v19, "usage":I
    const-string v20, "    "

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1313
    const-string v20, " usage="

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-static/range {v19 .. v19}, Landroid/media/AudioAttributes;->usageToString(I)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1314
    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/android/server/AppOpsService$Restriction;

    .line 1315
    .local v17, "r":Lcom/android/server/AppOpsService$Restriction;
    const-string v20, ": mode="

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, v17

    iget v0, v0, Lcom/android/server/AppOpsService$Restriction;->mode:I

    move/from16 v20, v0

    move-object/from16 v0, p2

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(I)V

    .line 1316
    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/AppOpsService$Restriction;->exceptionPackages:Landroid/util/ArraySet;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v20

    if-nez v20, :cond_388

    .line 1317
    const-string v20, "      Exceptions:"

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1318
    const/4 v8, 0x0

    .restart local v8    # "j":I
    :goto_359
    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/AppOpsService$Restriction;->exceptionPackages:Landroid/util/ArraySet;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/util/ArraySet;->size()I

    move-result v20

    move/from16 v0, v20

    if-ge v8, v0, :cond_388

    .line 1319
    const-string v20, "        "

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/AppOpsService$Restriction;->exceptionPackages:Landroid/util/ArraySet;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v8}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/String;

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1318
    add-int/lit8 v8, v8, 0x1

    goto :goto_359

    .line 1305
    .end local v8    # "j":I
    :cond_388
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_2e7

    .line 1302
    .end local v17    # "r":Lcom/android/server/AppOpsService$Restriction;
    .end local v19    # "usage":I
    :cond_38c
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_2ba

    .line 1325
    .end local v6    # "i":I
    .end local v12    # "o":I
    .end local v13    # "op":Ljava/lang/String;
    .end local v16    # "printedHeader":Z
    .end local v18    # "restrictions":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/AppOpsService$Restriction;>;"
    :cond_390
    if-eqz v9, :cond_395

    .line 1326
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 1328
    :cond_395
    const/4 v6, 0x0

    .restart local v6    # "i":I
    :goto_396
    move-object/from16 v0, p0

    iget-object v0, v0, mUidOps:Landroid/util/SparseArray;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/util/SparseArray;->size()I

    move-result v20

    move/from16 v0, v20

    if-ge v6, v0, :cond_4d2

    .line 1329
    const-string v20, "  Uid "

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, mUidOps:Landroid/util/SparseArray;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v20

    move-object/from16 v0, p2

    move/from16 v1, v20

    invoke-static {v0, v1}, Landroid/os/UserHandle;->formatUid(Ljava/io/PrintWriter;I)V

    const-string v20, ":"

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1330
    move-object/from16 v0, p0

    iget-object v0, v0, mUidOps:Landroid/util/SparseArray;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/util/HashMap;

    .line 1331
    .local v15, "pkgOps":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/server/AppOpsService$Ops;>;"
    invoke-virtual {v15}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "i$":Ljava/util/Iterator;
    :cond_3df
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_4ce

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/server/AppOpsService$Ops;

    .line 1332
    .local v14, "ops":Lcom/android/server/AppOpsService$Ops;
    const-string v20, "    Package "

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, v14, Lcom/android/server/AppOpsService$Ops;->packageName:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v20, ":"

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1333
    const/4 v8, 0x0

    .restart local v8    # "j":I
    :goto_409
    invoke-virtual {v14}, Lcom/android/server/AppOpsService$Ops;->size()I

    move-result v20

    move/from16 v0, v20

    if-ge v8, v0, :cond_3df

    .line 1334
    invoke-virtual {v14, v8}, Lcom/android/server/AppOpsService$Ops;->valueAt(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/AppOpsService$Op;

    .line 1335
    .local v13, "op":Lcom/android/server/AppOpsService$Op;
    const-string v20, "      "

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, v13, Lcom/android/server/AppOpsService$Op;->op:I

    move/from16 v20, v0

    invoke-static/range {v20 .. v20}, Landroid/app/AppOpsManager;->opToName(I)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1336
    const-string v20, ": mode="

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, v13, Lcom/android/server/AppOpsService$Op;->mode:I

    move/from16 v20, v0

    move-object/from16 v0, p2

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 1337
    iget-wide v0, v13, Lcom/android/server/AppOpsService$Op;->time:J

    move-wide/from16 v20, v0

    const-wide/16 v22, 0x0

    cmp-long v20, v20, v22

    if-eqz v20, :cond_46c

    .line 1338
    const-string v20, "; time="

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v0, v13, Lcom/android/server/AppOpsService$Op;->time:J

    move-wide/from16 v20, v0

    sub-long v20, v10, v20

    move-wide/from16 v0, v20

    move-object/from16 v2, p2

    invoke-static {v0, v1, v2}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 1339
    const-string v20, " ago"

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1341
    :cond_46c
    iget-wide v0, v13, Lcom/android/server/AppOpsService$Op;->rejectTime:J

    move-wide/from16 v20, v0

    const-wide/16 v22, 0x0

    cmp-long v20, v20, v22

    if-eqz v20, :cond_495

    .line 1342
    const-string v20, "; rejectTime="

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v0, v13, Lcom/android/server/AppOpsService$Op;->rejectTime:J

    move-wide/from16 v20, v0

    sub-long v20, v10, v20

    move-wide/from16 v0, v20

    move-object/from16 v2, p2

    invoke-static {v0, v1, v2}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 1343
    const-string v20, " ago"

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1345
    :cond_495
    iget v0, v13, Lcom/android/server/AppOpsService$Op;->duration:I

    move/from16 v20, v0

    const/16 v21, -0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_4ae

    .line 1346
    const-string v20, " (running)"

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1333
    :goto_4aa
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_409

    .line 1348
    :cond_4ae
    const-string v20, "; duration="

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1349
    iget v0, v13, Lcom/android/server/AppOpsService$Op;->duration:I

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-long v0, v0

    move-wide/from16 v20, v0

    move-wide/from16 v0, v20

    move-object/from16 v2, p2

    invoke-static {v0, v1, v2}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 1350
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    goto :goto_4aa

    .line 1355
    .end local v6    # "i":I
    .end local v7    # "i$":Ljava/util/Iterator;
    .end local v8    # "j":I
    .end local v9    # "needSep":Z
    .end local v10    # "now":J
    .end local v13    # "op":Lcom/android/server/AppOpsService$Op;
    .end local v14    # "ops":Lcom/android/server/AppOpsService$Ops;
    .end local v15    # "pkgOps":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/server/AppOpsService$Ops;>;"
    :catchall_4cb
    move-exception v20

    monitor-exit p0
    :try_end_4cd
    .catchall {:try_start_3c .. :try_end_4cd} :catchall_4cb

    throw v20

    .line 1328
    .restart local v6    # "i":I
    .restart local v7    # "i$":Ljava/util/Iterator;
    .restart local v9    # "needSep":Z
    .restart local v10    # "now":J
    .restart local v15    # "pkgOps":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/server/AppOpsService$Ops;>;"
    :cond_4ce
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_396

    .line 1355
    .end local v7    # "i$":Ljava/util/Iterator;
    .end local v15    # "pkgOps":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/server/AppOpsService$Ops;>;"
    :cond_4d2
    :try_start_4d2
    monitor-exit p0
    :try_end_4d3
    .catchall {:try_start_4d2 .. :try_end_4d3} :catchall_4cb

    goto/16 :goto_3a
.end method

.method public finishOperation(Landroid/os/IBinder;IILjava/lang/String;)V
    .registers 10
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "code"    # I
    .param p3, "uid"    # I
    .param p4, "packageName"    # Ljava/lang/String;

    .prologue
    .line 795
    invoke-direct {p0, p3}, verifyIncomingUid(I)V

    .line 796
    invoke-direct {p0, p2}, verifyIncomingOp(I)V

    move-object v0, p1

    .line 797
    check-cast v0, Lcom/android/server/AppOpsService$ClientState;

    .line 798
    .local v0, "client":Lcom/android/server/AppOpsService$ClientState;
    monitor-enter p0

    .line 799
    const/4 v2, 0x1

    :try_start_b
    invoke-direct {p0, p2, p3, p4, v2}, getOpLocked(IILjava/lang/String;Z)Lcom/android/server/AppOpsService$Op;

    move-result-object v1

    .line 800
    .local v1, "op":Lcom/android/server/AppOpsService$Op;
    if-nez v1, :cond_13

    .line 801
    monitor-exit p0

    .line 811
    :goto_12
    return-void

    .line 803
    :cond_13
    iget-object v2, v0, Lcom/android/server/AppOpsService$ClientState;->mStartedOps:Ljava/util/ArrayList;

    if-eqz v2, :cond_55

    .line 804
    iget-object v2, v0, Lcom/android/server/AppOpsService$ClientState;->mStartedOps:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_55

    .line 805
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Operation not started: uid"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v1, Lcom/android/server/AppOpsService$Op;->uid:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " pkg="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Lcom/android/server/AppOpsService$Op;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " op="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v1, Lcom/android/server/AppOpsService$Op;->op:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 810
    .end local v1    # "op":Lcom/android/server/AppOpsService$Op;
    :catchall_52
    move-exception v2

    monitor-exit p0
    :try_end_54
    .catchall {:try_start_b .. :try_end_54} :catchall_52

    throw v2

    .line 809
    .restart local v1    # "op":Lcom/android/server/AppOpsService$Op;
    :cond_55
    :try_start_55
    invoke-virtual {p0, v1}, finishOperationLocked(Lcom/android/server/AppOpsService$Op;)V

    .line 810
    monitor-exit p0
    :try_end_59
    .catchall {:try_start_55 .. :try_end_59} :catchall_52

    goto :goto_12
.end method

.method finishOperationLocked(Lcom/android/server/AppOpsService$Op;)V
    .registers 6
    .param p1, "op"    # Lcom/android/server/AppOpsService$Op;

    .prologue
    const/4 v1, 0x1

    .line 814
    iget v0, p1, Lcom/android/server/AppOpsService$Op;->nesting:I

    if-gt v0, v1, :cond_76

    .line 815
    iget v0, p1, Lcom/android/server/AppOpsService$Op;->nesting:I

    if-ne v0, v1, :cond_1f

    .line 816
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p1, Lcom/android/server/AppOpsService$Op;->time:J

    sub-long/2addr v0, v2

    long-to-int v0, v0

    iput v0, p1, Lcom/android/server/AppOpsService$Op;->duration:I

    .line 817
    iget-wide v0, p1, Lcom/android/server/AppOpsService$Op;->time:J

    iget v2, p1, Lcom/android/server/AppOpsService$Op;->duration:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    iput-wide v0, p1, Lcom/android/server/AppOpsService$Op;->time:J

    .line 823
    :goto_1b
    const/4 v0, 0x0

    iput v0, p1, Lcom/android/server/AppOpsService$Op;->nesting:I

    .line 827
    :goto_1e
    return-void

    .line 819
    :cond_1f
    const-string v0, "AppOps"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Finishing op nesting under-run: uid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/android/server/AppOpsService$Op;->uid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " pkg "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/android/server/AppOpsService$Op;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " code "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/android/server/AppOpsService$Op;->op:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " time="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p1, Lcom/android/server/AppOpsService$Op;->time:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " duration="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/android/server/AppOpsService$Op;->duration:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " nesting="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/android/server/AppOpsService$Op;->nesting:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1b

    .line 825
    :cond_76
    iget v0, p1, Lcom/android/server/AppOpsService$Op;->nesting:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p1, Lcom/android/server/AppOpsService$Op;->nesting:I

    goto :goto_1e
.end method

.method public getOpsForPackage(ILjava/lang/String;[I)Ljava/util/List;
    .registers 12
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "ops"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "[I)",
            "Ljava/util/List",
            "<",
            "Landroid/app/AppOpsManager$PackageOps;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 362
    iget-object v4, p0, mContext:Landroid/content/Context;

    const-string v5, "android.permission.GET_APP_OPS_STATS"

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v6

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    invoke-virtual {v4, v5, v6, v7, v1}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    .line 364
    monitor-enter p0

    .line 365
    const/4 v4, 0x0

    :try_start_12
    invoke-direct {p0, p1, p2, v4}, getOpsLocked(ILjava/lang/String;Z)Lcom/android/server/AppOpsService$Ops;

    move-result-object v0

    .line 366
    .local v0, "pkgOps":Lcom/android/server/AppOpsService$Ops;
    if-nez v0, :cond_1a

    .line 367
    monitor-exit p0

    .line 377
    :goto_19
    return-object v1

    .line 369
    :cond_1a
    invoke-direct {p0, v0, p3}, collectOps(Lcom/android/server/AppOpsService$Ops;[I)Ljava/util/ArrayList;

    move-result-object v2

    .line 370
    .local v2, "resOps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/AppOpsManager$OpEntry;>;"
    if-nez v2, :cond_25

    .line 371
    monitor-exit p0

    goto :goto_19

    .line 378
    .end local v0    # "pkgOps":Lcom/android/server/AppOpsService$Ops;
    .end local v2    # "resOps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/AppOpsManager$OpEntry;>;"
    :catchall_22
    move-exception v4

    monitor-exit p0
    :try_end_24
    .catchall {:try_start_12 .. :try_end_24} :catchall_22

    throw v4

    .line 373
    .restart local v0    # "pkgOps":Lcom/android/server/AppOpsService$Ops;
    .restart local v2    # "resOps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/AppOpsManager$OpEntry;>;"
    :cond_25
    :try_start_25
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 374
    .local v1, "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/AppOpsManager$PackageOps;>;"
    new-instance v3, Landroid/app/AppOpsManager$PackageOps;

    iget-object v4, v0, Lcom/android/server/AppOpsService$Ops;->packageName:Ljava/lang/String;

    iget v5, v0, Lcom/android/server/AppOpsService$Ops;->uid:I

    invoke-direct {v3, v4, v5, v2}, Landroid/app/AppOpsManager$PackageOps;-><init>(Ljava/lang/String;ILjava/util/List;)V

    .line 376
    .local v3, "resPackage":Landroid/app/AppOpsManager$PackageOps;
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 377
    monitor-exit p0
    :try_end_37
    .catchall {:try_start_25 .. :try_end_37} :catchall_22

    goto :goto_19
.end method

.method public getPackagesForOps([I)Ljava/util/List;
    .registers 15
    .param p1, "ops"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I)",
            "Ljava/util/List",
            "<",
            "Landroid/app/AppOpsManager$PackageOps;",
            ">;"
        }
    .end annotation

    .prologue
    .line 337
    iget-object v8, p0, mContext:Landroid/content/Context;

    const-string v9, "android.permission.GET_APP_OPS_STATS"

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v10

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v11

    const/4 v12, 0x0

    invoke-virtual {v8, v9, v10, v11, v12}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    .line 339
    const/4 v4, 0x0

    .line 340
    .local v4, "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/AppOpsManager$PackageOps;>;"
    monitor-enter p0

    .line 341
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_13
    :try_start_13
    iget-object v8, p0, mUidOps:Landroid/util/SparseArray;

    invoke-virtual {v8}, Landroid/util/SparseArray;->size()I

    move-result v8

    if-ge v0, v8, :cond_57

    .line 342
    iget-object v8, p0, mUidOps:Landroid/util/SparseArray;

    invoke-virtual {v8, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    .line 343
    .local v2, "packages":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/server/AppOpsService$Ops;>;"
    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;
    :try_end_2a
    .catchall {:try_start_13 .. :try_end_2a} :catchall_59

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    move-object v5, v4

    .end local v4    # "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/AppOpsManager$PackageOps;>;"
    .local v5, "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/AppOpsManager$PackageOps;>;"
    :goto_2c
    :try_start_2c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_53

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/AppOpsService$Ops;

    .line 344
    .local v3, "pkgOps":Lcom/android/server/AppOpsService$Ops;
    invoke-direct {p0, v3, p1}, collectOps(Lcom/android/server/AppOpsService$Ops;[I)Ljava/util/ArrayList;

    move-result-object v6

    .line 345
    .local v6, "resOps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/AppOpsManager$OpEntry;>;"
    if-eqz v6, :cond_61

    .line 346
    if-nez v5, :cond_5f

    .line 347
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V
    :try_end_45
    .catchall {:try_start_2c .. :try_end_45} :catchall_5c

    .line 349
    .end local v5    # "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/AppOpsManager$PackageOps;>;"
    .restart local v4    # "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/AppOpsManager$PackageOps;>;"
    :goto_45
    :try_start_45
    new-instance v7, Landroid/app/AppOpsManager$PackageOps;

    iget-object v8, v3, Lcom/android/server/AppOpsService$Ops;->packageName:Ljava/lang/String;

    iget v9, v3, Lcom/android/server/AppOpsService$Ops;->uid:I

    invoke-direct {v7, v8, v9, v6}, Landroid/app/AppOpsManager$PackageOps;-><init>(Ljava/lang/String;ILjava/util/List;)V

    .line 351
    .local v7, "resPackage":Landroid/app/AppOpsManager$PackageOps;
    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .end local v7    # "resPackage":Landroid/app/AppOpsManager$PackageOps;
    :goto_51
    move-object v5, v4

    .line 353
    .end local v4    # "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/AppOpsManager$PackageOps;>;"
    .restart local v5    # "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/AppOpsManager$PackageOps;>;"
    goto :goto_2c

    .line 341
    .end local v3    # "pkgOps":Lcom/android/server/AppOpsService$Ops;
    .end local v6    # "resOps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/AppOpsManager$OpEntry;>;"
    :cond_53
    add-int/lit8 v0, v0, 0x1

    move-object v4, v5

    .end local v5    # "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/AppOpsManager$PackageOps;>;"
    .restart local v4    # "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/AppOpsManager$PackageOps;>;"
    goto :goto_13

    .line 355
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "packages":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/server/AppOpsService$Ops;>;"
    :cond_57
    monitor-exit p0

    .line 356
    return-object v4

    .line 355
    :catchall_59
    move-exception v8

    :goto_5a
    monitor-exit p0
    :try_end_5b
    .catchall {:try_start_45 .. :try_end_5b} :catchall_59

    throw v8

    .end local v4    # "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/AppOpsManager$PackageOps;>;"
    .restart local v1    # "i$":Ljava/util/Iterator;
    .restart local v2    # "packages":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/server/AppOpsService$Ops;>;"
    .restart local v5    # "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/AppOpsManager$PackageOps;>;"
    :catchall_5c
    move-exception v8

    move-object v4, v5

    .end local v5    # "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/AppOpsManager$PackageOps;>;"
    .restart local v4    # "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/AppOpsManager$PackageOps;>;"
    goto :goto_5a

    .end local v4    # "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/AppOpsManager$PackageOps;>;"
    .restart local v3    # "pkgOps":Lcom/android/server/AppOpsService$Ops;
    .restart local v5    # "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/AppOpsManager$PackageOps;>;"
    .restart local v6    # "resOps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/AppOpsManager$OpEntry;>;"
    :cond_5f
    move-object v4, v5

    .end local v5    # "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/AppOpsManager$PackageOps;>;"
    .restart local v4    # "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/AppOpsManager$PackageOps;>;"
    goto :goto_45

    .end local v4    # "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/AppOpsManager$PackageOps;>;"
    .restart local v5    # "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/AppOpsManager$PackageOps;>;"
    :cond_61
    move-object v4, v5

    .end local v5    # "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/AppOpsManager$PackageOps;>;"
    .restart local v4    # "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/AppOpsManager$PackageOps;>;"
    goto :goto_51
.end method

.method public getToken(Landroid/os/IBinder;)Landroid/os/IBinder;
    .registers 4
    .param p1, "clientToken"    # Landroid/os/IBinder;

    .prologue
    .line 584
    monitor-enter p0

    .line 585
    :try_start_1
    iget-object v1, p0, mClients:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/AppOpsService$ClientState;

    .line 586
    .local v0, "cs":Lcom/android/server/AppOpsService$ClientState;
    if-nez v0, :cond_15

    .line 587
    new-instance v0, Lcom/android/server/AppOpsService$ClientState;

    .end local v0    # "cs":Lcom/android/server/AppOpsService$ClientState;
    invoke-direct {v0, p0, p1}, Lcom/android/server/AppOpsService$ClientState;-><init>(Lcom/android/server/AppOpsService;Landroid/os/IBinder;)V

    .line 588
    .restart local v0    # "cs":Lcom/android/server/AppOpsService$ClientState;
    iget-object v1, p0, mClients:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 590
    :cond_15
    monitor-exit p0

    return-object v0

    .line 591
    .end local v0    # "cs":Lcom/android/server/AppOpsService$ClientState;
    :catchall_17
    move-exception v1

    monitor-exit p0
    :try_end_19
    .catchall {:try_start_1 .. :try_end_19} :catchall_17

    throw v1
.end method

.method public isControlAllowed(ILjava/lang/String;)Z
    .registers 5
    .param p1, "code"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    .line 1570
    const/4 v0, 0x1

    .line 1571
    .local v0, "isShow":Z
    iget-object v1, p0, mPolicy:Lcom/android/server/AppOpsPolicy;

    if-eqz v1, :cond_b

    .line 1572
    iget-object v1, p0, mPolicy:Lcom/android/server/AppOpsPolicy;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/AppOpsPolicy;->isControlAllowed(ILjava/lang/String;)Z

    move-result v0

    .line 1574
    :cond_b
    return v0
.end method

.method public noteOperation(IILjava/lang/String;)I
    .registers 14
    .param p1, "code"    # I
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 676
    invoke-direct {p0, p2}, verifyIncomingUid(I)V

    .line 677
    invoke-direct {p0, p1}, verifyIncomingOp(I)V

    .line 678
    monitor-enter p0

    .line 679
    const/4 v7, 0x1

    :try_start_a
    invoke-direct {p0, p2, p3, v7}, getOpsLocked(ILjava/lang/String;Z)Lcom/android/server/AppOpsService$Ops;

    move-result-object v1

    .line 680
    .local v1, "ops":Lcom/android/server/AppOpsService$Ops;
    if-nez v1, :cond_13

    .line 683
    const/4 v5, 0x2

    monitor-exit p0

    .line 727
    :goto_12
    return v5

    .line 685
    :cond_13
    const/4 v7, 0x1

    invoke-direct {p0, v1, p1, v7}, getOpLocked(Lcom/android/server/AppOpsService$Ops;IZ)Lcom/android/server/AppOpsService$Op;

    move-result-object v0

    .line 686
    .local v0, "op":Lcom/android/server/AppOpsService$Op;
    invoke-direct {p0, p2, p1, p3}, isOpRestricted(IILjava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_23

    .line 687
    monitor-exit p0

    goto :goto_12

    .line 726
    .end local v0    # "op":Lcom/android/server/AppOpsService$Op;
    .end local v1    # "ops":Lcom/android/server/AppOpsService$Ops;
    :catchall_20
    move-exception v5

    monitor-exit p0
    :try_end_22
    .catchall {:try_start_a .. :try_end_22} :catchall_20

    throw v5

    .line 689
    .restart local v0    # "op":Lcom/android/server/AppOpsService$Op;
    .restart local v1    # "ops":Lcom/android/server/AppOpsService$Ops;
    :cond_23
    :try_start_23
    iget v5, v0, Lcom/android/server/AppOpsService$Op;->duration:I

    const/4 v7, -0x1

    if-ne v5, v7, :cond_6c

    .line 690
    const-string v5, "AppOps"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Noting op not finished: uid "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " pkg "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " code "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " time="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-wide v8, v0, Lcom/android/server/AppOpsService$Op;->time:J

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " duration="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v0, Lcom/android/server/AppOpsService$Op;->duration:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 693
    :cond_6c
    const/4 v5, 0x0

    iput v5, v0, Lcom/android/server/AppOpsService$Op;->duration:I

    .line 694
    invoke-static {p1}, Landroid/app/AppOpsManager;->opToSwitch(I)I

    move-result v3

    .line 695
    .local v3, "switchCode":I
    if-eq v3, p1, :cond_8d

    const/4 v5, 0x1

    invoke-direct {p0, v1, v3, v5}, getOpLocked(Lcom/android/server/AppOpsService$Ops;IZ)Lcom/android/server/AppOpsService$Op;

    move-result-object v4

    .line 697
    .local v4, "switchOp":Lcom/android/server/AppOpsService$Op;
    :goto_7a
    iget v5, v4, Lcom/android/server/AppOpsService$Op;->mode:I

    if-eqz v5, :cond_8f

    iget v5, v4, Lcom/android/server/AppOpsService$Op;->mode:I

    const/4 v7, 0x4

    if-eq v5, v7, :cond_8f

    .line 703
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iput-wide v6, v0, Lcom/android/server/AppOpsService$Op;->rejectTime:J

    .line 704
    iget v5, v4, Lcom/android/server/AppOpsService$Op;->mode:I

    monitor-exit p0

    goto :goto_12

    .end local v4    # "switchOp":Lcom/android/server/AppOpsService$Op;
    :cond_8d
    move-object v4, v0

    .line 695
    goto :goto_7a

    .line 705
    .restart local v4    # "switchOp":Lcom/android/server/AppOpsService$Op;
    :cond_8f
    iget v5, v4, Lcom/android/server/AppOpsService$Op;->mode:I

    if-nez v5, :cond_a1

    .line 709
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iput-wide v8, v0, Lcom/android/server/AppOpsService$Op;->time:J

    .line 710
    const-wide/16 v8, 0x0

    iput-wide v8, v0, Lcom/android/server/AppOpsService$Op;->rejectTime:J

    .line 711
    monitor-exit p0

    move v5, v6

    goto/16 :goto_12

    .line 713
    :cond_a1
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v5

    iget-object v6, p0, mLooper:Landroid/os/Looper;

    if-ne v5, v6, :cond_e0

    .line 714
    const-string v5, "AppOps"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "noteOperation: This method will deadlock if called from the main thread. (Code: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " uid: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " package: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 721
    iget v5, v4, Lcom/android/server/AppOpsService$Op;->mode:I

    monitor-exit p0

    goto/16 :goto_12

    .line 723
    :cond_e0
    iget v5, v0, Lcom/android/server/AppOpsService$Op;->noteOpCount:I

    add-int/lit8 v5, v5, 0x1

    iput v5, v0, Lcom/android/server/AppOpsService$Op;->noteOpCount:I

    .line 724
    invoke-direct {p0, p1, p2, p3, v4}, askOperationLocked(IILjava/lang/String;Lcom/android/server/AppOpsService$Op;)Lcom/android/server/PermissionDialogReqQueue$PermissionDialogReq;

    move-result-object v2

    .line 726
    .local v2, "req":Lcom/android/server/PermissionDialogReqQueue$PermissionDialogReq;
    monitor-exit p0
    :try_end_eb
    .catchall {:try_start_23 .. :try_end_eb} :catchall_20

    .line 727
    invoke-virtual {v2}, Lcom/android/server/PermissionDialogReqQueue$PermissionDialogReq;->get()I

    move-result v5

    goto/16 :goto_12
.end method

.method public notifyOperation(IILjava/lang/String;IZ)V
    .registers 15
    .param p1, "code"    # I
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "mode"    # I
    .param p5, "remember"    # Z

    .prologue
    .line 1511
    invoke-direct {p0, p2}, verifyIncomingUid(I)V

    .line 1512
    invoke-direct {p0, p1}, verifyIncomingOp(I)V

    .line 1513
    const/4 v3, 0x0

    .line 1514
    .local v3, "repCbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    invoke-static {p1}, Landroid/app/AppOpsManager;->opToSwitch(I)I

    move-result v5

    .line 1515
    .local v5, "switchCode":I
    monitor-enter p0

    .line 1516
    :try_start_c
    invoke-direct {p0, p1, p2, p3, p4}, recordOperationLocked(IILjava/lang/String;I)V

    .line 1517
    const/4 v6, 0x1

    invoke-direct {p0, v5, p2, p3, v6}, getOpLocked(IILjava/lang/String;Z)Lcom/android/server/AppOpsService$Op;

    move-result-object v2

    .line 1518
    .local v2, "op":Lcom/android/server/AppOpsService$Op;
    if-eqz v2, :cond_6d

    .line 1520
    iget-object v6, v2, Lcom/android/server/AppOpsService$Op;->dialogReqQueue:Lcom/android/server/PermissionDialogReqQueue;

    invoke-virtual {v6}, Lcom/android/server/PermissionDialogReqQueue;->getDialog()Lcom/android/server/PermissionDialog;

    move-result-object v6

    if-eqz v6, :cond_29

    .line 1521
    iget-object v6, v2, Lcom/android/server/AppOpsService$Op;->dialogReqQueue:Lcom/android/server/PermissionDialogReqQueue;

    invoke-virtual {v6, p4}, Lcom/android/server/PermissionDialogReqQueue;->notifyAll(I)V

    .line 1522
    iget-object v6, v2, Lcom/android/server/AppOpsService$Op;->dialogReqQueue:Lcom/android/server/PermissionDialogReqQueue;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/android/server/PermissionDialogReqQueue;->setDialog(Lcom/android/server/PermissionDialog;)V

    .line 1524
    :cond_29
    if-eqz p5, :cond_6d

    iget v6, v2, Lcom/android/server/AppOpsService$Op;->mode:I

    if-eq v6, p4, :cond_6d

    .line 1525
    iput p4, v2, Lcom/android/server/AppOpsService$Op;->mode:I

    .line 1526
    iget-object v6, p0, mOpModeWatchers:Landroid/util/SparseArray;

    invoke-virtual {v6, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 1527
    .local v0, "cbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    if-eqz v0, :cond_46

    .line 1528
    if-nez v3, :cond_43

    .line 1529
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .end local v3    # "repCbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    .local v4, "repCbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    move-object v3, v4

    .line 1531
    .end local v4    # "repCbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    .restart local v3    # "repCbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    :cond_43
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z
    :try_end_46
    .catchall {:try_start_c .. :try_end_46} :catchall_85

    :cond_46
    move-object v4, v3

    .line 1533
    .end local v3    # "repCbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    .restart local v4    # "repCbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    :try_start_47
    iget-object v6, p0, mPackageModeWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v6, p3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "cbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    check-cast v0, Ljava/util/ArrayList;

    .line 1534
    .restart local v0    # "cbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    if-eqz v0, :cond_90

    .line 1535
    if-nez v4, :cond_8e

    .line 1536
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V
    :try_end_58
    .catchall {:try_start_47 .. :try_end_58} :catchall_8b

    .line 1538
    .end local v4    # "repCbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    .restart local v3    # "repCbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    :goto_58
    :try_start_58
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1540
    :goto_5b
    iget v6, v2, Lcom/android/server/AppOpsService$Op;->op:I

    iget v7, v2, Lcom/android/server/AppOpsService$Op;->uid:I

    iget-object v8, v2, Lcom/android/server/AppOpsService$Op;->packageName:Ljava/lang/String;

    invoke-direct {p0, v6, v7, v8}, getDefaultMode(IILjava/lang/String;)I

    move-result v6

    if-ne p4, v6, :cond_6a

    .line 1543
    invoke-direct {p0, v2, p2, p3}, pruneOp(Lcom/android/server/AppOpsService$Op;ILjava/lang/String;)V

    .line 1545
    :cond_6a
    invoke-direct {p0}, scheduleWriteNowLocked()V

    .line 1548
    .end local v0    # "cbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    :cond_6d
    monitor-exit p0
    :try_end_6e
    .catchall {:try_start_58 .. :try_end_6e} :catchall_85

    .line 1549
    if-eqz v3, :cond_88

    .line 1550
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_71
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v1, v6, :cond_88

    .line 1552
    :try_start_77
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/AppOpsService$Callback;

    iget-object v6, v6, Lcom/android/server/AppOpsService$Callback;->mCallback:Lcom/android/internal/app/IAppOpsCallback;

    invoke-interface {v6, v5, p3}, Lcom/android/internal/app/IAppOpsCallback;->opChanged(ILjava/lang/String;)V
    :try_end_82
    .catch Landroid/os/RemoteException; {:try_start_77 .. :try_end_82} :catch_89

    .line 1550
    :goto_82
    add-int/lit8 v1, v1, 0x1

    goto :goto_71

    .line 1548
    .end local v1    # "i":I
    .end local v2    # "op":Lcom/android/server/AppOpsService$Op;
    :catchall_85
    move-exception v6

    :goto_86
    :try_start_86
    monitor-exit p0
    :try_end_87
    .catchall {:try_start_86 .. :try_end_87} :catchall_85

    throw v6

    .line 1557
    .restart local v2    # "op":Lcom/android/server/AppOpsService$Op;
    :cond_88
    return-void

    .line 1553
    .restart local v1    # "i":I
    :catch_89
    move-exception v6

    goto :goto_82

    .line 1548
    .end local v1    # "i":I
    .end local v3    # "repCbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    .restart local v4    # "repCbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    :catchall_8b
    move-exception v6

    move-object v3, v4

    .end local v4    # "repCbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    .restart local v3    # "repCbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    goto :goto_86

    .end local v3    # "repCbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    .restart local v0    # "cbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    .restart local v4    # "repCbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    :cond_8e
    move-object v3, v4

    .end local v4    # "repCbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    .restart local v3    # "repCbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    goto :goto_58

    .end local v3    # "repCbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    .restart local v4    # "repCbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    :cond_90
    move-object v3, v4

    .end local v4    # "repCbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    .restart local v3    # "repCbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    goto :goto_5b
.end method

.method public packageRemoved(ILjava/lang/String;)V
    .registers 5
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    .line 275
    monitor-enter p0

    .line 276
    :try_start_1
    iget-object v1, p0, mUidOps:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 277
    .local v0, "pkgs":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/server/AppOpsService$Ops;>;"
    if-eqz v0, :cond_1f

    .line 278
    invoke-virtual {v0, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1f

    .line 279
    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v1

    if-gtz v1, :cond_1c

    .line 280
    iget-object v1, p0, mUidOps:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 282
    :cond_1c
    invoke-direct {p0}, scheduleWriteLocked()V

    .line 285
    :cond_1f
    monitor-exit p0

    .line 286
    return-void

    .line 285
    .end local v0    # "pkgs":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/server/AppOpsService$Ops;>;"
    :catchall_21
    move-exception v1

    monitor-exit p0
    :try_end_23
    .catchall {:try_start_1 .. :try_end_23} :catchall_21

    throw v1
.end method

.method public publish(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 237
    iput-object p1, p0, mContext:Landroid/content/Context;

    .line 238
    invoke-direct {p0}, readPolicy()V

    .line 239
    const-string v0, "appops"

    invoke-virtual {p0}, asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 240
    return-void
.end method

.method readPackage(Lorg/xmlpull/v1/XmlPullParser;)V
    .registers 10
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;,
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x3

    .line 1043
    const/4 v4, 0x0

    const-string v5, "n"

    invoke-interface {p1, v4, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1044
    .local v1, "pkgName":Ljava/lang/String;
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    .line 1047
    .local v0, "outerDepth":I
    :cond_c
    :goto_c
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    .local v3, "type":I
    const/4 v4, 0x1

    if-eq v3, v4, :cond_51

    if-ne v3, v7, :cond_1b

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v4

    if-le v4, v0, :cond_51

    .line 1048
    :cond_1b
    if-eq v3, v7, :cond_c

    const/4 v4, 0x4

    if-eq v3, v4, :cond_c

    .line 1052
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 1053
    .local v2, "tagName":Ljava/lang/String;
    const-string/jumbo v4, "uid"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_31

    .line 1054
    invoke-virtual {p0, p1, v1}, readUid(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    goto :goto_c

    .line 1056
    :cond_31
    const-string v4, "AppOps"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown element under <pkg>: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1058
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_c

    .line 1061
    .end local v2    # "tagName":Ljava/lang/String;
    :cond_51
    return-void
.end method

.method readState()V
    .registers 14

    .prologue
    const/4 v12, 0x3

    const/4 v9, 0x2

    const/4 v11, 0x1

    .line 976
    iget-object v8, p0, mFile:Landroid/util/AtomicFile;

    monitor-enter v8

    .line 977
    :try_start_6
    monitor-enter p0
    :try_end_7
    .catchall {:try_start_6 .. :try_end_7} :catchall_76

    .line 980
    :try_start_7
    iget-object v7, p0, mFile:Landroid/util/AtomicFile;

    invoke-virtual {v7}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;
    :try_end_c
    .catch Ljava/io/FileNotFoundException; {:try_start_7 .. :try_end_c} :catch_4e
    .catchall {:try_start_7 .. :try_end_c} :catchall_1a3

    move-result-object v3

    .line 985
    .local v3, "stream":Ljava/io/FileInputStream;
    const/4 v4, 0x0

    .line 987
    .local v4, "success":Z
    :try_start_e
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v2

    .line 988
    .local v2, "parser":Lorg/xmlpull/v1/XmlPullParser;
    const/4 v7, 0x0

    invoke-interface {v2, v3, v7}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 991
    :cond_16
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v6

    .local v6, "type":I
    if-eq v6, v9, :cond_1e

    if-ne v6, v11, :cond_16

    .line 995
    :cond_1e
    if-eq v6, v9, :cond_79

    .line 996
    new-instance v7, Ljava/lang/IllegalStateException;

    const-string v9, "no start tag found"

    invoke-direct {v7, v9}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v7
    :try_end_28
    .catch Ljava/lang/IllegalStateException; {:try_start_e .. :try_end_28} :catch_28
    .catch Ljava/lang/NullPointerException; {:try_start_e .. :try_end_28} :catch_a1
    .catch Ljava/lang/NumberFormatException; {:try_start_e .. :try_end_28} :catch_e7
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_e .. :try_end_28} :catch_11f
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_28} :catch_147
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_e .. :try_end_28} :catch_16f
    .catchall {:try_start_e .. :try_end_28} :catchall_197

    .line 1016
    .end local v2    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v6    # "type":I
    :catch_28
    move-exception v0

    .line 1017
    .local v0, "e":Ljava/lang/IllegalStateException;
    :try_start_29
    const-string v7, "AppOps"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Failed parsing "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_41
    .catchall {:try_start_29 .. :try_end_41} :catchall_197

    .line 1029
    if-nez v4, :cond_48

    .line 1030
    :try_start_43
    iget-object v7, p0, mUidOps:Landroid/util/SparseArray;

    invoke-virtual {v7}, Landroid/util/SparseArray;->clear()V
    :try_end_48
    .catchall {:try_start_43 .. :try_end_48} :catchall_1a3

    .line 1033
    :cond_48
    :try_start_48
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_4b
    .catch Ljava/io/IOException; {:try_start_48 .. :try_end_4b} :catch_1a6
    .catchall {:try_start_48 .. :try_end_4b} :catchall_1a3

    .line 1037
    .end local v0    # "e":Ljava/lang/IllegalStateException;
    :goto_4b
    :try_start_4b
    monitor-exit p0
    :try_end_4c
    .catchall {:try_start_4b .. :try_end_4c} :catchall_1a3

    .line 1038
    :try_start_4c
    monitor-exit v8
    :try_end_4d
    .catchall {:try_start_4c .. :try_end_4d} :catchall_76

    .line 1039
    .end local v3    # "stream":Ljava/io/FileInputStream;
    .end local v4    # "success":Z
    :goto_4d
    return-void

    .line 981
    :catch_4e
    move-exception v0

    .line 982
    .local v0, "e":Ljava/io/FileNotFoundException;
    :try_start_4f
    const-string v7, "AppOps"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "No existing app ops "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, mFile:Landroid/util/AtomicFile;

    invoke-virtual {v10}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "; starting empty"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 983
    monitor-exit p0
    :try_end_74
    .catchall {:try_start_4f .. :try_end_74} :catchall_1a3

    :try_start_74
    monitor-exit v8

    goto :goto_4d

    .line 1038
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :catchall_76
    move-exception v7

    monitor-exit v8
    :try_end_78
    .catchall {:try_start_74 .. :try_end_78} :catchall_76

    throw v7

    .line 999
    .restart local v2    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v3    # "stream":Ljava/io/FileInputStream;
    .restart local v4    # "success":Z
    .restart local v6    # "type":I
    :cond_79
    :try_start_79
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v1

    .line 1001
    .local v1, "outerDepth":I
    :cond_7d
    :goto_7d
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v6

    if-eq v6, v11, :cond_10f

    if-ne v6, v12, :cond_8b

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v7

    if-le v7, v1, :cond_10f

    .line 1002
    :cond_8b
    if-eq v6, v12, :cond_7d

    const/4 v7, 0x4

    if-eq v6, v7, :cond_7d

    .line 1006
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    .line 1007
    .local v5, "tagName":Ljava/lang/String;
    const-string/jumbo v7, "pkg"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_c7

    .line 1008
    invoke-virtual {p0, v2}, readPackage(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_a0
    .catch Ljava/lang/IllegalStateException; {:try_start_79 .. :try_end_a0} :catch_28
    .catch Ljava/lang/NullPointerException; {:try_start_79 .. :try_end_a0} :catch_a1
    .catch Ljava/lang/NumberFormatException; {:try_start_79 .. :try_end_a0} :catch_e7
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_79 .. :try_end_a0} :catch_11f
    .catch Ljava/io/IOException; {:try_start_79 .. :try_end_a0} :catch_147
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_79 .. :try_end_a0} :catch_16f
    .catchall {:try_start_79 .. :try_end_a0} :catchall_197

    goto :goto_7d

    .line 1018
    .end local v1    # "outerDepth":I
    .end local v2    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v5    # "tagName":Ljava/lang/String;
    .end local v6    # "type":I
    :catch_a1
    move-exception v0

    .line 1019
    .local v0, "e":Ljava/lang/NullPointerException;
    :try_start_a2
    const-string v7, "AppOps"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Failed parsing "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_ba
    .catchall {:try_start_a2 .. :try_end_ba} :catchall_197

    .line 1029
    if-nez v4, :cond_c1

    .line 1030
    :try_start_bc
    iget-object v7, p0, mUidOps:Landroid/util/SparseArray;

    invoke-virtual {v7}, Landroid/util/SparseArray;->clear()V
    :try_end_c1
    .catchall {:try_start_bc .. :try_end_c1} :catchall_1a3

    .line 1033
    :cond_c1
    :try_start_c1
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_c4
    .catch Ljava/io/IOException; {:try_start_c1 .. :try_end_c4} :catch_c5
    .catchall {:try_start_c1 .. :try_end_c4} :catchall_1a3

    goto :goto_4b

    .line 1034
    :catch_c5
    move-exception v7

    goto :goto_4b

    .line 1010
    .end local v0    # "e":Ljava/lang/NullPointerException;
    .restart local v1    # "outerDepth":I
    .restart local v2    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v5    # "tagName":Ljava/lang/String;
    .restart local v6    # "type":I
    :cond_c7
    :try_start_c7
    const-string v7, "AppOps"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Unknown element under <app-ops>: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1012
    invoke-static {v2}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_e6
    .catch Ljava/lang/IllegalStateException; {:try_start_c7 .. :try_end_e6} :catch_28
    .catch Ljava/lang/NullPointerException; {:try_start_c7 .. :try_end_e6} :catch_a1
    .catch Ljava/lang/NumberFormatException; {:try_start_c7 .. :try_end_e6} :catch_e7
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_c7 .. :try_end_e6} :catch_11f
    .catch Ljava/io/IOException; {:try_start_c7 .. :try_end_e6} :catch_147
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_c7 .. :try_end_e6} :catch_16f
    .catchall {:try_start_c7 .. :try_end_e6} :catchall_197

    goto :goto_7d

    .line 1020
    .end local v1    # "outerDepth":I
    .end local v2    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v5    # "tagName":Ljava/lang/String;
    .end local v6    # "type":I
    :catch_e7
    move-exception v0

    .line 1021
    .local v0, "e":Ljava/lang/NumberFormatException;
    :try_start_e8
    const-string v7, "AppOps"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Failed parsing "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_100
    .catchall {:try_start_e8 .. :try_end_100} :catchall_197

    .line 1029
    if-nez v4, :cond_107

    .line 1030
    :try_start_102
    iget-object v7, p0, mUidOps:Landroid/util/SparseArray;

    invoke-virtual {v7}, Landroid/util/SparseArray;->clear()V
    :try_end_107
    .catchall {:try_start_102 .. :try_end_107} :catchall_1a3

    .line 1033
    :cond_107
    :try_start_107
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_10a
    .catch Ljava/io/IOException; {:try_start_107 .. :try_end_10a} :catch_10c
    .catchall {:try_start_107 .. :try_end_10a} :catchall_1a3

    goto/16 :goto_4b

    .line 1034
    :catch_10c
    move-exception v7

    goto/16 :goto_4b

    .line 1015
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    .restart local v1    # "outerDepth":I
    .restart local v2    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v6    # "type":I
    :cond_10f
    const/4 v4, 0x1

    .line 1029
    if-nez v4, :cond_117

    .line 1030
    :try_start_112
    iget-object v7, p0, mUidOps:Landroid/util/SparseArray;

    invoke-virtual {v7}, Landroid/util/SparseArray;->clear()V
    :try_end_117
    .catchall {:try_start_112 .. :try_end_117} :catchall_1a3

    .line 1033
    :cond_117
    :try_start_117
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_11a
    .catch Ljava/io/IOException; {:try_start_117 .. :try_end_11a} :catch_11c
    .catchall {:try_start_117 .. :try_end_11a} :catchall_1a3

    goto/16 :goto_4b

    .line 1034
    :catch_11c
    move-exception v7

    goto/16 :goto_4b

    .line 1022
    .end local v1    # "outerDepth":I
    .end local v2    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v6    # "type":I
    :catch_11f
    move-exception v0

    .line 1023
    .local v0, "e":Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_120
    const-string v7, "AppOps"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Failed parsing "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_138
    .catchall {:try_start_120 .. :try_end_138} :catchall_197

    .line 1029
    if-nez v4, :cond_13f

    .line 1030
    :try_start_13a
    iget-object v7, p0, mUidOps:Landroid/util/SparseArray;

    invoke-virtual {v7}, Landroid/util/SparseArray;->clear()V
    :try_end_13f
    .catchall {:try_start_13a .. :try_end_13f} :catchall_1a3

    .line 1033
    :cond_13f
    :try_start_13f
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_142
    .catch Ljava/io/IOException; {:try_start_13f .. :try_end_142} :catch_144
    .catchall {:try_start_13f .. :try_end_142} :catchall_1a3

    goto/16 :goto_4b

    .line 1034
    :catch_144
    move-exception v7

    goto/16 :goto_4b

    .line 1024
    .end local v0    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :catch_147
    move-exception v0

    .line 1025
    .local v0, "e":Ljava/io/IOException;
    :try_start_148
    const-string v7, "AppOps"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Failed parsing "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_160
    .catchall {:try_start_148 .. :try_end_160} :catchall_197

    .line 1029
    if-nez v4, :cond_167

    .line 1030
    :try_start_162
    iget-object v7, p0, mUidOps:Landroid/util/SparseArray;

    invoke-virtual {v7}, Landroid/util/SparseArray;->clear()V
    :try_end_167
    .catchall {:try_start_162 .. :try_end_167} :catchall_1a3

    .line 1033
    :cond_167
    :try_start_167
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_16a
    .catch Ljava/io/IOException; {:try_start_167 .. :try_end_16a} :catch_16c
    .catchall {:try_start_167 .. :try_end_16a} :catchall_1a3

    goto/16 :goto_4b

    .line 1034
    :catch_16c
    move-exception v7

    goto/16 :goto_4b

    .line 1026
    .end local v0    # "e":Ljava/io/IOException;
    :catch_16f
    move-exception v0

    .line 1027
    .local v0, "e":Ljava/lang/IndexOutOfBoundsException;
    :try_start_170
    const-string v7, "AppOps"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Failed parsing "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_188
    .catchall {:try_start_170 .. :try_end_188} :catchall_197

    .line 1029
    if-nez v4, :cond_18f

    .line 1030
    :try_start_18a
    iget-object v7, p0, mUidOps:Landroid/util/SparseArray;

    invoke-virtual {v7}, Landroid/util/SparseArray;->clear()V
    :try_end_18f
    .catchall {:try_start_18a .. :try_end_18f} :catchall_1a3

    .line 1033
    :cond_18f
    :try_start_18f
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_192
    .catch Ljava/io/IOException; {:try_start_18f .. :try_end_192} :catch_194
    .catchall {:try_start_18f .. :try_end_192} :catchall_1a3

    goto/16 :goto_4b

    .line 1034
    :catch_194
    move-exception v7

    goto/16 :goto_4b

    .line 1029
    .end local v0    # "e":Ljava/lang/IndexOutOfBoundsException;
    :catchall_197
    move-exception v7

    if-nez v4, :cond_19f

    .line 1030
    :try_start_19a
    iget-object v9, p0, mUidOps:Landroid/util/SparseArray;

    invoke-virtual {v9}, Landroid/util/SparseArray;->clear()V
    :try_end_19f
    .catchall {:try_start_19a .. :try_end_19f} :catchall_1a3

    .line 1033
    :cond_19f
    :try_start_19f
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_1a2
    .catch Ljava/io/IOException; {:try_start_19f .. :try_end_1a2} :catch_1a9
    .catchall {:try_start_19f .. :try_end_1a2} :catchall_1a3

    .line 1035
    :goto_1a2
    :try_start_1a2
    throw v7

    .line 1037
    .end local v3    # "stream":Ljava/io/FileInputStream;
    .end local v4    # "success":Z
    :catchall_1a3
    move-exception v7

    monitor-exit p0
    :try_end_1a5
    .catchall {:try_start_1a2 .. :try_end_1a5} :catchall_1a3

    :try_start_1a5
    throw v7
    :try_end_1a6
    .catchall {:try_start_1a5 .. :try_end_1a6} :catchall_76

    .line 1034
    .local v0, "e":Ljava/lang/IllegalStateException;
    .restart local v3    # "stream":Ljava/io/FileInputStream;
    .restart local v4    # "success":Z
    :catch_1a6
    move-exception v7

    goto/16 :goto_4b

    .end local v0    # "e":Ljava/lang/IllegalStateException;
    :catch_1a9
    move-exception v9

    goto :goto_1a2
.end method

.method readUid(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V
    .registers 29
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "pkgName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;,
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1065
    const/16 v23, 0x0

    const-string v24, "n"

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v22

    .line 1066
    .local v22, "uid":I
    const/16 v23, 0x0

    const-string/jumbo v24, "p"

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 1067
    .local v11, "isPrivilegedString":Ljava/lang/String;
    const/4 v9, 0x0

    .line 1068
    .local v9, "isPrivileged":Z
    const/4 v10, 0x1

    .line 1069
    .local v10, "isPrivilegedCredible":Z
    if-nez v11, :cond_171

    .line 1071
    :try_start_25
    invoke-static {}, Landroid/app/ActivityThread;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v16

    .line 1072
    .local v16, "packageManager":Landroid/content/pm/IPackageManager;
    if-eqz v16, :cond_15f

    .line 1073
    invoke-static {}, Landroid/app/ActivityThread;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v23

    const/16 v24, 0x0

    invoke-static/range {v22 .. v22}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v25

    move-object/from16 v0, v23

    move-object/from16 v1, p2

    move/from16 v2, v24

    move/from16 v3, v25

    invoke-interface {v0, v1, v2, v3}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    .line 1075
    .local v4, "appInfo":Landroid/content/pm/ApplicationInfo;
    if-eqz v4, :cond_4e

    .line 1076
    iget v0, v4, Landroid/content/pm/ApplicationInfo;->flags:I

    move/from16 v23, v0
    :try_end_47
    .catch Landroid/os/RemoteException; {:try_start_25 .. :try_end_47} :catch_162

    const/high16 v24, 0x40000000    # 2.0f

    and-int v23, v23, v24

    if-eqz v23, :cond_15c

    const/4 v9, 0x1

    .line 1090
    .end local v4    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v16    # "packageManager":Landroid/content/pm/IPackageManager;
    :cond_4e
    :goto_4e
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v15

    .line 1093
    .local v15, "outerDepth":I
    :cond_52
    :goto_52
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v21

    .local v21, "type":I
    const/16 v23, 0x1

    move/from16 v0, v21

    move/from16 v1, v23

    if-eq v0, v1, :cond_1bb

    const/16 v23, 0x3

    move/from16 v0, v21

    move/from16 v1, v23

    if-ne v0, v1, :cond_6e

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v23

    move/from16 v0, v23

    if-le v0, v15, :cond_1bb

    .line 1094
    :cond_6e
    const/16 v23, 0x3

    move/from16 v0, v21

    move/from16 v1, v23

    if-eq v0, v1, :cond_52

    const/16 v23, 0x4

    move/from16 v0, v21

    move/from16 v1, v23

    if-eq v0, v1, :cond_52

    .line 1098
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v19

    .line 1099
    .local v19, "tagName":Ljava/lang/String;
    const-string v23, "op"

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_19a

    .line 1100
    const/16 v23, 0x0

    const-string v24, "n"

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 1102
    .local v5, "code":I
    new-instance v13, Lcom/android/server/AppOpsService$Op;

    const/16 v23, 0x2

    move/from16 v0, v22

    move-object/from16 v1, p2

    move/from16 v2, v23

    invoke-direct {v13, v0, v1, v5, v2}, Lcom/android/server/AppOpsService$Op;-><init>(ILjava/lang/String;II)V

    .line 1103
    .local v13, "op":Lcom/android/server/AppOpsService$Op;
    const/16 v23, 0x0

    const-string v24, "m"

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 1104
    .local v12, "mode":Ljava/lang/String;
    if-eqz v12, :cond_177

    .line 1105
    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v23

    move/from16 v0, v23

    iput v0, v13, Lcom/android/server/AppOpsService$Op;->mode:I

    .line 1116
    :goto_c5
    const/16 v23, 0x0

    const-string/jumbo v24, "t"

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 1117
    .local v20, "time":Ljava/lang/String;
    if-eqz v20, :cond_de

    .line 1118
    invoke-static/range {v20 .. v20}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v24

    move-wide/from16 v0, v24

    iput-wide v0, v13, Lcom/android/server/AppOpsService$Op;->time:J

    .line 1120
    :cond_de
    const/16 v23, 0x0

    const-string/jumbo v24, "r"

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 1121
    if-eqz v20, :cond_f7

    .line 1122
    invoke-static/range {v20 .. v20}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v24

    move-wide/from16 v0, v24

    iput-wide v0, v13, Lcom/android/server/AppOpsService$Op;->rejectTime:J

    .line 1124
    :cond_f7
    const/16 v23, 0x0

    const-string v24, "d"

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1125
    .local v7, "dur":Ljava/lang/String;
    if-eqz v7, :cond_10f

    .line 1126
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v23

    move/from16 v0, v23

    iput v0, v13, Lcom/android/server/AppOpsService$Op;->duration:I

    .line 1128
    :cond_10f
    move-object/from16 v0, p0

    iget-object v0, v0, mUidOps:Landroid/util/SparseArray;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/util/HashMap;

    .line 1129
    .local v17, "pkgOps":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/server/AppOpsService$Ops;>;"
    if-nez v17, :cond_135

    .line 1130
    new-instance v17, Ljava/util/HashMap;

    .end local v17    # "pkgOps":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/server/AppOpsService$Ops;>;"
    invoke-direct/range {v17 .. v17}, Ljava/util/HashMap;-><init>()V

    .line 1131
    .restart local v17    # "pkgOps":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/server/AppOpsService$Ops;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, mUidOps:Landroid/util/SparseArray;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move/from16 v1, v22

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1133
    :cond_135
    move-object/from16 v0, v17

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/server/AppOpsService$Ops;

    .line 1134
    .local v14, "ops":Lcom/android/server/AppOpsService$Ops;
    if-nez v14, :cond_151

    .line 1135
    new-instance v14, Lcom/android/server/AppOpsService$Ops;

    .end local v14    # "ops":Lcom/android/server/AppOpsService$Ops;
    move-object/from16 v0, p2

    move/from16 v1, v22

    invoke-direct {v14, v0, v1, v9, v10}, Lcom/android/server/AppOpsService$Ops;-><init>(Ljava/lang/String;IZZ)V

    .line 1136
    .restart local v14    # "ops":Lcom/android/server/AppOpsService$Ops;
    move-object/from16 v0, v17

    move-object/from16 v1, p2

    invoke-virtual {v0, v1, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1138
    :cond_151
    iget v0, v13, Lcom/android/server/AppOpsService$Op;->op:I

    move/from16 v23, v0

    move/from16 v0, v23

    invoke-virtual {v14, v0, v13}, Lcom/android/server/AppOpsService$Ops;->put(ILjava/lang/Object;)V

    goto/16 :goto_52

    .line 1076
    .end local v5    # "code":I
    .end local v7    # "dur":Ljava/lang/String;
    .end local v12    # "mode":Ljava/lang/String;
    .end local v13    # "op":Lcom/android/server/AppOpsService$Op;
    .end local v14    # "ops":Lcom/android/server/AppOpsService$Ops;
    .end local v15    # "outerDepth":I
    .end local v17    # "pkgOps":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/server/AppOpsService$Ops;>;"
    .end local v19    # "tagName":Ljava/lang/String;
    .end local v20    # "time":Ljava/lang/String;
    .end local v21    # "type":I
    .restart local v4    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .restart local v16    # "packageManager":Landroid/content/pm/IPackageManager;
    :cond_15c
    const/4 v9, 0x0

    goto/16 :goto_4e

    .line 1081
    .end local v4    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :cond_15f
    const/4 v10, 0x0

    goto/16 :goto_4e

    .line 1083
    .end local v16    # "packageManager":Landroid/content/pm/IPackageManager;
    :catch_162
    move-exception v8

    .line 1084
    .local v8, "e":Landroid/os/RemoteException;
    const-string v23, "AppOps"

    const-string v24, "Could not contact PackageManager"

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-static {v0, v1, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1085
    const/4 v10, 0x0

    .line 1086
    goto/16 :goto_4e

    .line 1088
    .end local v8    # "e":Landroid/os/RemoteException;
    :cond_171
    invoke-static {v11}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v9

    goto/16 :goto_4e

    .line 1107
    .restart local v5    # "code":I
    .restart local v12    # "mode":Ljava/lang/String;
    .restart local v13    # "op":Lcom/android/server/AppOpsService$Op;
    .restart local v15    # "outerDepth":I
    .restart local v19    # "tagName":Ljava/lang/String;
    .restart local v21    # "type":I
    :cond_177
    const/16 v23, 0x0

    const-string v24, "dm"

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 1109
    .local v18, "sDefualtMode":Ljava/lang/String;
    if-eqz v18, :cond_18f

    .line 1110
    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 1114
    .local v6, "defaultMode":I
    :goto_18b
    iput v6, v13, Lcom/android/server/AppOpsService$Op;->mode:I

    goto/16 :goto_c5

    .line 1112
    .end local v6    # "defaultMode":I
    :cond_18f
    move-object/from16 v0, p0

    move/from16 v1, v22

    move-object/from16 v2, p2

    invoke-direct {v0, v5, v1, v2}, getDefaultMode(IILjava/lang/String;)I

    move-result v6

    .restart local v6    # "defaultMode":I
    goto :goto_18b

    .line 1140
    .end local v5    # "code":I
    .end local v6    # "defaultMode":I
    .end local v12    # "mode":Ljava/lang/String;
    .end local v13    # "op":Lcom/android/server/AppOpsService$Op;
    .end local v18    # "sDefualtMode":Ljava/lang/String;
    :cond_19a
    const-string v23, "AppOps"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "Unknown element under <pkg>: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1142
    invoke-static/range {p1 .. p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_52

    .line 1145
    .end local v19    # "tagName":Ljava/lang/String;
    :cond_1bb
    return-void
.end method

.method public removeUser(I)V
    .registers 3
    .param p1, "userHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1384
    const-string/jumbo v0, "removeUser"

    invoke-direct {p0, v0}, checkSystemUid(Ljava/lang/String;)V

    .line 1385
    iget-object v0, p0, mOpRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 1386
    return-void
.end method

.method public resetAllModes()V
    .registers 27

    .prologue
    .line 469
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    .line 470
    .local v5, "callingUid":I
    move-object/from16 v0, p0

    iget-object v0, v0, mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    const-string v22, "android.permission.UPDATE_APP_OPS_STATS"

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v23

    const/16 v24, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move/from16 v2, v23

    move-object/from16 v3, v24

    invoke-virtual {v0, v1, v2, v5, v3}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    .line 472
    const/4 v4, 0x0

    .line 473
    .local v4, "callbacks":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/android/server/AppOpsService$Callback;Ljava/util/ArrayList<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;>;>;"
    monitor-enter p0

    .line 474
    const/4 v7, 0x0

    .line 475
    .local v7, "changed":Z
    :try_start_20
    move-object/from16 v0, p0

    iget-object v0, v0, mUidOps:Landroid/util/SparseArray;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/util/SparseArray;->size()I

    move-result v21

    add-int/lit8 v12, v21, -0x1

    .local v12, "i":I
    :goto_2c
    if-ltz v12, :cond_134

    .line 476
    move-object/from16 v0, p0

    iget-object v0, v0, mUidOps:Landroid/util/SparseArray;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v12}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/util/HashMap;

    .line 477
    .local v17, "packages":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/server/AppOpsService$Ops;>;"
    invoke-static {v5}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v21

    move-object/from16 v0, p0

    iget-object v0, v0, mUidOps:Landroid/util/SparseArray;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v12}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v22

    invoke-static/range {v22 .. v22}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v22

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_59

    .line 475
    :cond_56
    :goto_56
    add-int/lit8 v12, v12, -0x1

    goto :goto_2c

    .line 481
    :cond_59
    invoke-virtual/range {v17 .. v17}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v21

    invoke-interface/range {v21 .. v21}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .line 482
    .local v14, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/AppOpsService$Ops;>;>;"
    :cond_61
    :goto_61
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_121

    .line 483
    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/Map$Entry;

    .line 484
    .local v11, "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/AppOpsService$Ops;>;"
    invoke-interface {v11}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/String;

    .line 485
    .local v16, "packageName":Ljava/lang/String;
    invoke-interface {v11}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/android/server/AppOpsService$Ops;

    .line 486
    .local v18, "pkgOps":Lcom/android/server/AppOpsService$Ops;
    invoke-virtual/range {v18 .. v18}, Lcom/android/server/AppOpsService$Ops;->size()I

    move-result v21

    add-int/lit8 v15, v21, -0x1

    .local v15, "j":I
    :goto_7f
    if-ltz v15, :cond_113

    .line 487
    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Lcom/android/server/AppOpsService$Ops;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/AppOpsService$Op;

    .line 488
    .local v8, "curOp":Lcom/android/server/AppOpsService$Op;
    iget v0, v8, Lcom/android/server/AppOpsService$Op;->op:I

    move/from16 v21, v0

    iget v0, v8, Lcom/android/server/AppOpsService$Op;->uid:I

    move/from16 v22, v0

    iget-object v0, v8, Lcom/android/server/AppOpsService$Op;->packageName:Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    move/from16 v1, v21

    move/from16 v2, v22

    move-object/from16 v3, v23

    invoke-direct {v0, v1, v2, v3}, getDefaultMode(IILjava/lang/String;)I

    move-result v9

    .line 490
    .local v9, "defaultMode":I
    iget v0, v8, Lcom/android/server/AppOpsService$Op;->op:I

    move/from16 v21, v0

    invoke-static/range {v21 .. v21}, Landroid/app/AppOpsManager;->opAllowsReset(I)Z

    move-result v21

    if-eqz v21, :cond_10f

    iget v0, v8, Lcom/android/server/AppOpsService$Op;->mode:I

    move/from16 v21, v0

    move/from16 v0, v21

    if-eq v0, v9, :cond_10f

    .line 492
    iput v9, v8, Lcom/android/server/AppOpsService$Op;->mode:I

    .line 493
    const/4 v7, 0x1

    .line 494
    iget v0, v8, Lcom/android/server/AppOpsService$Op;->op:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, mOpModeWatchers:Landroid/util/SparseArray;

    move-object/from16 v21, v0

    iget v0, v8, Lcom/android/server/AppOpsService$Op;->op:I

    move/from16 v23, v0

    move-object/from16 v0, v21

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/util/ArrayList;

    move-object/from16 v0, v16

    move/from16 v1, v22

    move-object/from16 v2, v21

    invoke-static {v4, v0, v1, v2}, addCallbacks(Ljava/util/HashMap;Ljava/lang/String;ILjava/util/ArrayList;)Ljava/util/HashMap;

    move-result-object v4

    .line 496
    iget v0, v8, Lcom/android/server/AppOpsService$Op;->op:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, mPackageModeWatchers:Landroid/util/ArrayMap;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/util/ArrayList;

    move-object/from16 v0, v16

    move/from16 v1, v22

    move-object/from16 v2, v21

    invoke-static {v4, v0, v1, v2}, addCallbacks(Ljava/util/HashMap;Ljava/lang/String;ILjava/util/ArrayList;)Ljava/util/HashMap;

    move-result-object v4

    .line 498
    iget-wide v0, v8, Lcom/android/server/AppOpsService$Op;->time:J

    move-wide/from16 v22, v0

    const-wide/16 v24, 0x0

    cmp-long v21, v22, v24

    if-nez v21, :cond_10f

    iget-wide v0, v8, Lcom/android/server/AppOpsService$Op;->rejectTime:J

    move-wide/from16 v22, v0

    const-wide/16 v24, 0x0

    cmp-long v21, v22, v24

    if-nez v21, :cond_10f

    .line 499
    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Lcom/android/server/AppOpsService$Ops;->removeAt(I)V

    .line 486
    :cond_10f
    add-int/lit8 v15, v15, -0x1

    goto/16 :goto_7f

    .line 503
    .end local v8    # "curOp":Lcom/android/server/AppOpsService$Op;
    .end local v9    # "defaultMode":I
    :cond_113
    invoke-virtual/range {v18 .. v18}, Lcom/android/server/AppOpsService$Ops;->size()I

    move-result v21

    if-nez v21, :cond_61

    .line 504
    invoke-interface {v14}, Ljava/util/Iterator;->remove()V

    goto/16 :goto_61

    .line 514
    .end local v11    # "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/AppOpsService$Ops;>;"
    .end local v12    # "i":I
    .end local v14    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/AppOpsService$Ops;>;>;"
    .end local v15    # "j":I
    .end local v16    # "packageName":Ljava/lang/String;
    .end local v17    # "packages":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/server/AppOpsService$Ops;>;"
    .end local v18    # "pkgOps":Lcom/android/server/AppOpsService$Ops;
    :catchall_11e
    move-exception v21

    monitor-exit p0
    :try_end_120
    .catchall {:try_start_20 .. :try_end_120} :catchall_11e

    throw v21

    .line 507
    .restart local v12    # "i":I
    .restart local v14    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/AppOpsService$Ops;>;>;"
    .restart local v17    # "packages":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/server/AppOpsService$Ops;>;"
    :cond_121
    :try_start_121
    invoke-virtual/range {v17 .. v17}, Ljava/util/HashMap;->size()I

    move-result v21

    if-nez v21, :cond_56

    .line 508
    move-object/from16 v0, p0

    iget-object v0, v0, mUidOps:Landroid/util/SparseArray;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v12}, Landroid/util/SparseArray;->removeAt(I)V

    goto/16 :goto_56

    .line 511
    .end local v14    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/AppOpsService$Ops;>;>;"
    .end local v17    # "packages":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/server/AppOpsService$Ops;>;"
    :cond_134
    if-eqz v7, :cond_139

    .line 512
    invoke-direct/range {p0 .. p0}, scheduleWriteNowLocked()V

    .line 514
    :cond_139
    monitor-exit p0
    :try_end_13a
    .catchall {:try_start_121 .. :try_end_13a} :catchall_11e

    .line 515
    if-eqz v4, :cond_191

    .line 516
    invoke-virtual {v4}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v21

    invoke-interface/range {v21 .. v21}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .local v13, "i$":Ljava/util/Iterator;
    :cond_144
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_191

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/Map$Entry;

    .line 517
    .local v10, "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/android/server/AppOpsService$Callback;Ljava/util/ArrayList<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;>;>;"
    invoke-interface {v10}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/AppOpsService$Callback;

    .line 518
    .local v6, "cb":Lcom/android/server/AppOpsService$Callback;
    invoke-interface {v10}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/util/ArrayList;

    .line 519
    .local v20, "reports":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;>;"
    const/4 v12, 0x0

    :goto_15d
    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->size()I

    move-result v21

    move/from16 v0, v21

    if-ge v12, v0, :cond_144

    .line 520
    move-object/from16 v0, v20

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/util/Pair;

    .line 522
    .local v19, "rep":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;"
    :try_start_16d
    iget-object v0, v6, Lcom/android/server/AppOpsService$Callback;->mCallback:Lcom/android/internal/app/IAppOpsCallback;

    move-object/from16 v22, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object/from16 v21, v0

    check-cast v21, Ljava/lang/Integer;

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Integer;->intValue()I

    move-result v23

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object/from16 v21, v0

    check-cast v21, Ljava/lang/String;

    move-object/from16 v0, v22

    move/from16 v1, v23

    move-object/from16 v2, v21

    invoke-interface {v0, v1, v2}, Lcom/android/internal/app/IAppOpsCallback;->opChanged(ILjava/lang/String;)V
    :try_end_18e
    .catch Landroid/os/RemoteException; {:try_start_16d .. :try_end_18e} :catch_192

    .line 519
    :goto_18e
    add-int/lit8 v12, v12, 0x1

    goto :goto_15d

    .line 528
    .end local v6    # "cb":Lcom/android/server/AppOpsService$Callback;
    .end local v10    # "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/android/server/AppOpsService$Callback;Ljava/util/ArrayList<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;>;>;"
    .end local v13    # "i$":Ljava/util/Iterator;
    .end local v19    # "rep":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v20    # "reports":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;>;"
    :cond_191
    return-void

    .line 523
    .restart local v6    # "cb":Lcom/android/server/AppOpsService$Callback;
    .restart local v10    # "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/android/server/AppOpsService$Callback;Ljava/util/ArrayList<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;>;>;"
    .restart local v13    # "i$":Ljava/util/Iterator;
    .restart local v19    # "rep":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;"
    .restart local v20    # "reports":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;>;"
    :catch_192
    move-exception v21

    goto :goto_18e
.end method

.method public setAudioRestriction(IIII[Ljava/lang/String;)V
    .registers 13
    .param p1, "code"    # I
    .param p2, "usage"    # I
    .param p3, "uid"    # I
    .param p4, "mode"    # I
    .param p5, "exceptionPackages"    # [Ljava/lang/String;

    .prologue
    .line 635
    invoke-direct {p0, p3}, verifyIncomingUid(I)V

    .line 636
    invoke-direct {p0, p1}, verifyIncomingOp(I)V

    .line 637
    monitor-enter p0

    .line 638
    :try_start_7
    iget-object v5, p0, mAudioRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v5, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/SparseArray;

    .line 639
    .local v4, "usageRestrictions":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/AppOpsService$Restriction;>;"
    if-nez v4, :cond_1b

    .line 640
    new-instance v4, Landroid/util/SparseArray;

    .end local v4    # "usageRestrictions":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/AppOpsService$Restriction;>;"
    invoke-direct {v4}, Landroid/util/SparseArray;-><init>()V

    .line 641
    .restart local v4    # "usageRestrictions":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/AppOpsService$Restriction;>;"
    iget-object v5, p0, mAudioRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v5, p1, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 643
    :cond_1b
    invoke-virtual {v4, p2}, Landroid/util/SparseArray;->remove(I)V

    .line 644
    if-eqz p4, :cond_48

    .line 645
    new-instance v3, Lcom/android/server/AppOpsService$Restriction;

    const/4 v5, 0x0

    invoke-direct {v3, v5}, Lcom/android/server/AppOpsService$Restriction;-><init>(Lcom/android/server/AppOpsService$1;)V

    .line 646
    .local v3, "r":Lcom/android/server/AppOpsService$Restriction;
    iput p4, v3, Lcom/android/server/AppOpsService$Restriction;->mode:I

    .line 647
    if-eqz p5, :cond_45

    .line 648
    array-length v0, p5

    .line 649
    .local v0, "N":I
    new-instance v5, Landroid/util/ArraySet;

    invoke-direct {v5, v0}, Landroid/util/ArraySet;-><init>(I)V

    iput-object v5, v3, Lcom/android/server/AppOpsService$Restriction;->exceptionPackages:Landroid/util/ArraySet;

    .line 650
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_33
    if-ge v1, v0, :cond_45

    .line 651
    aget-object v2, p5, v1

    .line 652
    .local v2, "pkg":Ljava/lang/String;
    if-eqz v2, :cond_42

    .line 653
    iget-object v5, v3, Lcom/android/server/AppOpsService$Restriction;->exceptionPackages:Landroid/util/ArraySet;

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 650
    :cond_42
    add-int/lit8 v1, v1, 0x1

    goto :goto_33

    .line 657
    .end local v0    # "N":I
    .end local v1    # "i":I
    .end local v2    # "pkg":Ljava/lang/String;
    :cond_45
    invoke-virtual {v4, p2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 659
    .end local v3    # "r":Lcom/android/server/AppOpsService$Restriction;
    :cond_48
    monitor-exit p0

    .line 660
    return-void

    .line 659
    .end local v4    # "usageRestrictions":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/AppOpsService$Restriction;>;"
    :catchall_4a
    move-exception v5

    monitor-exit p0
    :try_end_4c
    .catchall {:try_start_7 .. :try_end_4c} :catchall_4a

    throw v5
.end method

.method public setMode(IILjava/lang/String;I)V
    .registers 15
    .param p1, "code"    # I
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "mode"    # I

    .prologue
    .line 401
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v5

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v6

    if-eq v5, v6, :cond_1a

    .line 402
    iget-object v5, p0, mContext:Landroid/content/Context;

    const-string v6, "android.permission.UPDATE_APP_OPS_STATS"

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v7

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v8

    const/4 v9, 0x0

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    .line 405
    :cond_1a
    invoke-direct {p0, p1}, verifyIncomingOp(I)V

    .line 406
    const/4 v3, 0x0

    .line 407
    .local v3, "repCbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    invoke-static {p1}, Landroid/app/AppOpsManager;->opToSwitch(I)I

    move-result p1

    .line 408
    monitor-enter p0

    .line 409
    const/4 v5, 0x1

    :try_start_24
    invoke-direct {p0, p1, p2, p3, v5}, getOpLocked(IILjava/lang/String;Z)Lcom/android/server/AppOpsService$Op;

    move-result-object v2

    .line 410
    .local v2, "op":Lcom/android/server/AppOpsService$Op;
    if-eqz v2, :cond_66

    .line 411
    iget v5, v2, Lcom/android/server/AppOpsService$Op;->mode:I

    if-eq v5, p4, :cond_66

    .line 412
    iput p4, v2, Lcom/android/server/AppOpsService$Op;->mode:I

    .line 413
    iget-object v5, p0, mOpModeWatchers:Landroid/util/SparseArray;

    invoke-virtual {v5, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 414
    .local v0, "cbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    if-eqz v0, :cond_45

    .line 415
    if-nez v3, :cond_42

    .line 416
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .end local v3    # "repCbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    .local v4, "repCbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    move-object v3, v4

    .line 418
    .end local v4    # "repCbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    .restart local v3    # "repCbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    :cond_42
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z
    :try_end_45
    .catchall {:try_start_24 .. :try_end_45} :catchall_7e

    :cond_45
    move-object v4, v3

    .line 420
    .end local v3    # "repCbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    .restart local v4    # "repCbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    :try_start_46
    iget-object v5, p0, mPackageModeWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v5, p3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "cbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    check-cast v0, Ljava/util/ArrayList;

    .line 421
    .restart local v0    # "cbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    if-eqz v0, :cond_89

    .line 422
    if-nez v4, :cond_87

    .line 423
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V
    :try_end_57
    .catchall {:try_start_46 .. :try_end_57} :catchall_84

    .line 425
    .end local v4    # "repCbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    .restart local v3    # "repCbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    :goto_57
    :try_start_57
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 427
    :goto_5a
    invoke-direct {p0, p1, p2, p3}, getDefaultMode(IILjava/lang/String;)I

    move-result v5

    if-ne p4, v5, :cond_63

    .line 430
    invoke-direct {p0, v2, p2, p3}, pruneOp(Lcom/android/server/AppOpsService$Op;ILjava/lang/String;)V

    .line 432
    :cond_63
    invoke-direct {p0}, scheduleWriteNowLocked()V

    .line 435
    .end local v0    # "cbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    :cond_66
    monitor-exit p0
    :try_end_67
    .catchall {:try_start_57 .. :try_end_67} :catchall_7e

    .line 436
    if-eqz v3, :cond_81

    .line 437
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_6a
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v1, v5, :cond_81

    .line 439
    :try_start_70
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/AppOpsService$Callback;

    iget-object v5, v5, Lcom/android/server/AppOpsService$Callback;->mCallback:Lcom/android/internal/app/IAppOpsCallback;

    invoke-interface {v5, p1, p3}, Lcom/android/internal/app/IAppOpsCallback;->opChanged(ILjava/lang/String;)V
    :try_end_7b
    .catch Landroid/os/RemoteException; {:try_start_70 .. :try_end_7b} :catch_82

    .line 437
    :goto_7b
    add-int/lit8 v1, v1, 0x1

    goto :goto_6a

    .line 435
    .end local v1    # "i":I
    .end local v2    # "op":Lcom/android/server/AppOpsService$Op;
    :catchall_7e
    move-exception v5

    :goto_7f
    :try_start_7f
    monitor-exit p0
    :try_end_80
    .catchall {:try_start_7f .. :try_end_80} :catchall_7e

    throw v5

    .line 444
    .restart local v2    # "op":Lcom/android/server/AppOpsService$Op;
    :cond_81
    return-void

    .line 440
    .restart local v1    # "i":I
    :catch_82
    move-exception v5

    goto :goto_7b

    .line 435
    .end local v1    # "i":I
    .end local v3    # "repCbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    .restart local v4    # "repCbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    :catchall_84
    move-exception v5

    move-object v3, v4

    .end local v4    # "repCbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    .restart local v3    # "repCbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    goto :goto_7f

    .end local v3    # "repCbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    .restart local v0    # "cbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    .restart local v4    # "repCbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    :cond_87
    move-object v3, v4

    .end local v4    # "repCbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    .restart local v3    # "repCbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    goto :goto_57

    .end local v3    # "repCbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    .restart local v4    # "repCbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    :cond_89
    move-object v3, v4

    .end local v4    # "repCbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    .restart local v3    # "repCbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    goto :goto_5a
.end method

.method public setUserRestrictions(Landroid/os/Bundle;I)V
    .registers 8
    .param p1, "restrictions"    # Landroid/os/Bundle;
    .param p2, "userHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 1366
    const-string/jumbo v3, "setUserRestrictions"

    invoke-direct {p0, v3}, checkSystemUid(Ljava/lang/String;)V

    .line 1367
    iget-object v3, p0, mOpRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v3, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Z

    .line 1368
    .local v1, "opRestrictions":[Z
    if-nez v1, :cond_1a

    .line 1369
    const/16 v3, 0x3c

    new-array v1, v3, [Z

    .line 1370
    iget-object v3, p0, mOpRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v3, p2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1372
    :cond_1a
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1b
    array-length v3, v1

    if-ge v0, v3, :cond_30

    .line 1373
    invoke-static {v0}, Landroid/app/AppOpsManager;->opToRestriction(I)Ljava/lang/String;

    move-result-object v2

    .line 1374
    .local v2, "restriction":Ljava/lang/String;
    if-eqz v2, :cond_2d

    .line 1375
    invoke-virtual {p1, v2, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    aput-boolean v3, v1, v0

    .line 1372
    :goto_2a
    add-int/lit8 v0, v0, 0x1

    goto :goto_1b

    .line 1377
    :cond_2d
    aput-boolean v4, v1, v0

    goto :goto_2a

    .line 1380
    .end local v2    # "restriction":Ljava/lang/String;
    :cond_30
    return-void
.end method

.method public shutdown()V
    .registers 4

    .prologue
    .line 298
    const-string v1, "AppOps"

    const-string v2, "Writing app ops before shutdown..."

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    const/4 v0, 0x0

    .line 300
    .local v0, "doWrite":Z
    monitor-enter p0

    .line 301
    :try_start_9
    iget-boolean v1, p0, mWriteScheduled:Z

    if-eqz v1, :cond_11

    .line 302
    const/4 v1, 0x0

    iput-boolean v1, p0, mWriteScheduled:Z

    .line 303
    const/4 v0, 0x1

    .line 305
    :cond_11
    monitor-exit p0
    :try_end_12
    .catchall {:try_start_9 .. :try_end_12} :catchall_18

    .line 306
    if-eqz v0, :cond_17

    .line 307
    invoke-virtual {p0}, writeState()V

    .line 309
    :cond_17
    return-void

    .line 305
    :catchall_18
    move-exception v1

    :try_start_19
    monitor-exit p0
    :try_end_1a
    .catchall {:try_start_19 .. :try_end_1a} :catchall_18

    throw v1
.end method

.method public startOperation(Landroid/os/IBinder;IILjava/lang/String;)I
    .registers 15
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "code"    # I
    .param p3, "uid"    # I
    .param p4, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x1

    .line 734
    invoke-direct {p0, p3}, verifyIncomingUid(I)V

    .line 735
    invoke-direct {p0, p2}, verifyIncomingOp(I)V

    move-object v0, p1

    .line 736
    check-cast v0, Lcom/android/server/AppOpsService$ClientState;

    .line 737
    .local v0, "client":Lcom/android/server/AppOpsService$ClientState;
    monitor-enter p0

    .line 738
    const/4 v8, 0x1

    :try_start_c
    invoke-direct {p0, p3, p4, v8}, getOpsLocked(ILjava/lang/String;Z)Lcom/android/server/AppOpsService$Ops;

    move-result-object v3

    .line 739
    .local v3, "ops":Lcom/android/server/AppOpsService$Ops;
    if-nez v3, :cond_15

    .line 742
    const/4 v7, 0x2

    monitor-exit p0

    .line 790
    :goto_14
    return v7

    .line 744
    :cond_15
    const/4 v8, 0x1

    invoke-direct {p0, v3, p2, v8}, getOpLocked(Lcom/android/server/AppOpsService$Ops;IZ)Lcom/android/server/AppOpsService$Op;

    move-result-object v2

    .line 745
    .local v2, "op":Lcom/android/server/AppOpsService$Op;
    invoke-direct {p0, p3, p2, p4}, isOpRestricted(IILjava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_25

    .line 746
    monitor-exit p0

    goto :goto_14

    .line 789
    .end local v2    # "op":Lcom/android/server/AppOpsService$Op;
    .end local v3    # "ops":Lcom/android/server/AppOpsService$Ops;
    :catchall_22
    move-exception v7

    monitor-exit p0
    :try_end_24
    .catchall {:try_start_c .. :try_end_24} :catchall_22

    throw v7

    .line 748
    .restart local v2    # "op":Lcom/android/server/AppOpsService$Op;
    .restart local v3    # "ops":Lcom/android/server/AppOpsService$Ops;
    :cond_25
    :try_start_25
    invoke-static {p2}, Landroid/app/AppOpsManager;->opToSwitch(I)I

    move-result v5

    .line 749
    .local v5, "switchCode":I
    if-eq v5, p2, :cond_43

    const/4 v7, 0x1

    invoke-direct {p0, v3, v5, v7}, getOpLocked(Lcom/android/server/AppOpsService$Ops;IZ)Lcom/android/server/AppOpsService$Op;

    move-result-object v6

    .line 751
    .local v6, "switchOp":Lcom/android/server/AppOpsService$Op;
    :goto_30
    iget v7, v6, Lcom/android/server/AppOpsService$Op;->mode:I

    if-eqz v7, :cond_45

    iget v7, v6, Lcom/android/server/AppOpsService$Op;->mode:I

    const/4 v8, 0x4

    if-eq v7, v8, :cond_45

    .line 757
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iput-wide v8, v2, Lcom/android/server/AppOpsService$Op;->rejectTime:J

    .line 758
    iget v7, v6, Lcom/android/server/AppOpsService$Op;->mode:I

    monitor-exit p0

    goto :goto_14

    .end local v6    # "switchOp":Lcom/android/server/AppOpsService$Op;
    :cond_43
    move-object v6, v2

    .line 749
    goto :goto_30

    .line 759
    .restart local v6    # "switchOp":Lcom/android/server/AppOpsService$Op;
    :cond_45
    iget v7, v6, Lcom/android/server/AppOpsService$Op;->mode:I

    if-nez v7, :cond_6c

    .line 763
    iget v7, v2, Lcom/android/server/AppOpsService$Op;->nesting:I

    if-nez v7, :cond_5a

    .line 764
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iput-wide v8, v2, Lcom/android/server/AppOpsService$Op;->time:J

    .line 765
    const-wide/16 v8, 0x0

    iput-wide v8, v2, Lcom/android/server/AppOpsService$Op;->rejectTime:J

    .line 766
    const/4 v7, -0x1

    iput v7, v2, Lcom/android/server/AppOpsService$Op;->duration:I

    .line 768
    :cond_5a
    iget v7, v2, Lcom/android/server/AppOpsService$Op;->nesting:I

    add-int/lit8 v7, v7, 0x1

    iput v7, v2, Lcom/android/server/AppOpsService$Op;->nesting:I

    .line 769
    iget-object v7, v0, Lcom/android/server/AppOpsService$ClientState;->mStartedOps:Ljava/util/ArrayList;

    if-eqz v7, :cond_69

    .line 770
    iget-object v7, v0, Lcom/android/server/AppOpsService$ClientState;->mStartedOps:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 772
    :cond_69
    const/4 v7, 0x0

    monitor-exit p0

    goto :goto_14

    .line 774
    :cond_6c
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v7

    iget-object v8, p0, mLooper:Landroid/os/Looper;

    if-ne v7, v8, :cond_ac

    .line 775
    const-string v7, "AppOps"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "startOperation: This method will deadlock if called from the main thread. (Code: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " uid: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " package: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ")"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 782
    iget v7, v6, Lcom/android/server/AppOpsService$Op;->mode:I

    monitor-exit p0

    goto/16 :goto_14

    .line 784
    :cond_ac
    iget v7, v2, Lcom/android/server/AppOpsService$Op;->startOpCount:I

    add-int/lit8 v7, v7, 0x1

    iput v7, v2, Lcom/android/server/AppOpsService$Op;->startOpCount:I

    .line 785
    iget-object v1, v0, Lcom/android/server/AppOpsService$ClientState;->mAppToken:Landroid/os/IBinder;

    .line 786
    .local v1, "clientToken":Landroid/os/IBinder;
    iget-object v7, v2, Lcom/android/server/AppOpsService$Op;->clientTokens:Ljava/util/ArrayList;

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 787
    invoke-direct {p0, p2, p3, p4, v6}, askOperationLocked(IILjava/lang/String;Lcom/android/server/AppOpsService$Op;)Lcom/android/server/PermissionDialogReqQueue$PermissionDialogReq;

    move-result-object v4

    .line 789
    .local v4, "req":Lcom/android/server/PermissionDialogReqQueue$PermissionDialogReq;
    monitor-exit p0
    :try_end_be
    .catchall {:try_start_25 .. :try_end_be} :catchall_22

    .line 790
    invoke-virtual {v4}, Lcom/android/server/PermissionDialogReqQueue$PermissionDialogReq;->get()I

    move-result v7

    goto/16 :goto_14
.end method

.method public startWatchingMode(ILjava/lang/String;Lcom/android/internal/app/IAppOpsCallback;)V
    .registers 8
    .param p1, "op"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "callback"    # Lcom/android/internal/app/IAppOpsCallback;

    .prologue
    .line 532
    monitor-enter p0

    .line 533
    :try_start_1
    invoke-static {p1}, Landroid/app/AppOpsManager;->opToSwitch(I)I

    move-result p1

    .line 534
    iget-object v2, p0, mModeWatchers:Landroid/util/ArrayMap;

    invoke-interface {p3}, Lcom/android/internal/app/IAppOpsCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/AppOpsService$Callback;

    .line 535
    .local v0, "cb":Lcom/android/server/AppOpsService$Callback;
    if-nez v0, :cond_21

    .line 536
    new-instance v0, Lcom/android/server/AppOpsService$Callback;

    .end local v0    # "cb":Lcom/android/server/AppOpsService$Callback;
    invoke-direct {v0, p0, p3}, Lcom/android/server/AppOpsService$Callback;-><init>(Lcom/android/server/AppOpsService;Lcom/android/internal/app/IAppOpsCallback;)V

    .line 537
    .restart local v0    # "cb":Lcom/android/server/AppOpsService$Callback;
    iget-object v2, p0, mModeWatchers:Landroid/util/ArrayMap;

    invoke-interface {p3}, Lcom/android/internal/app/IAppOpsCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 539
    :cond_21
    const/4 v2, -0x1

    if-eq p1, v2, :cond_3b

    .line 540
    iget-object v2, p0, mOpModeWatchers:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 541
    .local v1, "cbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    if-nez v1, :cond_38

    .line 542
    new-instance v1, Ljava/util/ArrayList;

    .end local v1    # "cbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 543
    .restart local v1    # "cbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    iget-object v2, p0, mOpModeWatchers:Landroid/util/SparseArray;

    invoke-virtual {v2, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 545
    :cond_38
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 547
    .end local v1    # "cbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    :cond_3b
    if-eqz p2, :cond_54

    .line 548
    iget-object v2, p0, mPackageModeWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v2, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 549
    .restart local v1    # "cbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    if-nez v1, :cond_51

    .line 550
    new-instance v1, Ljava/util/ArrayList;

    .end local v1    # "cbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 551
    .restart local v1    # "cbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    iget-object v2, p0, mPackageModeWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v2, p2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 553
    :cond_51
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 555
    .end local v1    # "cbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    :cond_54
    monitor-exit p0

    .line 556
    return-void

    .line 555
    .end local v0    # "cb":Lcom/android/server/AppOpsService$Callback;
    :catchall_56
    move-exception v2

    monitor-exit p0
    :try_end_58
    .catchall {:try_start_1 .. :try_end_58} :catchall_56

    throw v2
.end method

.method public stopWatchingMode(Lcom/android/internal/app/IAppOpsCallback;)V
    .registers 7
    .param p1, "callback"    # Lcom/android/internal/app/IAppOpsCallback;

    .prologue
    .line 560
    monitor-enter p0

    .line 561
    :try_start_1
    iget-object v3, p0, mModeWatchers:Landroid/util/ArrayMap;

    invoke-interface {p1}, Lcom/android/internal/app/IAppOpsCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/AppOpsService$Callback;

    .line 562
    .local v0, "cb":Lcom/android/server/AppOpsService$Callback;
    if-eqz v0, :cond_58

    .line 563
    invoke-virtual {v0}, Lcom/android/server/AppOpsService$Callback;->unlinkToDeath()V

    .line 564
    iget-object v3, p0, mOpModeWatchers:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    add-int/lit8 v2, v3, -0x1

    .local v2, "i":I
    :goto_1a
    if-ltz v2, :cond_35

    .line 565
    iget-object v3, p0, mOpModeWatchers:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 566
    .local v1, "cbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 567
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-gtz v3, :cond_32

    .line 568
    iget-object v3, p0, mOpModeWatchers:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->removeAt(I)V

    .line 564
    :cond_32
    add-int/lit8 v2, v2, -0x1

    goto :goto_1a

    .line 571
    .end local v1    # "cbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    :cond_35
    iget-object v3, p0, mPackageModeWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    add-int/lit8 v2, v3, -0x1

    :goto_3d
    if-ltz v2, :cond_58

    .line 572
    iget-object v3, p0, mPackageModeWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 573
    .restart local v1    # "cbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 574
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-gtz v3, :cond_55

    .line 575
    iget-object v3, p0, mPackageModeWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    .line 571
    :cond_55
    add-int/lit8 v2, v2, -0x1

    goto :goto_3d

    .line 579
    .end local v1    # "cbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    .end local v2    # "i":I
    :cond_58
    monitor-exit p0

    .line 580
    return-void

    .line 579
    .end local v0    # "cb":Lcom/android/server/AppOpsService$Callback;
    :catchall_5a
    move-exception v3

    monitor-exit p0
    :try_end_5c
    .catchall {:try_start_1 .. :try_end_5c} :catchall_5a

    throw v3
.end method

.method public systemReady()V
    .registers 11

    .prologue
    .line 243
    monitor-enter p0

    .line 244
    const/4 v0, 0x0

    .line 245
    .local v0, "changed":Z
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_3
    :try_start_3
    iget-object v7, p0, mUidOps:Landroid/util/SparseArray;

    invoke-virtual {v7}, Landroid/util/SparseArray;->size()I

    move-result v7

    if-ge v3, v7, :cond_83

    .line 246
    iget-object v7, p0, mUidOps:Landroid/util/SparseArray;

    invoke-virtual {v7, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/HashMap;

    .line 247
    .local v6, "pkgs":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/server/AppOpsService$Ops;>;"
    invoke-virtual {v6}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 248
    .local v4, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/AppOpsService$Ops;>;"
    :cond_1b
    :goto_1b
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_75

    .line 249
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/AppOpsService$Ops;
    :try_end_27
    .catchall {:try_start_3 .. :try_end_27} :catchall_8a

    .line 252
    .local v5, "ops":Lcom/android/server/AppOpsService$Ops;
    :try_start_27
    iget-object v7, p0, mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    iget-object v8, v5, Lcom/android/server/AppOpsService$Ops;->packageName:Ljava/lang/String;

    iget v9, v5, Lcom/android/server/AppOpsService$Ops;->uid:I

    invoke-static {v9}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v9

    invoke-virtual {v7, v8, v9}, Landroid/content/pm/PackageManager;->getPackageUid(Ljava/lang/String;I)I
    :try_end_38
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_27 .. :try_end_38} :catch_72
    .catchall {:try_start_27 .. :try_end_38} :catchall_8a

    move-result v1

    .line 257
    .local v1, "curUid":I
    :goto_39
    :try_start_39
    iget v7, v5, Lcom/android/server/AppOpsService$Ops;->uid:I

    if-eq v1, v7, :cond_1b

    .line 258
    const-string v7, "AppOps"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Pruning old package "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v5, Lcom/android/server/AppOpsService$Ops;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v5, Lcom/android/server/AppOpsService$Ops;->uid:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ": new uid="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    invoke-interface {v4}, Ljava/util/Iterator;->remove()V

    .line 261
    const/4 v0, 0x1

    goto :goto_1b

    .line 254
    .end local v1    # "curUid":I
    :catch_72
    move-exception v2

    .line 255
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v1, -0x1

    .restart local v1    # "curUid":I
    goto :goto_39

    .line 264
    .end local v1    # "curUid":I
    .end local v2    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v5    # "ops":Lcom/android/server/AppOpsService$Ops;
    :cond_75
    invoke-virtual {v6}, Ljava/util/HashMap;->size()I

    move-result v7

    if-gtz v7, :cond_80

    .line 265
    iget-object v7, p0, mUidOps:Landroid/util/SparseArray;

    invoke-virtual {v7, v3}, Landroid/util/SparseArray;->removeAt(I)V

    .line 245
    :cond_80
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 268
    .end local v4    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/AppOpsService$Ops;>;"
    .end local v6    # "pkgs":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/server/AppOpsService$Ops;>;"
    :cond_83
    if-eqz v0, :cond_88

    .line 269
    invoke-direct {p0}, scheduleWriteLocked()V

    .line 271
    :cond_88
    monitor-exit p0

    .line 272
    return-void

    .line 271
    :catchall_8a
    move-exception v7

    monitor-exit p0
    :try_end_8c
    .catchall {:try_start_39 .. :try_end_8c} :catchall_8a

    throw v7
.end method

.method public uidRemoved(I)V
    .registers 3
    .param p1, "uid"    # I

    .prologue
    .line 289
    monitor-enter p0

    .line 290
    :try_start_1
    iget-object v0, p0, mUidOps:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v0

    if-ltz v0, :cond_11

    .line 291
    iget-object v0, p0, mUidOps:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 292
    invoke-direct {p0}, scheduleWriteLocked()V

    .line 294
    :cond_11
    monitor-exit p0

    .line 295
    return-void

    .line 294
    :catchall_13
    move-exception v0

    monitor-exit p0
    :try_end_15
    .catchall {:try_start_1 .. :try_end_15} :catchall_13

    throw v0
.end method

.method writeState()V
    .registers 25

    .prologue
    .line 1148
    move-object/from16 v0, p0

    iget-object v0, v0, mFile:Landroid/util/AtomicFile;

    move-object/from16 v20, v0

    monitor-enter v20

    .line 1149
    const/16 v17, 0x0

    :try_start_9
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, getPackagesForOps([I)Ljava/util/List;
    :try_end_10
    .catchall {:try_start_9 .. :try_end_10} :catchall_1fd

    move-result-object v4

    .line 1153
    .local v4, "allOps":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    :try_start_11
    move-object/from16 v0, p0

    iget-object v0, v0, mFile:Landroid/util/AtomicFile;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_1a} :catch_1a8
    .catchall {:try_start_11 .. :try_end_1a} :catchall_1fd

    move-result-object v16

    .line 1160
    .local v16, "stream":Ljava/io/FileOutputStream;
    :try_start_1b
    new-instance v14, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v14}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    .line 1161
    .local v14, "out":Lorg/xmlpull/v1/XmlSerializer;
    const-string/jumbo v17, "utf-8"

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-interface {v14, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 1162
    const/16 v17, 0x0

    const/16 v21, 0x1

    invoke-static/range {v21 .. v21}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v21

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    invoke-interface {v14, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1163
    const/16 v17, 0x0

    const-string v21, "app-ops"

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    invoke-interface {v14, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1165
    if-eqz v4, :cond_231

    .line 1166
    const/4 v10, 0x0

    .line 1167
    .local v10, "lastPkg":Ljava/lang/String;
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_48
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v17

    move/from16 v0, v17

    if-ge v8, v0, :cond_223

    .line 1168
    invoke-interface {v4, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/app/AppOpsManager$PackageOps;

    .line 1169
    .local v15, "pkg":Landroid/app/AppOpsManager$PackageOps;
    invoke-virtual {v15}, Landroid/app/AppOpsManager$PackageOps;->getPackageName()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_8b

    .line 1170
    if-eqz v10, :cond_70

    .line 1171
    const/16 v17, 0x0

    const-string/jumbo v21, "pkg"

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    invoke-interface {v14, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1173
    :cond_70
    invoke-virtual {v15}, Landroid/app/AppOpsManager$PackageOps;->getPackageName()Ljava/lang/String;

    move-result-object v10

    .line 1174
    const/16 v17, 0x0

    const-string/jumbo v21, "pkg"

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    invoke-interface {v14, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1175
    const/16 v17, 0x0

    const-string v21, "n"

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    invoke-interface {v14, v0, v1, v10}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1177
    :cond_8b
    const/16 v17, 0x0

    const-string/jumbo v21, "uid"

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    invoke-interface {v14, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1178
    const/16 v17, 0x0

    const-string v21, "n"

    invoke-virtual {v15}, Landroid/app/AppOpsManager$PackageOps;->getUid()I

    move-result v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-interface {v14, v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1179
    monitor-enter p0
    :try_end_ad
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_ad} :catch_1e2
    .catchall {:try_start_1b .. :try_end_ad} :catchall_1fd

    .line 1180
    :try_start_ad
    invoke-virtual {v15}, Landroid/app/AppOpsManager$PackageOps;->getUid()I

    move-result v17

    invoke-virtual {v15}, Landroid/app/AppOpsManager$PackageOps;->getPackageName()Ljava/lang/String;

    move-result-object v21

    const/16 v22, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    move-object/from16 v2, v21

    move/from16 v3, v22

    invoke-direct {v0, v1, v2, v3}, getOpsLocked(ILjava/lang/String;Z)Lcom/android/server/AppOpsService$Ops;

    move-result-object v12

    .line 1183
    .local v12, "ops":Lcom/android/server/AppOpsService$Ops;
    if-eqz v12, :cond_1c9

    .line 1184
    iget-boolean v0, v12, Lcom/android/server/AppOpsService$Ops;->isPrivilegedCredible:Z

    move/from16 v17, v0

    if-eqz v17, :cond_e1

    .line 1185
    const/16 v17, 0x0

    const-string/jumbo v21, "p"

    iget-boolean v0, v12, Lcom/android/server/AppOpsService$Ops;->isPrivileged:Z

    move/from16 v22, v0

    invoke-static/range {v22 .. v22}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-interface {v14, v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1190
    :cond_e1
    :goto_e1
    monitor-exit p0
    :try_end_e2
    .catchall {:try_start_ad .. :try_end_e2} :catchall_1df

    .line 1191
    :try_start_e2
    invoke-virtual {v15}, Landroid/app/AppOpsManager$PackageOps;->getOps()Ljava/util/List;

    move-result-object v13

    .line 1192
    .local v13, "ops":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$OpEntry;>;"
    const/4 v9, 0x0

    .local v9, "j":I
    :goto_e7
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v17

    move/from16 v0, v17

    if-ge v9, v0, :cond_213

    .line 1193
    invoke-interface {v13, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/app/AppOpsManager$OpEntry;

    .line 1194
    .local v11, "op":Landroid/app/AppOpsManager$OpEntry;
    const/16 v17, 0x0

    const-string v21, "op"

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    invoke-interface {v14, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1195
    const/16 v17, 0x0

    const-string v21, "n"

    invoke-virtual {v11}, Landroid/app/AppOpsManager$OpEntry;->getOp()I

    move-result v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-interface {v14, v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1196
    invoke-virtual {v11}, Landroid/app/AppOpsManager$OpEntry;->getOp()I

    move-result v17

    invoke-virtual {v15}, Landroid/app/AppOpsManager$PackageOps;->getUid()I

    move-result v21

    invoke-virtual {v15}, Landroid/app/AppOpsManager$PackageOps;->getPackageName()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v21

    move-object/from16 v3, v22

    invoke-direct {v0, v1, v2, v3}, getDefaultMode(IILjava/lang/String;)I

    move-result v5

    .line 1198
    .local v5, "defaultMode":I
    invoke-virtual {v11}, Landroid/app/AppOpsManager$OpEntry;->getMode()I

    move-result v17

    move/from16 v0, v17

    if-eq v0, v5, :cond_200

    .line 1199
    const/16 v17, 0x0

    const-string v21, "m"

    invoke-virtual {v11}, Landroid/app/AppOpsManager$OpEntry;->getMode()I

    move-result v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-interface {v14, v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1203
    :goto_14a
    invoke-virtual {v11}, Landroid/app/AppOpsManager$OpEntry;->getTime()J

    move-result-wide v18

    .line 1204
    .local v18, "time":J
    const-wide/16 v22, 0x0

    cmp-long v17, v18, v22

    if-eqz v17, :cond_166

    .line 1205
    const/16 v17, 0x0

    const-string/jumbo v21, "t"

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-interface {v14, v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1207
    :cond_166
    invoke-virtual {v11}, Landroid/app/AppOpsManager$OpEntry;->getRejectTime()J

    move-result-wide v18

    .line 1208
    const-wide/16 v22, 0x0

    cmp-long v17, v18, v22

    if-eqz v17, :cond_182

    .line 1209
    const/16 v17, 0x0

    const-string/jumbo v21, "r"

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-interface {v14, v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1211
    :cond_182
    invoke-virtual {v11}, Landroid/app/AppOpsManager$OpEntry;->getDuration()I

    move-result v6

    .line 1212
    .local v6, "dur":I
    if-eqz v6, :cond_199

    .line 1213
    const/16 v17, 0x0

    const-string v21, "d"

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-interface {v14, v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1215
    :cond_199
    const/16 v17, 0x0

    const-string v21, "op"

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    invoke-interface {v14, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_1a4
    .catch Ljava/io/IOException; {:try_start_e2 .. :try_end_1a4} :catch_1e2
    .catchall {:try_start_e2 .. :try_end_1a4} :catchall_1fd

    .line 1192
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_e7

    .line 1154
    .end local v5    # "defaultMode":I
    .end local v6    # "dur":I
    .end local v8    # "i":I
    .end local v9    # "j":I
    .end local v10    # "lastPkg":Ljava/lang/String;
    .end local v11    # "op":Landroid/app/AppOpsManager$OpEntry;
    .end local v12    # "ops":Lcom/android/server/AppOpsService$Ops;
    .end local v13    # "ops":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$OpEntry;>;"
    .end local v14    # "out":Lorg/xmlpull/v1/XmlSerializer;
    .end local v15    # "pkg":Landroid/app/AppOpsManager$PackageOps;
    .end local v16    # "stream":Ljava/io/FileOutputStream;
    .end local v18    # "time":J
    :catch_1a8
    move-exception v7

    .line 1155
    .local v7, "e":Ljava/io/IOException;
    :try_start_1a9
    const-string v17, "AppOps"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Failed to write state: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1156
    monitor-exit v20
    :try_end_1c8
    .catchall {:try_start_1a9 .. :try_end_1c8} :catchall_1fd

    .line 1232
    .end local v7    # "e":Ljava/io/IOException;
    :goto_1c8
    return-void

    .line 1188
    .restart local v8    # "i":I
    .restart local v10    # "lastPkg":Ljava/lang/String;
    .restart local v12    # "ops":Lcom/android/server/AppOpsService$Ops;
    .restart local v14    # "out":Lorg/xmlpull/v1/XmlSerializer;
    .restart local v15    # "pkg":Landroid/app/AppOpsManager$PackageOps;
    .restart local v16    # "stream":Ljava/io/FileOutputStream;
    :cond_1c9
    const/16 v17, 0x0

    :try_start_1cb
    const-string/jumbo v21, "p"

    const/16 v22, 0x0

    invoke-static/range {v22 .. v22}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-interface {v14, v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto/16 :goto_e1

    .line 1190
    .end local v12    # "ops":Lcom/android/server/AppOpsService$Ops;
    :catchall_1df
    move-exception v17

    monitor-exit p0
    :try_end_1e1
    .catchall {:try_start_1cb .. :try_end_1e1} :catchall_1df

    :try_start_1e1
    throw v17
    :try_end_1e2
    .catch Ljava/io/IOException; {:try_start_1e1 .. :try_end_1e2} :catch_1e2
    .catchall {:try_start_1e1 .. :try_end_1e2} :catchall_1fd

    .line 1227
    .end local v8    # "i":I
    .end local v10    # "lastPkg":Ljava/lang/String;
    .end local v14    # "out":Lorg/xmlpull/v1/XmlSerializer;
    .end local v15    # "pkg":Landroid/app/AppOpsManager$PackageOps;
    :catch_1e2
    move-exception v7

    .line 1228
    .restart local v7    # "e":Ljava/io/IOException;
    :try_start_1e3
    const-string v17, "AppOps"

    const-string v21, "Failed to write state, restoring backup."

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    invoke-static {v0, v1, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1229
    move-object/from16 v0, p0

    iget-object v0, v0, mFile:Landroid/util/AtomicFile;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 1231
    .end local v7    # "e":Ljava/io/IOException;
    :goto_1fb
    monitor-exit v20

    goto :goto_1c8

    .end local v4    # "allOps":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    .end local v16    # "stream":Ljava/io/FileOutputStream;
    :catchall_1fd
    move-exception v17

    monitor-exit v20
    :try_end_1ff
    .catchall {:try_start_1e3 .. :try_end_1ff} :catchall_1fd

    throw v17

    .line 1201
    .restart local v4    # "allOps":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    .restart local v5    # "defaultMode":I
    .restart local v8    # "i":I
    .restart local v9    # "j":I
    .restart local v10    # "lastPkg":Ljava/lang/String;
    .restart local v11    # "op":Landroid/app/AppOpsManager$OpEntry;
    .restart local v12    # "ops":Lcom/android/server/AppOpsService$Ops;
    .restart local v13    # "ops":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$OpEntry;>;"
    .restart local v14    # "out":Lorg/xmlpull/v1/XmlSerializer;
    .restart local v15    # "pkg":Landroid/app/AppOpsManager$PackageOps;
    .restart local v16    # "stream":Ljava/io/FileOutputStream;
    :cond_200
    const/16 v17, 0x0

    :try_start_202
    const-string v21, "dm"

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-interface {v14, v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto/16 :goto_14a

    .line 1217
    .end local v5    # "defaultMode":I
    .end local v11    # "op":Landroid/app/AppOpsManager$OpEntry;
    :cond_213
    const/16 v17, 0x0

    const-string/jumbo v21, "uid"

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    invoke-interface {v14, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1167
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_48

    .line 1219
    .end local v9    # "j":I
    .end local v12    # "ops":Lcom/android/server/AppOpsService$Ops;
    .end local v13    # "ops":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$OpEntry;>;"
    .end local v15    # "pkg":Landroid/app/AppOpsManager$PackageOps;
    :cond_223
    if-eqz v10, :cond_231

    .line 1220
    const/16 v17, 0x0

    const-string/jumbo v21, "pkg"

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    invoke-interface {v14, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1224
    .end local v8    # "i":I
    .end local v10    # "lastPkg":Ljava/lang/String;
    :cond_231
    const/16 v17, 0x0

    const-string v21, "app-ops"

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    invoke-interface {v14, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1225
    invoke-interface {v14}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 1226
    move-object/from16 v0, p0

    iget-object v0, v0, mFile:Landroid/util/AtomicFile;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_24c
    .catch Ljava/io/IOException; {:try_start_202 .. :try_end_24c} :catch_1e2
    .catchall {:try_start_202 .. :try_end_24c} :catchall_1fd

    goto :goto_1fb
.end method
