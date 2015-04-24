.class Lcom/android/launcher2/FestivalPageManager$7;
.super Ljava/lang/Object;
.source "FestivalPageManager.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/FestivalPageManager;->drawFestivalPageTitle(Lcom/android/launcher2/CellLayout;I)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/FestivalPageManager;


# direct methods
.method constructor <init>(Lcom/android/launcher2/FestivalPageManager;)V
    .locals 0

    .prologue
    .line 408
    iput-object p1, p0, Lcom/android/launcher2/FestivalPageManager$7;->this$0:Lcom/android/launcher2/FestivalPageManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 411
    sget-boolean v1, Lcom/android/launcher2/Launcher;->CSCFEATURE_LAUNCHER_HOMESCREENEDITMODE:Z

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/launcher2/Launcher;->isHomeEditMode()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 418
    :goto_0
    return-void

    .line 414
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.FESTIVAL_EFFECT_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 416
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x10200000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 417
    # getter for: Lcom/android/launcher2/FestivalPageManager;->mLauncher:Lcom/android/launcher2/Launcher;
    invoke-static {}, Lcom/android/launcher2/FestivalPageManager;->access$000()Lcom/android/launcher2/Launcher;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/launcher2/Launcher;->startActivitySafely(Landroid/content/Intent;)Z

    goto :goto_0
.end method
