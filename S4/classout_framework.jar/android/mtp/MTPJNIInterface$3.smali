.class Landroid/mtp/MTPJNIInterface$3;
.super Ljava/lang/Object;
.source "MTPJNIInterface.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/mtp/MTPJNIInterface;->sendkiesmessage(IILjava/lang/String;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/mtp/MTPJNIInterface;

.field final synthetic val$logLevel:I


# direct methods
.method constructor <init>(Landroid/mtp/MTPJNIInterface;I)V
    .registers 3

    .prologue
    .line 1641
    iput-object p1, p0, this$0:Landroid/mtp/MTPJNIInterface;

    iput p2, p0, val$logLevel:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .prologue
    .line 1643
    const-string v2, "MTPJNIInterface"

    const-string/jumbo v3, "run dumpstate"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1644
    new-instance v0, Ljava/io/File;

    const-string v2, "/storage/emulated/0/DeviceLogFile"

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1645
    .local v0, "dataLogDirectory":Ljava/io/File;
    iget-object v2, p0, this$0:Landroid/mtp/MTPJNIInterface;

    # invokes: Landroid/mtp/MTPJNIInterface;->getTimeToString()Ljava/lang/String;
    invoke-static {v2}, Landroid/mtp/MTPJNIInterface;->access$100(Landroid/mtp/MTPJNIInterface;)Ljava/lang/String;

    move-result-object v1

    .line 1647
    .local v1, "sDate":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1e

    .line 1648
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    .line 1650
    :cond_1e
    iget v2, p0, val$logLevel:I

    if-nez v2, :cond_9e

    .line 1651
    iget-object v2, p0, this$0:Landroid/mtp/MTPJNIInterface;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "bugreport > /storage/emulated/0/DeviceLogFile/.bugReport_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".log"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    # invokes: Landroid/mtp/MTPJNIInterface;->DoShellCmd(Ljava/lang/String;)I
    invoke-static {v2, v3}, Landroid/mtp/MTPJNIInterface;->access$200(Landroid/mtp/MTPJNIInterface;Ljava/lang/String;)I

    .line 1652
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "/storage/emulated/0/DeviceLogFile/.bugReport_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".log"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "/storage/emulated/0/DeviceLogFile/bugReport_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".log"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 1653
    iget-object v2, p0, this$0:Landroid/mtp/MTPJNIInterface;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "/storage/emulated/0/DeviceLogFile/bugReport_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".log"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/mtp/MTPJNIInterface;->sendObjectPropChanged(Ljava/lang/String;)V

    .line 1657
    :cond_9d
    :goto_9d
    return-void

    .line 1654
    :cond_9e
    iget v2, p0, val$logLevel:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_9d

    .line 1655
    iget-object v2, p0, this$0:Landroid/mtp/MTPJNIInterface;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "logcat -v threadtime -d -f /storage/emulated/0/DeviceLogFile/logcat_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".log"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    # invokes: Landroid/mtp/MTPJNIInterface;->DoShellCmd(Ljava/lang/String;)I
    invoke-static {v2, v3}, Landroid/mtp/MTPJNIInterface;->access$200(Landroid/mtp/MTPJNIInterface;Ljava/lang/String;)I

    goto :goto_9d
.end method