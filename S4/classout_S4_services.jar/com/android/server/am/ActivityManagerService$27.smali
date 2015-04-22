.class Lcom/android/server/am/ActivityManagerService$27;
.super Ljava/lang/Object;
.source "ActivityManagerService.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/ActivityManagerService;->smartAdjustProcessesLocked(Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/android/server/am/ProcessRecord;IIJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/android/server/am/ProcessRecord;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/ActivityManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/am/ActivityManagerService;)V
    .registers 2

    .prologue
    .line 21280
    iput-object p1, p0, this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ProcessRecord;)I
    .registers 7
    .param p1, "app1"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "app2"    # Lcom/android/server/am/ProcessRecord;

    .prologue
    const/4 v1, 0x1

    const/4 v0, -0x1

    .line 21283
    iget v2, p1, Lcom/android/server/am/ProcessRecord;->hotnessAdj:I

    iget v3, p2, Lcom/android/server/am/ProcessRecord;->hotnessAdj:I

    if-ge v2, v3, :cond_9

    .line 21293
    :cond_8
    :goto_8
    return v0

    .line 21285
    :cond_9
    iget v2, p1, Lcom/android/server/am/ProcessRecord;->hotnessAdj:I

    iget v3, p2, Lcom/android/server/am/ProcessRecord;->hotnessAdj:I

    if-le v2, v3, :cond_11

    move v0, v1

    .line 21286
    goto :goto_8

    .line 21288
    :cond_11
    iget v2, p1, Lcom/android/server/am/ProcessRecord;->curAdj:I

    iget v3, p2, Lcom/android/server/am/ProcessRecord;->curAdj:I

    if-gt v2, v3, :cond_8

    .line 21290
    iget v0, p1, Lcom/android/server/am/ProcessRecord;->curAdj:I

    iget v2, p2, Lcom/android/server/am/ProcessRecord;->curAdj:I

    if-ge v0, v2, :cond_1f

    move v0, v1

    .line 21291
    goto :goto_8

    .line 21293
    :cond_1f
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 21280
    check-cast p1, Lcom/android/server/am/ProcessRecord;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Lcom/android/server/am/ProcessRecord;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, compare(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ProcessRecord;)I

    move-result v0

    return v0
.end method
