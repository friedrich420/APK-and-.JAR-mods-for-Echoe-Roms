.class Lcom/android/launcher2/LauncherApplication$2;
.super Landroid/database/ContentObserver;
.source "LauncherApplication.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/LauncherApplication;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/LauncherApplication;


# direct methods
.method constructor <init>(Lcom/android/launcher2/LauncherApplication;Landroid/os/Handler;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 556
    iput-object p1, p0, Lcom/android/launcher2/LauncherApplication$2;->this$0:Lcom/android/launcher2/LauncherApplication;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2
    .param p1, "selfChange"    # Z

    .prologue
    .line 567
    iget-object v0, p0, Lcom/android/launcher2/LauncherApplication$2;->this$0:Lcom/android/launcher2/LauncherApplication;

    # getter for: Lcom/android/launcher2/LauncherApplication;->mModel:Lcom/android/launcher2/LauncherModel;
    invoke-static {v0}, Lcom/android/launcher2/LauncherApplication;->access$000(Lcom/android/launcher2/LauncherApplication;)Lcom/android/launcher2/LauncherModel;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/launcher2/LauncherModel;->startLoaderFromBackground(Z)V

    .line 569
    return-void
.end method
