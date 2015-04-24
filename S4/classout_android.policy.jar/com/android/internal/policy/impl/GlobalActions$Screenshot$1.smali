.class Lcom/android/internal/policy/impl/GlobalActions$Screenshot$1;
.super Ljava/lang/Object;
.source "GlobalActions.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/GlobalActions$Screenshot;->screenCapture()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/GlobalActions$Screenshot;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/GlobalActions$Screenshot;)V
    .locals 0

    .prologue
    .line 375
    iput-object p1, p0, Lcom/android/internal/policy/impl/GlobalActions$Screenshot$1;->this$0:Lcom/android/internal/policy/impl/GlobalActions$Screenshot;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 378
    :try_start_0
    new-instance v0, Landroid/view/KeyEvent;

    const/4 v3, 0x0

    const/16 v4, 0x78

    invoke-direct {v0, v3, v4}, Landroid/view/KeyEvent;-><init>(II)V

    .line 379
    .local v0, "captureEvent":Landroid/view/KeyEvent;
    new-instance v1, Landroid/app/Instrumentation;

    invoke-direct {v1}, Landroid/app/Instrumentation;-><init>()V

    .line 380
    .local v1, "captureIns":Landroid/app/Instrumentation;
    invoke-virtual {v1, v0}, Landroid/app/Instrumentation;->sendKeySync(Landroid/view/KeyEvent;)V

    .line 381
    const-wide/16 v3, 0x64

    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V

    .line 382
    new-instance v0, Landroid/view/KeyEvent;

    .end local v0    # "captureEvent":Landroid/view/KeyEvent;
    const/4 v3, 0x1

    const/16 v4, 0x78

    invoke-direct {v0, v3, v4}, Landroid/view/KeyEvent;-><init>(II)V

    .line 383
    .restart local v0    # "captureEvent":Landroid/view/KeyEvent;
    invoke-virtual {v1, v0}, Landroid/app/Instrumentation;->sendKeySync(Landroid/view/KeyEvent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 387
    .end local v0    # "captureEvent":Landroid/view/KeyEvent;
    .end local v1    # "captureIns":Landroid/app/Instrumentation;
    :goto_0
    return-void

    .line 384
    :catch_0
    move-exception v2

    .line 385
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
