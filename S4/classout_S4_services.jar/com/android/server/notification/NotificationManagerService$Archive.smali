.class Lcom/android/server/notification/NotificationManagerService$Archive;
.super Ljava/lang/Object;
.source "NotificationManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/notification/NotificationManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Archive"
.end annotation


# instance fields
.field final mBuffer:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque",
            "<",
            "Landroid/service/notification/StatusBarNotification;",
            ">;"
        }
    .end annotation
.end field

.field final mBufferSize:I


# direct methods
.method public constructor <init>(I)V
    .registers 4
    .param p1, "size"    # I

    .prologue
    .line 327
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 328
    iput p1, p0, mBufferSize:I

    .line 329
    new-instance v0, Ljava/util/ArrayDeque;

    iget v1, p0, mBufferSize:I

    invoke-direct {v0, v1}, Ljava/util/ArrayDeque;-><init>(I)V

    iput-object v0, p0, mBuffer:Ljava/util/ArrayDeque;

    .line 330
    return-void
.end method


# virtual methods
.method public ascendingIterator()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Landroid/service/notification/StatusBarNotification;",
            ">;"
        }
    .end annotation

    .prologue
    .line 361
    iget-object v0, p0, mBuffer:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public clear()V
    .registers 2

    .prologue
    .line 354
    iget-object v0, p0, mBuffer:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->clear()V

    .line 355
    return-void
.end method

.method public descendingIterator()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Landroid/service/notification/StatusBarNotification;",
            ">;"
        }
    .end annotation

    .prologue
    .line 358
    iget-object v0, p0, mBuffer:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->descendingIterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public filter(Ljava/util/Iterator;Ljava/lang/String;I)Ljava/util/Iterator;
    .registers 5
    .param p2, "pkg"    # Ljava/lang/String;
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator",
            "<",
            "Landroid/service/notification/StatusBarNotification;",
            ">;",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/Iterator",
            "<",
            "Landroid/service/notification/StatusBarNotification;",
            ">;"
        }
    .end annotation

    .prologue
    .line 365
    .local p1, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/service/notification/StatusBarNotification;>;"
    new-instance v0, Lcom/android/server/notification/NotificationManagerService$Archive$1;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/server/notification/NotificationManagerService$Archive$1;-><init>(Lcom/android/server/notification/NotificationManagerService$Archive;Ljava/util/Iterator;Ljava/lang/String;I)V

    return-object v0
.end method

.method public getArray(I)[Landroid/service/notification/StatusBarNotification;
    .registers 7
    .param p1, "count"    # I

    .prologue
    .line 402
    if-nez p1, :cond_4

    iget p1, p0, mBufferSize:I

    .line 403
    :cond_4
    iget-object v4, p0, mBuffer:Ljava/util/ArrayDeque;

    invoke-virtual {v4}, Ljava/util/ArrayDeque;->size()I

    move-result v4

    invoke-static {p1, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    new-array v0, v4, [Landroid/service/notification/StatusBarNotification;

    .line 405
    .local v0, "a":[Landroid/service/notification/StatusBarNotification;
    invoke-virtual {p0}, descendingIterator()Ljava/util/Iterator;

    move-result-object v3

    .line 406
    .local v3, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/service/notification/StatusBarNotification;>;"
    const/4 v1, 0x0

    .line 407
    .local v1, "i":I
    :goto_15
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_29

    if-ge v1, p1, :cond_29

    .line 408
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "i":I
    .local v2, "i":I
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/service/notification/StatusBarNotification;

    aput-object v4, v0, v1

    move v1, v2

    .end local v2    # "i":I
    .restart local v1    # "i":I
    goto :goto_15

    .line 410
    :cond_29
    return-object v0
.end method

.method public getArray(ILjava/lang/String;I)[Landroid/service/notification/StatusBarNotification;
    .registers 9
    .param p1, "count"    # I
    .param p2, "pkg"    # Ljava/lang/String;
    .param p3, "userId"    # I

    .prologue
    .line 414
    if-nez p1, :cond_4

    iget p1, p0, mBufferSize:I

    .line 415
    :cond_4
    iget-object v4, p0, mBuffer:Ljava/util/ArrayDeque;

    invoke-virtual {v4}, Ljava/util/ArrayDeque;->size()I

    move-result v4

    invoke-static {p1, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    new-array v0, v4, [Landroid/service/notification/StatusBarNotification;

    .line 417
    .local v0, "a":[Landroid/service/notification/StatusBarNotification;
    invoke-virtual {p0}, descendingIterator()Ljava/util/Iterator;

    move-result-object v4

    invoke-virtual {p0, v4, p2, p3}, filter(Ljava/util/Iterator;Ljava/lang/String;I)Ljava/util/Iterator;

    move-result-object v3

    .line 418
    .local v3, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/service/notification/StatusBarNotification;>;"
    const/4 v1, 0x0

    .line 419
    .local v1, "i":I
    :goto_19
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2d

    if-ge v1, p1, :cond_2d

    .line 420
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "i":I
    .local v2, "i":I
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/service/notification/StatusBarNotification;

    aput-object v4, v0, v1

    move v1, v2

    .end local v2    # "i":I
    .restart local v1    # "i":I
    goto :goto_19

    .line 422
    :cond_2d
    return-object v0
.end method

.method public record(Landroid/service/notification/StatusBarNotification;)V
    .registers 4
    .param p1, "nr"    # Landroid/service/notification/StatusBarNotification;

    .prologue
    .line 343
    iget-object v0, p0, mBuffer:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->size()I

    move-result v0

    iget v1, p0, mBufferSize:I

    if-ne v0, v1, :cond_f

    .line 344
    iget-object v0, p0, mBuffer:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    .line 350
    :cond_f
    iget-object v0, p0, mBuffer:Ljava/util/ArrayDeque;

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->cloneLight()Landroid/service/notification/StatusBarNotification;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    .line 351
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .prologue
    .line 333
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 334
    .local v1, "sb":Ljava/lang/StringBuilder;
    iget-object v2, p0, mBuffer:Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->size()I

    move-result v0

    .line 335
    .local v0, "N":I
    const-string v2, "Archive ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 336
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 337
    const-string v2, " notification"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 338
    const/4 v2, 0x1

    if-ne v0, v2, :cond_25

    const-string v2, ")"

    :goto_1d
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 339
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 338
    :cond_25
    const-string/jumbo v2, "s)"

    goto :goto_1d
.end method
