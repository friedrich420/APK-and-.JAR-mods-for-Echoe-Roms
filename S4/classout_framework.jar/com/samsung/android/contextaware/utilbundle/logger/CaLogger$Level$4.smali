.class final enum Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger$Level$4;
.super Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger$Level;
.source "CaLogger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger$Level;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4008
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .registers 4

    .prologue
    .line 138
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger$Level;-><init>(Ljava/lang/String;ILcom/samsung/android/contextaware/utilbundle/logger/CaLogger$1;)V

    return-void
.end method


# virtual methods
.method consoleLogging(Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    .line 141
    # getter for: Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->isConsoleLogging:Z
    invoke-static {}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->access$100()Z

    move-result v3

    if-eqz v3, :cond_2f

    # getter for: Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->mLevel:I
    invoke-static {}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->access$200()I

    move-result v3

    invoke-virtual {p0}, ordinal()I

    move-result v4

    if-gt v3, v4, :cond_2f

    move v1, v2

    .line 143
    .local v1, "usable":Z
    :goto_12
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    # invokes: Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger$Level;->getCallerInfo(Z)Ljava/lang/String;
    invoke-static {v2}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger$Level;->access$300(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 144
    .local v0, "str":Ljava/lang/String;
    if-eqz v1, :cond_2e

    .line 145
    const-string v2, "CAE"

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    :cond_2e
    return-object v0

    .line 141
    .end local v0    # "str":Ljava/lang/String;
    .end local v1    # "usable":Z
    :cond_2f
    const/4 v1, 0x0

    goto :goto_12
.end method

.method fileLogging(Ljava/lang/String;)V
    .registers 8
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    .line 152
    # getter for: Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->isFileLogging:Z
    invoke-static {}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->access$400()Z

    move-result v2

    if-eqz v2, :cond_2a

    # getter for: Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->mLevel:I
    invoke-static {}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->access$200()I

    move-result v2

    invoke-virtual {p0}, ordinal()I

    move-result v3

    if-gt v2, v3, :cond_2a

    move v0, v1

    .line 154
    .local v0, "usable":Z
    :goto_12
    if-eqz v0, :cond_29

    .line 155
    invoke-static {}, Lcom/samsung/android/contextaware/utilbundle/logger/CaFileLogger;->getInstance()Lcom/samsung/android/contextaware/utilbundle/logger/CaFileLogger;

    move-result-object v2

    const-string v3, "CAELogger"

    const-string v4, "W"

    const-string v5, "CAE"

    # invokes: Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger$Level;->getCallerInfo(Z)Ljava/lang/String;
    invoke-static {v1}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger$Level;->access$300(Z)Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->getFilePattern(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v4, v5, v1, p1}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->access$500(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Lcom/samsung/android/contextaware/utilbundle/logger/CaFileLogger;->logging(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    :cond_29
    return-void

    .line 152
    .end local v0    # "usable":Z
    :cond_2a
    const/4 v0, 0x0

    goto :goto_12
.end method
