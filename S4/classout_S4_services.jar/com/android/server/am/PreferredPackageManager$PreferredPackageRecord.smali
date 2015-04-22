.class public Lcom/android/server/am/PreferredPackageManager$PreferredPackageRecord;
.super Ljava/lang/Object;
.source "PreferredPackageManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/PreferredPackageManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PreferredPackageRecord"
.end annotation


# static fields
.field static final BINDED:I = 0x2

.field static final CACHED:I = 0x1

.field static final DIED:I = 0x4

.field static final RESUMED:I = 0x0

.field static final START_READY:I = 0x3


# instance fields
.field public indirectScoreMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/app/usage/PreferredScoreInfo;",
            ">;>;"
        }
    .end annotation
.end field

.field lastPauseTime:J

.field lastPss:J

.field final packageName:Ljava/lang/String;

.field pid:I

.field processName:Ljava/lang/String;

.field scoreList:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Landroid/app/usage/PreferredScoreInfo;",
            ">;"
        }
    .end annotation
.end field

.field scoreMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/app/usage/PreferredScoreInfo;",
            ">;"
        }
    .end annotation
.end field

.field state:I

.field final synthetic this$0:Lcom/android/server/am/PreferredPackageManager;

.field uid:I

.field usageCounting:J


# direct methods
.method constructor <init>(Lcom/android/server/am/PreferredPackageManager;Ljava/lang/String;)V
    .registers 10
    .param p2, "pkg"    # Ljava/lang/String;

    .prologue
    .line 473
    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v6}, <init>(Lcom/android/server/am/PreferredPackageManager;Ljava/lang/String;JLjava/lang/String;)V

    .line 474
    return-void
.end method

.method constructor <init>(Lcom/android/server/am/PreferredPackageManager;Ljava/lang/String;JLjava/lang/String;)V
    .registers 9
    .param p2, "pkg"    # Ljava/lang/String;
    .param p3, "pausedTime"    # J
    .param p5, "score"    # Ljava/lang/String;

    .prologue
    const/4 v1, -0x1

    .line 462
    iput-object p1, p0, this$0:Lcom/android/server/am/PreferredPackageManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 324
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, scoreMap:Ljava/util/HashMap;

    .line 325
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, scoreList:Ljava/util/LinkedList;

    .line 327
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, indirectScoreMap:Ljava/util/HashMap;

    .line 463
    iput-object p2, p0, packageName:Ljava/lang/String;

    .line 464
    iput-wide p3, p0, lastPauseTime:J

    .line 465
    invoke-virtual {p0, p5}, setScoreList(Ljava/lang/String;)V

    .line 466
    const/4 v0, 0x4

    iput v0, p0, state:I

    .line 467
    iput v1, p0, pid:I

    .line 468
    iput v1, p0, uid:I

    .line 469
    const-wide/16 v0, 0x0

    iput-wide v0, p0, lastPss:J

    .line 470
    return-void
.end method


