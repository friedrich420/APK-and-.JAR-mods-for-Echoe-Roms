.class Lcom/samsung/android/contextaware/utilbundle/CaGpsPositionManager$4;
.super Ljava/lang/Object;
.source "CaGpsPositionManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/contextaware/utilbundle/CaGpsPositionManager;->enable()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/contextaware/utilbundle/CaGpsPositionManager;


# direct methods
.method constructor <init>(Lcom/samsung/android/contextaware/utilbundle/CaGpsPositionManager;)V
    .registers 2

    .prologue
    .line 228
    iput-object p1, p0, this$0:Lcom/samsung/android/contextaware/utilbundle/CaGpsPositionManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 231
    iget-object v0, p0, this$0:Lcom/samsung/android/contextaware/utilbundle/CaGpsPositionManager;

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/utilbundle/CaGpsPositionManager;->disable()V

    .line 232
    return-void
.end method