.class final Lcom/android/server/am/ActivityManagerService$MemItem;
.super Ljava/lang/Object;
.source "ActivityManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ActivityManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "MemItem"
.end annotation


# instance fields
.field final hasActivities:Z

.field final id:I

.field final isProc:Z

.field final label:Ljava/lang/String;

.field final pss:J

.field final shortLabel:Ljava/lang/String;

.field subitems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/ActivityManagerService$MemItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;JI)V
    .registers 7
    .param p1, "_label"    # Ljava/lang/String;
    .param p2, "_shortLabel"    # Ljava/lang/String;
    .param p3, "_pss"    # J
    .param p5, "_id"    # I

    .prologue
    const/4 v0, 0x0

    .line 16843
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16844
    iput-boolean v0, p0, isProc:Z

    .line 16845
    iput-object p1, p0, label:Ljava/lang/String;

    .line 16846
    iput-object p2, p0, shortLabel:Ljava/lang/String;

    .line 16847
    iput-wide p3, p0, pss:J

    .line 16848
    iput p5, p0, id:I

    .line 16849
    iput-boolean v0, p0, hasActivities:Z

    .line 16850
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;JIZ)V
    .registers 8
    .param p1, "_label"    # Ljava/lang/String;
    .param p2, "_shortLabel"    # Ljava/lang/String;
    .param p3, "_pss"    # J
    .param p5, "_id"    # I
    .param p6, "_hasActivities"    # Z

    .prologue
    .line 16834
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16835
    const/4 v0, 0x1

    iput-boolean v0, p0, isProc:Z

    .line 16836
    iput-object p1, p0, label:Ljava/lang/String;

    .line 16837
    iput-object p2, p0, shortLabel:Ljava/lang/String;

    .line 16838
    iput-wide p3, p0, pss:J

    .line 16839
    iput p5, p0, id:I

    .line 16840
    iput-boolean p6, p0, hasActivities:Z

    .line 16841
    return-void
.end method
