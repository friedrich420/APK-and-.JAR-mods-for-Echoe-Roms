.class Lcom/android/launcher2/QuickViewMainMenu$1;
.super Ljava/lang/Object;
.source "QuickViewMainMenu.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/QuickViewMainMenu;->onConfigurationChanged(Landroid/content/res/Configuration;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/QuickViewMainMenu;


# direct methods
.method constructor <init>(Lcom/android/launcher2/QuickViewMainMenu;)V
    .locals 0

    .prologue
    .line 1593
    iput-object p1, p0, Lcom/android/launcher2/QuickViewMainMenu$1;->this$0:Lcom/android/launcher2/QuickViewMainMenu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1597
    iget-object v0, p0, Lcom/android/launcher2/QuickViewMainMenu$1;->this$0:Lcom/android/launcher2/QuickViewMainMenu;

    const/4 v1, 0x0

    # setter for: Lcom/android/launcher2/QuickViewMainMenu;->mConfigurationChangeIsInProgress:Z
    invoke-static {v0, v1}, Lcom/android/launcher2/QuickViewMainMenu;->access$102(Lcom/android/launcher2/QuickViewMainMenu;Z)Z

    .line 1598
    return-void
.end method