# virtual methods
.method doIncreaseIndirectScore(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 9
    .param p1, "prev"    # Ljava/lang/String;
    .param p2, "cur"    # Ljava/lang/String;
    .param p3, "score"    # I

    .prologue
    .line 345
    iget-object v2, p0, indirectScoreMap:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 346
    .local v0, "hash":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroid/app/usage/PreferredScoreInfo;>;"
    if-nez v0, :cond_95

    .line 347
    new-instance v0, Ljava/util/HashMap;

    .end local v0    # "hash":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroid/app/usage/PreferredScoreInfo;>;"
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 348
    .restart local v0    # "hash":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroid/app/usage/PreferredScoreInfo;>;"
    new-instance v2, Landroid/app/usage/PreferredScoreInfo;

    invoke-direct {v2, p2, p3}, Landroid/app/usage/PreferredScoreInfo;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, p2, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 349
    iget-object v2, p0, indirectScoreMap:Ljava/util/HashMap;

    invoke-virtual {v2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 350
    sget-boolean v2, Lcom/android/server/am/PreferredPackageManager;->DEBUG:Z

    if-eqz v2, :cond_58

    const-string v2, "PreferredPackage"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "indirect scoring : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " --> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " --> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " score="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    :cond_58
    sget-boolean v2, Lcom/android/server/am/PreferredPackageManager;->DEBUG_LOGFILE_ENABLE:Z

    if-eqz v2, :cond_94

    iget-object v2, p0, this$0:Lcom/android/server/am/PreferredPackageManager;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "indirect scoring : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " --> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " --> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " score="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/am/PreferredPackageManager;->recordLog(Ljava/lang/String;)V

    .line 370
    :cond_94
    :goto_94
    return-void

    .line 355
    :cond_95
    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/usage/PreferredScoreInfo;

    .line 356
    .local v1, "psi":Landroid/app/usage/PreferredScoreInfo;
    if-nez v1, :cond_11f

    .line 357
    new-instance v2, Landroid/app/usage/PreferredScoreInfo;

    invoke-direct {v2, p2, p3}, Landroid/app/usage/PreferredScoreInfo;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, p2, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 358
    sget-boolean v2, Lcom/android/server/am/PreferredPackageManager;->DEBUG:Z

    if-eqz v2, :cond_e1

    const-string v2, "PreferredPackage"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "indirect scoring : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " --> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " --> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " score="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    :cond_e1
    sget-boolean v2, Lcom/android/server/am/PreferredPackageManager;->DEBUG_LOGFILE_ENABLE:Z

    if-eqz v2, :cond_94

    iget-object v2, p0, this$0:Lcom/android/server/am/PreferredPackageManager;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "indirect scoring : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " --> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " --> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " score="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/am/PreferredPackageManager;->recordLog(Ljava/lang/String;)V

    goto/16 :goto_94

    .line 363
    :cond_11f
    iget v2, v1, Landroid/app/usage/PreferredScoreInfo;->score:I

    add-int/2addr v2, p3

    iput v2, v1, Landroid/app/usage/PreferredScoreInfo;->score:I

    .line 364
    sget-boolean v2, Lcom/android/server/am/PreferredPackageManager;->DEBUG:Z

    if-eqz v2, :cond_162

    const-string v2, "PreferredPackage"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "indirect scoring : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " --> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " --> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " score="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v1, Landroid/app/usage/PreferredScoreInfo;->score:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 366
    :cond_162
    sget-boolean v2, Lcom/android/server/am/PreferredPackageManager;->DEBUG_LOGFILE_ENABLE:Z

    if-eqz v2, :cond_94

    iget-object v2, p0, this$0:Lcom/android/server/am/PreferredPackageManager;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "indirect scoring : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " --> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " --> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " score="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v1, Landroid/app/usage/PreferredScoreInfo;->score:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/am/PreferredPackageManager;->recordLog(Ljava/lang/String;)V

    goto/16 :goto_94
.end method

.method doIncreaseScore(Ljava/lang/String;I)V
    .registers 10
    .param p1, "nextPkgName"    # Ljava/lang/String;
    .param p2, "score"    # I

    .prologue
    .line 373
    sget-boolean v4, Lcom/android/server/am/PreferredPackageManager;->DEBUG:Z

    if-eqz v4, :cond_41

    const-string v4, "PreferredPackage"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Score "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, packageName:Ljava/lang/String;

    invoke-static {v6}, Lcom/android/server/am/PreferredPackageManager;->getTrimmedStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " --> "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {p1}, Lcom/android/server/am/PreferredPackageManager;->getTrimmedStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "p)"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 375
    :cond_41
    sget-boolean v4, Lcom/android/server/am/PreferredPackageManager;->DEBUG:Z

    if-eqz v4, :cond_71

    const-string v4, "PreferredPackage"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Score_Before : Pkg : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, packageName:Ljava/lang/String;

    invoke-static {v6}, Lcom/android/server/am/PreferredPackageManager;->getTrimmedStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", Score : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, getScoreListString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 377
    :cond_71
    sget-boolean v4, Lcom/android/server/am/PreferredPackageManager;->DEBUG_LOGFILE_ENABLE:Z

    if-eqz v4, :cond_b2

    iget-object v4, p0, this$0:Lcom/android/server/am/PreferredPackageManager;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Score "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, packageName:Ljava/lang/String;

    invoke-static {v6}, Lcom/android/server/am/PreferredPackageManager;->getTrimmedStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " --> "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {p1}, Lcom/android/server/am/PreferredPackageManager;->getTrimmedStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "p)"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/server/am/PreferredPackageManager;->recordLog(Ljava/lang/String;)V

    .line 379
    :cond_b2
    sget-boolean v4, Lcom/android/server/am/PreferredPackageManager;->DEBUG_LOGFILE_ENABLE:Z

    if-eqz v4, :cond_e2

    iget-object v4, p0, this$0:Lcom/android/server/am/PreferredPackageManager;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Score_Before : Pkg : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, packageName:Ljava/lang/String;

    invoke-static {v6}, Lcom/android/server/am/PreferredPackageManager;->getTrimmedStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", Score : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, getScoreListString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/server/am/PreferredPackageManager;->recordLog(Ljava/lang/String;)V

    .line 381
    :cond_e2
    iget-object v5, p0, scoreList:Ljava/util/LinkedList;

    monitor-enter v5

    .line 382
    :try_start_e5
    iget-object v4, p0, scoreMap:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/usage/PreferredScoreInfo;

    .line 383
    .local v3, "psi":Landroid/app/usage/PreferredScoreInfo;
    if-nez v3, :cond_16a

    .line 384
    new-instance v3, Landroid/app/usage/PreferredScoreInfo;

    .end local v3    # "psi":Landroid/app/usage/PreferredScoreInfo;
    invoke-direct {v3, p1, p2}, Landroid/app/usage/PreferredScoreInfo;-><init>(Ljava/lang/String;I)V

    .line 385
    .restart local v3    # "psi":Landroid/app/usage/PreferredScoreInfo;
    iget-object v4, p0, scoreMap:Ljava/util/HashMap;

    invoke-virtual {v4, p1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 390
    :goto_f9
    iget-object v4, p0, scoreList:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->size()I

    move-result v2

    .line 391
    .local v2, "length":I
    const/4 v1, 0x0

    .line 393
    .local v1, "inserted":Z
    if-nez v2, :cond_178

    .line 394
    iget-object v4, p0, scoreList:Ljava/util/LinkedList;

    const/4 v6, 0x0

    invoke-virtual {v4, v6, v3}, Ljava/util/LinkedList;->add(ILjava/lang/Object;)V

    .line 405
    :cond_108
    :goto_108
    monitor-exit v5
    :try_end_109
    .catchall {:try_start_e5 .. :try_end_109} :catchall_175

    .line 406
    sget-boolean v4, Lcom/android/server/am/PreferredPackageManager;->DEBUG:Z

    if-eqz v4, :cond_139

    const-string v4, "PreferredPackage"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Score_After  : Pkg : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, packageName:Ljava/lang/String;

    invoke-static {v6}, Lcom/android/server/am/PreferredPackageManager;->getTrimmedStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", Score : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, getScoreListString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 407
    :cond_139
    sget-boolean v4, Lcom/android/server/am/PreferredPackageManager;->DEBUG_LOGFILE_ENABLE:Z

    if-eqz v4, :cond_169

    iget-object v4, p0, this$0:Lcom/android/server/am/PreferredPackageManager;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Score_After  : Pkg : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, packageName:Ljava/lang/String;

    invoke-static {v6}, Lcom/android/server/am/PreferredPackageManager;->getTrimmedStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", Score : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, getScoreListString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/server/am/PreferredPackageManager;->recordLog(Ljava/lang/String;)V

    .line 408
    :cond_169
    return-void

    .line 387
    .end local v1    # "inserted":Z
    .end local v2    # "length":I
    :cond_16a
    :try_start_16a
    iget v4, v3, Landroid/app/usage/PreferredScoreInfo;->score:I

    add-int/2addr v4, p2

    iput v4, v3, Landroid/app/usage/PreferredScoreInfo;->score:I

    .line 388
    iget-object v4, p0, scoreList:Ljava/util/LinkedList;

    invoke-virtual {v4, v3}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    goto :goto_f9

    .line 405
    .end local v3    # "psi":Landroid/app/usage/PreferredScoreInfo;
    :catchall_175
    move-exception v4

    monitor-exit v5
    :try_end_177
    .catchall {:try_start_16a .. :try_end_177} :catchall_175

    throw v4

    .line 396
    .restart local v1    # "inserted":Z
    .restart local v2    # "length":I
    .restart local v3    # "psi":Landroid/app/usage/PreferredScoreInfo;
    :cond_178
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_179
    if-ge v0, v2, :cond_18f

    .line 397
    :try_start_17b
    iget-object v4, p0, scoreList:Ljava/util/LinkedList;

    invoke-virtual {v4, v0}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/usage/PreferredScoreInfo;

    iget v4, v4, Landroid/app/usage/PreferredScoreInfo;->score:I

    iget v6, v3, Landroid/app/usage/PreferredScoreInfo;->score:I

    if-gt v4, v6, :cond_198

    .line 398
    iget-object v4, p0, scoreList:Ljava/util/LinkedList;

    invoke-virtual {v4, v0, v3}, Ljava/util/LinkedList;->add(ILjava/lang/Object;)V

    .line 399
    const/4 v1, 0x1

    .line 403
    :cond_18f
    if-nez v1, :cond_108

    iget-object v4, p0, scoreList:Ljava/util/LinkedList;

    invoke-virtual {v4, v2, v3}, Ljava/util/LinkedList;->add(ILjava/lang/Object;)V
    :try_end_196
    .catchall {:try_start_17b .. :try_end_196} :catchall_175

    goto/16 :goto_108

    .line 396
    :cond_198
    add-int/lit8 v0, v0, 0x1

    goto :goto_179
.end method

.method public getCount()J
    .registers 3

    .prologue
    .line 490
    iget-wide v0, p0, usageCounting:J

    return-wide v0
.end method

.method getIndirectScore(Ljava/lang/String;Ljava/lang/String;)I
    .registers 7
    .param p1, "bridge"    # Ljava/lang/String;
    .param p2, "candidate"    # Ljava/lang/String;

    .prologue
    const/4 v2, -0x1

    .line 335
    iget-object v3, p0, indirectScoreMap:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 336
    .local v0, "hash":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroid/app/usage/PreferredScoreInfo;>;"
    if-nez v0, :cond_c

    .line 341
    :cond_b
    :goto_b
    return v2

    .line 338
    :cond_c
    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/usage/PreferredScoreInfo;

    .line 339
    .local v1, "psi":Landroid/app/usage/PreferredScoreInfo;
    if-eqz v1, :cond_b

    .line 341
    iget v2, v1, Landroid/app/usage/PreferredScoreInfo;->score:I

    goto :goto_b
.end method

.method getIndirectScoreListString()Ljava/lang/String;
    .registers 10

    .prologue
    .line 421
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v7, ""

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 422
    .local v5, "sb":Ljava/lang/StringBuilder;
    iget-object v7, p0, indirectScoreMap:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v6

    .line 423
    .local v6, "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/HashMap<Ljava/lang/String;Landroid/app/usage/PreferredScoreInfo;>;>;>;"
    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_11
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_78

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 424
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/HashMap<Ljava/lang/String;Landroid/app/usage/PreferredScoreInfo;>;>;"
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ":"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 425
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    .line 426
    .local v1, "hm":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroid/app/usage/PreferredScoreInfo;>;"
    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_47
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_11

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/usage/PreferredScoreInfo;

    .line 427
    .local v4, "psi":Landroid/app/usage/PreferredScoreInfo;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, v4, Landroid/app/usage/PreferredScoreInfo;->pkgName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v4, Landroid/app/usage/PreferredScoreInfo;->score:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "),"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_47

    .line 430
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/HashMap<Ljava/lang/String;Landroid/app/usage/PreferredScoreInfo;>;>;"
    .end local v1    # "hm":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroid/app/usage/PreferredScoreInfo;>;"
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "psi":Landroid/app/usage/PreferredScoreInfo;
    :cond_78
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    return-object v7
.end method

.method public getLastPauseTime()J
    .registers 3

    .prologue
    .line 494
    iget-wide v0, p0, lastPauseTime:J

    return-wide v0
.end method

.method public getPackageName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 498
    iget-object v0, p0, packageName:Ljava/lang/String;

    return-object v0
.end method

.method public getScoreListString()Ljava/lang/String;
    .registers 7

    .prologue
    .line 411
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, ""

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 412
    .local v2, "sb":Ljava/lang/StringBuilder;
    iget-object v4, p0, scoreList:Ljava/util/LinkedList;

    monitor-enter v4

    .line 413
    :try_start_a
    iget-object v3, p0, scoreList:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_10
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_44

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/usage/PreferredScoreInfo;

    .line 414
    .local v1, "info":Landroid/app/usage/PreferredScoreInfo;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v1, Landroid/app/usage/PreferredScoreInfo;->pkgName:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ":"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v5, v1, Landroid/app/usage/PreferredScoreInfo;->score:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "-"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_10

    .line 416
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "info":Landroid/app/usage/PreferredScoreInfo;
    :catchall_41
    move-exception v3

    monitor-exit v4
    :try_end_43
    .catchall {:try_start_a .. :try_end_43} :catchall_41

    throw v3

    .restart local v0    # "i$":Ljava/util/Iterator;
    :cond_44
    :try_start_44
    monitor-exit v4
    :try_end_45
    .catchall {:try_start_44 .. :try_end_45} :catchall_41

    .line 417
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method getState()I
    .registers 2

    .prologue
    .line 502
    iget v0, p0, state:I

    return v0
.end method

.method increaseUsageCounting()V
    .registers 5

    .prologue
    .line 482
    iget-wide v0, p0, usageCounting:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, usageCounting:J

    .line 483
    return-void
.end method

.method setScoreList(Ljava/lang/String;)V
    .registers 17
    .param p1, "sList"    # Ljava/lang/String;

    .prologue
    .line 434
    const/4 v12, 0x0

    .line 435
    .local v12, "temp":Ljava/lang/String;
    const/4 v6, 0x0

    .line 436
    .local v6, "pkgName":Ljava/lang/String;
    const-wide/16 v8, 0x0

    .line 437
    .local v8, "pkgScore":J
    const-string v2, "-"

    .line 438
    .local v2, "delims":Ljava/lang/String;
    const-string v3, ":"

    .line 440
    .local v3, "delims2":Ljava/lang/String;
    const/4 v4, 0x0

    .line 441
    .local v4, "i":I
    iget-object v14, p0, scoreList:Ljava/util/LinkedList;

    monitor-enter v14

    .line 442
    if-eqz p1, :cond_65

    .line 443
    :try_start_e
    new-instance v10, Ljava/util/StringTokenizer;

    move-object/from16 v0, p1

    invoke-direct {v10, v0, v2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_15
    .catchall {:try_start_e .. :try_end_15} :catchall_67

    .local v10, "set":Ljava/util/StringTokenizer;
    move v5, v4

    .line 444
    .end local v4    # "i":I
    .local v5, "i":I
    :goto_16
    :try_start_16
    invoke-virtual {v10}, Ljava/util/StringTokenizer;->hasMoreElements()Z

    move-result v13

    if-eqz v13, :cond_64

    .line 445
    invoke-virtual {v10}, Ljava/util/StringTokenizer;->nextElement()Ljava/lang/Object;

    move-result-object v13

    move-object v0, v13

    check-cast v0, Ljava/lang/String;

    move-object v12, v0

    .line 446
    new-instance v11, Ljava/util/StringTokenizer;

    invoke-direct {v11, v12, v3}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 447
    .local v11, "set2":Ljava/util/StringTokenizer;
    :goto_29
    invoke-virtual {v11}, Ljava/util/StringTokenizer;->hasMoreElements()Z

    move-result v13

    if-eqz v13, :cond_46

    .line 448
    invoke-virtual {v11}, Ljava/util/StringTokenizer;->nextElement()Ljava/lang/Object;

    move-result-object v13

    move-object v0, v13

    check-cast v0, Ljava/lang/String;

    move-object v6, v0

    .line 449
    invoke-virtual {v11}, Ljava/util/StringTokenizer;->nextElement()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    invoke-static {v13}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    goto :goto_29

    .line 451
    :cond_46
    iget-object v13, p0, scoreMap:Ljava/util/HashMap;

    invoke-virtual {v13, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/usage/PreferredScoreInfo;

    .line 452
    .local v7, "psi":Landroid/app/usage/PreferredScoreInfo;
    if-nez v7, :cond_6d

    .line 453
    new-instance v7, Landroid/app/usage/PreferredScoreInfo;

    .end local v7    # "psi":Landroid/app/usage/PreferredScoreInfo;
    long-to-int v13, v8

    invoke-direct {v7, v6, v13}, Landroid/app/usage/PreferredScoreInfo;-><init>(Ljava/lang/String;I)V

    .line 454
    .restart local v7    # "psi":Landroid/app/usage/PreferredScoreInfo;
    iget-object v13, p0, scoreMap:Ljava/util/HashMap;

    invoke-virtual {v13, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 455
    iget-object v13, p0, scoreList:Ljava/util/LinkedList;
    :try_end_5d
    .catchall {:try_start_16 .. :try_end_5d} :catchall_6a

    add-int/lit8 v4, v5, 0x1

    .end local v5    # "i":I
    .restart local v4    # "i":I
    :try_start_5f
    invoke-virtual {v13, v5, v7}, Ljava/util/LinkedList;->add(ILjava/lang/Object;)V

    :goto_62
    move v5, v4

    .line 457
    .end local v4    # "i":I
    .restart local v5    # "i":I
    goto :goto_16

    .end local v7    # "psi":Landroid/app/usage/PreferredScoreInfo;
    .end local v11    # "set2":Ljava/util/StringTokenizer;
    :cond_64
    move v4, v5

    .line 459
    .end local v5    # "i":I
    .end local v10    # "set":Ljava/util/StringTokenizer;
    .restart local v4    # "i":I
    :cond_65
    monitor-exit v14

    .line 460
    return-void

    .line 459
    :catchall_67
    move-exception v13

    :goto_68
    monitor-exit v14
    :try_end_69
    .catchall {:try_start_5f .. :try_end_69} :catchall_67

    throw v13

    .end local v4    # "i":I
    .restart local v5    # "i":I
    .restart local v10    # "set":Ljava/util/StringTokenizer;
    :catchall_6a
    move-exception v13

    move v4, v5

    .end local v5    # "i":I
    .restart local v4    # "i":I
    goto :goto_68

    .end local v4    # "i":I
    .restart local v5    # "i":I
    .restart local v7    # "psi":Landroid/app/usage/PreferredScoreInfo;
    .restart local v11    # "set2":Ljava/util/StringTokenizer;
    :cond_6d
    move v4, v5

    .end local v5    # "i":I
    .restart local v4    # "i":I
    goto :goto_62
.end method

.method setState(I)V
    .registers 2
    .param p1, "newState"    # I

    .prologue
    .line 486
    iput p1, p0, state:I

    .line 487
    return-void
.end method

.method updateLastPauseTime(J)V
    .registers 6
    .param p1, "time"    # J

    .prologue
    .line 477
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_8

    .line 478
    iput-wide p1, p0, lastPauseTime:J

    .line 479
    :cond_8
    return-void
.end method
