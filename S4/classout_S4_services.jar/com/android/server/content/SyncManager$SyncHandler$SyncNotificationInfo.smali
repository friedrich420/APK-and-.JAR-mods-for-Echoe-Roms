.class Lcom/android/server/content/SyncManager$SyncHandler$SyncNotificationInfo;
.super Ljava/lang/Object;
.source "SyncManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/content/SyncManager$SyncHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SyncNotificationInfo"
.end annotation


# instance fields
.field public isActive:Z

.field public startTime:Ljava/lang/Long;

.field final synthetic this$1:Lcom/android/server/content/SyncManager$SyncHandler;


# direct methods
.method constructor <init>(Lcom/android/server/content/SyncManager$SyncHandler;)V
    .registers 3

    .prologue
    .line 2000
    iput-object p1, p0, this$1:Lcom/android/server/content/SyncManager$SyncHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2002
    const/4 v0, 0x0

    iput-boolean v0, p0, isActive:Z

    .line 2006
    const/4 v0, 0x0

    iput-object v0, p0, startTime:Ljava/lang/Long;

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 2014
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2015
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {p0, v0}, toString(Ljava/lang/StringBuilder;)V

    .line 2016
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public toString(Ljava/lang/StringBuilder;)V
    .registers 4
    .param p1, "sb"    # Ljava/lang/StringBuilder;

    .prologue
    .line 2009
    const-string v0, "isActive "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, isActive:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", startTime "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, startTime:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 2010
    return-void
.end method
